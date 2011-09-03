#!/bin/sh

# This assumes a git checkout -b publish was performed from master,
# with some config edits commited on publish.

# Move to the publish integration branch, discard any changes,
# delete old stuff and merge in the master branch.
git checkout publish
git checkout -- public
git rm -rf public
git pull origin master

# Re-generate the static content, using our plugins.
compass compile source
jekyll

# Commit & push the current publish's state.
git add -A .
git commit -m "static content update"
git push origin publish

# Publish to github:pages by switching to the gh-pages branch and
# checking out our publish branch's public/ directory. We must move
# the static content at the root by hand, though.
git checkout gh-pages
rm -rf *
for file in `git ls-tree publish public -r --name-only`; do
  `git checkout publish $file` && cp -r public/* . && rm -rf public && touch .nojekyll;
done

# Commit & push the current gh-pages' state.
git add -A .
git ci -m "content update"
git push origin gh-pages

# Done!
git checkout master
