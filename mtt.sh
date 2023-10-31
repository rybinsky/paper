#! /bin/bash
mkdir mtt
cd mtt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar10/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar10/labels_best.pt
mkdir 1ipc
mv images_best.pt 1ipc
mv labels_best.pt 1ipc
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar10_10/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar10_10/labels_best.pt
mkdir 10ipc
mv images_best.pt 10ipc
mv labels_best.pt 10ipc
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar10_50/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar10_50/labels_best.pt
mkdir 50ipc
mv images_best.pt 50ipc
mv labels_best.pt 50ipc
mkdir cifar10
mv 50ipc cifar10
mv 10ipc cifar10
mv 1ipc cifar10


wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar100/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar100/labels_best.pt
mkdir 1ipc
mv images_best.pt 1ipc
mv labels_best.pt 1ipc
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar100_10/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar100_10/labels_best.pt
mkdir 10ipc
mv images_best.pt 10ipc
mv labels_best.pt 10ipc
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar100_50/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/cifar100_50/labels_best.pt
mkdir 50ipc
mv images_best.pt 50ipc
mv labels_best.pt 50ipc
mkdir cifar100
mv 50ipc cifar100
mv 10ipc cifar100
mv 1ipc cifar100


wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny/labels_best.pt
mkdir 1ipc
mv images_best.pt 1ipc
mv labels_best.pt 1ipc
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_10/images_best.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_10/labels_best.pt
mkdir10ipc
mv images_best.pt 10ipc
mv labels_best.pt 10ipc
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/images_best_0.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/labels_best_0.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/images_best_1.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/labels_best_1.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/images_best_2.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/labels_best_2.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/images_best_3.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/labels_best_3.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/images_best_4.pt
wget https://georgecazenavette.github.io/mtt-distillation/tensors/tiny_50/labels_best_4.pt
mkdir 50ipc
mv images_best_0.pt 50ipc
mv labels_best_0.pt 50ipc
mv images_best_1.pt 50ipc
mv labels_best_1.pt 50ipc
mv images_best_2.pt 50ipc
mv labels_best_2.pt 50ipc
mv images_best_3.pt 50ipc
mv labels_best_3.pt 50ipc
mv images_best_4.pt 50ipc
mv labels_best_4.pt 50ipc
mkdir tiny
mv 50ipc tiny
mv 10ipc tiny
mv 1ipc tiny

cd ..