# Begin /etc/bashrc

alias ls='ls --color=auto'

NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
if [[ $EUID == 0 ]] ; then
  PS1="$RED\u@$(hostname) [ $NORMAL\w$RED ]# $NORMAL"
else
  PS1="$GREEN\u@$(hostname) [ $NORMAL\w$GREEN ]\$ $NORMAL"
fi

# distro Info
if [ -f /etc/lsb-release ]; then
	. /etc/lsb-release
	echo "${DISTRIB_DESCRIPTION} ${DISTRIB_RELEASE} @ $(uname -m)"
	echo ""
else
	echo ""
fi


# End /etc/bashrc
