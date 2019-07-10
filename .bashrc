#!/bin/bash
# http://tldp.org/LDP/abs/html/fto.html
# set up gpg so we can use yubikey for key
export GPG_TTY=/dev/ttys000
gpg-connect-agent updatestartuptty /bye > /dev/null
unset SSH_AGENT_PID
export SSH_AUTH_SOCK=/Users/travis.m.smith/.gnupg/S.gpg-agent.ssh
gpgconf --launch gpg-agent > /dev/null

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s autocd
shopt -s globstar

# bash completions
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/travis.m.smith/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/travis.m.smith/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/travis.m.smith/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/travis.m.smith/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/travis.m.smith/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/travis.m.smith/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash

# brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# pip bash completion
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
complete -o default -F _pip_completion pip3

# load NPM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion