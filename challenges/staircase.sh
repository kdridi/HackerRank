function chars {
	[[ $1 -gt 0 ]] && head -c $1 < /dev/zero | tr '\0' $2
}

c0='\040'
c1='\043'

read n

for i in $(seq 1 $n); do
	chars $((n - i)) $c0
	chars $i $c1
	[[ $i -lt $n ]] && echo ""
done