#!/bin/sh
# autorun.sh
# Credits : David Verhasselt http://www.davidverhasselt.com/2008/12/24/zenity-rsync-and-awk/

AWK='{if (index($0, "to-check=") > 0)
   {
	split($0, pieces, "to-check=")
	split(pieces[2], term, ")");
	split(term[1], division, "/");
	print (1-(division[1]/division[2]))*100"%"
   }
   else
   {
	print "#"$0;
   }
   fflush();
}';

rsync -av --delete --progress --exclude=autorun.sh ~/Images/ $(dirname $0)/ | awk -e "$AWK" | zenity --progress --title "Backup" --text="Syncing..." --percentage=0 --auto-kill

