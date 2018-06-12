============================
OzSecCon 2018 badge firmware
============================

A fresh start on firmware for the 2018 OzSecCon badge.

Built on libopencm3, so far provides only a loopback CDC-ACM. Currently
planned is a CLI to talk to the LEDs, OLED, and the M24SR02-Y NFC chip.
If I can think of an interesting untethered use, that comes next.

.. WARNING::
  DO NOT use the badge as a USB device without breaking the Vusb 5v
  trace, which connects directly to the 3v3 power net and

  a) prevents the USB device from working,
  b) might damage your host USB port, and
  c) will damage the stm32 MCU.

  .. image:: doc/skully-mod.jpg

  You might think of connecting Vusb to +BATT, but the TPS61220 is a
  boost-only part. Looks like the badge is battery-powered only. :(

Code imported from libopencm3 or libopencm3-examples is licensed under
the LGPL version 3 or later (per upstream). Code native to this
repository is freed per the UNLICENSE.
