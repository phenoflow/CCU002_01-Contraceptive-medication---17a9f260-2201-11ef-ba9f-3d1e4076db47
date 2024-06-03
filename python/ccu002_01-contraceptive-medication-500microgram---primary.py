# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"0703010F0BYAAAC","system":"bnf"},{"code":"0703010F0BQAAAA","system":"bnf"},{"code":"0703010G0BHAAAC","system":"bnf"},{"code":"0703010F0CGAAAE","system":"bnf"},{"code":"0703010F0BZAAAA","system":"bnf"},{"code":"0703010F0AAAEAE","system":"bnf"},{"code":"0703010G0BGAAAC","system":"bnf"},{"code":"0703010F0CKAAAE","system":"bnf"},{"code":"0703010E0AAACAC","system":"bnf"},{"code":"0703010M0AAAAAA","system":"bnf"},{"code":"0703010F0AAAAAA","system":"bnf"},{"code":"0703010E0AAAFAF","system":"bnf"},{"code":"0703010F0BTAAAA","system":"bnf"},{"code":"0703010E0BTAAAC","system":"bnf"},{"code":"0703010E0BCAAAB","system":"bnf"},{"code":"0703010E0BNAAAB","system":"bnf"},{"code":"0703010E0BIAAAB","system":"bnf"},{"code":"0703010E0BPAAAB","system":"bnf"},{"code":"0703010F0BUAAAA","system":"bnf"},{"code":"0703010G0AAAAAA","system":"bnf"},{"code":"0703010E0BUAAAC","system":"bnf"},{"code":"0703010E0BMAAAC","system":"bnf"},{"code":"0703010E0AAABAB","system":"bnf"},{"code":"0703010G0AAACAC","system":"bnf"},{"code":"0703010E0BJAAAC","system":"bnf"},{"code":"0703010E0BQAAAB","system":"bnf"},{"code":"0703010F0AAAJAJ","system":"bnf"},{"code":"0703010G0BCAAAA","system":"bnf"},{"code":"0703010G0BFAAAC","system":"bnf"},{"code":"0703010G0BBAAAA","system":"bnf"},{"code":"0703010F0BXAAAE","system":"bnf"},{"code":"0703010F0BSAAAC","system":"bnf"},{"code":"0703010F0CIAAAC","system":"bnf"},{"code":"0703010F0CBAAAA","system":"bnf"},{"code":"0703010F0BFAAAC","system":"bnf"},{"code":"0703010F0BRAAAE","system":"bnf"},{"code":"0703010F0CDAAAC","system":"bnf"},{"code":"0703010E0BLAAAB","system":"bnf"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-contraceptive-medication-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-contraceptive-medication-500microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-contraceptive-medication-500microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-contraceptive-medication-500microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
