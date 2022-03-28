In addition to the steps written in the symbiflow docs, I also had to do this:

```
su
echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0403", ATTR{idProduct}=="6010", MODE="0666"' > cat /etc/udev/rules.d/99-digilent-basys3.rules
```

and then unplug the basys3 and plug it in again, for it to be mounted with the correct file mode so as to be usable as a non-root user.