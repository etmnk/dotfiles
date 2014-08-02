PATH=$PATH:/Applications/adt-bundle-mac/platform-tools
export PATH
export PATH=/usr/local/bin:$PATH
QT_HOME=/Users/preface/Qt5.2.1/5.2.1/clang_64/
export PATH=$PATH:$QT_HOME/bin
PGDATA=/usr/local/var/postgres
export PATH=$PATH:$PGDATA
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export LANG=ja_JP.UTF-8
export XMODIFIERS=@im=uim
export GTK_IM_MODULE=uim

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
