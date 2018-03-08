#!/bin/bash

#Mysteryagr
#Compile kernel with a build script to make things simple

mkdir -p out

#host and user
export KBUILD_BUILD_USER="DhirajMS"
export KBUILD_BUILD_HOST="Dracarys"

#get toolchain gcc-4.8
#git clone https://github.com/DhirajSurvase/GCC_4.8 gcc4.8
#export CROSS_COMPILE=/home/younilban/kernel/panelli/gcc4.8/bin/arm-eabi-

#tc>arm-linaro-7.x
git clone https://github.com/nathanchance/gcc-prebuilts -b arm-linaro-7.x arm-linaro-7.x
export CROSS_COMPILE=/home/younilban/moto/namath/arm-linaro-7.x/bin/arm-linaro-linux-androideabi-

export USE_CCACHE=1

export ARCH=arm ARCH_MTK_PLATFORM=mt6735

#Defconfig for Moto C
make -C $PWD O=$PWD/out ARCH=arm wt6737m_35_n_defconfig
#make ARCH=arm wt6737m_35_n_defconfig

make -j4 -C $PWD O=$PWD/out ARCH=arm
#make -j4 ARCH=arm
