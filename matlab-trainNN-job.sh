#!/bin/bash
if [ $3 -eq "0" ]
then
learnRate=$((1000))
elif [ $3 -eq "1" ]
then
learnRate=$((10000))
elif [ $3 -eq "2" ]
then
learnRate=$((100000))
else
learnRate=$((1000))
echo Learn rate set to default
fi
sh ./git-clone.sh
sh ./launch-matlab.sh TrainNeuralNetwork $1 $2 $learnRate "'$4'"
sh ./rm-folders.sh