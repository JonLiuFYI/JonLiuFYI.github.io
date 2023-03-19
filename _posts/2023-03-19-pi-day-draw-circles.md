---
title: Happy Pi Day! Let's draw circles!
tags: python why
cover: /assets/images/2023/03/drawpi_screenshot.png
---

Can you really trust Big Pi? Find out the truth yourself by drawing circles and finding pi independently!
<!--more-->

It's about 3.14115.

![Screenshot of DrawPi](/assets/images/2023/03/drawpi_screenshot.png)

## Background
A few years ago, [I talked about finding pi by using lots of random numbers]({% post_url 2020-07-26-pi_overkill %}). For Pi Day this year, I introduce [DrawPi](https://github.com/JonLiuFYI/DrawPi), which uses hand-drawn circles to estimate pi!

Try your best to draw circular circles.

DrawPi is implemented as a graphical app in a fantasy-console-slash-game-framework called [Pyxel](https://github.com/kitao/pyxel).

## How it works
While the mouse button is held down, it records the position of the mouse as you draw. The diameter is estimated as the mean of the greatest height and greatest width among the recorded points. The circumference is estimated as the total perimiter of the polygon defined by those points. Keep drawing circles to iteratively arrive at a mean estimated value of pi.

## For best results
While drawing, try not to overshoot the beginning point of your circle. Let go as close as possible to the start point to reduce the margin of error.

Draw fast. This ensures that the recorded mouse points are farther apart, which reduces the impact of the [coastline paradox](https://en.wikipedia.org/wiki/Coastline_paradox), where the increasing "resolution" of the hand-drawn polygon shape makes its circumference larger.
