#!/bin/sh
echo "Building the docs..."
antora --fetch --clean pulsar-publish.yml
echo "Relocating the assets directory..."
mv build/site/_ build/site/pulsar-connector
echo "Sorting out additional files..."
cp index.html build/site/pulsar-connector
mv build/site/404.html build/site/pulsar-connector
mv build/site/sitemap.xml build/site/pulsar-connector
rm build/site/index.html