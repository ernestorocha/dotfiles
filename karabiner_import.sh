#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.FNFkeysToMediaKeys 1
/bin/echo -n .
$cli set remap.simple_vi_mode 1
/bin/echo -n .
$cli set remap.controlDelete2forwarddelete 1
/bin/echo -n .
$cli set remap.optionrcommandr 1
/bin/echo -n .
$cli set remap.commandR2optionR 1
/bin/echo -n .
$cli set remap.shiftDelete2pipe 1
/bin/echo -n .
/bin/echo
