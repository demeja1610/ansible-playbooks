cd
alias ll='ls -la'
alias ..='cd ..'
alias build='yarn build:production'
alias gofini='cd /var/www/{{ sitename }}/data/www/{{ sitename }}'
alias gosage='cd /var/www/{{ sitename }}/data/www/{{ sitename }}/web/app/themes/sage'

export NVM_DIR="/etc/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion