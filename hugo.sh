cd themes/chimp-hugo
npm install
cd ../..

# From <https://gohugo.io/hugo-pipes/postcss/>
# > Hugo Pipe’s PostCSS requires the `postcss-cli` JavaScript package
# > to be installed in the environment along with any PostCSS plugin(s) used
npm install -g postcss postcss-cli
npm install -g autoprefixer

 wget https://github.com/gohugoio/hugo/releases/download/v$HUGO_VERSION/hugo_extended_"$HUGO_VERSION"_Linux-64bit.tar.gz
tar xvf hugo_extended_"$HUGO_VERSION"_Linux-64bit.tar.gz
chmod +x ./hugo
./hugo --gc --minify --destination public -v
