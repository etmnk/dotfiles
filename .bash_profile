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
export QT_HOME=$HOME/Qt5.2.1/5.2.1/clang_64/
export PATH=$QT_HOME/bin:$PATH

### Added PostgreSQL
export PGDATA=/usr/local/var/postgres
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

### Added Swift
SWIFT_HOME=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
export PATH=$PATH:$SWIFT_HOME

### Added ruby 2.2.0
#RUBY_HOME=/Users/preface/DevProject/ruby
#export PATH=$RUBY_HOME:$PATH

### Added Play2.3.4
PLAY2_HOME=/Users/preface/DevProject/activator-1.2.10-minimal
export PATH=$PLAY2_HOME:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/preface/.gvm/bin/gvm-init.sh" ]] && source "/Users/preface/.gvm/bin/gvm-init.sh"
