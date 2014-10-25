#!/bin/bash

# all credit goes to: https://github.com/nwgat
# original script: https://github.com/nwgat/lftp/blob/master/lftpmirror.sh
# requires lftp: http://rudix.org/packages/lftp.html

# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"

echo ""
echo -e "$COL_MAGENTA >> Git@Me Deploy $COL_RESET"
echo ""
echo -e "$COL_BLUE >> Deploying via lftp: $COL_RESET"
echo ""

# you _could_ make this interactive (see ngwat's original script) but I chose to hardcode everything. 
# and since it's hardcoded, all you really need is the below command (but i wanted to zuzz it up a bit)
lftp ftp://USERNAME:PASSWORD@HOST -e 'mirror -R --verbose --use-pget-n=8 -c 'local_path' 'remote_path''

echo ""
echo -e "$COL_GREEN >> Dunzo $COL_RESET"

exit
done
