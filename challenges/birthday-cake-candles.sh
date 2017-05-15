read n
read -a xs

max=${xs[0]}
val=1

for i in $(seq 1 $((${#xs[@]}-1))); do
	[[ ${xs[i]} -eq $max ]] && (( val++ ))
	[[ ${xs[i]} -gt $max ]] && (max=xs[i]; val=1)
done
	
echo "$val"