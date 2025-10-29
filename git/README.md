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
Author: GitEic-Bhavin <bhavsarbhavin16@gmail.com>
Date:   Wed Oct 29 14:36:10 2025 +0530

    first commit
```