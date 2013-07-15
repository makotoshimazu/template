#!/bin/sh

PREFIX="/usr/local"
INSTALLFILE="template"

bindir="${PREFIX}/bin"
templatedir="${PREFIX}/share/${INSTALLFILE}"
temp=`tempfile`

sed -e "s%TEMPLATEDIR%${templatedir}%" $INSTALLFILE > $temp

install -vm 755 $temp ${bindir}/${INSTALLFILE}
rm -rf $tmplatedir
install -vd $templatedir
for f in `ls -F | grep / | sed -e 's/\/$//'`; do
    echo "installing $f"
    cp -r $f $templatedir
done

rm $temp
