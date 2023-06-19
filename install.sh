#!/bin/sh

set -Ceu

script_dir=$(cd $(dirname $0); pwd)

: "${PREFIX:=/usr/local}"
INSTALLFILE="template"
COMPLETIONFILE="completion.sh"
TEMPLATE_DIR_NAME="templates"
TEMPLATE_DIR_PATH=${script_dir}/${TEMPLATE_DIR_NAME}

target_bin_dir="${PREFIX}/bin"
target_template_dir="${PREFIX}/share/${TEMPLATE_DIR_NAME}"
# completiondir="/etc/bash_completion.d"
temp_install=$(mktemp)
temp_comp=$(mktemp)
trap "rm $temp_install $temp_comp" EXIT

sed -e "s%TEMPLATEDIR%${target_template_dir}%" $INSTALLFILE >> $temp_install
sed -e "s%TEMPLATEDIR%${target_template_dir}%" $COMPLETIONFILE >> $temp_comp

install -vm 755 $temp_install ${target_bin_dir}/${INSTALLFILE}
rm -rf $target_template_dir
mkdir -p $(dirname ${target_template_dir})
cp -r $TEMPLATE_DIR_PATH $target_template_dir

echo "Installed $(find -d ${TEMPLATE_DIR_PATH} -maxdepth 1)."

echo "Load the following shell script from your .bashrc or .zshrc."
echo ""
echo '```'
cat $temp_comp
echo '```'