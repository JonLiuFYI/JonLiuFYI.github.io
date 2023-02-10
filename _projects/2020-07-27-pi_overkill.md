---
title: pi_overkill
cover: /assets/images/projects/pi_overkill.png
---

A program that estimates the value of pi using a multithreaded algorithm written in Rust. (It's about 3.16.)

<!--more-->

* Date: Jul ­– Aug 2020
* [On GitHub](https://github.com/JonLiuFYI/pi_overkill/)

Made with
* Rust

## About
This is a practice project I made to learn Rust and try out its multithreading and memory safety features. As I describe in [this blog post](/pi_overkill/2020/07/26/pi_overkill.html#algorithm), each thread randomly generates millions of pairs of numbers and tests them. The total results from all the threads then fill in a formula that estimates the value of pi.

I'm using it as a testbed to experiment with Rust's features.

* Increased algorithm performance by 12x using message-passing multithreading
