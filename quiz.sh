#!/bin/bash

SCORE=0
TOTAL=11

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

# Question 6
echo "6) Which command and flag copies an ENTIRE directory and everything inside it?"
read -p "Your answer: " ans6
if [[ "$ans6" == "cp -r" || "$ans6" == "cp -R" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: cp -r"
fi
echo ""

# Question 7
echo "7) Which command is used to rename a file in Linux?"
read -p "Your answer: " ans7
if [[ "$ans7" == "mv" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: mv"
fi
echo ""

# Question 8
echo "8) Which command creates a brand-new empty file?"
read -p "Your answer: " ans8
if [[ "$ans8" == "touch" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: touch"
fi
echo ""

# Question 9
echo "9) Which command shows ONLY the last 10 lines (bottom) of a file?"
read -p "Your answer: " ans9
if [[ "$ans9" == "tail" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: tail"
fi
echo ""

# Question 10
echo "10) Which command and flag searches inside a file while ignoring uppercase/lowercase?"
read -p "Your answer: " ans10
if [[ "$ans10" == "grep -i" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: grep -i"
fi
echo ""

# Question 11
echo "11) Which command dumps an entire short text file onto your screen at once?"
read -p "Your answer: " ans11
if [[ "$ans11" == "cat" ]]; then
    echo "Correct!"
    ((SCORE++))
else
    echo "Incorrect. The answer is: cat"
fi
echo ""

echo "=========================================="
echo "   Final Score: $SCORE / $TOTAL"
echo "=========================================="
