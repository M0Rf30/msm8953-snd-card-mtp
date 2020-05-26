# This is a temp workaround for ALSA non-root interaction,
# Maybe will be fixed when the audio mixer controls for q6dsp
# will be defined, avoiding alsactl store errors

AMIX="sudo -u #10000 bash -c $(which amixer)"

function volume_up() {
	$AMIX set Master 5%+
}

function volume_down() {
	$AMIX set Master 5%-
}

function display_help() {
	echo "Usage:"
	echo "$0 [ up | down ]"
}

case "$1" in
up)
	volume_up
	;;
down)
	volume_down
	;;
mute)
	volume_mute
	;;
*)
	display_help
	;;
esac
