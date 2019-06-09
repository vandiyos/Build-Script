###################
#   Evolution-X   #
###################

# Set defaults
wd=$(pwd)
out=$wd/out
BUILD="/home/thehitman/android/kernel/rebase"
# Set kernel source workspace
cd $BUILD
# Export ARCH <arm, arm64, x86, x86_64>
export ARCH=arm64
# Export SUBARCH <arm, arm64, x86, x86_64>
export SUBARCH=arm64
# Set kernal name
export LOCALVERSION=Evolution-X
# Export Username
export KBUILD_BUILD_USER=TheHitMan
# Export Machine name
export KBUILD_BUILD_HOST=CINNAMON
# Compiler String
export CROSS_COMPILE=/home/thehitman/Android-Kernel/kernel/aarch64-linux-android-4.9/bin/aarch64-linux-android-
# Make and Clean
make clean
make mrproper
# Make <defconfig>
make O=$out ARCH=arm64 mido_defconfig
# Build Kernel
make O=$out ARCH=arm64 -j4
