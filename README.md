# Alsa Use Cases

## How to install

```sh
sudo apk add alsa-ucm-conf
cp -r xiaomi-vince /usr/share/alsa/ucm2
alsaucm -c xiaomi-vince set _verb HiFi set _enadev X
```

where **X** stands for:

* Handset
* Headset
* Headphones
* HandsetMic
* HeadsetMic
* SpeakerMic

## Working

* Jack Sensing (switch between headphones and speakers)
* Headset external controller buttons (Vol+, Vol-, Media)
* Vol+, Vol- mapping with ALSA volumes
* Recording
* Playback

## Know Issues

* No Speaker
* No Voice
