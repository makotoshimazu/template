#!bash

TEMPLATE_DIR="TEMPLATEDIR"

_template()
{
    case "${COMP_CWORD}" in
        "1")
            targets=`unalias ls >/dev/null 2>&1; ls ${TEMPLATE_DIR}`
            COMPREPLY=($(compgen -W "${targets}" ${COMP_WORDS[COMP_CWORD]}))
            ;;
    esac
}

complete -F _template template
