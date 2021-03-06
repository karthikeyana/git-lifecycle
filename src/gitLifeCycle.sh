1) ENVIRONMENT SETUP

install: 
sudo apt-get install git-core

version check: 
git --version

Setting username: 
git config --global user.name "xyz"

Setting email id: 
git config --global user.email "xyz@email.com"

Avoid merge commits for pulling: 
git config --global branch.autosetuprebase always

Color highlighting: 
git config --global color.ui true
git config --global color.status auto
git config --global color.branch auto

Setting default editor:
git config --global core.editor "subl -n -w"

Setting default merge tool:
git config --global merge.tool sublimerge
git config --global mergetool.sublimerge.cmd subl -n --wait "" "" "" "" --command "sublimerge_diff_views"
git config --global mergetool.sublimerge.trustExitCode false
git config --global diff.tool sublimerge
git config --global difftool.sublimerge.cmd subl -n --wait "" "" --command "sublimerge_diff_views {\"left_read_only\": true, \"right_read_only\": true}"

Listing Git settings:
git config --list

2) CREATE OPERATION
create a new repository on the command line:

mkdir git-lifecycle
cd git-lifecycle
git init
echo TODO: This Repository contain lifecycle of git > README
git status -s
git add .
git commit -m Initial commit
git log
git remote add origin https://github.com/karthikeyana/git-lifecycle.git
git push -u origin master

3) CLONE OPERATION
git clone https://github.com/karthikeyana/git-lifecycle.git

4) PERFORM CHANGES
git status -s
git add README 
git log

5) REVIEW CHANGES
git log
git show
git diff

6) COMMIT CHANGES
git log
git status -s 
git add README
git status -s 
git log

7) PUSH OPERATION
git log
git show
git push origin master 

8) UPDATE OPERATION
git clone https://github.com/karthikeyana/git-lifecycle.git
cd git-lifecycle
git log
git diff
git status -s 
git add README
git commit -m Update operation descriptioins
git log
git push oring master

Add new feature:
git diff
git status -s
git add README
git log
git push origin master

Fetch latest changes:
git pull
git log
git push origin master 


9) STASH OPERATION
git status -s
git stash
git status -s 
git stash list
git status -s
git stash pop

10) MOVE OPERATION
mkdir src
git mv git-lifecycle.sh src
git status -s
git commit -m 'New file added git-lifecycle.sh, created folder src, README modified and git-lifecycle.sh moved to src folder'
git status -s
git push origin master

11) DELETE OPERATION
git status -s
git rm git-lifecycle 
git commit -a -m 'git-lifecycle file removed'
git push origin master

12) FIX MISTAKES
Revert Uncommitted Changes:
git status -s
git checkout gitLifeCycle
git status -s
rm gitLifeCycle
git checkout gitLifeCycle.sh
git status -s

Remove Changes from Staging Area:
git status -s
git add gitLifeCycle.sh
git checkout HEAD -- gitLifeCycle.sh
git status -s

Move HEAD Pointer with Git Reset:
soft:
cat .git/refs/heads/master
git log -1 
git reset --soft HEAD~
cat .git/refs/heads/master
git log -1
mixed: 
git reset --mixed HEAD~
hard:
git reset --hard HEAD~
git status -s
git reset --hard acee1e6c32c86d308ac0f6b7f3ce7c54af46eb26
git status -s

13) TAG OPERATION
create tag:
git tag -a 'version-1.0' -m 'Tagged basic description of git' HEAD
git push origin tag version-1.0

view tag:
git tag -l
git show version-1.0

delete tag:
git tag -d version-1.0
git push origin :version-1.0

14) PATCH OPERATION
create patch:
git format-patch -1
apply patch without commit:
git apply 0001-Tagging-features-added.patch
apply patch with commit:
git am 0001-Tagging-features-added.patch

15) MANAGING BRANCHES
create branch:
git branch branch
list branch:
git branch
change branch:
git checkout branch

create and checkout:
git checkout -b new_branch

delete branch:
git branch -D new_branch

rename a branch:
git branch -m branch new_branch

merge two branches:
git diff
git status -s
git add src/gitLifeCycle.sh
git commit -m 'git branch operation descriptions added'
git push origin new_branch
git log origin/new_branch -2
git checkout master
git merge origin/new_branch
git log -1
git status -s 
git add src/gitLifeCycle.sh
git commit -m 'new_branch features added to master branch'
git push oring master
git checkout new_branch
git pull origin master
git diff
git status -s
