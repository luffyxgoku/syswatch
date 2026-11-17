# SysWatch – Linux System Resource Monitor

A Bash-based system monitoring tool that collects important Linux system resource information and generates timestamped reports.

## Features

- Displays system uptime.
- Monitors CPU load averages.
- Displays RAM and swap memory usage.
- Checks disk space utilization.
- Identifies the top 5 memory-consuming processes.
- Counts total running processes.
- Generates timestamped system monitoring reports.

## Technologies Used

- Bash Scripting
- Linux Commands
- Ubuntu

## Linux Commands Used

| Command | Purpose |
|---|---|
| `uptime` | Displays system uptime and load averages |
| `awk` | Extracts specific information from command output |
| `free` | Displays RAM and swap usage |
| `df` | Checks filesystem disk space |
| `ps` | Displays running processes |
| `head` | Limits the number of displayed lines |
| `wc` | Counts lines |
| `grep` | Filters specific output |
| `tee` | Displays and saves output |
| `date` | Generates timestamps |
| `hostname` | Displays the system hostname |

## Installation

Clone the repository:

```bash
git clone YOUR_REPOSITORY_URL
```

Navigate into the project:

```bash
cd syswatch
```

Make the script executable:

```bash
chmod +x syswatch.sh
```

## Usage

Run the monitoring script:

```bash
./syswatch.sh
```

## Output

The script displays system resource information in the terminal and generates a timestamped report.

Example:

```text
syswatch_20261117_143000.txt
```

## Requirements

- Linux or Ubuntu (including WSL2).
- Bash.
- Standard Linux utilities: `uptime`, `free`, `df`, `ps`, `awk`, `grep`, `head`, `wc`, and `tee`.

## Future Improvements

- Actual CPU utilization monitoring.
- Memory usage threshold alerts.
- Disk space warnings.
- Continuous system monitoring.
- Improved system health reporting.

## Author

Md Sami Adnan
