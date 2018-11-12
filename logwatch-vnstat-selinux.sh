#!/usr/bin/env bash
# vim :let g:is_bash=1: set autoindent tabstop=2 shiftwidth=2 expandtab softtabstop=2 filetype=sh

checkmodule -M -m -o logwatch_vnstat.mod logwatch_vnstat.te
semodule_package -o logwatch_vnstat.pp -m logwatch_vnstat.mod
semodule -i logwatch_vnstat.pp
rm ./logwatch_vnstat.mod ./logwatch_vnstat.pp
