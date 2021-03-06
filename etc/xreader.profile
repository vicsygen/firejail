# Firejail profile for xreader
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/xreader.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.cache/xreader
noblacklist ~/.config/xreader
noblacklist ~/.local/share

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-var-common.inc

caps.drop all
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none
tracelog

private-bin xreader,xreader-previewer,xreader-thumbnailer
private-dev
# private-etc fonts,ld.so.cache
# xreader needs access to /tmp/mozilla* to work in firefox
# private-tmp

memory-deny-write-execute
noexec ${HOME}
noexec /tmp
