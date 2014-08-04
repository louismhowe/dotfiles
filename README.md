## Installation notes
My `$HOME` is just a Git working directory with all files ignored by default (see `.gitignore`).
 - Use `git add -f` to add files
 - Use `git ls-files` to list which files are tracked

To set up a new machine this way:
```
cd $HOME
git init
git remote add origin https://github.com/louismhowe/dotfiles.git
git fetch
git checkout --track origin/master
```

See also:
 - [Are there pitfalls to putting $HOME in git instead of symlinking dotfiles?][stackex]
 - [Peter Ward's shell startup scripts][flowblok]

[flowblok]:http://blog.flowblok.id.au/2013-02/shell-startup-scripts.html
[stackex]:http://unix.stackexchange.com/questions/46538/are-there-pitfalls-to-putting-home-in-git-instead-of-symlinking-dotfiles
