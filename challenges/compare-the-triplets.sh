read -a xs
read -a ys

xr=0
yr=0

for i in {0..2}; do
	[[ ${xs[i]} -gt ${ys[i]} ]] && (( xr++ ))
	[[ ${ys[i]} -gt ${xs[i]} ]] && (( yr++ ))
done

echo "${xr} ${yr}"