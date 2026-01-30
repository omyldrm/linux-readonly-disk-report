# linux-readonly-disk-report
Bash script that writes disk usage information to a read-only file.

## Description

The script collects disk usage information using `df -h`,
stores the output in a file located in `/tmp`,
and sets the file permissions to read-only.

The script must be run with root privileges.

## Usage

Make the script executable: `chmod +x disk-report.sh`
Run the script as root: `sudo ./disk-report.sh`

The output file will be created at: `/tmp/readonly.txt`

## Technologies Used
  - Bash, Linux, df, chmod

## Notes
  - Root privileges are required
  - The output file is read-only for all users
  - This script is intended for educational purposes
