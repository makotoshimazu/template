#!/bin/sh

if [ "$USER" != "root" ]; then
    echo "-> ERROR: installation must be executed by root user!"
    return 1
fi


PREFIX="/usr/local"
INSTALLFILE="template"
COMPLETIONFILE="completion.sh"

bindir="${PREFIX}/bin"
templatedir="${PREFIX}/share/${INSTALLFILE}"
completiondir="/etc/bash_completion.d"
temp_install=`tempfile`
temp_comp=`tempfile`

sed -e "s%TEMPLATEDIR%${templatedir}%" $INSTALLFILE > $temp_install
sed -e "s%TEMPLATEDIR%${templatedir}%" $COMPLETIONFILE > $temp_comp

install -vm 755 $temp_comp ${completiondir}/${INSTALLFILE}
install -vm 755 $temp_install ${bindir}/${INSTALLFILE}
rm -rf $tmplatedir
install -vd $templatedir
for f in `ls -F | grep / | sed -e 's/\/$//'`; do
    echo "installing $f"
    cp -r $f $templatedir
done

rm $temp_install $temp_comp
