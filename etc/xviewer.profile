# Firejail profile for xviewer
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/xviewer.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ~/.Steam
noblacklist ~/.config/xviewer
noblacklist ~/.local/share/Trash
noblacklist ~/.steam

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

include /etc/firejail/whitelist-var-common.inc

caps.drop all
# net none - makes settings immutable
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

private-bin xviewer
private-dev
private-etc fonts
private-tmp

memory-deny-write-execute
noexec ${HOME}
noexec /tmp
