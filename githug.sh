#! /bin/bash
rm -rf git_hug

echo "y" | githug #create folder
cd git_hug

#level 1
git init
githug

#level 2
git add README
githug

#level 3
git commit -m "test message"
githug

#level 4
FULL_NAME=$(git config --get user.name)
EMAIL=$(git config --get user.email)
echo -e "$FULL_NAME\n$EMAIL" | githug

#level 5
git clone https://github.com/Gazler/cloneme
githug

#level 6
git clone https://github.com/Gazler/cloneme my_cloned_repo
githug

#level 7
echo "*.swp" >> .gitignore
githug

#level 8
git ls-files --other --exclude-standard | githug

#level 9
FILE_NAME=$(git status | grep deleted | cut -d " " -f 5)
git rm $FILE_NAME
githug

#level 10
FILE_NAME=$(git status | grep "new file" | cut -d " " -f 5)
echo $FILE_NAME
git rm --cached $FILE_NAME
githug

level 11
git mv oldfile.txt newfile.txt
githug

level 12
git log | grep commit | cut -c 8-14 | githug

level 13
git tag new_tag
githug

level 14
git add forgotten_file.rb
git commit --amend -C HEAD
githug

level 15
git reset HEAD to_commit_second.rb
githug

level 16
git checkout -- config.rb
githug

level 17
git remote | githug

level 18
git remote -v | tail -2 | head -1 | cut -c 17-52 | githug

level 19
git pull origin master
githug

level 20
git remote add origin https://github.com/githug/githug
githug

level 21
echo "26" | githug

level 22
echo "spider man" | githug

level 23
git branch test_code
githug

level 24
git checkout -b my_branch
githug

level 25
COMMIT=$(git log HEAD~1 | head -1 | cut -d " " -f 2)
git branch test_branch $COMMIT
githug

level 26
git merge feature
githug

level 27
COMMIT=$(git log new-feature --oneline  -n 3 | tail -1 | cut -d " " -f 1)
git cherry-pick $COMMIT
githug

level 28
git rebase -i HEAD~2
githug

level 29
git rebase -i HEAD~3
githug

level 30
git merge --squash long-feature-branch
git commit -m "Merged Long Feature Branch"
githug

level 31
git rebase -i HEAD~3
githug

level 32
git add -e
githug

level 33
git checkout solve_world_hunger
githug

#level 34
git revert HEAD~1
githug

#level 35
githug



#cd ..
#rm -rf git_hug
