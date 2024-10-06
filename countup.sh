# COUNTING UP clock
# Define ANSI color escape codes
#GREEN='\033[0;32m'
#ORANGE='\033[0;33m'
#NC='\033[0m' # No Color/reset
# Define color variables
RED='\033[31m'
GREEN='\033[32m'
ORANGE='\033[0;33m'
RESET='\033[0m'

start=$(date +%s)
while true; do
    time="$(($(date +%s) - $start))"
    hours=$(date -u -d "@$time" +%H)
    minutes=$(date -u -d "@$time" +%M)
    seconds=$(date -u -d "@$time" +%S)
    # Printing in color: red for hours, green for minutes, and green for seconds
 #   printf "> It's been \033[31m%s\033[0m:\033[32m%s\033[0m:\033[32m%s\033[0m:\033[0;33m\r" "$hours" "$minutes" "$seconds"
#done

# Print the time with hours in red, minutes in red, and seconds in green
printf "> It's been ${RED}%s${RESET}:${ORANGE}%s${RESET}:${GREEN}%s${RESET}\r" "$hours" "$minutes" "$seconds"
done
