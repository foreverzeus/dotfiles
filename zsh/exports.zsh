# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
#export PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin
export PATH=$PATH:/usr/local/sbin:$HOME/bin
export PATH=${PATH}:/Users/foreverzeus/coding/android/sdk/platform-tools/
export PATH=${PATH}:/Users/foreverzeus/coding/android/sdk/tools/
export ANDROID_HOME=/Users/foreverzeus/coding/android/sdk/
export ANT_HOME=/Users/foreverzeus/coding/android/apache-ant-1.8.3/
export PATH=${PATH}:${ANT_HOME}/bin

export COCOS2DX_ROOT=/Users/foreverzeus/coding/cocos2d-x-2.2.2
export PATH=$COCOS2DX_ROOT:$PATH

export NDK_ROOT=/Users/foreverzeus/coding/android/ndk/android-ndk-r9c
export ANDROID_NDK_ROOT=/Users/foreverzeus/coding/android/ndk/android-ndk-r9c
export PATH=$ANDROID_NDK_ROOT:$PATH


# remove duplicate entries
typeset -U PATH

# Set default console Java to 1.6
if [[ $IS_MAC -eq 1 ]]; then
    export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
fi

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='subl -n'
fi
if [[ $IS_LINUX -eq 1 ]]; then
    export EDITOR='vim'
fi

# Set LC_ALL="UTF8"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# Virtual Environment Stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/django
if [[ $HAS_VIRTUALENV -eq 1 ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi
