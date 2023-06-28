#!/bin/bash

for (( i=20; i<=40; i++ ))
do
    srun -p titan --mem-per-cpu=60000 --gres=gpu:1 python3.8 train.py --img 640 --batch 16 --epochs 7 --data graph.yaml --weights runs/train/exp${i}/weights/best.pt 
done
