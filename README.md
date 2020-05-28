# Alsa Use Cases
## How to install
```sh
sudo apk add alsa-ucm-conf
cp -r msm8953-snd-card-mtp /usr/share/alsa/ucm2
alsaucm -c msm8953-snd-card-mtp set _verb HiFi set _enadev X
```
where **X** stands for:
* Handset
* Headset
* Headphones
* HandsetMic
* HeadsetMic
* SpeakerMic

## Triggerhappy
You also need to install and enable triggherhappy daemon to obtain buttons control
```sh
sudo apk add triggerhappy

sudo rc-update add triggerhappy default

cp etc/triggerhappy/triggers.d/buttons.conf /etc/triggerhappy/triggers.d/

sudo rc-service triggerhappy start
```

# Working
* Jack Sensing (switch between headphones and speakers)
* Headset external controller buttons (Vol+, Vol-, Media)
* Vol+, Vol- mapping with ALSA volumes
* Recording
* Playback

# Know Issues
* Low Speaker Volume
* thd command doesn't change the volume if executed as root
