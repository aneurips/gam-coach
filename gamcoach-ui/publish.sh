#!/bin/bash

npm run build
cp -r ./public/*png ../dist
cp -r ./public/data ../dist
cp -r ./public/videos ../dist
cp -r ./public/build ../dist
cp -r ./public/global.css ../dist

cd ../dist
git add ./*
git commit -s -m "Deploy: $(git log '--format=format:%H' master -1)"
git push origin gh-pages
cd ./gamcoach-ui