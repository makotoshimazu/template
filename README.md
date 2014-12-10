template
========
__Let's quickly start your work.__  
Expand your template files into your current directory.  

To use, only type below.
```
template report
```

Install
-------
1. Clone this repository
```
git clone https://github.com/amiq11/template.git
```
2. Copy your template into the directory you cloned
```
cp -r yourtemplate path/to/template
```
3. Install
```
sudo make install
```
4. (Only for zsh users) Add completion settings
```
mkdir ~/.zsh.d
cp /etc/bash_completion.d/template ~/.zsh.d/template-completion.bash
```
And add the following lines into ~/.zshrc .
```
autoload -U bashcompinit
bashcompinit
source ~/.zsh.d/template-completion.bash
````

Usage
-----
As type this command, yourtemplate will be expanded into your current directory.
```
template yourtemplate
```

If you want to specify the target directory, use -f option.
```
template -f targetdir yourtemplate
```

If you want to use another template, use -d option.
In this case, templatedir/yourtemplate will be scattered into your current directory.
```
template -d templatedir youtemplate
```

As you add new template, only copy the template into the directory you cloned, and reinstall.
```
cp -r newyourtemplate path/to/template
cd path/to/template
sudo make install
```
For zsh user, don't have to reinstall the zsh completion file.
