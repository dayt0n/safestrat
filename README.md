Building
========
To build, execute: 
<pre>make</pre>

Installing
==========
To install, execute: 
<pre>make install P=DEVICE_PORT IP=DEVICE_IP_ADDRESS</pre>

An example would be: 
<pre>make install P=22 IP=192.168.1.72</pre>

Using
=====
Make sure your device is turned off. Turn it back on and immediately start holding down the volume down button to initiate safestrat.

Use a USB SSH tunnel to connect to the device.

Comex's Original Info
=====================
This isn't even my final form!  (Because it isn't all that safe; it still
depends on the same FS everything else is using.  A proper solution would come
with kexec stuff.)  But at least it should prevent me from doing anything too
stupid.

Tests for the volume down key; if it's found, enables USB (method borrowed from
ramrod from the ramdisk; much nicer than the old one!) and execs `sshd -D`.
Stick the binary in /etc/rc.d (make sure it's alphabetically first), then you
can hold volume down on boot to go straight from the jailbreak executable to
SSH over USB.  Run `killall sshd` to continue boot.

Public domain.
