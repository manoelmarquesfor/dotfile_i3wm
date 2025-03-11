#!/bin/bash


echo 'export ANDROID_HOME=$HOME/Android/Sdk' >> ~/.bashrc
echo 'export ANDROID_SDK_ROOT=$HOME/Android/Sdk' >> ~/.bashrc

echo 'export FLUTTER_HOME=$HOME/development/flutter' >> ~/.bashrc

echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc

echo 'export PATH=$PATH:$FLUTTER_HOME/bin' >> ~/.bashrc
echo 'export PATH=$HOME/development/flutter/bin:$PATH' >> ~/.bashrc

echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"' >> ~/.bashrc
