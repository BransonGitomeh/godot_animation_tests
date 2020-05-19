#!/bin/bash

echo "start script----------- download godot-game-tools------------------"
wget -O godot-game-tools.zip "https://github.com/echirchir/godot-game-tools/releases/download/v1/godot-game-tools.zip"
echo "End script----------- finished downloading godot-game-tools------------------starting creating directories-----"

echo "start script----------- start creating directories------------------starting-----"

if [[ -d "~/.config/blender/2.82/config/scripts" ]]
then
    if [[ -d "~/.config/blender/2.82/config/scripts/addons" ]]
    then
        if [[ -f "godot-game-tools.zip" ]]
        then
            echo "File already exists in the destination folder----------"
        else
            mv godot-game-tools.zip ~/.config/blender/2.82/config/scripts/addons/
            cd ~/.config/blender/2.82/config/scripts/addons/
            unzip godot-game-tools.zip
        fi
    else 
        mkdir ~/.config/blender/2.82/config/scripts/addons
        mv godot-game-tools.zip ~/.config/blender/2.82/config/scripts/addons/
        cd ~/.config/blender/2.82/config/scripts/addons/
        unzip godot-game-tools.zip
    fi
else
    mkdir ~/.config/blender/2.82/config/scripts
    mkdir ~/.config/blender/2.82/config/scripts/addons
    mv godot-game-tools.zip ~/.config/blender/2.82/config/scripts/addons/
    cd ~/.config/blender/2.82/config/scripts/addons/
    unzip godot-game-tools.zip
fi

echo "End script----------------------finish unzipping godot-game-tools.zip file---------------------------------"
ls
echo "Start script----------------------clean up---------------------------------"

echo "Operation done!"