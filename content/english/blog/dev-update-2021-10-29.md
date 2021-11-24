---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: Development update – October 29, 2021
# Title in web browsers and link previews (optional)
linktitle: Development update – October 29, 2021 | Monki Projects Blog
# Page description: paragraph in web browsers and link previews
description: It's been more than 6 months since our last dev update! We've done **many** things, and here is a non-exhaustive list. I also explain some fixes I made to this website, and how I fixed them in-depth.
# Page summary: paragraph summarizing the page (e.g. in list cards)
summary: It's been more than 6 months since our last dev update! We've done **many** things, and here is a non-exhaustive list. I also explain some fixes I made to this website, and how I fixed them in-depth.
# Date assigned to the page
date: 2021-11-02T14:54:19.800+02:00
# Last modification date
lastmod: 2021-11-02T14:54:19.800+02:00
# Images in link previews
images:
  - https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_auto/v1637776304/website/en/uploads/articles/dev-update-2021-10-29/cover-light
# Page is a draft?
# - true: Page won't show in production, will show locally with `-D` option
# - false: Page will be visible (unless date in the future)
draft: false

########## Custom Variables ##########
# Article author (name of a file in `team/` or `authors/`)
author: remi-bardon
# Article cover in light and dark mode
cover:
  light: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1637776304/website/en/uploads/articles/dev-update-2021-10-29/cover-light
  dark: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1637776304/website/en/uploads/articles/dev-update-2021-10-29/cover-dark
---

## What we’ve done

### In the past 6 months

- I've tried things with [GeoJSON](https://geojson.org) data and mapping on iOS. I like the fact that it's a standard,
  but I had a hard time creating the map functionalities I wanted. I did good things, which I will possibly reuse one day.
  It was mainly a Proof Of Concept, for a future feature. It's not the case yet, but **we will** support GeoJSON in the Monki Map API later.
