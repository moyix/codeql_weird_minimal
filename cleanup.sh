#!/bin/bash

rm -rf ql/.cache
rm -rf db_flagged db_missed db_both
rm -f */{scenario_flagged,scenario_missed} */*.o
rm -f flagged_results.csv missed_results.csv both_results.csv
