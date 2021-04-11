---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: Notre nouveau site, avec mode sombre !
# Title in web browsers and link previews (optional)
linktitle: Notre nouveau site, avec mode sombre ! | Blog Monki Projects
# Page description: paragraph in web browsers and link previews
description: Ces dernières semaines, j'ai passé beaucoup de temps à refaire entièrement notre site. Cet article détaille tous les changements qui ont été faits, avec des explications et des captures d'écrans "responsive" si besoin. Je ne rentre pas dans les détails techniques ici, donc n'hésitez pas à le lire 😉
# Page summary: paragraph summarizing the page (e.g. in list cards)
summary: Ces dernières semaines, j'ai passé beaucoup de temps à refaire entièrement notre site. Cet article détaille tous les changements qui ont été faits, avec des explications et des captures d'écrans "responsive" si besoin. Je ne rentre pas dans les détails techniques ici, donc n'hésitez pas à le lire 😉
# Date assigned to the page
date: 2021-04-06T20:29:48.415+02:00
# Last modification date
lastmod: 2021-04-10T15:02:04.322+02:00
# Images in link previews
images:
  - https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_auto/v1617994923/website/fr/uploads/articles/notre-nouveau-site-avec-mode-sombre/cover-light
# Page is a draft?
# - true: Page won't show in production, will show locally with `-D` option
# - false: Page will be visible (unless date in the future)
draft: false

##### Localization #####
# Translation key used for content localization (optional in default language)
# Value is the path to the content in the default language
# E.g. `blog/monki-map-from-2018-to-2020` is the translation key
# for French article `blog/monki-map-de-2018-a-2020`
translationKey: blog/our-new-website-with-dark-mode

########## Custom Variables ##########
# Article author (name of a file in `team/` or `authors/`)
author: remi-bardon
# Article cover in light and dark mode
cover:
  light: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/fr/uploads/articles/notre-nouveau-site-avec-mode-sombre/cover-light
  dark: https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/fr/uploads/articles/notre-nouveau-site-avec-mode-sombre/cover-dark
---

> Les captures d'écran proviennent de la version anglaise du site. Je n'avais pas envie de reprendre toutes les captures d'écrans en français, ce qui importe ici c'est la forme, pas le fond.

## Global

### En-tête

Une partie importante d'un site est son en-tête (*header*). C'est la partie que l'on voit généralement en haut de tous les sites. Elle permet la navigation simple entre les pages principales.

#### Bureau {#en-tete-bureau}

Dans notre ancienne en-tête, le logo de Monki Projects utilisait l'icône de [l'application Monki Map]({{< ref "/apps/monki-map" >}}).

