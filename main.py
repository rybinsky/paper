import argparse
import time
import torch
from torch.utils.data import DataLoader
from tqdm.notebook import tqdm
import os
import numpy as np

import warnings
warnings.filterwarnings("ignore")

from utils import get_dataset, get_network, ParamDiffAug
from utils import study_teacher, study_student_with_teacher, get_synset_loader


def main(args):
    assert args.dataset in {'CIFAR10', 'CIFAR100', 'Tiny'}
    assert args.syn_imgs in {'mtt', 'datm'}
    assert args.ipc in {1, 10, 50}
    assert 0. <= args.weight <= 1.

    synloader = get_synset_loader(args.dataset, args.syn_imgs, args.ipc)

    print('Hyper-parameters: \n', args.__dict__)

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    channel, im_size, num_classes, class_names, mean, std, dst_train, dst_test, testloader, loader_train_dict, class_map, class_map_inv =\
        get_dataset(args.dataset, args.data_path, args.batch_real, args.subset, args=args)
    
    trainloader = DataLoader(
            dst_train, batch_size=args.batch_train, shuffle=True, num_workers=2
        )
    
    dsa_params = ParamDiffAug()
    teacher = get_network(args.teacher, channel, num_classes, im_size, dist=False).to(device)
    # обучить учителя
    if os.path.exists('./teacher.pt'):
        teacher.load_state_dict(torch.load('./teacher.pt'))
    else:
        teacher, train_loss, train_acc, val_loss, val_acc = study_teacher(teacher, trainloader, testloader, dsa_params, device)
        print(f"Train loss: {train_loss[-1]:.4f}, train accuracy: {train_acc[-1]:.4f}, validation loss: {val_loss[-1]:.4f}, validation loss: {val_acc[-1]:.4f}")
        torch.save(teacher.state_dict(), './teacher.pt')

        
    print("Starting distillation...")
    start = time.time()
    accuracy_list = []
    loss_list = []
    for _ in range(args.count):
        student = get_network(args.student, channel, num_classes, im_size, dist=False).to(device)
        train_loss, train_acc, val_loss, val_acc =\
            study_student_with_teacher(args.syn_imgs, teacher, student, synloader, testloader, dsa_params, device, args.weight, args.temp)
        accuracy_list.append(val_acc[-1])
        loss_list.append(val_loss[-1])

    end = time.time()
    print(f"Mean accuracy for {args.student} with {args.teacher} by {args.count} times in a row: {np.mean(accuracy_list)}")
    print(f"Total time: {end - start}")
    print(f"Finish!")
    
if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Parameter Processing')
    parser.add_argument('--data_path', type=str, default='./', help='dataset')
    parser.add_argument('--dataset', type=str, default='CIFAR10', help='dataset')
    parser.add_argument('--syn_imgs', type=str, default='mtt', help='mtt, datm')
    parser.add_argument('--ipc', type=int, default=10, help='images per class: 1, 10, 50')
    parser.add_argument('--teacher', type=str, default='ResNet50', help='model')
    parser.add_argument('--student', type=str, default='ConvNet', help='model')
    parser.add_argument('--weight', type=float, default=0.5, help='distil weight - float between 0 and 1')
    parser.add_argument('--temp', type=float, default=1.0, help='temperature of soft labels')
    parser.add_argument('--count', type=int, default=3, help='count of stydying student with teacher')
    parser.add_argument('--batch_train', type=int, default=256, help='batch size for training networks')
    parser.add_argument('--batch_real', type=int, default=256, help='batch size for real data')
    parser.add_argument('--subset', type=str, default='imagenette', help='ImageNet subset. This only does anything when --dataset=ImageNet')
    parser.add_argument('--zca', action='store_true', help="do ZCA whitening")

    args = parser.parse_args()
    main(args)