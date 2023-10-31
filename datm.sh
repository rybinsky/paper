#!/bin/bash
mkdir datm
cd datm
mkdir 10ipc
fileid="1Z8i5sTwPQOidxVDsLj7i0FOLC-Egcu_y"
filename="images_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
fileid="1qqdMdvXc2IWLE6r-7oH458DxfyjEMARi"
filename="labels_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
mv images_best.pt 10ipc
mv labels_best.pt 10ipc
mkdir 50ipc
fileid="1HJfsgdxFZsRz5MNRhPhwyxPSMycpA9Nk"
filename="images_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
fileid="1j-IFfwNmLH7i8M0Zuw-4xq29GqEqaOgF"
filename="labels_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
mv images_best.pt 50ipc
mv labels_best.pt 50ipc
mkdir cifar10
mv 50ipc cifar10
mv 10ipc cifar10

mkdir 10ipc
fileid="1azc_gmeNiFmRxhus0IbXiBi2GKCQ8ry3"
filename="images_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
fileid="1xkKy1mmYCUEuoPnrPvLhNFZzVqSQwj-z"
filename="labels_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
mv images_best.pt 10ipc
mv labels_best.pt 10ipc
mkdir 50ipc
fileid="1y72M94GM7YISiKEcCAdhSE3rg08pN_oD"
filename="images_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
fileid="1_zjLWewyvGwl5AZibP_9QE3aysN8CVh_"
filename="labels_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
mv images_best.pt 50ipc
mv labels_best.pt 50ipc
mkdir cifar100
mv 50ipc cifar100
mv 10ipc cifar100

mkdir 10ipc
fileid="1znhy7_dIU66QrVL7whl2Py3CTdHmjSxE"
filename="images_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
fileid="14KwzzLzcjTrpdfrljLt1hU07CvVUBwWe"
filename="labels_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
mv images_best.pt 10ipc
mv labels_best.pt 10ipc
mkdir 50ipc
fileid="1dWC8W_jWbgWq5-fKPTuuAw5rL7GYb_22"
filename="images_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
fileid="1PUBbCqYyF3jE0vSwgDSdaeC16wcdMbz7"
filename="labels_best.pt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
mv images_best.pt 50ipc
mv labels_best.pt 50ipc
mkdir tiny
mv 50ipc tiny
mv 10ipc tiny

cd ..