============================
OzSecCon 2018 badge firmware
============================

A fresh start on firmware for the 2018 OzSecCon badge.

Built on libopencm3, currently provides only a loopback CDC-ACM. Currently planned is a CLI to talk to the LEDs, OLED, and the M24SR02-Y NFC chip. If I can think of an interesting untethered use, that comes next.

.. WARNING::
  DO NOT use the badge as a USB device without breaking the Vusb 5v trace.
  This connects directly to the 3v3 power net and

  a) prevents USB DFU from working, and
  b) will damage the stm32 MCU.

  .. image:: doc/skully-mod.jpg

Code imported from libopencm3 or libopencm3-examples is licensed under the LGPL version 3 or later (per upstream). Code native to this repository is freed per the UNLICENSE.
