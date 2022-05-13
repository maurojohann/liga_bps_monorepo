#!/bin/bash

echo "Pub get all packages"

# Executando script nos modulos
for dir in */
do
    cd $dir
    echo ""
    echo "Cleaning $dir"
    echo ""
    fvm flutter clean

    echo "Pub getting $dir"
    fvm flutter pub get
    cd -
done

echo "Finished all tasks"