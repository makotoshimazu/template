#!bash

TEMPLATE_DIR="TEMPLATEDIR"

_template()
{
    unalias ls
    case "${COMP_CWORD}" in
        "1")
            COMPREPLY=( $(\
compgen -W "`ls ${TEMPLATE_DIR}`" \
                ${COMP_WORDS[COMP_CWORD]}) )
            ;;
    esac
}

complete -F _template template