Cela causait de la confusion, donc j'ai décidé d'utiliser une icône plus neutre, sans le fond et les bords arrondis comme on verrait dans [l'App Store](https://www.apple.com/fr/app-store/).

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old" title="Ancienne en-tête (mode clair seulement)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light" title="Nouvelle en-tête en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark" title="Nouvelle en-tête en mode sombre" >}}

#### Mobile format paysage {#en-tete-mobile-paysage}

Sur mobile en format paysage, l'icône de l'en-tête était trop large. Cela demandait un bouton "burger" avec un menu pliable pour la navigation. Cela cachait aussi le sélecteur de langue, rendant moins clair le fait que la page était traduite.

Dans la nouvelle version, j'ai remplacé le logo horizontal par un logo avec icône seulement. Cela m'a permis de me débarrasser du bouton "burger" et le nouveau *design* est plus épuré. Vous ne l'avez probablement pas remarqué, mais l'icône est différent en mode clair et en mode sombre (les couleurs sont plus claires en mode sombre).

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old-mobile-large" title="Ancienne en-tête (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light-mobile-large" title="Nouvelle en-tête en mode clair (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark-mobile-large" title="Nouvelle en-tête en mode sombre (mobile format paysage)" >}}
</div>

#### Mobile format portrait {#en-tete-mobile}

Comme en format paysage, en format portrait l'icône de l'en-tête était aussi trop large et on ne pouvait pas voir le sélecteur de langue. Également, le bouton "burger" était le même quand le menu était ouvert ou fermé.

Dans la nouvelle version, j'ai tout arrangé, avec un nouveau *design* encore plus joli.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old-mobile-small-1" title="Ancienne en-tête (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light-mobile-small-1" title="Nouvelle en-tête en mode clair (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark-mobile-small-1" title="Nouvelle en-tête en mode ombre (mobile format portrait)" >}}
</div>

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old-mobile-small-2" title="Ancienne en-tête (mobile format portrait, étendu)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-light-mobile-small-2" title="Nouvelle en-tête en mode clair (mobile format portrait, étendu)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-new-dark-mobile-small-2" title="Nouvelle en-tête en mode ombre (mobile format portrait, étendu)" >}}
</div>

### Pied de page

Le pied de page est similaire à l'en-tête, mais il a souvent beaucoup plus d'informations et de liens de navigation que celui-ci.

#### Bureau {#pied-de-page-bureau}

Notre ancien pied de page était bien, mais il manquait de navigation imbriquée.

J'ai choisi la mise en page simple en colonnes, en ajoutant des liens désactivés pour que ça rende mieux et pour préparer l'arrivée de nouvelles pages. *J'ai aussi enlevé la mention de l'auteur original de l'ancien thème car je l'ai réécrit de zéro et je ne m'en suis pas inspiré de toute façon.*

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-old" title="Ancien pied de page (mode clair seulement)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-light" title="Nouveau pied de page en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-dark" title="Nouveau pied de page en mode sombre" >}}

#### Mobile format paysage {#pied-de-page-mobile-paysage}

Sur mobile en format paysage, j'ai juste transformé les colonnes en grille.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-old-mobile-large" title="Ancien pied de page (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-light-mobile-large" title="Nouveau pied de page en mode clair (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-dark-mobile-large" title="Nouveau pied de page en mode sombre (mobile format paysage)" >}}
</div>

#### Mobile format portrait {#pied-de-page-mobile}

Sur mobile en format portrait, j'ai fait en sorte que la grille soit seulement faite de lignes.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-old-mobile-small" title="Ancien pied de page (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-light-mobile-small" title="Nouveau pied de page en mode clair (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/footer-new-dark-mobile-small" title="Nouveau pied de page en mode sombre (mobile format portrait)" >}}
</div>

## Page d'accueil

### *Hero section*

La *hero section* est l'endroit où l'on décrit brièvement le produit, et grâce à laquelle on attire de nouveaux clients/utilisateurs.

#### Bureau {#hero-section-bureau}

L'ancienne *hero section* était grosse et jolie, mais elle était centrée. Pour de nombreuses raisons, [on devrait généralement éviter de centrer le texte sur un site](https://medium.com/@meetchopz/10-bad-typography-habits-that-scream-amateur-8bac07f9c041). J'ai regardé les [*hero sections* de Tailwind UI](https://tailwindui.com/components/marketing/sections/heroes) pour trouver de l'inspiration, et j'ai juste copié-collé [la première](https://tailwindui.com/components/marketing/sections/heroes#component-a3c09c7a3b8f4bd90d280722eaff9634) 😏

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-old" title="Ancienne *hero section* de la page d'accueil (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-light" title="Nouvelle *hero section* de la page d'accueil en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-dark" title="Nouvelle *hero section* de la page d'accueil en mode sombre" >}}
</div>

#### Mobile format paysage {#hero-section-mobile-paysage}

Je sais que je viens juste de dire "on devrait généralement éviter de centrer le texte sur un site", mais sur mobile en format paysage, l'écran n'est pas trop large donc ça rend bien. J'ai aussi réduit la longueur du texte, et comme vous pouvez le voir, c'est plus facile à lire maintenant.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-old-mobile-large" title="Ancienne *hero section* de la page d'accueil (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-light-mobile-large" title="Nouvelle *hero section* de la page d'accueil en mode clair (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-dark-mobile-large" title="Nouvelle *hero section* de la page d'accueil en mode sombre (mobile format paysage)" >}}
</div>

#### Mobile format portrait {#hero-section-mobile}

Sur un mobile en format portrait, tout est empilé et aligné à gauche, pour que ce soit bien lisible.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-old-mobile-small" title="Ancienne *hero section* de la page d'accueil (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-light-mobile-small" title="Nouvelle *hero section* de la page d'accueil en mode clair (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-new-dark-mobile-small" title="Nouvelle *hero section* de la page d'accueil en mode sombre (mobile format portrait)" >}}
</div>

### Valeurs

C'est important de communiquer nos valeurs, et de bien le faire. L'ancienne mise en page était juste une réutilisation de [la mise en page de vue d'ensemble des fonctionnalités d'une application](#vue-d-ensemble-des-fonctionnalites), ce qui n'était pas super. J'ai décidé de concevoir une mise en page par cartes pour communiquer nos valeurs.

#### Bureau {#valeurs-bureau}

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-old" title="Nos valeurs dans l'ancienne mise en page (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-light" title="Nos valeurs dans la nouvelle mise en page en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-dark" title="Nos valeurs dans la nouvelle mise en page en mode sombre" >}}
</div>

#### Mobile format paysage {#valeurs-mobile-paysage}

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-old-mobile-large" title="Nos valeurs dans l'ancienne mise en page (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-light-mobile-large" title="Nos valeurs dans la nouvelle mise en page en mode clair (mobile format paysage)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-dark-mobile-large" title="Nos valeurs dans la nouvelle mise en page en mode sombre (mobile format paysage)" >}}
</div>

#### Mobile format portrait {#valeurs-mobile}

Pour des raisons de lisibilité, toutes les cartes sont empilées en une colonne sur mobile en format portrait.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-old-mobile-small" title="Nos valeurs dans l'ancienne mise en page (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-light-mobile-small" title="Nos valeurs dans la nouvelle mise en page en mode clair (mobile format portrait)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/values-new-dark-mobile-small" title="Nos valeurs dans la nouvelle mise en page en mode sombre (mobile format portrait)" >}}
</div>

### Présentation des applications

Sur notre page d'accueil, on présente évidemment nos applications. Le problème c'est qu'on présentait [Monki Map]({{< ref "/apps/monki-map" >}}), avec un lien vers la page de présentation de l'application, puis on a affichait à nouveau une liste de nos applications.

C'était à cause de l'ancienne mise en page, donc on l'a enlevée. On a également ajouté un contour d'iPhone pour rendre l'affichage plus joli.

<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-old-1" title="Ancienne présentation des applications sur la page d'accueil (mode clair seulement)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-old-2" title="Ancienne liste des applications en bas de la page d'accueil (mode clair seulement)" >}}
</div>
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-new-light" title="Nouvelle présentation des applications sur la page d'accueil en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/home-apps-new-dark" title="Nouvelle présentation des applications sur la page d'accueil en mode sombre" >}}
</div>

## Liste des applications

La liste des applications n'a pas beaucoup changé. Comme un peu partout dans le site, on a juste ajouté un contour d'iPhone pour rendre les captures d'écrans plus vivantes et on a amélioré la taille des éléments. *Il manque l'icône de l'application quelque part, mais on l'ajoutera plus tard.*

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/apps-old" title="Ancienne liste des applications (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/apps-new-light" title="Nouvelle liste des applications en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/apps-new-dark" title="Nouvelle liste des applications en mode sombre" >}}
</div>

## Application

### Captures d'écrans d'applications

L'ancienne mise en page de présentation d'une application utilisait une gallerie d'images pour mettre en valeur les fonctionnalités. Ce n'était pas très adaptatif (*responsive*), et utilisait [Slick](https://kenwheeler.github.io/slick/), ce qui causait divers problèmes d'affichage.

J'ai décidé de changer complètement la mise en page, pour une qui m'offre la possibilité d'avoir des descriptions pour les captures d'écrans. La mise en page que j'ai conçue est inspirée de [la page de présentation de Pitch](https://pitch.com/product-tour), mais j'ai essayé de la rendre la plus simple possible. Vous ne pouvez pas le voir sur les captures d'écrans, mais les images suivent le texte qui leur est associé. Je vous conseille d'aller voir [la page de présentation de Monki Map]({{< ref "/apps/monki-map" >}}) pour un exemple. Comme dans la liste des applications, j'ai ajouté un contour d'iPhone pour rendre l'affichage plus plaisant.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-old" title="Ancienne mise en page de présentation d'une application (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-new-light" title="Nouvelle mise en page de présentation d'une application en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-new-dark" title="Nouvelle mise en page de présentation d'une application en mode sombre" >}}
</div>

Je n'ai pas besoin d'aller dans les détails, mais l'interface s'adapte à la taille de l'écran, en mettant les captures d'écrans au-dessus des textes au besoin.

### Vue d'ensemble des fonctionnalités {#vue-d-ensemble-des-fonctionnalites}

Pour présenter rapidement les fonctionnalités d'une application, on avait une mise en page avec les fonctionnalités sur les côtés.

#### Bureau {#vue-d-ensemble-des-fonctionnalites-bureau}

Sur les écrans larges, j'ai gardé la même idée en ajoutant un contour d'iPhone pour rendre ça plus joli.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-old" title="Ancienne vue d'ensemble des fonctionnalités (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-light" title="Nouvelle vue d'ensemble des fonctionnalités en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-dark" title="Nouvelle vue d'ensemble des fonctionnalités en mode sombre" >}}
</div>

#### Mobile format paysage {#vue-d-ensemble-des-fonctionnalites-mobile-paysage}

Le texte centré est difficile à lire, alors j'ai utilisé une grille d'éléments alignés à gauche pour améliorer la mise en page.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-old-mobile-large" title="Ancienne vue d'ensemble des fonctionnalités (mode clair seulement)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-light-mobile-large" title="Nouvelle vue d'ensemble des fonctionnalités en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-dark-mobile-large" title="Nouvelle vue d'ensemble des fonctionnalités en mode sombre" >}}
</div>

#### Mobile format portrait {#vue-d-ensemble-des-fonctionnalites-mobile}

Sur mobile, tout est empilé en une colonne, pour que ce soit facile à lire.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-old-mobile-small" title="Ancienne vue d'ensemble des fonctionnalités (mode clair seulement)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-light-mobile-small" title="Nouvelle vue d'ensemble des fonctionnalités en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/app-features-new-dark-mobile-small" title="Nouvelle vue d'ensemble des fonctionnalités en mode sombre" >}}
</div>

## Liste des billets de blog

J'ai beaucoup amélioré la liste des billets de blog, et je l'aime beaucoup maintenant. Avant, c'était juste une grille moche avec des cartes de tailles fixes. Les contrastes de couleurs n'étaient pas super non plus, donc j'ai amélioré les illustrations d'articles et fait en sorte qu'elles soient affichées en mode clair ou sombre en fonction de l'affichage. Pour la mise en page, je me suis inspiré du joli [blog "The Overflow" de Stack Overflow](https://stackoverflow.blog).

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-old" title="Ancienne liste des billets de blog (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-new-light" title="Nouvelle liste des billets de blog en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-new-dark" title="Nouvelle liste des billets de blog en mode sombre" >}}
</div>

### Billet de blog

Les billets de blog n'ont pas pris beaucoup de temps à refaire, puisqu'ils ont une structure et une mise en page simples. J'ai juste appliqué la couleur primaire du site et déplacé le nom de l'auteur(trice) et la date de publication en bas de l'article. *J'ai laissé la durée de lecture avec, mais ç'aurait beaucoup plus de sens de la laisser en haut. Je le ferai plus tard.* Comme pour la [liste des billets de blog](#liste-des-billets-de-blog), les illustrations des billets de blog sont disponibles en mode clair et sombre.

<div class="sm:grid grid-cols-3 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-post-old" title="Billet de blog avec l'ancienne mise en page (mode clair seulement)" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-post-new-light" title="Billet de blog avec le nouveau thème clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_320/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/blog-post-new-dark" title="Billet de blog avec le nouveau thème sombre" >}}
</div>

## Liste des membres de l'équipe

Je n'ai jamais aimé la liste des membres de l'équipe. J'ai juste appliqué quelques règles de conception, et maintenant ça rend mieux. Rien d'incroyable ici.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-old" title="Ancienne liste des membres de l'équipe (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-new-light" title="Nouvelle liste des membres de l'équipe en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-new-dark" title="Nouvelle liste des membres de l'équipe en mode sombre" >}}
</div>

## Page d'un(e) membre de l'équipe

La page d'un(e) membre de l'équipe… rien à dire, elle était juste moche.

Je l'ai refaite, et j'ai ajouté la liste des billets de blog publiés par l'auteur(trice) le cas échéant, car ça a beaucoup de sens 🤷 Notez le fait que les cartes n'affichent pas le nom de l'auteur… puisqu'on sait déjà qui c'est.

{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-member-old" title="La page d'un membre de l'équipe avec l'ancienne mise en page (mode clair seulement)" >}}
<div class="sm:grid grid-cols-2 gap-4">
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-member-new-light" title="La page d'un membre de l'équipe avec la nouvelle mise en page en mode clair" >}}
{{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_512/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/team-member-new-dark" title="La page d'un membre de l'équipe avec la nouvelle mise en page en mode sombre" >}}
</div>
