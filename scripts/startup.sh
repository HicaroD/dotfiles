# Disabling natural scrolling
echo "Disabling mouse natural scrolling"
xinput set-prop $(xinput list --id-only "pointer:USB Gaming Mouse") 292 0
echo "Setting monitor to 144Hz"
xrandr --output HDMI-A-0 --primary --mode 1920x1080 --rate 144.0
