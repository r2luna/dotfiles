# -------------------------------------------------------------------------------------------
# ALIASES
# -------------------------------------------------------------------------------------------

# Changing System Defaults
alias cat='bat --theme="Coldark-Dark"'
alias ll='exa -lh --git --grid --icons'
alias l='exa -l --git --icons'
alias python='python3'
alias pip='pip3'
alias vim='lvim'


# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

arm() {
  arch -x86_64 $@
}

# Git
alias gst='git status'
alias ga='git add .'
alias gk='git checkout'
alias gc='git commit'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gps='git push'
alias gpsv='gps --no-verify'
alias gpsu='git push -u origin'
alias gm='git commit -m'
alias gam='git commit -am'
alias gma='git commit --amend -C HEAD'
alias gl='git log --oneline --decorate --color --graph'
alias nah="git reset --hard && git clean -df"
alias putz="git reset --soft HEAD~1"
alias wip="git add .;git commit -m 'wip' > /dev/null"
alias wips="git add .;git commit -m 'wip' > /dev/null;git push"
alias gclean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gs='git reset HEAD^'

# Artisan
alias pa='php artisan'
alias a='php artisan'
alias tinker='pa tinker'
alias mfs='pa migrate:fresh --seed'
alias mfsc='mfs; a optimize:clear'
alias mf='pa migrate:fresh'
alias mr='pa migrate:rollback'
alias m='pa migrate'
alias rl='pa route:list'
alias octane='a octane:start --watch'
alias horizon='pa horizon'
alias queue='pa queue'
alias key='a key:generate'
alias tp='a test --parallel'
alias t='a test'
alias s='a serve'


# Livewire
alias lm='a make:livewire'

# General
alias dump="composer dump"

# Composer Scripts
alias cf="composer fix"
alias ck="composer fix;tp"

# Lock the screen
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# NPM
alias nw="npm run watch"
alias ni="npm install"
alias nd="npm run dev"
