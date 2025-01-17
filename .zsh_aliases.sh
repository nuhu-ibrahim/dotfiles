# --- ALIASES --------------------------
alias refresh='source ~/.zshrc; echo "Reloaded .zshrc."'
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"

alias ls='ls -lah'

# -- BREW M1 MAC
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias brew='arch -arm64e /opt/homebrew/bin/brew'

# -- DIRECTORIES
alias sshconfig="code ~/.ssh/config"
alias zshconfig="code ~/.zshrc"
alias cdnginx="cd /usr/local/etc/nginx"

# -- PHP/LARAVEL SPECIFIC
alias pa="php artisan"
alias artisan="php artisan"
alias sail="bash vendor/bin/sail"
alias sa="sail artisan"
alias phpserver="php -S localhost:8888"
alias phpunit="./vendor/bin/phpunit"
alias phpunitf="./vendor/bin/phpunit --filter="

# -- SYSTEM
alias untrusted_apps_enable_install="sudo spctl --master-enable"
alias untrusted_apps_disable_install="sudo spctl --master-disable"


# Clear
alias clr="clear"

# Gzip-enabled `curl`
alias gurl='curl --compressed'

# Needs trash package `npm install --global trash-cli`
alias rm="trash"

# Run the previous failed command with sudo
alias please='sudo $(fc -ln -1)'

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Hide/show files
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Enable/Disable Spotlight
alias spoton="sudo mdutil -a -i on"
alias spotoff="sudo mdutil -a -i off"

# -- DOCKER
alias dssh="docker_ssh"
alias di="docker images"
alias dc="docker ps -a"
alias dcm="docker-compose"
alias drmi='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias drmc='docker rm $(docker ps -q -f status=exited)'
