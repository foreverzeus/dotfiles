# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home/
export JAVA_HOME
export PATH=${JAVA_HOME}/bin:$PATH
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export PATH=$PATH:/usr/local/sbin:$HOME/bin
export PATH=${PATH}:/Users/foreverzeus/coding/android/sdk/platform-tools
export PATH=${PATH}:/Users/foreverzeus/coding/android/sdk/tools/
export ANDROID_HOME=/Users/foreverzeus/coding/android/sdk/
export ANDROID_SDK=/Users/foreverzeus/coding/android/sdk/
export ANT_HOME=/Users/foreverzeus/coding/android/apache-ant-1.9.9/
export PATH=${PATH}:${ANT_HOME}/bin
export PATH=${PATH}:/Users/foreverzeus/workspace/zeusspace/codebox/tools

export COCOS2DX_ROOT=/Users/foreverzeus/workspace/wechat/cross_wx/cocos-x/cocos2d-x-3.15
export PATH=$PATH:$COCOS2DX_ROOT
export COCOS_CONSOLE_ROOT=${COCOS2DX_ROOT}/tools/cocos2d-console/bin
export PATH=$PATH:$COCOS_CONSOLE_ROOT

export NDK=/Users/foreverzeus/coding/android/ndk/android-ndk-r14b
export NDK_ROOT=/Users/foreverzeus/coding/android/ndk/android-ndk-r14b
export ANDROID_NDK_ROOT=/Users/foreverzeus/coding/android/ndk/android-ndk-r14b
export PATH=$PATH:$ANDROID_NDK_ROOT
export CODINGROOT=/Users/foreverzeus/workspace/zeusspace/codebox

# apk tools
export PATH=${PATH}:/Users/foreverzeus/Dropbox/apk_tools/dex2jar-0.0.9.15
export GRADLE_HOME=/Users/foreverzeus/coding/android/gradle-2.2.1-bin/gradle-2.2.1
export PATH=${PATH}:$GRADLE_HOME/bin

export PATH=${PATH}:/Users/foreverzeus/coding/source/android_build/bin
export PATH=${PATH}:/Users/foreverzeus/coding/android/work_tools

export PATH=${PATH}:/Users/foreverzeus/workspace/wechat/cross_wx/buck/bin


# remove duplicate entries
typeset -U PATH

# Set default console Java to 1.6
#if [[ $IS_MAC -eq 1 ]]; then
#    export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
#fi

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
