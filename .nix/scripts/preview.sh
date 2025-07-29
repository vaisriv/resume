#!/usr/bin/env bash

# text styling
bold=$(tput bold)
under=$(tput smul)
normal=$(tput sgr0)

# help function
get_help() {
        echo "${bold}${under}Usage:${normal} ${bold}preview${normal} [FILENAME] [OPTIONS]"
        echo "${bold}${under}Arguments:${normal}"
        echo "  [FILENAME]"
        echo "          Name of input Typst file (located in ./src directory)"
        echo "          [default: \"resume.typ\"]"
        echo "${bold}${under}Options:${normal}"
        echo "  [OPTIONS]"
        echo "          Options to pass along to the Tinymist server"
        echo "  ${bold}-h, --help${normal}"
        echo "          Display this help message"
}

# typst preview function
preview_server() {
        typ_file="${1:-resume}.typ"
        shift

        tinymist preview "$GITROOT/src/$typ_file" $@
}

# main
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        get_help
        exit 0
elif [[ "$1" == -?* ]]; then
        echo "${bold}preview:${normal} illegal option '$1'"
        echo ""
        get_help
        exit 1
else
        preview_server
fi
