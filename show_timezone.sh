#!/bin/bash
# Define ANSI color escape codes
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color/reset

echo -e "${GREEN}Current time in ${ORANGE}UTC+11${RED}(AEDT Melbourne):${NC}"
TZ="Australia/Melbourne" date
echo -e "${GREEN}Current time in ${ORANGE}UTC-6 ${RED}(Central Time):${NC}"
TZ="America/Chicago" date
echo ############## 
echo -e "${GREEN}Current time in ${ORANGE}UTC-7 ${RED}(Mountain Time):${NC}"
TZ="America/Denver" date
echo ##############
echo -e "${GREEN}Current ${RED}time ${GREEN}in UTC-8 ${RED}(Pacific Time):${NC}"
TZ="America/Los_Angeles" date
echo ##############
# Create a line break
echo

# Display current time in UTC-5 (Eastern Time)
echo -e "${GREEN}Current time in ${ORANGE}UTC-5 (Eastern Time):${NC}"
TZ="America/New_York" date
echo -e "${GREEN}Current time in ${ORANGE}UTC-9 ${RED}(Alaska Time):${NC}"
TZ="America/Anchorage" date
echo ##############
echo -e "${GREEN}Current time in ${ORANGE}UTC-10 ${RED}(Hawaii-Aleutian Standard Time):${NC}"
TZ="Pacific/Honolulu" date
