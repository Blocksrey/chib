# Bright by Jeffrey Skinner (blocksrey)

precision=50
backlight_path=/sys/class/backlight/*

max=$(cat $backlight_path/max_brightness)
state=$(cat $backlight_path/brightness)
state=${state#*.}

gap=$((max/precision))

[[ $1 == + ]] && state=$((state+gap))
[[ $1 == - ]] && state=$((state-gap))

[[ $state -gt $max ]] && state=$max
[[ $state -lt   0 ]] && state=0

echo $state > $backlight_path/brightness
