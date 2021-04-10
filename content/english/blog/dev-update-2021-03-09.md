---
title: Development update – March 9, 2021
title: Development update – March 9, 2021 | Monki Projects Blog
date: 2021-03-09T10:08:00+01:00
lastmod: 2021-04-10T15:01:40.506+02:00
images:
  - https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_auto/v1617994718/website/en/uploads/articles/dev-update-2021-03-09/cover-light
cover:
  light: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994718/website/en/uploads/articles/dev-update-2021-03-09/cover-light
  dark: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994718/website/en/uploads/articles/dev-update-2021-03-09/cover-dark
description: I've been working on a lot of different things these days, so here is a little recap on what I've done and what still needs more work. It's mainly infrastructure and automation, but I've also worked on the website.
summary: I've been working on a lot of different things these days, so here is a little recap on what I've done and what still needs more work. It's mainly infrastructure and automation, but I've also worked on the website.
draft: false

author: remi-bardon
---

## Website

It's still a work in progress, but I've spent several hours working on two big improvements for this website:

1. **Dark mode 😍🌚**

   Everytime I go to our website at night, it burns my eyes 😵 As a developer, I know how important a dark mode is, and I've tried different techniques to set it up here. To avoid FOIT – Flash Of Incorrect Theme – (see [CSS-Tricks' Complete Guide to Dark Mode on the Web](https://css-tricks.com/a-complete-guide-to-dark-mode-on-the-web/#storing-preferences)), I decided to go for the pure [CSS](https://en.wikipedia.org/wiki/CSS) at [Operating System level](https://css-tricks.com/a-complete-guide-to-dark-mode-on-the-web/#os-level) version. Unfortunately, we're using [Bootstrap](https://getbootstrap.com), which doesn't support Dark Mode. After a lot of tries with Bootstrap, and after trying alternatives such as [Halfmoon](https://css-tricks.com/halfmoon-a-bootstrap-alternative-with-dark-mode-built-in/), I haven't been able to have a good balance of simplicity and dark mode support.

   Since we're still very busy developing our core business logic, I decided to stick with Bootstrap, to avoid rewriting a whole CSS theme for the website, but using [SCSS](https://en.wikipedia.org/wiki/Sass_(stylesheet_language)) variables overrides to handle dark mode. I've had problems, but it's on its way.

2. **Tags 🏷**

   We don't have a lot of articles for now, but it still needs tags to organize subjects. [Hugo](https://gohugo.io) provides very useful tools for tag organization, so it wasn't very difficult. It's almost done, but I'll ship it with the Dark Mode support.

## GitHub Pages redirection

Very simple task, but I just configured [GitHub Pages](https://pages.github.com/) to redirect [monkiprojects.github.io](https://monkiprojects.github.io) to [docs.monkiprojects.com](https://docs.monkiprojects.com/).

> This part is more aimed at developers. You can try to read it if you're not a developer, but I don't promise that you will understand 🙃

## OpenAPI specifications

I've spent quite a lot of time improving the [OpenAPI](https://swagger.io/docs/specification/about/) definition process and automating most of it. So far, here is my to-do list:

- [x] Define OpenAPI specifications for each API in [dedicated files](https://github.com/MonkiProjects/monki-projects-api-specs/blob/f81b8ab58b2cd6effd7541e731becaa5a44c7f86/specs)
- [ ] Clean and refactor OpenAPI specifications (make them more readable)
- [x] [Merge all OpenAPI specifications files](https://github.com/MonkiProjects/monki-projects-api-specs/blob/f81b8ab58b2cd6effd7541e731becaa5a44c7f86/merge.sh) in [one single file](https://github.com/MonkiProjects/monki-projects-api-specs/blob/f81b8ab58b2cd6effd7541e731becaa5a44c7f86/specs/monki-projects-api-v1.yaml)
- [x] Generate [Swagger UI interface for merged OpenAPI definitions](https://docs.monkiprojects.com/monki-projects-api-specs/)
- [ ] Generate Swagger UI interface for all OpenAPI definitions (merged and separated) using [`urls` parameter](https://swagger.io/docs/open-source-tools/swagger-ui/usage/configuration/#core)

## Monki Projects API improvements

In addition to developping most of the features defined in [Monki Projects' API specification](https://github.com/MonkiProjects/monki-projects-api-specs/blob/f81b8ab58b2cd6effd7541e731becaa5a44c7f86/specs/monki-projects-api-v1.yaml), I've configured [SwiftLint](https://github.com/realm/SwiftLint), to enforce code style and conventions, and [Sitrep](https://github.com/twostraws/Sitrep), to analyse source code.

I've also spent a lot of time on a nasty [Swift Package Manager](https://swift.org/package-manager/) bug… which was caused by a patch I wrote a few months ago 🤦🏻‍♂️

## Automatic API clients generation

Monki Projects [APIs](https://en.wikipedia.org/wiki/API) are, for the most part, our business logic. Our apps and pieces of software are, for the most part, our business logic too. However, the communication in between is not. That's why we decided to define clear [OpenAPI specifications](https://swagger.io/docs/specification/about/) for all our APIs and automate client code generation in all languages. For now, we only support [Swift](https://swift.org/about/) (because no use case need another language for now), but it would be very easy to generate clients in tons of other languages (as long as they're supported by [OpenAPI Generator](https://openapi-generator.tech/)).

> The Swift client generator is still in development, so its output is not as good as we'd like it to be (see [OpenAPITools/openapi-generator#8901](https://github.com/OpenAPITools/openapi-generator/issues/8901)), but we'll use it for now to save time, and will contribute later if needed.

## Reusable SwiftUI views

We're developping an app, on iOS for now *(don't worry, Android will come shortly after, that's why I spend so much effort in separating and specifying everything)*, but there will be a macOS and iPadOS app too. Therefore, we need reusable views to make development faster and to have a great app identity. It will also facilitate code maintenance, readability, and will allow everyone to use Monki Map views (and all of Monki Projects' ones by extension) in their projects.

I've spent a lot of time setting up the architecture and automation mentioned above, so the app development had to be paused. However, I've created a small macOS app in a few hours *– see the strength of having compartmentalized code? –* allowing one to create an account, log in, log out, see users list and published/submitted places list. It was just a small project to test the infrastructure (successfully) and find problems (successfully too 😭), that's why it's not on GitHub yet.

## Automatic diagrams generation

I'm a visual guy, and I feel these articles miss diagrams and pictures. To make it easier, I've decided to script the use of [Kroki](https://kroki.io/) to generate diagrams from their textual descriptions. It has the advantage of allowing version control (using `git`) and has an incredible portability (since it uses Open-Source tools with common formats).

- [x] Use [Kroki](https://kroki.io/) manually
- [x] Script diagrams generation
- [x] Add [cache](https://en.wikipedia.org/wiki/Cache_(computing)) to avoid useless diagram generation
  - [x] Store [file hashes (SHA-256)](https://en.wikipedia.org/wiki/Secure_Hash_Algorithms)
  - [x] Clean cache from deleted input files hashes
  - [x] Detect deleted output files (even though input file hash is cached)
  - [x] Allow multiple format output (i.e. know that `diagram1.svg` is generated but not `diagram1.png`)
- [x] Add cache cleaning in case something went wrong (`-f` option to force generation)
- [x] Write [script usage documentation](https://github.com/MonkiProjects/monki-projects-api-specs/blob/f81b8ab58b2cd6effd7541e731becaa5a44c7f86/CONTRIBUTE.md#createupdate-diagrams)
- [ ] Allow generation outside of [monki-projects-api-specs](https://github.com/MonkiProjects/monki-projects-api-specs)
- [ ] Create [`git` hook](https://git-scm.com/docs/githooks) / [GitHub Action](https://github.com/features/actions) to automatically generate diagrams on `git push`
- [ ] Handle script parameters properly
