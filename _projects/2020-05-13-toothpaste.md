---
title: toothpaste — online store API
cover: /assets/images/projects/toothpaste-docs.png
---
[toothpaste](https://github.com/JonLiuFYI/toothpaste) is a hypothetical RESTful API for managing an online store's inventory and users' shopping carts. I made it as an exercise to try out Flask, a lightweight web application framework for Python.
<!--more-->

## About
This API isn't meant for real production use; I made it to learn how to use Flask. It offers functionality for viewing, changing, and adding store items; maintaining and updating a user's cart; and interacting with the storefront.

I fully documented the functionality of this API as an OpenAPI specification. It's easily human-readable and includes interactive examples and demos of how the API works. I then streamlined development using Connexion, which takes in the API specification and automatically handles HTTP requests according to how they're specified in the API docs.

I quickly detected and fixed bugs using a test-driven development process, with unit tests powered by Pytest. Since I had already written complete documentation on the API, writing comprehensive unit tests wasn't a large leap. This made implementing the API in Flask straightforward and avoided errors.

## More info
Date: Jan 2019

* Python
* [Flask](https://github.com/pallets/flask)
* [Pytest](https://docs.pytest.org/en/latest/)
* [Connexion](https://connexion.readthedocs.io/en/latest/)
