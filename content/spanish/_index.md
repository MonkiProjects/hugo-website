---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: Monki Projects
# Title in web browsers and link previews (optional)
linktitle: Home | Monki Projects
# Page description: paragraph in web browsers and link previews
# description: "TODO: Insert description here"
# Page summary: paragraph summarizing the page (e.g. in list cards)
# summary: "TODO: Insert summary here"
# Date assigned to the page
date: 2020-12-25T12:00:00.000+01:00
# Last modification date
lastmod: 2021-04-11T10:50:34.952+02:00
# Images in link previews
images:
  - https://res.cloudinary.com/monki-projects/image/upload/f_auto,q_auto,dpr_auto,w_auto/v1618051692/logo/monki-projects/Monki-Projects-Logo-Horizontal-Colored-On-Dark
# Page is a draft?
# - true: Page won't show in production, will show locally with `-D` option
# - false: Page will be visible (unless date in the future)
draft: true

########## Custom Variables ##########

##### Hero section #####
hero:
  enable: true
  title:
    line1: Projects for
    line2: the parkour community
  content: >-
    Monki Projects is a set of projects which share the goal of helping
    the parkour community and its development.
    The global project was created with the goal of addressing the needs of the community.
  buttons:
    primary:
      enable: true
      label: Browse our apps
      link: /apps
    secondary:
      enable: true
      label: Read our blog
      link: /blog

##### Values #####
features:
  enable: true
  title: Monki Projects' core values

  items:
  - title: Privacy
    icon: fas fa-user-shield
    content: >-
      We will always do the best we can in order to keep your data private.
      We keep everything on your devices unless we really need to —
      and we tell you before sending it across the internet.
  - title: Collaboration
    icon: fas fa-users
    content: >-
      We strongly believe in collaboration. For this reason, we share a big part
      of our code and infrastucture on [GitHub](https://github.com/MonkiProjects),
      and we try to write as many transparent posts as possible.
      Anyone can collaborate, no matter who they are, from everywhere across the globe.
  - title: Accessibility
    icon: fas fa-universal-access
    content: >-
      Accessibility is very important, and we know that. We're not the best,
      but everything we do comes with accessibility in mind. If you want to help us
      improve in this domain, don't hesitate to [contact us](/contact)!
  - title: Scalability
    icon: fas fa-expand-arrows-alt
    content: >-
      We design eveything to be the most scalable. Take our name for example:
      we're only working on Monki Map for now, but "Monki Projects" implies
      there will be other apps and projects in the future.

##### Applications details #####
about_apps:
  enable: true
  title: Our apps
  items:
    - image: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_520/v1617990030/website/fr/apps/monki-map/monki-map-no-border
      alt: Screenshot of the Monki Map iOS app.
      title: Find the best spots, right next to you
      content: >-
        With **Monki Map**, you will easily find the best places to train.
        And if you want to train with others, chances are you’ll get this too.
      button:
        enable: true
        label: Discover **Monki Map**
        link: apps/monki-map
---
