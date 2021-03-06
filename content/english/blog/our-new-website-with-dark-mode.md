---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: Our new website, with dark mode!
# Title in web browsers and link previews (optional)
linktitle: Our new website, with dark mode! | Monki Projects Blog
# Page description: paragraph in web browsers and link previews
description: Over the past few weeks, I spent a lot of time redesigning our whole website. This article covers every change made, with explainations and responsive layout screenshots if needed. I don't go into the technical details here, so feel free to read it 😉
# Page summary: paragraph summarizing the page (e.g. in list cards)
summary: Over the past few weeks, I spent a lot of time redesigning our whole website. This article covers every change made, with explainations and responsive layout screenshots if needed. I don't go into the technical details here, so feel free to read it 😉
# Date assigned to the page
date: 2021-04-04T22:54:00.155+02:00
# Last modification date
lastmod: 2021-04-10T15:01:40.506+02:00
# Images in link previews
images:
  - https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_auto/v1617994719/website/en/uploads/articles/our-new-website-with-dark-mode/cover-light
# Page is a draft?
# - true: Page won't show in production, will show locally with `-D` option
# - false: Page will be visible (unless date in the future)
draft: false

########## Custom Variables ##########
# Article author (name of a file in `team/` or `authors/`)
author: remi-bardon
# Article cover in light and dark mode
cover:
  light: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994719/website/en/uploads/articles/our-new-website-with-dark-mode/cover-light
  dark: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994719/website/en/uploads/articles/our-new-website-with-dark-mode/cover-dark
---

## Global

### Header

An important part of a website is its header. It represents the part you usually see on top of every website. It allows easy navigation across the main pages.

#### Desktop {#header-desktop}

In our old header, the Monki Projects logo used the [Monki Map app]({{< ref "/apps/monki-map" >}}) icon.

It led to a lot of confusion, so I decided to use a more neutral icon, without the background and rounded corners like you'd see in the [App Store](https://www.apple.com/app-store/).

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old" title="Old header (light mode only)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light" title="New header in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark" title="New header in dark mode" >}}

#### Landscape mobile {#header-landscape-mobile}

On landscape mobile, the header icon was too big. It required a the burger menu button with a foldable navigation. It also hid the language selector, making it unclear that the page was translated.

