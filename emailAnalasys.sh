#!/bin/bash     

n="$1"
 grep -E -o -r "\b[A-Za-z0-9]+[\.]?+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" "$2" | cut -d ":" -f2 > outputFile.txt
        
 
 uniq -c outputFile.txt > countOutputFile.txt
 sort -n -r  countOutputFile.txt > sortedFile.txt
 
head -"$n" sortedFile.txt > topemails.txt
 grep -E -o -r "\b@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" "topemails.txt" | cut -d ":" -f2 > domain.txt

sed 's/^[ \t]*//;s/[ \t]*$//' < topemails.txt

grep -f "domain.txt" "outputFile.txt" > sameDomain.txt
sort -u sameDomain.txt > email_top_domains.txt                                               
