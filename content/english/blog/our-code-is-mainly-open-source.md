---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: A big part of our code and infrastructure is open-source, feel free to contribute!
# Title in web browsers and link previews (optional)
linktitle: A big part of our code and infrastructure is open-source, feel free to contribute! | Monki Projects Blog
# Page description: paragraph in web browsers and link previews
description: Did you know we share almost everything publicly on our GitHub account? In this article, we explain you what's happening there.
# Page summary: paragraph summarizing the page (e.g. in list cards)
summary: Did you know we share almost everything publicly on our GitHub account? In this article, we explain you what's happening there.
# Date assigned to the page
date: 2020-12-25T22:20:34+01:00
# Last modification date
lastmod: 2021-04-10T15:01:40.506+02:00
# Images in link previews
images:
  - https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_auto/v1617994718/website/en/uploads/articles/our-code-is-mainly-open-source/cover-light
# Page is a draft?
# - true: Page won't show in production, will show locally with `-D` option
# - false: Page will be visible (unless date in the future)
draft: false

##### Taxonomies #####
# categories:
#   - news
# tags:
#   - dev
#   - api

########## Custom Variables ##########
# Article author (name of a file in `team/` or `authors/`)
author: remi-bardon
# Article cover in light and dark mode
cover:
  light: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994718/website/en/uploads/articles/our-code-is-mainly-open-source/cover-light
  dark: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994718/website/en/uploads/articles/our-code-is-mainly-open-source/cover-dark
---

> This article is aimed at developers. You can try to read it if you're not a developer, but we don't promise that you will understand 🙃

Apart from the code of our apps and [APIs](https://en.wikipedia.org/wiki/API), we share everything publicly on [our GitHub account](https://github.com/MonkiProjects).

Most of our code is currently written in [Swift](https://swift.org), but we also provide multiple [OpenAPI specifications](https://swagger.io/specification/) for all of our APIs. These specifications are all available in the [mp-api-specs](https://github.com/MonkiProjects/mp-api-specs) repository. Inside, we also share a development status for all of our APIs, and we redirect you to the related informations. It is the central repository for API development at Monki Projects.

Once the OpenAPI specifications will be stable, we will create clients for Swift and other languages if you need to. If your language isn't supported, you can either write its client by yourself, generated it using an [OpenAPI client generator](https://openapi-generator.tech/docs/generators#client-generators) or ask us to provide one on our GitHub.

## Repositories overview

On [our GitHub account](https://github.com/MonkiProjects), you will find multiple repositories:

| Repository | Description |
| --- | --- |
| [hugo-website](https://github.com/MonkiProjects/hugo-website) | The source code of this website, including all the articles. |
| [mp-api-specs](https://github.com/MonkiProjects/mp-api-specs) | Central repository for all API-related stuff. |
| [users-api-client-swift](https://github.com/MonkiProjects/users-api-client-swift) | The "Users API" client for Swift. |
| [placemarks-api-client-swift](https://github.com/MonkiProjects/placemarks-api-client-swift) | The "Placemarks API" client for Swift. |

If you see a typo or just want to contribute, feel free to [open an issue](https://github.com/MonkiProjects/hugo-website/issues/new) or [submit a pull request](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/proposing-changes-to-your-work-with-pull-requests).

## How to contribute

Since our APIs are well documented, you can use them to develop personal projects and contribute to our collaborative database. However, you must [reach out to us](/contact) before publishing any piece of software using our APIs on the market. We would love to see your people use your work, but we want to chat with you first 😉

For now, we're working on an iOS version of [Monki Map](/apps/monki-map), so if you're a skilled developer on another platform (mobile or desktop) and you want to help us, please [contact us](/contact).
