# Disabling natural scrolling
echo "Disabling mouse natural scrolling"
xinput set-prop 10 292 0
echo "Setting monitor to 165Hz"
xrandr --output DisplayPort-0 --primary --mode 1920x1080 --rate 165
