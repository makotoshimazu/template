#!/usr/bin/env bash

TEMPLATE_DIR="TEMPLATEDIR"

_template()
{
    case "${COMP_CWORD}" in
        "1")
            targets=$(find $TEMPLATE_DIR -maxdepth 1 -mindepth 1 -type d)
            COMPREPLY=($(compgen -W "${targets}" "${COMP_WORDS[COMP_CWORD]}"))
            ;;
    esac
}

complete -F _template template
