#
# APM32F4 Make file include
#

#CMSIS
CMSIS_DIR      := $(LIB_MAIN_DIR)/APM32F4/Libraries/Device
STDPERIPH_DIR   = $(LIB_MAIN_DIR)/APM32F4/Libraries/APM32F4xx_DAL_Driver
STDPERIPH_SRC   = \
        apm32f4xx_dal_adc.c \
        apm32f4xx_dal_adc_ex.c \
        apm32f4xx_dal.c \
        apm32f4xx_dal_can.c \
        apm32f4xx_dal_comp.c \
        apm32f4xx_dal_cortex.c \
        apm32f4xx_dal_crc.c \
        apm32f4xx_dal_cryp.c \
        apm32f4xx_dal_cryp_ex.c \
        apm32f4xx_dal_dac.c \
        apm32f4xx_dal_dac_ex.c \
        apm32f4xx_dal_dci.c \
        apm32f4xx_dal_dci_ex.c \
        apm32f4xx_dal_dma.c \
        apm32f4xx_dal_dma_ex.c \
        apm32f4xx_dal_eint.c \
        apm32f4xx_dal_eth.c \
        apm32f4xx_dal_flash.c \
        apm32f4xx_dal_flash_ex.c \
        apm32f4xx_dal_flash_ramfunc.c \
        apm32f4xx_dal_gpio.c \
        apm32f4xx_dal_hash.c \
        apm32f4xx_dal_hash_ex.c \
        apm32f4xx_dal_hcd.c \
        apm32f4xx_dal_i2c.c \
        apm32f4xx_dal_i2c_ex.c \
        apm32f4xx_dal_i2s.c \
        apm32f4xx_dal_i2s_ex.c \
        apm32f4xx_dal_irda.c \
        apm32f4xx_dal_iwdt.c \
        apm32f4xx_dal_log.c \
        apm32f4xx_dal_mmc.c \
        apm32f4xx_dal_nand.c \
        apm32f4xx_dal_nor.c \
        apm32f4xx_dal_pccard.c \
        apm32f4xx_dal_pcd.c \
        apm32f4xx_dal_pcd_ex.c \
        apm32f4xx_dal_pmu.c \
        apm32f4xx_dal_pmu_ex.c \
        apm32f4xx_dal_qspi.c \
        apm32f4xx_dal_rcm.c \
        apm32f4xx_dal_rcm_ex.c \
        apm32f4xx_dal_rng.c \
        apm32f4xx_dal_rtc.c \
        apm32f4xx_dal_rtc_ex.c \
        apm32f4xx_dal_sd.c \
        apm32f4xx_dal_sdram.c \
        apm32f4xx_dal_smartcard.c \
        apm32f4xx_dal_smbus.c \
        apm32f4xx_dal_spi.c \
        apm32f4xx_dal_sram.c \
        apm32f4xx_dal_tmr.c \
        apm32f4xx_dal_tmr_ex.c \
        apm32f4xx_dal_uart.c \
        apm32f4xx_dal_usart.c \
        apm32f4xx_dal_wwdt.c \
        apm32f4xx_ddl_adc.c \
        apm32f4xx_ddl_comp.c \
        apm32f4xx_ddl_crc.c \
        apm32f4xx_ddl_dac.c \
        apm32f4xx_ddl_dma.c \
        apm32f4xx_ddl_dmc.c \
        apm32f4xx_ddl_eint.c \
        apm32f4xx_ddl_gpio.c \
        apm32f4xx_ddl_i2c.c \
        apm32f4xx_ddl_pmu.c \
        apm32f4xx_ddl_rcm.c \
        apm32f4xx_ddl_rng.c \
        apm32f4xx_ddl_rtc.c \
        apm32f4xx_ddl_sdmmc.c \
        apm32f4xx_ddl_smc.c \
        apm32f4xx_ddl_spi.c \
        apm32f4xx_ddl_tmr.c \
        apm32f4xx_ddl_usart.c \
        apm32f4xx_ddl_usb.c \
        apm32f4xx_ddl_utils.c

VPATH   := $(VPATH):$(STDPERIPH_DIR)/Source

#USB
USBCORE_DIR = APM32F4/Middlewares/APM32_USB_Library/Device/Core
USBCORE_SRC = \
        $(USBCORE_DIR)/Src/usbd_core.c \
        $(USBCORE_DIR)/Src/usbd_dataXfer.c \
        $(USBCORE_DIR)/Src/usbd_stdReq.c

USBCDC_DIR = APM32F4/Middlewares/APM32_USB_Library/Device/Class/CDC
USBCDC_SRC = \
        $(USBCDC_DIR)/Src/usbd_cdc.c

USBMSC_DIR = APM32F4/Middlewares/APM32_USB_Library/Device/Class/MSC
USBMSC_SRC = \
        $(USBMSC_DIR)/Src/usbd_msc.c \
        $(USBMSC_DIR)/Src/usbd_msc_bot.c \
        $(USBMSC_DIR)/Src/usbd_msc_scsi.c

DEVICE_STDPERIPH_SRC := \
        $(STDPERIPH_SRC) \
        $(USBCORE_SRC) \
        $(USBCDC_SRC) \
        $(USBMSC_SRC)
#CMSIS
VPATH := $(VPATH):$(LIB_MAIN_DIR)/APM32F4/Libraries/Device/Geehy/APM32F4xx

