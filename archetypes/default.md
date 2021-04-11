---
########## Hugo Variables ##########
# Page title (also title in web browsers and link previews if `linktitle` is not specified)
title: "{{ replace .Name "-" " " | title }}"
# Title in web browsers and link previews (optional)
linktitle: "{{ replace .Name "-" " " | title }} | {{ .Site.Title }}"
# Page description: paragraph in web browsers and link previews
description: "TODO: Insert description here"
# Page summary: paragraph summarizing the page (e.g. in list cards)
summary: "TODO: Insert summary here"
# Date assigned to the page
date: {{ .Date }}
# Last modification date
lastmod: {{ .Date }}
# Publication date, page won't show before (unless `--buildFuture` option is used)
publishdate: {{ .Date }}
# Images in link previews
images:
  - "TODO: Insert Link Here"
# Page aliases
# For example, `authors/remi-bardon` is an alias for `team/remi-bardon`
aliases:
# - lorem/ipsum
# Page type. Corresponds to a folder name in theme's `layout` folder (except `partials`)
# If not set, `_default` layout will be used
type: post
# Page is a draft?
# - true: Page won't show in production, will show locally with `-D` option
# - false: Page will be visible (unless date in the future)
draft: true

##### Localization #####
# Translation key used for content localization (optional in default language)
# Value is the path to the content in the default language
# E.g. `blog/monki-map-from-2018-to-2020` is the translation key
# for French article `blog/monki-map-de-2018-a-2020`
translationKey: "TODO: Insert Translation Key Here"

########## Custom Variables ##########
---
