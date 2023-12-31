#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://JCCG-code.github.io
# git push -f git@github.com:JCCG-code/JCCG-code.github.io.git master

# if you are deploying to https://JCCG-code.github.io/my-portal
git push -f git@github.com:JCCG-code/my-portal.git master:gh-pages

cd -
