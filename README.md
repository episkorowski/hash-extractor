# hash-extractor

<p>This is a simple bash script I made in an attempt to automate the extraction of password hashes from
Windows and Linux machines. I've only tested it with Windows 7 right now, but it should work for
other Windows versions as well. Not tested properly with Linux yet.</p>

<p>This is meant to be run from a USB drive while booted into a live Kali session on the machine
you're trying to extract hashes from. The hashes are dumped in the same directory as the script in a hashes.txt. 
The first argument is the location to mount (sda1, sda2, etc.) and the second is whether the partition is a 
Windows or Linux system. Could probably just check how the partition is formatted and figure it out that way, but ¯\_(ツ)_/¯</p>

Happy Cracking!


