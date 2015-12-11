#!/bin/bash

hardfp() {
    cat <<EOF
CT_ARCH_FLOAT_HW=y
CT_TARGET_CFLAGS="-mfloat-abi=hard"
CT_ARCH_FLOAT_SOFTFP=n
CT_ARCH_FLOAT="hard"
CT_ARCH_ARM_TUPLE_USE_EABIHF=y
EOF
}



cat $1
hardfp