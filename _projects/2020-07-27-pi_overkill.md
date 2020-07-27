---
title: pi_overkill — multithreaded pi estimator
cover: /assets/images/projects/pi_overkill.png
---

[pi_overkill](https://github.com/JonLiuFYI/pi_overkill) calculates the value of pi using an iterative algorithm. It splits the workload across multiple threads to greatly improve performance. It's written in Rust.
<!--more-->

## About
This is a practice project I made to learn Rust and try out its multithreading and memory safety features. As I describe in [this blog post](/pi_overkill/2020/07/26/pi_overkill.html#algorithm), each thread randomly generates millions of pairs of numbers and tests them. The total results from all the threads then fill in a formula that estimates the value of pi.

Making the algorithm multithreaded dramatically improved performance, with run time going from several seconds to only a fraction of a second.

I'm using it as a testbed to experiment with Rust's features.

## More info
Date: Jul 2020 ­– Now

* Rust