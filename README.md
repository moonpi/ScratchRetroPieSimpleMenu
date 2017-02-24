# Retro Pie Scratch
Phosophorous Scratch Installer Script for RetroPie.
## Untested
After attempting a Scratch 1.4 port and a Scratch 2.0 port on Chromium without much luck, I have decided to try Phosphorous. Let's hope this works. This will only work with an internet connection. (If it works at all)

Installation
------------
1) Install RetroPie. https://github.com/retropie/retropie-setup/wiki/manual-installation

2) Install the Simple theme on your RetroPie. (That's the only theme that works so far)
 https://github.com/retropie/retropie-setup/wiki/themes
 
3) Switch your x11 settings to anybody
```
dpkg-reconfigure x11-common
```
4) Then run installation shell script using one of the following command lines in the terminal:

```sh
curl -L https://goo.gl/j7Uj3f | bash
```

or

```sh
wget --no-check-certificate https://goo.gl/j7Uj3f -O - | bash
```
5) Pray it works

Note: I have no affliation with the makers of Phosophorous or Scratch. 
