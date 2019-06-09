##################
#     Revolt     #
##################

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
export LOCALVERSION=Revolt.EAS
# Export Username
export KBUILD_BUILD_USER=TheHitMan
# Export Machine name
export KBUILD_BUILD_HOST=CINNAMON
# Compiler String
CC=/home/thehitman/android/kernel/clang-r353983c/bin/clang
export KBUILD_COMPILER_STRING="$(${CC} --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/  */ /g')"
# Make and Clean
make clean
make mrproper
# Make <defconfig>
make O=$out ARCH=arm64 mido_defconfig
# Build Kernel
make O=$out ARCH=arm64 \
CC=/home/thehitman/android/kernel/clang-r353983c/bin/clang \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=/home/thehitman/android/kernel/gcc-arm-8.3-master/bin/aarch64-linux-gnu- \
-j4

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
CC=/home/thehitman/android/kernel/clang-r353983c/bin/clang
export KBUILD_COMPILER_STRING="$(${CC} --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/  */ /g')"
# Make and Clean
make clean
make mrproper
# Make <defconfig>
make O=$out ARCH=arm64 mido_defconfig
# Build Kernel
make O=$out ARCH=arm64 \
CC=/home/thehitman/android/kernel/clang-r353983c/bin/clang \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=/home/thehitman/android/kernel/gcc-arm-8.3-master/bin/aarch64-linux-gnu- \
-j4
