---
title: Une grande partie de notre code et de notre infrastructure est *open-source*, n'hésitez pas à contribuer!
date: 2020-12-25T22:20:34+01:00
image: uploads/articles/french/notre-code-est-principalement-open-source.jpg
description: Hormis le code de nos applications et de nos APIs, on partage tout publiquement sur notre compte GitHub.
draft: false
translationKey: blog/our-code-is-mainly-open-source

author: Rémi Bardon
---

> Cet article est destiné à des développeurs. Vous pouvez essayer de le lire sans l'être, mais on ne vous promet pas que vous comprendrez 🙃

Hormis le code de nos appllications et de nos [APIs](https://fr.wikipedia.org/wiki/Interface_de_programmation), on partage tout publiquement sur [notre compte GitHub](https://github.com/MonkiProjects).

La plupart de notre code actuel est écrit en [Swift](https://swift.org), mais nous fournissons aussi diverses [spécifications OpenAPI](https://swagger.io/specification/) pour toutes nos APIs. Ces spécifications sont toutes disponibles dans le dépôt [mp-api-specs](https://github.com/MonkiProjects/mp-api-specs). Dedans, on partage également l'état de développement de toutes nos APIs, et on vous redirige vers les informations liées à chaqun d'eux. C'est le dépôt central pour le développement des APIs de Monki Projects.

Une fois que les spécifications OpenAPI seront stables, nous créerons des clients pour le Swift et d'autres langages si vous en avez besoin. Si votre langage n'est pas supporté, vous pouvez soit écrire son client vous-même, le générer en utilisant un [générateur de client OpenAPI](https://openapi-generator.tech/docs/generators#client-generators) ou nous demander d'en proposer un sur GitHub.

## Vue d'ensemble des dépôts

Sur [notre compte GitHub](https://github.com/MonkiProjects), vous trouverez plusieurs dépôts:

| Dépôt | Description |
| --- | --- |
| [hugo-website](https://github.com/MonkiProjects/hugo-website) | Le code source de ce site, incluant les articles. |
| [mp-api-specs](https://github.com/MonkiProjects/mp-api-specs) | Dépôt central pour tout ce qui touche aux APIs. |
| [users-api-client-swift](https://github.com/MonkiProjects/users-api-client-swift) | Client Swift de l'"API Utilisateurs". |
| [placemarks-api-client-swift](https://github.com/MonkiProjects/placemarks-api-client-swift) | Client Swift de l"API Spots". |

Si vous voyez une erreur ou que vous voulez juste contribuer, n'hésitez pas à [ouvrir un ticket](https://github.com/MonkiProjects/hugo-website/issues/new) ou [faire une *pull request*](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/proposing-changes-to-your-work-with-pull-requests).

## Comment contribuer

Comme nos APIs sont très documentées, vous pouvez les utiliser pour développer des projets personnels et contribuer à notre base de données collaborative. Cependant, vous devez [nous contacter](/contact) avant de publier tout programme utilisant nos APIs sur le marché. On adorerait voir des gens utiliser votre travail, mais on veut discuter avec vous avant 😉

Pour l'instant, on travaille sur une version iOS de [Monki Map](/apps/monki-map), alors si vous avez des compétences sur une autre plateforme (mobile ou *desktop*) et que vous voulez nous aider, [contactez nous](/contact).

## Auteur

**Rémi Bardon**  
Créateur de Monki Projects, principal (et seul) développeur
