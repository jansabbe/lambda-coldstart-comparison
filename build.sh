#!/bin/bash
declare -a folders=("csharp20" "csharp21" "java" "python" "golang" "nodejs8")

export AWS_PROFILE=personal

for i in `seq 1 1000`;
do
  for folder in "${folders[@]}"
  do
    cd $folder
    pwd

    sls deploy --force

    cd ..
  done

  node invoke-functions.js
done
