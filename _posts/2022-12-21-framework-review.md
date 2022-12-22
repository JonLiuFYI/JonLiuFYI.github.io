---
title: My review of the Framework Laptop
tags: review show-and-tell fedora
date: 2022-12-21
---

It's what I hoped for, with a few acceptable drawbacks.

<!--more-->

I bought and received a Framework Laptop with the Intel Core i7 1260P in late August 2022 and have used it for about four months now, so it's time for me to share my thoughts on it, delivered in mostly point form. I'm mainly reviewing it from a perspective that's relevant to me personally, coming from a Microsoft Surface Pro 6.

* I heard about the commitment to repairability, maintenance, and Linux-friendliness
* I was looking for a more Linux-friendly laptop to replace my Surface Pro

The Framework Laptop probably won't work perfectly for Linux-libre and Libreboot. The Framework has some hardware components with Linux kernel drivers supplied as binary blobs. Its boot firmware is partially based on a proprietary one.
{.info}

## Installing the hardware
* I ordered the DIY edition, which requires installing some laptop components separately
  * In my case, I installed the DDR4 memory sticks and SSD
  * Wi-Fi antenna and battery were already set up
  * Framework claims: because of tariffs, it was cheaper to ship laptops partially assembled
* The SSD included with my laptop order was a WD Black SN850, which is better than what I had in my own desktop PC
  * I poached the SN850 drive to install in my desktop and used my old WD Blue SN550 for the Framework Laptop
  * …Which is okay, because the Blue has a lower power consumption; a common point of criticism against the Framework Laptop is its lower battery life compared to other similarly priced laptops

## Installing an operating system
I was willing to deal with installation problems, which did actually happen.

* Framework's documentation claims that Fedora works perfectly out of the box, which is nice, because it's my preferred OS
  * Technically true, but there are some things worth tweaking
  * [There are still some post-install tweaks for battery, as recommended by Framework users on the forum](https://community.frame.work/t/linux-battery-life-tuning/6665)
* The fingerprint sensor integrated in the power button works out of the box on Fedora 36, but the user experience is poor (but I don't know who to blame)
  * The setup in GNOME Settings isn't clear about what whether the fingerprint setup process is working
  * I thought it was bugged, but it actually wanted me to scan my fingerprint ~10 times in a row, but didn't say that's what it expected
  * It only said to put my finger on it without saying how many times it needed

## Keyboard
The keys feel good enough, but I miss the slant of the Type Cover.

* The keyboard's chiclet keys feel pretty good, but they're not the best
  * There's a decent snap feeling, where the keys resist a finger's press for a bit, before buckling under the pressure and quickly giving way
* Not as nice as the keys on the Surface Pro's Type Cover
  * That thing is just magic with how well it works, despite only being a bit thicker than a piece of cardboard
* Returning to a laptop form factor has reminded me that the Framework's keyboard, parallel to the plane of the desk, isn't very ergonomic
  * Rather than slanting from the wrist upwards like the Surface Pro Type Cover, it's just flat, which doesn't feel as nice
  * It especially interferes when I'm wearing a watch, which gets caught on the corner of the chassis when I try to reach my hands and fingers higher than the home row
* Surface Pro's fabric texture keyboard felt comfortable and not cold, but bare aluminum of the Framework Laptop can be cold
* The keyboard layout is okay, but Home, End, Page Up, and Page Down can only be accessed while holding the <kbd>Fn</kbd> modifier key, which is a little less convenient than I like
  * I appreciated the Surface Pro's compromises to fit those four keys on the function row and wish Framework did the same
  * If Framework had gotten rid of the "Media back", "Media next", "Project", and "Airplane mode" keys from the function row, there would have been space for Home, End, Page Up, and Page Down there
  * The "Framework logo key" on F12 does nothing of relevance

## Trackpad
The trackpad is good, but not great.

* Respectably and useably large trackpad
  * Especially compared to a Type Cover, whose trackpad is wide and short
* The latency from moving on the trackpad to seeing the mouse cursor move feels subpar
  * Maybe more latency than Surface Pro and about similar to a MacBook?
* Laptop display's 60 Hz refresh rate may be partly to blame
  * The high latency feeling goes away when connected to my 165 Hz monitor via USB-C

## Battery life
The battery life is fine for me and my use case.

* Battery life seems to be about slightly below par with my Surface Pro 6
* After the Fedora power tweaks suggested on Framework forums, I can expect about 6-7 hours of total battery time
    * Assuming web browsing and other light tasks
* NOTE: I don't go from top to bottom with the laptop's battery
  * But given the trends on energy consumption and state-of-charge over time reported by GNOME Power Statistics, I expect many hours without worrying about charging
* Power consumption is around 8 W when doing light tasks
    * Rare spikes as high as 28 W on quick burst tasks, as expected from a claimed "28 W" processor
* I wonder if battery life would have been longer if Framework offered a Ryzen 6000 mainboard instead of Core 12th gen, given AMD's advantage on power efficiency

## Display
Big for the laptop size and oddly pink.

* Comfortably bigger than my Surface Pro 6's 12-inch screen without being physically much larger
  * Thanks to thin bezel compared to the 1+ cm bezel on Surface Pro 6
* Good level of brightness and vibrancy, but the screen annoyingly leans towards pink
* The pink difference is noticeable even among other devices, whose screens are lesser quality
* The hinge lets the screen fold to 180°, flat onto a table, which is cool
* Screen wobbles, like on most laptops, because the screen is anchored only to one moving part
  * One of the nicest parts of the Surface Pro is the sturdy screen that doesn't wobble because the screen leans on the built-in kickstand
* 3:2 aspect ratio is great for having extra vertical space to read
* Resolution of 2256 × 1504 is awkward for a GNOME desktop: 100% scaling is too small, but 200% is too large
    * 125-150% is good, but only available using an experimental Wayland setting
    * And Wayland still isn't 100% meeting my needs compared to X
* Screen picks up keyboard finger oil imprints

## The lid
Wobbly and a tiny bit hard to lift.

* Logo on the lid is symmetrical, which makes it hard to tell which way the laptop opens
  * I've placed a sticker on the lid to remind myself of the direction
* There's a notch on the edge of the keyboard half of the laptop (close to one's belly) to help bring a finger underneath the lid to lift it up with one hand
  * The way it's angled doesn't make it as easy as it should be because it requires jamming a finger into the crack to pry it open
  * In comparison, a MacBook's lid-lifting notch gives the laptop a slight overbite that makes it easy to grab and lift only the lid

## Extra observations
* There are hardware switches on the webcam and microphone that physically disable them
  * They work well, but there's a slight amount of looseness that lets the red "off" label show through even in "on" mode
* The speakers are okay, but far from amazing
  * Located on the undersides of the tapered corners where one's hands rest
  * I wish they fired towards my face instead of off to the sides
* The Framework Laptop's party trick of detaching and moving its four ports around is handy for accommodating cables that run from different directions
  * I got 2 USB-C, 1 USB-A, and 1 HDMI port

## Conclusion
The only complaint I have that is truly a letdown for me is the battery life, which doesn't compete against other premium laptops, and especially not the MacBook. It also requires some operating system tuning to improve. I can personally tolerate the other tradeoffs for having a Linux-friendly experience with Framework's true claims to fame.

Framework's commitment to repairability and upgradeability, along with specifically choosing Linux-compatible hardware components, are what motivated me to get one as a replacement for my Surface Pro.
