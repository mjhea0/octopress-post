#! bin/bash

BLOG_DIR = ~/documents/repos/github/mjhea0.github.com
cd $ BLOG_DIR
echo
cd source/_posts
subl .
rake generate && rake preview


work in progress