#!/bin/bash
# Check if is root
if [ ! -f &#039;symfony&#039; ]
then
echo "Please run script from project root dir"
exit 1
fi

# Get working dir
MYDIR=`dirname "$0"`
if [ ! -d $MYDIR ]; then MYDIR=`dirname "$PWD/$0"`; fi

exec ctags-exuberant -f .vimtags \
-h ".php" -R \
--exclude="\.svn" \
--totals=yes \
--tag-relative=yes \
--PHP-kinds=+cf \
--regex-PHP=&#039;/abstract class ([^ ]*)/\1/c/&#039; \
--regex-PHP=&#039;/interface ([^ ]*)/\1/c/&#039; \
--regex-PHP=&#039;/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/&#039;
