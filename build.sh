#!/bin/sh
echo "Building the docs..."
antora --fetch --clean astra-publish.yml
echo "Relocating the assets directory..."
mv build/site/assets build/site/docs
echo "Sorting out additional files..."
mv build/site/404.html build/site/docs
mv build/site/sitemap.xml build/site/docs
rm build/site/index.html