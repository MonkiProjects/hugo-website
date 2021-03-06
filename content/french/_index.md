---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: Monki Projects
# Title in web browsers and link previews (optional)
linktitle: Accueil | Monki Projects
# Page description: paragraph in web browsers and link previews
# description: "TODO: Insert description here"
# Page summary: paragraph summarizing the page (e.g. in list cards)
# summary: "TODO: Insert summary here"
# Date assigned to the page
date: 2020-12-25T12:00:00.000+01:00
# Last modification date
lastmod: 2021-04-11T10:46:56.206+02:00
# Images in link previews
images:
  - https://res.cloudinary.com/monki-projects/image/upload/f_auto,q_auto,dpr_auto,w_auto/v1618051692/logo/monki-projects/Monki-Projects-Logo-Horizontal-Colored-On-Dark

########## Custom Variables ##########

##### Hero section #####
hero:
  enable: true
  title:
    line1: Des projets pour
    line2: la communauté du parkour
  content: >-
    Monki Projects est un ensemble de projets qui partagent l'objectif
    d'aider la communauté du parkour et son développement.
    Le projet global a été créé dans le but de combler les besoins de la communauté.
  image: images/icon/Icon-Colored.svg
  buttons:
    primary:
      enable: true
      label: Voir nos applications
      link: /apps
    secondary:
      enable: true
      label: Lire notre blog
      link: /blog

##### Valeurs #####
features:
  enable: true
  title: Les valeurs de Monki Projects

  items:
  - title: Vie privée
    icon: fas fa-user-shield
    content: On fera toujours de notre mieux pour garder vos informations privées. On garde tout sur vos appareils, sauf si on en a vraiment besoin — et on vous demande avant d'envoyer vos informations à travers internet.
  - title: Collaboration
    icon: fas fa-users
    content: >-
      On croit fortement en la collaboration. Pour cette raison, on partage une grande partie
      de notre code et de notre infrastructure sur [GitHub](https://github.com/MonkiProjects),
      et on essaie d'écrire le plus d'articles transparents que possible.
      N'importe qui peut collaborer, peu importe qui c'est, depuis n'importe où sur le globe.
  - title: Accessibilité
    icon: fas fa-universal-access
    content: >-
      L'accessibilité c'est très important, et on le sait. On n'est pas les meilleurs,
      Mais tout ce que l'on fait, on le fait en pensant à l'accessibilité. Si vous voulez nous
      aider à nous améliorer dans ce domaine, n'hésitez pas à [nous contacter](/fr/contact) !
  - title: Evolutivité
    icon: fas fa-expand-arrows-alt
    content: >-
      On conçoit tout pour être le plus évolutif possible. Prenez notre nom par exemple :
      pour l'instant on ne travaille que sur Monki Map, mais "Monki Projects" sous-entend
      qu'il y aura d'autres applications et projets.

##### Détail Des Applications #####
about_apps:
  enable: true
  title: Nos applications
  items:
    - image: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_520/v1617990030/website/fr/apps/monki-map/monki-map-no-border
      alt: Capture d'écran de l'application Monki Map sur iOS.
      title: Trouvez les meilleurs spots, juste à côté de vous
      content: >-
        Avec **Monki Map**, vous trouverez facilement les meilleurs endroits pour vous entraîner.
        Et si vous voulez vous entraîner avec d'autres, vous le trouverez aussi.
      button:
        enable: true
        label: Découvrir **Monki Map**
        link: apps/monki-map
---
