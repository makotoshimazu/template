#!bash

TEMPLATE_DIR="TEMPLATEDIR"

_template()
{
    case "${COMP_CWORD}" in
        "1")
            COMPREPLY=( $(\
compgen -W "`find ${TEMPLATE_DIR} -maxdepth 1 -type d -print | sed -e "s%${TEMPLATE_DIR}%%g" | xargs -I% basename %`" \
                ${COMP_WORDS[COMP_CWORD]}) )
            ;;
    esac
}

complete -F _template template
