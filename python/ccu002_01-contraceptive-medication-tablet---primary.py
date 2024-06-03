# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"0703010P0BIAAAA","system":"bnf"},{"code":"0703010E0BKAAAF","system":"bnf"},{"code":"0703010P0BEAAAF","system":"bnf"},{"code":"0703010F0BBAAAA","system":"bnf"},{"code":"0703010P0BFAAAC","system":"bnf"},{"code":"0703010P0BHAAAD","system":"bnf"},{"code":"0703010F0BPAAAC","system":"bnf"},{"code":"0703010F0BMAAAE","system":"bnf"},{"code":"0703010E0BHAAAC","system":"bnf"},{"code":"0703010M0BBAAAA","system":"bnf"},{"code":"0703010F0BLAAAJ","system":"bnf"},{"code":"0703010P0BDAAAB","system":"bnf"},{"code":"0703010E0BDAAAC","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-contraceptive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-contraceptive-medication-tablet---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-contraceptive-medication-tablet---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-contraceptive-medication-tablet---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
