#!/usr/bin/env bash
cat alle_keg_asn_codes | sed 's#.*#http://www.genome.jp/dbget-bin/www_bget?&#g' | wget -i- -O- -q | egrep "ko:" | awk -F"<div>" '{print($3)}' | awk -F"[" '{print $1}' | awk -F"</div>" '{print $1}' > asn_names
pr -m -t -J alle_keg_asn_codes asn_names > asn_code_met_naam
rm asn_names
