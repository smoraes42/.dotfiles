# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*  ${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+  ${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?  ${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x  ${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

function nonzero_return() {
	RETVAL=$?
	[ $RETVAL -ne 0 ] && echo "$RETVAL"
}

#export PS1="\\n\e[36m  \e[0m~[\u@\h]:\`nonzero_return\`\`parse_git_branch\`|>\w \A \d \\n\[\e[32m\] \\$ >>\[\e[m\] "
FMT_BOLD="\[\e[1m\]"
FMT_DIM="\[\e[2m\]"
FMT_RESET="\[\e[0m\]"
FMT_UNBOLD="\[\e[22m\]"
FMT_UNDIM="\[\e[22m\]"
FG_BLACK="\[\e[30m\]"
FG_BLUE="\[\e[34m\]"
FG_LIGHTBLUE="\[\e[94m\]"
FG_CYAN="\[\e[36m\]"
FG_GREEN="\[\e[32m\]"
FG_YELLOW="\[\e[33m\]"
FG_GREY="\[\e[37m\]"
FG_RED="\[\e[31m\]"
FG_MAGENTA="\[\e[35m\]"
FG_WHITE="\[\e[37m\]"
BG_BLACK="\[\e[40m\]"
BG_BLUE="\[\e[44m\]"
BG_CYAN="\[\e[46m\]"
BG_GREEN="\[\e[42m\]"
BG_YELLOW="\[\e[43m\]"
BG_RED="\[\e[48;5;1m\]"
BG_DARKBLUE="\[\e[48;5;18m\]"
BG_WHITE="\[\e[47m\]"
BG_MAGENTA="\[\e[45m\]"
##${FMT_DIM}${FG_GREY}\w
##export PS1="\\n${FMT_BOLD}${FG_WHITE}${FMT_UNDIM}┏${BG_WHITE}${FG_BLACK}󰀵 󰬽󰬻${FG_WHITE}${BG_BLUE}${FMT_BOLD}${FG_WHITE}${BG_BLUE} S̸͇̬̣̦̦͓̺͍ͮͪ͑̐ͦ͋̎M̥͂͒͌̆͘ͅÔ̧̠̤͔͕̣̦ͦ̂̒ͪͤ̑̍̕͟R̙̘̹̞̓ͫ̌ͪ͋̕͠͡A͔̙̼̗̠̥̅̽Ẽ̴̠̪̳͖̗̮̼͕ͪ͐͘͞Ṣ̡̛̯̘͈̮ͩ͛̈́̈́ͬ̊͂̐ 󰁥 󰒍 \h ${FG_BLUE}${BG_BLACK}${FG_LIGHTBLUE}${FMT_DIM}${FMT_BOLD} \W${FG_RED}\`nonzero_return\`${FMT_DIM}${FG_YELLOW}\`parse_git_branch\`${FG_WHITE}󰔛 \A  \d \\n${FMT_UNDIM}${FG_WHITE}┗\[\e[32m\] \\$ >>\[\e[m\] "
export PS1="\\n\n\n${FMT_BOLD}${FG_WHITE}${FMT_UNDIM}┏${BG_WHITE}${FG_BLACK}󰀵󰬽󰬻${FG_WHITE}${BG_BLUE}${FMT_BOLD}${FG_WHITE}${BG_BLUE} \u 󰁥 󰒍 \h ${FG_BLUE}${BG_BLACK}${FG_LIGHTBLUE}${FMT_DIM}${FMT_BOLD} \W${FG_RED}\`nonzero_return\`${FMT_DIM}${FG_YELLOW}\`parse_git_branch\`${FG_WHITE}󰔛 \A  \d ${FG_BLACK}\\n${FMT_UNDIM}${FG_WHITE}┗\[\e[32m\] \\$ >>\[\e[m\] "

#Aliases
alias normchek='norminette -R CheckForbiddenSourceHeader'
alias cc42='cc -Wall -Wextra -Werror'
alias cc42d='cc -Wall -Wextra -Werror -g'
alias ls='ls -G'
alias ll='ls -l'
alias lla='ls -la'
alias llaR='ls -laR'
alias rm='rm -i'
alias cp='cp -i'
alias gpglist='gpg --list-secret-keys --keyid-format=long'
alias nvim='nvim -p'
alias grep='grep -i --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mini='~/mini-moulinette/mini-moul.sh'
alias rush00='cd /Users/smoraes-/Downloads/Rush00/rush00/test'
alias paco='python3 ~/francinette/main.py'
alias syncgit='bash ~/Templates/git/42Piscine/syncgit.sh'
alias syncdots='bash ~/Templates/git/.dotfiles/syncdots.sh'
alias tardir='bash ~/Templates/git/.dotfiles/tardir.sh'
alias nvim='~/Downloads/nvim-macos/bin/nvim -p'
alias vim='~/Downloads/nvim-macos/bin/nvim -p'
alias vvim='/usr/bin/vim'

#alias delcon='sudo ip addr del $1 dev $2' # 1 ..../x 2 conNameEx:nm-bridge
#alias addcon='sudo ip address add 192.168.13.37/24 dev nm-bridge'

# History Settings
export HISTFILESIZE=10000
export HISTSIZE=997
export HISTCONTROL="ignoredups"
export HISTTIMEFORMAT="%Y-%m-%d %T "

## Aliases
#alias sudo='sudo '
#alias mkdir="mkdir -pv"
#alias grep='grep --color=auto'
#alias egrep='egrep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias my_ip='curl -s ifconfig.co/json | python3 -m json.tool'
## Extra options
#export EDITOR="vim"
#export VISUAL="vim"
#export TMOUT="3600"