In the new version, I replaced the horizontal logo with an "icon-only" logo. It allowed me to get rid of the burger menu button and I ended up with a cleaner design. You will possibly not notice it, but the icon is different in light and dark mode (colors are lighter in dark mode).

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old-mobile-large" title="Old header (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light-mobile-large" title="New header in light mode (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark-mobile-large" title="New header in dark mode (landscape mobile)" >}}
</div>

#### Portrait mobile {#header-mobile}

As on landscape, on portrait mobile the header icon was also too big and we could not see the language selector. Also, the burger menu button was the same in open and closed state.

In the new version, I fixed all of this, with a beautiful new design.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old-mobile-small-1" title="Old header (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light-mobile-small-1" title="New header in light mode (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark-mobile-small-1" title="New header in dark mode (portrait mobile)" >}}
</div>

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old-mobile-small-2" title="Old header (portrait mobile, expanded)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light-mobile-small-2" title="New header in light mode (portrait mobile, expanded)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark-mobile-small-2" title="New header in dark mode (portrait mobile, expanded)" >}}
</div>

### Footer

The footer is similar to the header, but it usually has a lot more data and navigation links than the other.

#### Desktop {#footer-desktop}

Our old footer was good, but it lacked nested navigation (section names and sub-links).

I went for the simple "column" layout, adding disabled links to make it look nicer and to prepare the arrival of new pages. *I also removed the original theme's developer mention, since I completely rewrote it from scratch and wasn't very inspired by it anyway.*

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-old" title="Old footer (light mode only)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-light" title="New footer in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-dark" title="New footer in dark mode" >}}

#### Landscape mobile {#footer-landscape-mobile}

In landscape mobile, I just made the columns look like a grid.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-old-mobile-large" title="Old footer (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-light-mobile-large" title="New footer in light mode (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-dark-mobile-large" title="New footer in dark mode (landscape mobile)" >}}
</div>

#### Portrait mobile {#footer-mobile}

In portrait mobile, I made the grid look like rows.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-old-mobile-small" title="Old footer (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-light-mobile-small" title="New footer in light mode (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-dark-mobile-small" title="New footer in dark mode (portrait mobile)" >}}
</div>

## Home page

### Hero section

Hero sections are where you explain your product very quickly, and where you attract more customers.

#### Desktop {#hero-section-desktop}

The old hero section was bold and beautiful, but it was also centered. For various reasons, [one should generally avoid centering text on a website](https://medium.com/@meetchopz/10-bad-typography-habits-that-scream-amateur-8bac07f9c041). I looked at [Tailwind UI's hero sections](https://tailwindui.com/components/marketing/sections/heroes) to find inspiration, and basically copy-pasted [the first one](https://tailwindui.com/components/marketing/sections/heroes#component-a3c09c7a3b8f4bd90d280722eaff9634) 😏

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-old" title="Old home page hero section (only in light mode)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-light" title="New home page hero section in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-dark" title="New home page hero section in dark mode" >}}
</div>

#### Landscape mobile {#hero-section-landscape-mobile}

I know I just said "one should generally avoid centering text on a website", but on a landscape mobile, the screen is not too large so it looks fine. I also reduced the length of the text, and as you can see, it's easier to read now.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-old-mobile-large" title="Old home page hero section (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-light-mobile-large" title="New home page hero section in light mode (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-dark-mobile-large" title="New home page hero section in dark mode (landscape mobile)" >}}
</div>

#### Portrait mobile {#hero-section-mobile}

On a portrait mobile, everything will be stacked and left-aligned, making it very readable.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-old-mobile-small" title="Old home page hero section (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-light-mobile-small" title="New home page hero section in light mode (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-dark-mobile-small" title="New home page hero section in dark mode (portrait mobile)" >}}
</div>

### Values

It's important to communicate our values, and to do it well. The old layout was just a reuse of the [app features overview layout](#app-features-overview), which was not super convenient. I decided to design a card-looking layout to communicate our values.

#### Desktop {#values-desktop}

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-old" title="Our core values with the old layout (light mode only)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-light" title="Our core values with the new layout in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-dark" title="Our core values with the new layout in dark mode" >}}
</div>

#### Landscape mobile {#values-landscape-mobile}

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-old-mobile-large" title="Our core values with the old layout (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-light-mobile-large" title="Our core values with the new layout in light mode (landscape mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-dark-mobile-large" title="Our core values with the new layout in dark mode (landscape mobile)" >}}
</div>

#### Portrait mobile {#values-mobile}

For readability purposes, all cards are stacked in one column on mobile.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-old-mobile-small" title="Our core values with the old layout (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-light-mobile-small" title="Our core values with the new layout in light mode (portrait mobile)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-dark-mobile-small" title="Our core values with the new layout in dark mode (portrait mobile)" >}}
</div>

### Apps showcase

On our home page, we obviously present our app(s). The problem is, we presented [Monki Map]({{< ref "/apps/monki-map" >}}), with a link to the app's page, and then displayed a list containing our apps again.

This was due to the old layout, so we got rid of it. We also added an iPhone frame around the screenshots, to make it look better.

<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-old-1" title="The old home page app presentation (light mode only)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-old-2" title="The old app list at the bottom of the home page (light mode only)" >}}
</div>
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-new-light" title="The new home page app presentation in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-new-dark" title="The new home page app presentation in dark mode" >}}
</div>

## Apps list

The apps list page didn't change much. We just added an iPhone frame around the screenshots and improved the sizing of elements. *It lacks the app icon somewhere, but we'll add it in the future.*

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/apps-old" title="The old apps list (only in light mode)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/apps-new-light" title="The new apps list in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/apps-new-dark" title="The new apps list in dark mode" >}}
</div>

## App

### App screenshots

The old app page layout used an image gallery to showcase features. It was not very responsive, and used [Slick](https://kenwheeler.github.io/slick/), which caused multiple layout problems.

I decided to go with a completely different design, offering the possibility of having descriptions along with the screenshots. The design I realized was inspired by [Pitch's product tour](https://pitch.com/product-tour), but I tried to make it as simple as possible. You can't see it on screenshots, but the images follow the associated text. I suggest you to have a look at [Monki Map's page]({{< ref "/apps/monki-map" >}}) for an example. As in the apps list, I added an iPhone frame around the screenshots to make it look nicer.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-old" title="The old app presentation layout (only in light mode)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-new-light" title="The new app presentation layout in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-new-dark" title="The new app presentation layout in dark mode" >}}
</div>

I don't need to go into the details, but the layout adapts to the screen size, putting screenshots over text when needed.

### App features overview

To rapidly present an app's features, we had a design with a screenshot in the middle and features on the sides.

#### Desktop {#app-features-desktop}

On large screens, I kept the idea but added an iPhone frame to make it look nicer.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-old" title="The old app features overview layout (only in light mode)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-light" title="The new app features overview layout in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-dark" title="The new app features overview layout in dark mode" >}}
</div>

#### Landscape mobile {#app-features-landscape-mobile}

Center-aligned text is hard to read, so I used a grid of left-aligned items to improve the design.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-old-mobile-large" title="The old app features overview layout (only in light mode)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-light-mobile-large" title="The new app features overview layout in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-dark-mobile-large" title="The new app features overview layout in dark mode" >}}
</div>

#### Portrait mobile {#app-features-mobile}

On mobile, everything is stacked in a column, so it's easy to read.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-old-mobile-small" title="The old app features overview layout (only in light mode)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-light-mobile-small" title="The new app features overview layout in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-dark-mobile-small" title="The new app features overview layout in dark mode" >}}
</div>

## Blog posts list

I improved the blog post list a lot, and I really like it now. Before, it was just an ugly grid with fixed size cards. The color contrasts were not good either, especially the white text on green background, so I added a themed blog post cover. For the layout, I got inspired by the simple and beautiful design of [Stack Overflow's "The Overflow" blog](https://stackoverflow.blog).

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-old" title="The old blog posts list (only in light mode)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-new-light" title="The new blog posts list in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-new-dark" title="The new blog posts list in dark mode" >}}
</div>

### Blog post

Blog posts didn't take very long to redesign, since it has a basic structure and layout. I just applied the website's primary color and moved the author name and upload date to the bottom. *I left the reading time there, but it would make more sense if I put it back on top.* As for [blog posts list](#blog-posts-list), blog post cover images are themed in both light and dark mode.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-post-old" title="A blog post in the old layout (only in light mode)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-post-new-light" title="A blog post in the new light theme" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-post-new-dark" title="A blog post in the new dark theme" >}}
</div>

## Team members list

I never liked the team members list. I just applied a few design rules, and now it looks better. Nothing crazy here.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-old" title="The old team members list (only in light mode)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-new-light" title="The new team members list in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-new-dark" title="The new team members list in dark mode" >}}
</div>

## Team member page

The team member page… nothing to say here, it was just ugly.

I redesigned it, and added the list of posts published by the author when appropriate, because it made a lot of sense 🤷. See how the cards don't show the author… since we already know who the author is.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-member-old" title="A member page with the old layout (only in light theme)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-member-new-light" title="A member page with the new layout in light mode" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-member-new-dark" title="A member page with the new layout in dark mode" >}}
</div>
