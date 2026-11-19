#!/bin/bash

SCORE=0
TOTAL=5

echo "=========================================="
echo "   LPI Linux Essentials Terminal Quiz"
echo "=========================================="
echo ""

# Question 1
echo "1) Which command prints your current working directory path?"
read -p "Your answer: " ans1
if [[ "$ans1" == "pwd" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: pwd"
fi
echo ""

# Question 2
echo "2) Which directory stores system-wide configuration files?"
read -p "Your answer: " ans2
if [[ "$ans2" == "/etc" || "$ans2" == "etc" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: /etc"
fi
echo ""

# Question 3
echo "3) Which directory stores system log files (variable data)?"
read -p "Your answer: " ans3
if [[ "$ans3" == "/var" || "$ans3" == "/var/log" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: /var or /var/log"
fi
echo ""

# Question 4
echo "4) Which command prints ONLY your exact kernel release version?"
read -p "Your answer: " ans4
if [[ "$ans4" == "uname -r" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: uname -r"
fi
echo ""

# Question 5
echo "5) Which command lists ALL files in detail, including hidden files?"
read -p "Your answer: " ans5
if [[ "$ans5" == "ls -la" || "$ans5" == "ls -al" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: ls -la"
fi
echo ""

echo "=========================================="
echo "   Final Score: $SCORE / $TOTAL"
echo "=========================================="



