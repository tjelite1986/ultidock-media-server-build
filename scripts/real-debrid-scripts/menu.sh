#!/bin/bash

#ITEMPATH="~/scripts/rds"
# Function to display menu
display_menu() {

  echo -e "\e[1;34mChoose below:\e[0m"  # Bold Blue
  ### Blackhole Symlinks
  echo -e "\e[1;32m1. Create Symlinks Blackhole\e[0m"  # Bold Green
# Import /symlinks/import
  echo -e "\e[1;32m2. Create Symlinks Import\e[0m"  # Bold Green
# REMOVE UNUSED MOVIES
  echo -e "\e[1;31m3. Removes movies from Real-Debrid that do not have a symlink attached to them.\e[0m"
# REMOVE UNUSED SHOWS
  echo -e "\e[1;31m4. Removes shows from Real-Debrid that do not have a symlink attached to them.\e[0m"
# CHECK BROKEN SYMLINKS
  echo -e "\e[1;31m5. Check for broken Symlinks\e[0m"  # Bold Red
# Remove BROKEN SYMLINKS
  echo -e "\e[1;31m6. Check for broken Symlinks\e[0m"  # Bold Red
# Exit
  echo -e "\e[1;33m0. Exit from menu\e[0m"  # Bold Yellow
  echo -n "Enter your menu choice [1-6] | Exit [0]: "
}

# Running a forever loop using while statement
while :; do
  display_menu  # Call the display menu function
  
  # Reading choice
  read choice

  # Case statement to execute based on user choice
  case $choice in
  # Blackhole Symlinks
    1)  ./blackhole.sh
        echo -e "\e[1;32mSymlinks for Blackhole Radar are done.\e[0m";;
    2)  ./import.sh
        echo -e "\e[1;32mSymlinks to Import Movies/Shows are done.\e[0m";;
  # REMOVE UNUSED MOVIES
    3)  python3 discard_movies.py
        echo -e "\e[1;31mRemoves movies from Real-Debrid that do not have a symlink attached to them.\e[0m";;
  # REMOVE UNUSED SHOWS
    4)  python3 discard_shows.py
        echo -e "\e[1;31mRemoves movies from Real-Debrid that do not have a symlink attached to them.\e[0m";;
  # CHECK BROKEN SYMLINKS
    5)  ./broken.sh
        echo -e "\e[1;31mCheck for broken symlinks done.\e[0m";;
  # Remove Broken Symlinks
    6)  ./remove.sh
        echo -e "\e[1;31mRemove broken symlinks done.\e[0m";;
  # Exit
    0)  echo -e "\e[1;33mQuitting...\e[0m"
        exit;;
    *)  echo -e "\e[1;31minvalid option. Please try again.\e[0m";;
  esac
done

