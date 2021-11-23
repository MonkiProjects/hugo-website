---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: Development update – April 10, 2021
# Title in web browsers and link previews (optional)
linktitle: Development update – April 10, 2021 | Monki Projects Blog
# Page description: paragraph in web browsers and link previews
description: Small update, big changes! Here is what I've been working on for the past month.
# Page summary: paragraph summarizing the page (e.g. in list cards)
summary: Small update, big changes! Here is what I've been working on for the past month.
# Date assigned to the page
date: 2021-04-10T14:08:59.374+02:00
# Last modification date
lastmod: 2021-11-24T00:13:49.367+01:00
# Images in link previews
images:
  - https://res.cloudinary.com/monki-projects/image/upload/v1637709026/website/en/uploads/articles/dev-update-2021-04-10/cover-light.jpg
# Page is a draft?
# - true: Page won't show in production, will show locally with `-D` option
# - false: Page will be visible (unless date in the future)
draft: false

########## Custom Variables ##########
# Article author (name of a file in `team/` or `authors/`)
author: remi-bardon
# Article cover in light and dark mode
cover:
  light: https://res.cloudinary.com/monki-projects/image/upload/v1637709026/website/en/uploads/articles/dev-update-2021-04-10/cover-light.jpg
  dark: https://res.cloudinary.com/monki-projects/image/upload/v1637709025/website/en/uploads/articles/dev-update-2021-04-10/cover-dark.jpg
---

## New website

The biggest thing I've done for the past weeks is creating a new website.
I encourage you to read my last article, ["Our new website, with dark mode!"]({{< ref "/blog/our-new-website-with-dark-mode" >}})
to see what's changed.

## Website building performance

Using `hugo --templateMetrics --templateMetricsHints`, I managed to go from ≈14s build time to ≈10s.

4 seconds is not much, but the real thing is that now build time is quite linear, while it was polynomial before.
What I mean by that is that every new page generated [`partial`s](https://gohugo.io/templates/partials/) – page components.
Most of those partials were the same on each page (e.g. the footer), or in each section of the website (e.g. the header).

By using [Hugo](https://gohugo.io)'s [cached partials](https://gohugo.io/templates/partials/#cached-partials),
I was able to reuse partials if they were the same, instead of generating it again.
This change saves a few seconds now, but will have a great impact when the website will grow.

## Pages loading speed

[Google PageSpeed Insights](https://developers.google.com/speed/pagespeed/insights)

| Page | Before | After |
| --- | --- | --- |
| <https://monkiprojects.com/> | 93/100 on mobile, 98/100 on desktop | 93/100 on mobile, 98/100 on desktop |
| <https://monkiprojects.com/blog/our-new-website-with-dark-mode/> | 76/100 on mobile, 93/100 on desktop | 90/100 on mobile, 98/100 on desktop |

See <https://web.dev/performance-scoring/> for metrics scores calculation.

### Pain points (fixed or not)

- Images not properly sized

  > Serve images that are appropriately-sized to save cellular data and improve load time.

  For our latest blog post, with a lot of images, Google estimated time saving at ≈180s!

- Deliver images in next gen formats

  > Image formats like JPEG 2000, JPEG XR, and WebP often provide better compression than PNG or JPEG, which means faster downloads and less data consumption.

  For our latest blog post, with a lot of images, Google estimated time saving at ≈30s!

- Cumulative Layout Shift

  > Cumulative Layout Shift measures the movement of visible elements within the viewport.

  Our pages have a high [Cumulative Layout Shift (CLS)](https://web.dev/cls/). I didn't try to improve it for now, but I'll do it someday.
