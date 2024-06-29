#!/bin/sh

INFILE=ppl.csv

#while read line1
#do
#  read line2
#  echo "$line1, $line2" | sed 's///'
#done < $INFILE

cat ppl.csv | awk -F , '{printf("BEGIN,%s,CODE1,%s,CODE2,%s,%s,CODE3,Parent Petroleum Inc,LEMONT ATS CO,02701,,,,,,%s,,,CODE4,,,,,,,,,,,,,\nITM,%s,%s,%s,CODE5,CODE6,%s,U,%s,%s,GA,1.0,,%s,12:00:00,Parent Petroleum Inc,,,%s,IL,ZIP,CODE7,LEMONT,ADDRESS HERE,,BOLINGBROOK,IL,ZIP HERE,LEMONT ATS CO,,,,,,,,,,,,,\nEND,%s,TOTAL#OFLINES(=3)\n",$1,$5,$2,$5,$5,$2,$4,$6,$3,$3,$3,$5,$7,$1)}' 





exit


IN:

Line#,Vendor Invoice #,Total Of Gal Purchased,Bill of Lading #,Invoice Date,Description (Sales Category),Point of Origin,Carrier Ref

OUT:

BEGIN,LINEID#,CODE1,YYYYMMDD,CODE2,INVOICE#,YYYYMMDD,CODE3,SELLERNAME,LEMONT ATS CO,02701,,,,,,YYYYMMDD,,,CODE4,,,,,,,,,,,,,
ITM,INVOICE#,BILLOFLADING#,FUEL DESCRIPTION,CODE5,CODE6,GALLONS,U,GALLONS,GALLONS,GA,PRICE,,YYYYMMDD,TIME,SELLERNAME,,,ORIGIN,STATE,ZIP,CODE7,LEMONT,ADDRESS HERE,,BOLINGBROOK,IL,ZIP HERE,LEMONT ATS CO,,,,,,,,,,,,,
END,LINEID#,TOTAL#OFLINES(=3)


BEGIN,%s,CODE1,%s,CODE2,%s,%s,CODE3,Parent Petroleum Inc,LEMONT ATS CO,02701,,,,,,%s,,,CODE4,,,,,,,,,,,,,
ITM,%s,%s,%s,CODE5,CODE6,%s,U,%s,%s,GA,1.0,,%s,12:00:00,Parent Petroleum Inc,,,%s,IL,ZIP,CODE7,LEMONT,ADDRESS HERE,,BOLINGBROOK,IL,ZIP HERE,LEMONT ATS CO,,,,,,,,,,,,,