- I improved <https://docs.monkiprojects.com>, with [some terminology](https://docs.monkiprojects.com/#terminology)
  and [a description of features](https://docs.monkiprojects.com/#features).
- The old Monki Map app icon was never intended to be used in production. It had too many details, and was a [raster graphic](https://en.wikipedia.org/wiki/Raster_graphics),
  which meant it didn't look great in small sizes, and looked **very bad** in large sizes.
  That's why I redesigned it, using a [vector graphics](https://en.wikipedia.org/wiki/Vector_graphics) tool.
  I will post it here someday.
- As explained in the docs, [places have IDs starting with `place_`](https://docs.monkiprojects.com/feature-places.html#places-have-ids-starting-with-place_).
  Unfortunately, this means place IDs are now [`String`](https://en.wikipedia.org/wiki/String_(computer_science))s,
  and not [`UUID`](https://en.wikipedia.org/wiki/Universally_unique_identifier)s.
  This makes working with them harder, so I wrote [swift-prefixed-type](https://github.com/RemiBardon/swift-prefixed-type),
  a library providing a type-safe, `Codable` data structure for prefixed types.
- Another Proof Of Concept I wrote is reading an image's [EXIF data](https://en.wikipedia.org/wiki/Exif) at images import,
  to create places at the location of the picture,
  [as described in the docs](https://docs.monkiprojects.com/feature-place-creation.html).
  When making the code cleaner, I wrote and published [swiftui-photos-picker](https://github.com/RemiBardon/swiftui-photos-picker),
  [`PHPickerViewController`](https://developer.apple.com/documentation/photokit/phpickerviewcontroller)
  for [SwiftUI](https://developer.apple.com/documentation/swiftui).
- I started writing a [Swift](https://www.swift.org) iplementation of [biscuit](https://github.com/biscuit-auth/biscuit),
  an authentication and authorization token we've been working on a lot at [Clever Cloud](https://www.clever-cloud.com).
  It's the authorization token all of Monki Projects' apps will use, and this implementation is required in order for Monki Map
  to allow user log in. As always, [biscuit-swift](https://github.com/RemiBardon/biscuit-swift) is open-source on GitHub.

### This month

#### Core Data

I rewrote the app data store to use Core Data the right way. We were using some custom setup, like a local API,
but this meant a lot of boilerplate code and a very bad integration with UIKit and SwiftUI.
This was mainly done thanks to [Donny Wals very complete book "Practical Core Data"](https://donnywals.gumroad.com/l/practical-core-data).
It’s a real goldmine, I learned the key Core Data concepts I was missing, it’s the click I needed.

#### Search parser

In the version presented on this website, we show [a working search bar]({{< ref "/apps/monki-map#a-handy-search-bar" >}}).
The problem with it is that the code backing it was very ugly, and not reusable at all.
Also, it was prone to performance issues as the app would grow, which will soon be fixed with [the use of Core Data](#core-data).

To fix those issues, I wrote a reusable search parser (<https://github.com/MonkiProjects/monki-map-search-parser>).
It uses [parser combinators](https://en.m.wikipedia.org/wiki/Parser_combinator)
and a [Parsing Expression Grammar (PEG)](https://en.m.wikipedia.org/wiki/Parsing_expression_grammar)
to make the code more performant, more robust and good-looking (really, I’m surprised how readable it is).

I wrote [tests](https://github.com/MonkiProjects/monki-map-search-parser/tree/main/Tests),
[described the grammar for users](https://github.com/MonkiProjects/monki-map-search-parser/blob/main/README.md)
and setup [workflows](https://github.com/MonkiProjects/monki-map-search-parser/tree/main/.github/workflows)
to ensure the parser works correctly on both Linux and macOS. Making it cross-platform was necessary,
because I will use the same parser in the API that will serve all other platforms.

#### Website fixes

As you had probably noticed browsing this website, there were a few (enormous) bugs which occurred from time to time. I fixed them all, yay 🎉

1. For some reason, clicking a link to a cached page (even with HTTPS link) would switch to an unsecure version of the website (HTTP).
   I don’t really know why this happened,
   but [I added a trailing slash (`/`) to menu links](https://github.com/MonkiProjects/hugo-website/commit/718b99936f8038fb6c5e69b13a2ce016eba95f25)
   and it fixed the issue 🤷🏻‍♂️
2. The most problematic issue was that if you opened a cached page, it would load without the CSS style sheet 🤭
   Surprise, this was also a cache problem 🤪 I had put an `integrity` field to the HTML tag loading the CSS file.
   Unfortunately, when the file was cached, it would resolve as a `-1` size file, and the integrity check would fail.
   For security reasons, the browser would not load the cached file.
   [I just removed it](https://github.com/MonkiProjects/chimp-hugo/commit/f6d17b98808ae28fecd374ef11e939a93ed11f40).
3. The third one was quite weird too. Because of it, the website font (Nunito) would not load. I had seen the problem months ago,
   but I had no idea where it came from. I thought about different things:
   1. Font URL changed: The font is not stored locally in the website’s files,
      it’s [loaded from a website](https://github.com/MonkiProjects/chimp-hugo/blob/701f82b640fa0e846c82de59d36197706ba28c32/assets/css/style.css#L12).
      If this URL changed for some reason, which is not supposed to happen, it would break the link. Obviously, this was not the reason.
   2. [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS):
      Because of CORS, the server delivering the font could block my website from accessing this font.
      As the font comes from [Google Fonts](https://fonts.google.com/), it’s not subject to CORS restrictions.
      Another dead end.
   3. Quotas / subscriptions: When I chose the font, it was free. However, things could have changed, and after a quick check, it did not.
      That’s good because I can keep it, but bad because I had to dig deeper.
   4. PostCSS bug: Next I thought “maybe I used a wrong PostCSS tag to load the font”,
      but [`@import url();`](https://developer.mozilla.org/en-US/docs/Web/CSS/@import) is a regular CSS tag… which means it should be read correctly.
   5. No more idea, let’s try things: The problem only happened in the production website, not locally on my computer (i.e. when developing).
      I opened this website and inspected the CSS style sheet. To my surprise, there was a Tailwind warning written in plain text (not a comment)
      on the first line which is… the line that imports the font! Hurray, I have something 🎉
   6. When [I improved this website a few months ago]({{< ref "/blog/our-new-website-with-dark-mode" >}}),
      I switched from [Bootstrap](https://getbootstrap.com) to [Tailwind](https://tailwindcss.com). Now I knew the bug came from here.
      The warning said *"warn - As of Tailwind CSS v2.2, \`lightBlue\` has been renamed to \`sky\`. warn - Please update your color palette to eliminate this warning."*.
      I checked my code, and `lightBlue` was never used 🤔
      [I tried manually upgrading Tailwind from v2.1 to v2.2](https://github.com/MonkiProjects/chimp-hugo/commit/c8fe9b9e3ca073d71f71bb70d4d788856ebe9a59),
      but this did nothing. I still didn’t have the problem locally, and it stayed in production.
   7. I figured out [the problematic line was `…colors`](https://github.com/MonkiProjects/chimp-hugo/blob/701f82b640fa0e846c82de59d36197706ba28c32/tailwind.config.js#L11).
      It imported all of Tailwind’s colors, no matter if I used it or not. I chose to do this to keep all colors available, not just my custom colors,
      but for Tailwind this meant I was using it.
      What solved my problem is [camiant’s comment in an issue on Tailwind’s repository](https://github.com/tailwindlabs/tailwindcss/issues/4690#issuecomment-881266377).
      [I added the temporary fix](https://github.com/MonkiProjects/chimp-hugo/commit/2646c0343fa54b5a53dad84e4d7a6997eb11757e) until Tailwind
      removes the color from its default palette and it solved the issue.
   8. Who would have thought the missing font came from a Tailwind warning in my CSS file, due to something I wasn’t using, put on the first line due to minification,
      and which would prevent browsers from reading the `@import` statement? 🤯
4. While fixing those 3 issues, I realized I could improve something else: the color of the browser’s bar and page background
   (see [Meta Theme Color and Trickery on css-tricks.com](https://css-tricks.com/meta-theme-color-and-trickery/))
   to avoid white straps at the top of the page (and bottom when scrolling).
   [I used the same color as the header and footer](https://github.com/MonkiProjects/chimp-hugo/commit/701f82b640fa0e846c82de59d36197706ba28c32) so now it should look gorgeous 🙂

## What we’re doing

### Switching back to UIKit

You may already know [I spent hundreds of hours (yeah… this much) rewriting the Monki Map using different architectures to find the right fit]({{< ref "/blog/monki-map-from-2018-to-2020" >}}).
Well, after a long talk during a training session with traceurs from Nantes, I realized the version I was working on for nearly a year
didn’t have the features it had in July 2020, and this was the most important.

It really clicked me that the most important is having a working app, something everyone can touch and feel.
That’s why I made the hard choice to revert the app as it was back then.
That’s the magic of [git](https://git-scm.com), a tool developers use everyday for its versioning capabilities.

This time, I didn’t start again from scratch, I just took the working year-old app to progressively include the new things I’ve been working on since then.
If you’re familiar with iOS development, I switched back to a UIKit-based app, while I was working on a SwiftUI-focused one for almost a year.

I’m progressively transforming what was complex code from a year ago to new code [using Core Data correctly](#core-data)
and using more reusable structures (like the search parser).

## Where we are

Well, it’s always hard to say, but to give you a very simple TODO list, here’s what’s done and remaining:

- [x] Buttons to create places: working but bad code
- [x] Place creation (on-device storage): working
- [ ] Global map: broken, waiting for search bar to repair
- [ ] Search bar
  - [x] “Parsing” (understanding text queries): working, clean and reusable code
  - [ ] Query builder screen (a handy screen to filter places easily): almost done
  - [ ] Map places filtering: broken, waiting for above tasks to repair
- [x] Place selection: working
- [x] Map markers clustering: working
- [ ] Place edition: screen broken, waiting for fixed map to repair
