#!/bin/bash

# Arcade Colors
GREEN='\e[1;32m'
RED='\e[1;31m'
CYAN='\e[1;36m'
YELLOW='\e[1;33m'
MAGENTA='\e[1;35m'
RESET='\e[0m'

SCORE=0
STREAK=0
MAX_STREAK=0
TOTAL=11
HIGHSCORE_FILE="$HOME/.quiz_highscore"

# Load existing high score (or default to 0)
if [[ -f "$HIGHSCORE_FILE" ]]; then
    HIGHSCORE=$(cat "$HIGHSCORE_FILE")
else
    HIGHSCORE=0
fi

# Helper function to ask a question and track streaks
ask_question() {
    local q_num="$1"
    local question="$2"
    local ans_primary="$3"
    local ans_alt="$4"

    echo -e "${CYAN}${q_num}) ${question}${RESET}"
    read -p "Your answer: " user_ans

    if [[ "$user_ans" == "$ans_primary" || ( -n "$ans_alt" && "$user_ans" == "$ans_alt" ) ]]; then
        ((SCORE++))
        ((STREAK++))
        if (( STREAK > MAX_STREAK )); then
            MAX_STREAK=$STREAK
        fi
        if (( STREAK >= 3 )); then
            echo -e "${GREEN}[+] CORRECT!${RESET} ${YELLOW}>> ${STREAK}x COMBO STREAK! <<${RESET}"
        else
            echo -e "${GREEN}[+] CORRECT!${RESET} (Streak: ${STREAK})"
        fi
    else
        STREAK=0
        echo -e "${RED}[x] INCORRECT.${RESET} Answer: ${YELLOW}${ans_primary}${RESET} (Streak reset)"
    fi
    echo ""
}

clear
echo -e "${MAGENTA}==========================================${RESET}"
echo -e "${YELLOW}     LPI LINUX ARCADE TERMINAL QUIZ${RESET}"
echo -e "${CYAN}     All-Time High Score: ${HIGHSCORE} / ${TOTAL}${RESET}"
echo -e "${MAGENTA}==========================================${RESET}"
echo ""

ask_question "1" "Which command prints your current working directory path?" "pwd" ""
ask_question "2" "Which directory stores system-wide configuration files?" "/etc" "etc"
ask_question "3" "Which directory stores system log files (variable data)?" "/var/log" "/var"
ask_question "4" "Which command prints ONLY your exact kernel release version?" "uname -r" ""
ask_question "5" "Which command lists ALL files in detail, including hidden files?" "ls -la" "ls -al"
ask_question "6" "Which command and flag copies an ENTIRE directory and everything inside it?" "cp -r" "cp -R"
ask_question "7" "Which command is used to rename a file in Linux?" "mv" ""
ask_question "8" "Which command creates a brand-new empty file?" "touch" ""
ask_question "9" "Which command shows ONLY the last 10 lines (bottom) of a file?" "tail" ""
ask_question "10" "Which command and flag searches inside a file while ignoring uppercase/lowercase?" "grep -i" ""
ask_question "11" "Which command dumps an entire short text file onto your screen at once?" "cat" ""

echo -e "${MAGENTA}==========================================${RESET}"
echo -e "${CYAN}   Final Score : ${YELLOW}${SCORE} / ${TOTAL}${RESET}"
echo -e "${CYAN}   Best Streak : ${YELLOW}${MAX_STREAK} in a row${RESET}"

if (( SCORE > HIGHSCORE )); then
    echo "$SCORE" > "$HIGHSCORE_FILE"
    echo -e "${GREEN}   [***] NEW ALL-TIME HIGH SCORE! [***]${RESET}"
fi
echo -e "${MAGENTA}==========================================${RESET}"
