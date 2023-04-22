#!/usr/bin/env bash

gh_file="https://github.com/ryanoasis/nerd-fonts/raw/master/bin/scripts/test-fonts.sh"
sym_font="Symbols Nerd Font"

function symbol_map_line() {
  local array=($1)
  local line
  line+="symbol_map "

  while (( ${#array[*]} > 1 ))
  do
    from=${array[0]}
    to=${array[1]}
    array=("${array[@]:2}")
    line+="U+${from^^}-U+${to^^}"
    (( ${#array[*]} > 1 )) && line+=","
  done

  echo "${line} ${sym_font}"
  echo
}

function comment_line() {
  echo "# $1"
}

function main() {
  while read line
  do
    case "$line" in
      "echo \"Nerd Fonts - All"*)
        # skip to prevent duplicates
        exit
        ;;
      "echo \"Nerd Fonts - "*)
        comment_line "\"${line#*\"}"
        ;;
      "print-unicode-ranges"*)
        symbol_map_line "${line#* }"
        ;;
    esac
  done <<< $(curl -sSL ${gh_file})
}

if ! (return 0 2> /dev/null); then
    main "$@"
fi
