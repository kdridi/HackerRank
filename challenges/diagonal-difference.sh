read n

for i in $(seq 0 $((n-1))); do
	IFS=' ' read -a xs
	r=$((r+xs[i]-xs[n-i-1]))
done

echo ${r/-/}