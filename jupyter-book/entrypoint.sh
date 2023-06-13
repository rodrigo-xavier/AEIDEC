#!/bin/bash

cd "jupyter"

# Lista de pastas a serem monitoradas
path_list=("business-plan" "necronomicon" "NNASS-doc" "Separacao-de-Fonte-Sonora-Doc" "Doc")

# Loop sobre as pastas
for path in "${path_list[@]}"
do
  echo "LOOPING INSIDE $path"

  # Verifica se houve alguma modificação nos arquivos da pasta
#   if [[ $(find "$path" -type f -mtime -1) ]]; then
    if [ $(find $path -type f -mmin 2 | wc -l) -gt 0 ]; then
    echo "BUILDING $path BOOK"

    if [ $SECONDS -ge 3600 ]; then
        echo "BUILDING ALL $path BOOK"
        jupyter-book build --all $path
    fi

    jupyter-book build $path
  fi
done