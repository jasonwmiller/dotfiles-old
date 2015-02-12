function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('workon:`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

# local time, color coded by last return code
time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%W - %T%{$reset_color%}"
time_disabled="%{$fg[green]%}%W - %T%{$reset_color%}"
time=$time_enabled

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} Ⓓirty "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ⓤntracked "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔  "
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ⓐdded "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ⓜodified "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}  Ⓓeleted "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ⓡenamed "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ⓤnmerged "

# More symbols to choose from:
# ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚳ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻ ♼ ☰ ☱ ☲ ☳ ☴ ☵
# ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠.
# ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ

local return_status="%{$fg[red]%}%(?..⨂ )%{$reset_color%}"

RPROMPT='%{${fg_bold[blue]}%}$(git_prompt_info)%{$reset_color%} ${date} ${time}'

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}$(box_name)%{$reset_color%}:%{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}${return_status}%{$reset_color%}
%(?,,%{${fg_bold[blue]}%}[%?]%{$reset_color%})➼ '
