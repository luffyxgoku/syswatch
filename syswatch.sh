
#!/bin/bash

REPORT="syswatch_$(date +%Y%m%d_%H%M%S).txt"

{
    echo "========================================"
    echo "          SYSWATCH - SYSTEM MONITOR"
    echo "========================================"

    echo
    echo "DATE: $(date)"
    echo "HOSTNAME: $(hostname)"

    echo
    echo "1. SYSTEM UPTIME"
    uptime -p

    echo
    echo "2. CPU LOAD AVERAGE"
    uptime | awk -F'load average:' '{print $2}'

    echo
    echo "3. MEMORY USAGE"
    free -h

    echo
    echo "4. DISK USAGE"
    df -h /

    echo
    echo "5. TOP 5 MEMORY CONSUMING PROCESSES"
    ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6

    echo
    echo "6. TOTAL RUNNING PROCESSES"
    ps -e --no-headers | wc -l

    echo
    echo "7. SWAP MEMORY"
    free -h | grep Swap

    echo
    echo "========================================"
    echo "       SYSTEM CHECK COMPLETED"
    echo "========================================"

} | tee "$REPORT"

echo
echo "Report saved to: $REPORT"

