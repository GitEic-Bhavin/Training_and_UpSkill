What is Git ?
---
- Git is **version contorl** a tool that tracks and manages changes to files over time.

- Git is a command-line tool installed locally on your computer.

What is GitHub ?
---

- GitHub is a cloud platform that hosts your Git repositories online.

Ex. Your github account.

Install Git in your local
[Install Git](https://git-scm.com/install/linux)

- Check your git versions

```bash
git --version

git version 2.34.1
```

WorkFlow of git
---

1. `git init`

- Initalize your local git repository.
- Creates a hidden folder `.git`

2. `git status`

- Shows which files are being tracking or not.

3. `git add <file/folder_name>`

- Add files / folders in `staging area` and is ready to be saved by commit.

4. `git commit -m <Your_Commit_Msg>`

- Save a snapshot of your staged files and is ready to push in github.

5. `git remote add origin "Your_Git_Repo_URL"`

- To add your git repo in your local.

6. `git push`

- Upload your commited files to github.


7. `git log`

- Shows all commits

```bash
git log
commit b1d57ce03c18913589cc614dcb34d1949af41531 (HEAD -> master, origin/master)
Date:   Wed Oct 29 14:36:10 2025 +0530

    first commit
```

8. `git show <Commit's Hash>`

- It will show what had been changes in your that commits

```bash
git show 3ae894c3992a9fa28a7577aebcb5b5e8a5b6a43b
commit 3ae894c3992a9fa28a7577aebcb5b5e8a5b6a43b (HEAD -> feature_branch, origin/feature_branch)
Date:   Wed Oct 29 15:38:37 2025 +0530

    Add changes

diff --git a/featureBranch.txt b/featureBranch.txt
index 3306430..ef1d402 100644
--- a/featureBranch.txt
+++ b/featureBranch.txt
@@ -1 +1,3 @@
 feature branch
+
+Commited new changes
\ No newline at end of file
```