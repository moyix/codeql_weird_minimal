#!/bin/bash

COLOR_RED='\033[0;31m'
COLOR_GREEN='\033[0;32m'
COLOR_RESET='\033[0m'

function echo_red() {
    echo -e "${COLOR_RED}$*${COLOR_RESET}"
}

function echo_green() {
    echo -e "${COLOR_GREEN}$*${COLOR_RESET}"
}

# Start off from a clean slate
bash cleanup.sh

# The good case: one file, correctly detected
echo "======================= TEST 1/3 ======================="
rm -rf ql/.cache # Just in case
codeql database create db_flagged --language=cpp --overwrite --command="make -B" --source-root cwe190_flagged 
codeql database analyze db_flagged ql/cwe-190_mitre-eg-4.ql --format=csv --output=flagged_results.csv
grep --color=always scenario_flagged.c flagged_results.csv && echo_green "scenario_flagged.c was correctly detected" || echo_red "scenario_flagged.c was MISSED"

# The bad case: one file, not detected
echo "======================= TEST 2/3 ======================="
rm -rf ql/.cache # Just in case
codeql database create db_missed --language=cpp --overwrite --command="make -B" --source-root cwe190_missed 
codeql database analyze db_missed ql/cwe-190_mitre-eg-4.ql --format=csv --output=missed_results.csv
grep --color=always scenario_missed.c missed_results.csv && echo_green "scenario_missed.c was correctly detected" || echo_red "scenario_missed.c was MISSED"

# But when both files are in the same directory, *both* are detected!
echo "======================= TEST 3/3 ======================="
rm -rf ql/.cache # Just in case
codeql database create db_both --language=cpp --overwrite --command="make -B" --source-root cwe190_both 
codeql database analyze db_both ql/cwe-190_mitre-eg-4.ql --format=csv --output=both_results.csv
grep --color=always scenario_flagged.c both_results.csv && echo_green "scenario_flagged.c was correctly detected" || echo_red "scenario_flagged.c was MISSED"
grep --color=always scenario_missed.c both_results.csv && echo_green "scenario_missed.c was correctly detected" || echo_red "scenario_missed.c was MISSED"
