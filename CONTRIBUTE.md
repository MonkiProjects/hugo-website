# Contributing guidelines

- [Project architeture](#project-architeture)
- [Translate](#translate)
  - [What to translate](#what-to-translate)
  - [How to translate](#how-to-translate)
    - [Editing the files](#editing-the-files)
      - [The easy way](#the-easy-way)
      - [The good way](#the-good-way)
      - [The best way](#the-best-way)
    - [The file structure](#the-file-structure)
      - [Front Matter](#front-matter)
      - [Markdown content](#markdown-content)
        - [Shortcodes](#shortcodes)
        - [HTML](#html)
  - [How to submit your translations](#how-to-submit-your-translations)
- [Be part of the contributors page](#be-part-of-the-contributors-page)
  - [You have Hugo installed](#you-have-hugo-installed)
  - [You prefer GitHub](#you-prefer-github)

## Project architeture

Using Hugo as a static website generator, the content is decoupled from the theme. The website's content is written in [Markdown](https://www.markdownguide.org) inside the [`/content/`](/content/) directory. The current theme is [chimp-hugo](https://github.com/MonkiProjects/chimp-hugo).

## Translate

### What to translate

The main content which needs to be translated is the website's content files. The most important is the `/content/<language>/_index.md`. It's the website landing page, therefore it is a priority to translate this file.

When it's translated, important pages are those located in directories **other than** `/content/<language>/blog/`.

If you want, you can translate blog posts (located inside `/content/<language>/blog/`). Technical posts (e.g. development updates) don't really need to be translated. They're hard to translate, and interested people are very likely to understand English anyway.

Finally, a few words/sentences are located inside [the theme's `/i18n/` folder](https://github.com/MonkiProjects/chimp-hugo/tree/main/i18n). It's where sentences like "[n] minutes to read" are translated. There isn't much work there, but it's worth having a look in case translations are missing.

> Make sure you selected the right branch before making changes!

### How to translate

#### Editing the files

##### The easy way

The easy way is to create and edit files directly inside GitHub. It's easy, but it's not the recommended way.

##### The good way

A better solution would be to download the repository on your computer and edit the files directly. However, it would require you to have (and understand) `git` installed.

##### The best way

The best way would be to clone the repository on your computer and test in real-time with Hugo. For informations about installing Hugo, visit [Hugo's documentation](https://gohugo.io/getting-started/installing/).

To see your translations in real time, use `hugo server -D` (`-D` builds draft pages).

> After cloning the repository, you will need to run `npm install` inside the theme's directory.

#### The file structure

**The general idea if to translate content that makes sense.** However, content files are made of **two parts**, and you will find a handful of different things inside it, so you need to know a few details.

##### Front Matter

The first one, on top between the pair of `---`, is the [Front Matter](https://gohugo.io/content-management/front-matter#readout) formatted in [YAML](https://learnxinyminutes.com/docs/yaml/). If `>`, `>-`, `|` or `|-` is used before defining a text, make sure you keep it, and keep the text structure similar (new lines kept and at the same place).

##### Markdown content

The second part, after the second `---`, is the page's content written in [Markdown](https://www.markdownguide.org).

###### Shortcodes

Sometimes, you will find [Shortcodes](https://gohugo.io/content-management/shortcodes/#readout). You can recognize them by their `{{< … >}}` structure. Make sure you only translate the values defined inside (tip: `{{< name key="value" key="value" key="value" >}}`)

Let's look at examples of shortcodes:

- ```md
  {{< youtube id="_LYsnmRmhA8?start=3570" title="My part of the Pépite Starter demo day video" >}}
  ```

  Here, you only need to translate the `title`. `id` is the video unique identifier, so you shouldn't touchit. In French, you would have:

  ```md
  {{< youtube id="_LYsnmRmhA8?start=3570" title="Mon passage dans la vidéo du \"*Demo Day*\" Pépite Starter" >}}
  ```

- ```md
  {{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old" title="Old header (light mode only)" >}}
  ```

  `src` is the image URL, so you only need to translate `title`. In French, it gives:

  ```md
  {{< figure src="https://res.cloudinary.com/monki-projects/image/upload/f_auto,w_1024/v1617994923/website/en/uploads/articles/our-new-website-with-dark-mode/header-old" title="Ancienne en-tête (mode clair seulement)" >}}
  ```

  If `alt` is provided, you can translate it. If not, you can add it by yourself. It's a description of the picture for people who have difficulties and need to use a screen reader. Describe the image as if you were talking to a blind person. Describe useful things, and avoid meaningless details.

###### HTML

If you find HTML (`<div>`, `<iframe>`, etc.), generally don't touch it, or ask us if you're not sure.

### How to submit your translations

To submit your changes, [commit them](https://github.com/git-guides/git-commit), and then [create a pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request) from your language's branch to the `main` branch. We'll review it, ask for changes if needed, and [merge it](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/merging-a-pull-request) when it's ready (with automatic publishing to the website).

> This will lead to conflicts in the future if different people translate at the same time, but we'll keep things simple for now.

## Be part of the contributors page

> **Note:** This is a Work In Progress, we'll do it soon.

To appear on the "contributors" page on the website, create a file named `<first_name>-<last_name>.md` inside the [`/content/english/contributors/`](/content/english/contributors/) directory and its localized versions.

> We know it's not very efficient 😕 We'll find a more clever way of defining contributors one day.

### You have Hugo installed

Use `hugo new --kind contributor <language>/<contributors_dir>/<first_name>-<last_name>` for each language, replacing each part with the correct value.

For example, adding an entry for "Rémi Bardon" in English and French would result to:

```sh
hugo new --kind contributor english/contributors/remi-bardon
hugo new --kind contributor french/contributeurs/remi-bardon
```

Now, you should have skeleton files in the `<language>/<contributors_dir>/` directories.

### You prefer GitHub

Copy the [`/archetypes/contributors.md`](/archetypes/contributors.md) file inside the directories cited before, and fill them the same way.

Since Hugo couldn't process the file, you will have to replace the `title` and every `{{ .Date }}` by the [current ISO 8601 timestamp](https://www.isotimestamp.com).
