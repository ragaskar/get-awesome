#!/bin/bash
git config --global alias.st "status"
git config --global alias.unadd "reset HEAD"
git config --global alias.co "checkout"

git config --global branch.autosetupmerge true
git config --global push.default current

git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

git config --global alias.wtf '!bash -c "ruby ~/get-awesome/contrib/git-wtf"
