#!/bin/bash

source "$(dirname "$0")/helpers.sh"

# declare an array of urls
urls=(
  https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts
  https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
  https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/multi.txt
  https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_privacy.txt
)

# download all files in parallel and append them to input.csv
download_lists $urls 'input.csv'

# print a message when done
echo "Done. The input.csv file contains merged data from recommended filter lists."
