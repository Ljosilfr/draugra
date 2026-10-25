#!/usr/bin/env bash
IFS=$'\n\t'

_root="$(dirname $(realpath ${BASH_SOURCE[0]}))"

std_gum_settings="${_root}/gum.conf"

std_proton_home="${HOME}/.local/share/Steam/compatibilitytools.d"
std_proton_build="${std_proton_home}/proton-cachyos-10.0-sunset-slr"
std_proton_bin="${std_proton_build}/files/bin/wine"
std_proton_settings="${_root}/proton.conf"

chosen_proton_build="${std_proton_build}"

database="${_root}/db.json"
profiles="${_root}/umu-profiles"
titles="${_root}/index_titles"

games="${HOME}/games"
prefixes="${games}/01-prefixes"

run_in_termn() { tty -s || { footclient "${0}" "${@}"; exit; }; }

y_picker() { yazi --chooser-file=/dev/stdout "${1}"; }