INCLUDE_DIRS += \
        $(TARGET_PLATFORM_DIR) \
        $(TARGET_PLATFORM_DIR)/include \
        $(TARGET_PLATFORM_DIR)/startup \
        $(PLATFORM_DIR)/common/stm32 \
        $(STDPERIPH_DIR)/Include \
        $(LIB_MAIN_DIR)/$(USBCORE_DIR)/Inc \
        $(LIB_MAIN_DIR)/$(USBCDC_DIR)/Inc \
        $(LIB_MAIN_DIR)/$(USBMSC_DIR)/Inc \
        $(CMSIS_DIR)/Geehy/APM32F4xx/Include \
        $(TARGET_PLATFORM_DIR)/usb/vcp \
        $(TARGET_PLATFORM_DIR)/usb/msc \
        $(TARGET_PLATFORM_DIR)/usb \
        $(LIB_MAIN_DIR)/CMSIS/Core/Include \
        $(SRC_DIR)/msc

#Flags
ARCH_FLAGS      = -mthumb -mcpu=cortex-m4 -march=armv7e-m -mfloat-abi=hard -mfpu=fpv4-sp-d16

DEVICE_FLAGS    = -DUSE_DAL_DRIVER -DHSE_VALUE=$(HSE_VALUE) -DAPM32

ifeq ($(TARGET_MCU),APM32F405xx)
DEVICE_FLAGS    += -DAPM32F405xx
LD_SCRIPT       = $(LINKER_DIR)/apm32_flash_f405.ld
STARTUP_SRC     = APM32/startup/startup_apm32f405xx.S
MCU_FLASH_SIZE  := 1024

else ifeq ($(TARGET_MCU),APM32F407xx)
DEVICE_FLAGS    += -DAPM32F407xx
LD_SCRIPT       = $(LINKER_DIR)/apm32_flash_f407.ld
STARTUP_SRC     = APM32/startup/startup_apm32f407xx.S
MCU_FLASH_SIZE  := 1024
else
$(error TARGET_MCU [$(TARGET_MCU)] is not supported)
endif

MCU_COMMON_SRC = \
        common/stm32/system.c \
        common/stm32/io_impl.c \
        common/stm32/config_flash.c \
        common/stm32/mco.c \
        APM32/startup/system_apm32f4xx.c \
        drivers/inverter.c \
        drivers/dshot_bitbang_decode.c \
        common/stm32/pwm_output_dshot_shared.c \
        common/stm32/dshot_dpwm.c \
        common/stm32/dshot_bitbang_shared.c \
        APM32/bus_spi_apm32.c \
        APM32/bus_i2c_apm32.c \
        APM32/bus_i2c_apm32_init.c \
        APM32/camera_control_apm32.c \
        APM32/debug.c \
        APM32/dma_reqmap_mcu.c \
        APM32/dshot_bitbang.c \
        APM32/dshot_bitbang_ddl.c \
        APM32/eint_apm32.c \
        APM32/io_apm32.c \
        APM32/light_ws2811strip_apm32.c \
        APM32/persistent_apm32.c \
        APM32/pwm_output_apm32.c \
        APM32/pwm_output_dshot_apm32.c \
        APM32/rcm_apm32.c \
        APM32/serial_uart_apm32.c \
        APM32/timer_apm32.c \
        APM32/transponder_ir_io_apm32.c \
        APM32/timer_apm32f4xx.c \
        APM32/adc_apm32f4xx.c \
        APM32/dma_apm32f4xx.c \
        APM32/serial_uart_apm32f4xx.c \
        drivers/adc.c \
        drivers/bus_spi_config.c \
        common/stm32/bus_i2c_pinconfig.c \
        common/stm32/bus_spi_hw.c \
        common/stm32/bus_spi_pinconfig.c \
        common/stm32/serial_uart_hw.c \
        common/stm32/serial_uart_pinconfig.c \
        drivers/serial_escserial.c \
        drivers/serial_pinconfig.c \
        APM32/system_apm32f4xx.c

VCP_SRC = \
        APM32/usb/vcp/usbd_cdc_descriptor.c \
        APM32/usb/usbd_board_apm32f4.c \
        APM32/usb/vcp/usbd_cdc_vcp.c \
        APM32/usb/vcp/serial_usb_vcp.c \
        drivers/usb_io.c

MSC_SRC = \
        drivers/usb_msc_common.c \
        APM32/usb/msc/usb_msc_apm32f4xx.c \
        APM32/usb/msc/usbd_memory.c \
        APM32/usb/msc/usbd_msc_descriptor.c \
        msc/usbd_storage.c \
        msc/usbd_storage_emfat.c \
        msc/emfat.c \
        msc/emfat_file.c \
        msc/usbd_storage_sd_spi.c \
        msc/usbd_storage_sdio.c

SPEED_OPTIMISED_SRC += \
        common/stm32/dshot_bitbang_shared.c \
        common/stm32/pwm_output_dshot_shared.c \
        common/stm32/bus_spi_hw.c \
        common/stm32/system.c

SIZE_OPTIMISED_SRC += \
        APM32/usb/vcp/serial_usb_vcp.c \
        drivers/inverter.c \
        drivers/bus_spi_config.c \
        common/stm32/bus_i2c_pinconfig.c \
        common/stm32/bus_spi_pinconfig.c \
        common/stm32/serial_uart_pinconfig.c \
        drivers/serial_escserial.c \
        drivers/serial_pinconfig.c

DSP_LIB := $(LIB_MAIN_DIR)/CMSIS/DSP
DEVICE_FLAGS += -DARM_MATH_MATRIX_CHECK -DARM_MATH_ROUNDING -DUNALIGNED_SUPPORT_DISABLE -DARM_MATH_CM4 -DUSE_FULL_DDL_DRIVER
