read -a xs

min=${xs[0]}
max=${xs[0]}
val=${xs[0]}

for i in $(seq 1 $((${#xs[@]}-1))); do
	((min=min>xs[i]?xs[i]:min))
	((max=max<xs[i]?xs[i]:max))
	((val=val+xs[i]))
done
	
echo "$((val-max)) $((val-min))"