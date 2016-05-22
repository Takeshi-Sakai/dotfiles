
case "${OSTYPE}" in
    darwin*)
        # Ensure user-installed binaries take precedence
        export PATH=/usr/local/bin:$PATH
        
        # Setting PATH for Python 2.7
        # The orginal version is saved in .bash_profile.pysave
        PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
        export PATH
        
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
esac

alias log='tee ~/sshclient/`date "+%Y%m%d_%H%M%S"`.log'
