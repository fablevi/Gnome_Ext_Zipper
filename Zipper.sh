#!/bin/bash

function zipperDefault(){

    files="extension.js metadata.json prefs.js schemas"

    echo "Give the folder full path path"
    echo "Example: /home/user/Desktop/folder"
    echo ""
    read folder;
    echo ""
    echo "What will be the zip file name?"
    echo "Example: zipFileName@afterTheSymbol.iWrote.theName"
    echo ""
    read zipFileName;
    echo ""
    echo "Zipping up the folders" 
    cd $folder
    zip $zipFileName $files
    mv $zipFileName.zip $(dirname $0)/zipped  
    echo ""
    echo "Moved to the home folder"
}

function zipperDefaultIgnore(){
    echo ""
}

function helper(){
    echo ""
}


if [ -z "$1" ]; then
    echo "What do you want to do?";
    echo "Zip default folder files 🙂[1]";
    echo "Zip default files with ignores 🤔[2]";
    echo "Get help! 📖[3]";
    echo ""
    read options;

    case $options in
        "1")
            zipperDefault
            ;;
        "2")
            zipperDefaultIgnore
            ;;
        "3")
            helper
            ;;
        *)
            echo "Unrecognised value, the program shut down."
            ;;
    esac
else
echo "hw"
fi




