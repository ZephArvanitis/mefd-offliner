#!/bin/bash

# thanks to https://opensource.com/article/19/12/help-bash-program for
# reminding me how the heck to do options in bash

Help()
{
   # Display Help
   echo "Scrape MEFD's handbook and generate a zim file for offline use."
   echo
   echo "Syntax: scrape.sh [-h] youremail@example.com"
   echo "options:"
   echo "h     Print this help."
   echo
}

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
     \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done

# Ensure we got an email argument (without this, mwoffliner will fail but
# with a less helpful error message)
if [ $# -eq 0  ]; then
     echo "Email address is required."
      exit 1
fi

# Actually do the scraping and generate the zim file
mwoffliner \
    --mwUrl https://handbook.mteriefire.com \
    --adminEmail $1 \
    --mwWikiPath "/w/" \
    --mwApiPath "/api.php" \
    --mwModulePath "/load.php"
