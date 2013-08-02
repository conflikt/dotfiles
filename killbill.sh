echo "Killing all instances found matching for "$1
ps aux | grep $1 | awk '{print $2; system("kill -9 "$2"");}'
