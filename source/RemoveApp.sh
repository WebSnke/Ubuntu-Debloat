#!/bin/bash

RootCommand="sudo"
PackageManager="apt"
UninstallCommand="remove"

RemoveAppList=(
    "gnome-calendar"
    "gnome-weather"
    "gnome-contacts"
    "simple-scan"
    "gnome-power-manager"
    "info"
    "gnome-getting-started-docs"
    "ubuntu-docs"
    "yelp"
    "gucharmap"
)

function RemoveAppFunction() {

    green="\e[0;92m"
    reset="\e[0m"

    for App in ${RemoveAppList[@]}
    do
        echo -e "\n Would you like to remove ${green}$App${reset} ? (y/n)"
        read -n 1 -s Input
        if [[ $Input == "y" ]]; then
            echo -e " Yes.\n"
            $RootCommand $PackageManager $UninstallCommand $App
        else
            echo -e " No."
        fi
    done

    echo
}

RemoveAppFunction
