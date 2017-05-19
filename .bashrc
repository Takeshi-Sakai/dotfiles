
case "${OSTYPE}" in
    darwin*)
        # Ensure user-installed binaries take precedence
        export PATH=/usr/local/bin:$PATH

        # Setting Virtualenvwrapper
        if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
            export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
            export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
            export WORKON_HOME=~/Virtualenvs
            source /usr/local/bin/virtualenvwrapper.sh
        fi

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
