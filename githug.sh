##! /bin/bash
rm -rf /tmp/git_hug

cd /tmp/
echo "y" | githug #create folder
cd /tmp/git_hug

#init
git init
githug

#add
git add README
githug

#commit
git commit -m "test message"
githug

#config
FULL_NAME=$(git config --get user.name)
EMAIL=$(git config --get user.email)
echo -e "$FULL_NAME\n$EMAIL" | githug

#clone
git clone https://github.com/Gazler/cloneme
githug

#clone_to_folder
git clone https://github.com/Gazler/cloneme my_cloned_repo
githug

#ignore
echo "*.swp" >> .gitignore
githug

#status
git ls-files --other --exclude-standard | githug

#rm
FILE_NAME=$(git status | grep deleted | cut -d " " -f 5)
git rm $FILE_NAME
githug

#rm_cached
FILE_NAME=$(git status | grep "new file" | cut -d " " -f 5)
echo $FILE_NAME
git rm --cached $FILE_NAME
githug

#rename
git mv oldfile.txt newfile.txt
githug

#log
git log --pretty=short | grep commit | cut -c 8-14 | githug

#tag
git tag new_tag
githug

#commit_amend
git add forgotten_file.rb
git commit --amend -C HEAD
githug

#reset
git reset HEAD to_commit_second.rb
githug

#reset_soft
git reset --soft HEAD^
githug

#checkout_file
git checkout -- config.rb
githug

#remote
git remote | githug

#remote_url
git remote -v | tail -2 | head -1 | cut -c 17-52 | githug

#pull
git pull origin master
githug

#remote_add
git remote add origin https://github.com/githug/githug
githug

#push
git rebase origin/master
git push origin
githug

#diff
echo "26" | githug

#blame
echo "spider man" | githug

#branch
git branch test_code
githug

#checkout
git checkout -b my_branch
githug

#checkout_tag
git checkout v1.2
githug

#branch_at
COMMIT=$(git log HEAD~1 --pretty=short | head -1 | cut -d " " -f 2)
git branch test_branch $COMMIT
githug

#merge
git merge feature
githug

#cherry-pick
COMMIT=$(git log new-feature --oneline  -n 3 | tail -1 | cut -d " " -f 1)
git cherry-pick $COMMIT
githug

#rename_commit
git rebase -i HEAD~2
githug

#squash
git rebase -i HEAD~3
githug

#merge_squash
git merge --squash long-feature-branch
git commit -m "Merged Long Feature Branch"
githug

#reorder
git rebase -i HEAD~3
githug

#bisect
echo "18ed2ac" | githug

#stage_lines
git add -e
githug

#find_old_branch
git checkout solve_world_hunger
githug

#revert
sleep 1
git revert HEAD~1 --no-edit
githug

#restore
git reflog | grep "Restore this commit" | awk '{print $1}' | xargs git checkout
githug

#conflict
git merge mybranch
git mergetool -t vimdiff
git commit -C HEAD
githug

#contribute
githug

#cd ..
#rm -rf git_hug
