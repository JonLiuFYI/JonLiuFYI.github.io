---
title: pi_overkill — multithreaded pi estimator
cover: /assets/images/projects/pi_overkill.png
---

[pi_overkill](https://github.com/JonLiuFYI/pi_overkill) calculates the value of pi using an iterative algorithm. The algorithm is parallelized, so the workload is spread across multiple threads, greatly improving its performance. It's written in Rust.
<!--more-->

## About
This is a practice project I made to learn Rust and try out its multithreading and memory safety features. As I describe in [this blog post](/pi_overkill/2020/07/26/pi_overkill.html#algorithm), each thread randomly generates millions of pairs of numbers and tests them. The total results from all the threads then fill in a formula that estimates the value of pi.

I'm using it as a testbed to experiment with Rust's features.

* Improved algorithm performance by 12x with parallelization and multithreading
* Memory and thread safe, thanks to design patterns suited for Rust
* POSIX-compliant command-line interface allows for interoperability

## More info
Date: Jul ­– Aug 2020

* Rust
