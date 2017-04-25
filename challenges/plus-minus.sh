pn=0
nn=0
zn=0

read n
IFS=' ' read -a xs

for i in $(seq 0 $((n-1))); do
	if [[ ${xs[i]} -lt 0 ]]; then
		(( nn++ ))
	elif [[ ${xs[i]} -gt 0 ]]; then
		(( pn++ ))
	else
		(( zn++ ))
	fi
done

awk "BEGIN {printf \"%.6f\n\",$pn/$n}"
awk "BEGIN {printf \"%.6f\n\",$nn/$n}"
awk "BEGIN {printf \"%.6f\n\",$zn/$n}"