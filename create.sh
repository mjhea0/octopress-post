#! bin/bash

BLOG_DIR = ~/documents/repos/github/mjhea0.github.com
cd $ BLOG_DIR
echo
cd source/_posts
subl .
rake generate && rake preview


work in progress



#! /bin/bash

BLOG_DIR=~/Dropbox/Projects/octopress
cd $BLOG_DIR
NEW_POST_PATH=`rake new_post["$1"] | awk '/Creating new post:/ {print $4}'`
echo "Editing blog entry $BLOG_DIR/$NEW_POST_PATH"
sleep 1
vim $BLOG_DIR/$NEW_POST_PATH
rake generate
git add .
git commit -m"$1"
git push origin source
rake deploy
