#! /usr/bin/env bash
set -euo pipefail

log="${1:-$HOME/devops-learning-log/labs/week-02/sample.log}"

awk '{print $3}' "$log" | sort | uniq -c | awk 'BEGIN { print "Level, Count" } { print $2 "," $1}'

