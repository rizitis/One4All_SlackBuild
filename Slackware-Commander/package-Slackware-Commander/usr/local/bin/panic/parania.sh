#!/bin/bash

clear

# Function to print a random character at a random position
print_random_char() {
    local x=$((RANDOM % cols))
    local y=$((RANDOM % rows))
    local char=$(printf "\\$(printf '%03o' $((RANDOM % 128)))")
    tput cup $y $x
    echo -n "$char"
}

# Function to play a "hacking" sound effect
play_hacking_sound() {
    local sound_directory="/usr/share/sounds"  # Adjust the sound directory path
    local sound_files=($(find "$sound_directory" -type f))
    local hacking_sound="${sound_files[RANDOM % ${#sound_files[@]}]}"
    canberra-gtk-play -f "$hacking_sound"
}

# Terminal size
rows=$(tput lines)
cols=$(tput cols)

# Animation loop
while true; do
    print_random_char
    sleep 0.01  # Adjust the sleep duration for the animation speed
    play_hacking_sound
done
