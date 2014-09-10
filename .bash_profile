### Setting Lang
export LANG=ja_JP.UTF-8

### Setting MacUIM
export XMODIFIERS=@im=uim
export GTK_IM_MODULE=uim

### Setting /usr/local/bin
export PATH=/usr/local/bin:$PATH

### Added Android tools
export PATH=/Applications/adt-bundle-mac/platform-tools:$PATH

### Added Qt Tools
QT_HOME=$HOME/Qt5.2.1/5.2.1/clang_64/
export PATH=$QT_HOME/bin:$PATH

### Added PostgreSQL
PGDATA=/usr/local/var/postgres
export PATH=$PGDATA:$PATH

### Added rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### Added pyenv
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Added Scala 2.11.2
SCALA_HOME=/usr/local/share/scala-2.11.2
export PATH=$SCALA_HOME/bin:$PATH
