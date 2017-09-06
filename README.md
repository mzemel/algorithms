# Algorithms

> if you ever code something that "feels like a hack but it works," just remember that a CPU is literally a rock that we tricked into thinking [1](https://twitter.com/daisyowl/status/841802094361235456?lang=en)

## Estimated setup time

* Familiar with `git`: ~5 minutes
* Not familiar with `git`: ~15 minutes

## How to Git

1. Open a terminal emulator (e.g. Terminal.app on MacOS)
2. "Clone" this "repository" by typing:

```
git clone git@github.com:mzemel/algorithms.git
```

A repository is where a folder (directory) with code lives.  Here, the "repository" is github.  By "cloning" github's repository, you are setting up a local repository (folder with code) to mirror the remote one.

3.  In your terminal, change directories (`cd` on Mac/Linux) to this repository (`cd algorithms/`) and open this folder in your text editor of choice.

## Adding code

If you don't have a GitHub account, you'll need to [create an account](https://github.com/join?source=header-home) and [add your SSH key to GitHub](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/).  This will take about 10 minutes, if you are not familiar with SSH.  But once you set it up, you won't have to do it again on your computer.

Also, [email me](mailto:michael.zemel@gmail.com) your GitHub username, which will let me add you as a collaborator on the project and let you add code.

From inside the directory, create yourself a subdirectory (e.g. `mkdir algorithms/john_doe`) and add your code.  Either create new files inside your subdirectory or move existing ones into it - doesn't really matter.

Once you are happy with what you've added, or as close to happy as you'll be, it's time to "commit" the code.  This tells `git` to start tracking the files you've added.

NOTE: You should be in the `algorithms/` directory in your terminal when you give commands to `git`.  It's where you cloned the repository to, and it's where your `git` project lives.

```
git add . # This adds ALL local files to git tracking
git commit -m "Add a commit message here; e.g. 'Implements insertion sort'"
git push origin master # This will sync the remote repository with your local one
```

## Keeping up to date

You can now view your committed and "pushed" code at https://github.com/mzemel/algorithms

Other people can add code to the remote repository - it's what makes code sharing fun.  When people add code, you'll need to sync your local repository with the remote one.  From your local repository (i.e. your git project, or `algorithms/` directory):

```
git pull
```

That's it; `git` will pull down everyones' changes and bring you up to date with the remote repository.  Now you know `git`!