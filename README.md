template
========
__Quickly Start your work. Don't waste your time.__  
Expand your template files into your current directory.

> template report

Install
-------
1. Clone this repository
> git clone https://github.com/amiq11/template.git

2. Copy your template into cloned directory
> cp -r yourtemplate yourpath/template

3. Install
> sudo make install

Usage
-----
As type this command, yourtemplate will be expanded into your current directory.
> template yourtemplate

If you want to specify the target directory, use -f option.
> template -f targetdir yourtemplate

If you want to use another template, use -d option.
In this case, templatedir/yourtemplate will be scattered into your current directory.
> template -d templatedir youtemplate

