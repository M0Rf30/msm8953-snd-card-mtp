# Alsa Use Cases
```sh
sudo apk add alsa-ucm-conf
cp -r msm8953-snd-card-mtp /usr/share/alsa/ucm2
alsaucm -c msm8953-snd-card-mtp set _verb HiFi set _enadev X
```
where **X** stands for:
* Handset
* Headset
* Headphones
and so on

# Triggerhappy
```sh
sudo apk add triggerhappy
sudo rc-service add triggerhappy default
cp etc/triggerhappy/triggers.d/buttons.conf /etc/triggerhappy/triggers.d/
echo "thd --triggers /etc/triggerhappy/triggers.d/ /dev/input/event* --daemon" >> ~/.profile
```
# Working
* Jack Sensing (switch between headphones and speakers)
* Headset external controller buttons (Vol+, Vol-, Media)
* Vol+, Vol- mapping with ALSA volumes

# Know Issues
* Low Speaker Volume
* thd command doesn't change the volume if executed as root
* Recording not tested
