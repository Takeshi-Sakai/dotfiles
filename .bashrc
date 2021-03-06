
case "${OSTYPE}" in
    darwin*)
        # Ensure user-installed binaries take precedence
        export PATH="/usr/local/bin:/usr/local/opt/python/libexec/bin:$PATH"
        # ruby is keg-only, which means it was not symlinked into /usr/local,
        export PATH="/usr/local/opt/ruby/bin:$PATH"
        # path for nodebrew
        export PATH="$HOME/.nodebrew/current/bin:$PATH"
        # 
        function share_history {
            history -a
            history -c
            history -r
        }
        PROMPT_COMMAND='share_history'
        shopt -u histappend
        export HISTSIZE=9999

        # Setting Virtualenvwrapper
        if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
            export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
            export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
            export WORKON_HOME=~/.virtualenvs
            source /usr/local/bin/virtualenvwrapper.sh
        fi

        # Setting pyenv & pyenv-virtualenv
        export PYENV_ROOT=/usr/local/opt/pyenv
        if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
        if which pyenv > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

        alias doc="cd /Users/takeshi/Documents"
        alias ls="ls -G"
        alias ll="ls -lG"
        alias la="ls -aG"
        ;;
    linux*)
        alias ls='ls --color'
        alias ll='ls -l --color'
        alias la='ls -a --color'
        ;;
    msys*)
        export http_proxy="172.25.0.42:6060"
        export https_proxy=$http_proxy
        export ftp_proxy=$http_proxy
        export PATH=/c/Python36:/c/Python36/scripts:/c/Git/cmd:/c/Ruby23-x64/bin:/c/usr/bin:$PATH
        alias python='winpty python'
        ;;
esac

alias log='tee ~/sshclient/`date "+%Y%m%d_%H%M%S"`.log'
