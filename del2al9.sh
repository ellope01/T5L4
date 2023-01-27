#!/bin/bash
cat disc.txt | df -h | awk '{if ($5 >= 2 && $5 <= 9) print $6}' >> sol.txt