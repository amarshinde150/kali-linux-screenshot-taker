#!/bin/bash

# Check if gnome-screenshot is installed
if ! command -v gnome-screenshot &> /dev/null; then
    echo "Error: gnome-screenshot is not installed. Please install it first."
    exit 1
fi

# Define the directory to save screenshots
screenshot_dir="$HOME/Pictures"

# Create the directory if it doesn't exist
mkdir -p "$screenshot_dir"

# Infinite loop to take a screenshot every 5 seconds
while true; do
    # Set the filename based on the current date and time
    filename1="screenshot_$(date +'%Y%m%d_%H%M%S')-1.png"
    filename2="screenshot_$(date +'%Y%m%d_%H%M%S')-2.png"
    filename3="screenshot_$(date +'%Y%m%d_%H%M%S')-3.png"

    # Get current mouse positions
    MOUSE_POS=$(xdotool getmouselocation)
    # Extract the X and Y coordinates
    X_COORD=$(echo $MOUSE_POS | awk '{print $1}' | cut -d ":" -f2)
    Y_COORD=$(echo $MOUSE_POS | awk '{print $2}' | cut -d ":" -f2)

    # Simulate a mouse click at the current coordinates 3 times
    xdotool mousemove --sync $X_COORD $Y_COORD click 1
    sleep 1
    gnome-screenshot --file="$screenshot_dir/$filename1"
    sleep 1
    xdotool mousemove --sync $X_COORD $Y_COORD click 1
    sleep 1
    gnome-screenshot --file="$screenshot_dir/$filename2"
    sleep 1
    xdotool mousemove --sync $X_COORD $Y_COORD click 1
    sleep 1
    gnome-screenshot --file="$screenshot_dir/$filename3"

    # Sleep for 120 seconds
    sleep 120
done

exit 0
