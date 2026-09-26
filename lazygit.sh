time=8pm
message="Commit at $((($(date +%s)-$(date -d $time +%s))/60)) minutes"
message="$(git remote get-url origin | grep -o "[[:digit:]]+[ap]m$")"

echo "$message"
remote=$(git remote get-url origin)
echo $remote


echo $(git remote get-url origin | grep "[[:digit:]]+[ap]m")
if echo $remote | grep -q "[[:digit:]]+[ap]m$"; then
	echo "Test"
fi