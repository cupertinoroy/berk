# top level project rules for the msm8994 project
#
LOCAL_DIR := $(GET_LOCAL_DIR)

TARGET := msm8994

MODULES += app/aboot
MODULES += app/rpmbtests

ifeq ($(TARGET_BUILD_VARIANT),user)
DEBUG := 0
else
DEBUG := 1
endif

EMMC_BOOT := 1
ENABLE_SDHCI_SUPPORT := 1
ENABLE_UFS_SUPPORT   := 1
ENABLE_BOOT_CONFIG_SUPPORT := 1
ENABLE_USB30_SUPPORT := 1
USE_DYNAMIC_SMEM := 1
ENABLE_SMD_SUPPORT := 1
ENABLE_PWM_SUPPORT := true

#DEFINES += WITH_DEBUG_DCC=1
DEFINES += WITH_DEBUG_UART=1
#DEFINES += WITH_DEBUG_FBCON=1
DEFINES += DEVICE_TREE=1
DEFINES += ABOOT_IGNORE_BOOT_HEADER_ADDRS=1

DEFINES += ABOOT_FORCE_KERNEL_ADDR=0x00008000
DEFINES += ABOOT_FORCE_RAMDISK_ADDR=0x02700000
DEFINES += ABOOT_FORCE_TAGS_ADDR=0x02500000
DEFINES += ABOOT_FORCE_KERNEL64_ADDR=0x00080000

DEFINES += ENABLE_XPU_VIOLATION=1
DEFINES += USE_BOOTDEV_CMDLINE=1

#Disable thumb mode
ENABLE_THUMB := false

ifeq ($(EMMC_BOOT),1)
DEFINES += _EMMC_BOOT=1
endif

ifeq ($(ENABLE_SDHCI_SUPPORT),1)
DEFINES += MMC_SDHCI_SUPPORT=1
endif

ifeq ($(ENABLE_UFS_SUPPORT),1)
DEFINES += UFS_SUPPORT=1
endif

ifeq ($(ENABLE_USB30_SUPPORT),1)
DEFINES += USB30_SUPPORT=1
endif

ifeq ($(USE_DYNAMIC_SMEM),1)
DEFINES += DYNAMIC_SMEM=1
endif

ifeq ($(ENABLE_SMD_SUPPORT),1)
DEFINES += SMD_SUPPORT=1
endif

ifeq ($(ENABLE_MDTP_SUPPORT),1)
DEFINES += MDTP_SUPPORT=1
endif

# Turn on Werror
CFLAGS += -Werror
