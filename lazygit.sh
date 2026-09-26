date=$(date)
remote=$(git remote get-url origin)
time=$(echo $remote | grep -o "[0-9]\+[ap]m$")
if [[ -n "$time" ]]; then
	message="$(date -d "$date" "+%a %b %d") $time Lab: Commit at $((($(date -d "$date" +%s)-$(date -d $time +%s))/60)) minutes"
else
	message="Commit at $(date)"
fi
echo "$message"