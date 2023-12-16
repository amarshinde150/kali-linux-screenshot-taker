# Kali Linux Screenshot Taker

## Overview

This shell script automates the process of taking screenshots of the Kali Linux window content at regular intervals, specifically designed for use with Burp Suite Intruder. The script captures screenshots every 120 seconds, facilitating the monitoring of scan results and ensuring data integrity during long-hour brute force scans.

## Purpose

During extensive brute force scans, issues such as laptop power discharge or crashes may lead to data loss. This script addresses these concerns by automating the screenshot capture process, allowing users to monitor Burp Suite Intruder results over time.

## Usage

1. **Installation:**
   - Install dependencies:
     ```bash
     sudo apt install gnome-screenshot
     sudo apt install xdotool
     ```
   - Clone the repository:
     ```bash
     git clone https://github.com/your-username/kali-linux-screenshot-taker.git
     ```
   - Navigate to the cloned repository:
     ```bash
     cd kali-linux-screenshot-taker
     ```
   - Set script permissions:
     ```bash
     chmod 777 takescreenshot.sh
     ```

2. **Run the Script:**
   - Execute the script:
     ```bash
     ./takescreenshot.sh
     ```
   - Ensure that the mouse cursor is positioned on the "Length" field of the Burp Suite Intruder.

3. **Process Overview:**
   - The script automates the following steps:
     - Click on the "Length" column.
     - Capture a screenshot.
     - Repeat the above two steps two more times.
     - Sleep for 120 seconds.
     - Repeat the process.

## Disclaimer

This script is provided as-is and should be used responsibly and in compliance with applicable laws and ethical guidelines. The user is responsible for understanding and adhering to legal and ethical considerations when using this script.

## License

This project is licensed under the [MIT License](LICENSE).
