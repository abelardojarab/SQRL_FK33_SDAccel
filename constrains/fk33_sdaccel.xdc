
########### PCIe ##################################

# REFCLK
set_property PACKAGE_PIN AD8 [get_ports {pcie_ref_clk_n[0]}]
set_property PACKAGE_PIN AD9 [get_ports {pcie_ref_clk_p[0]}]

#create_clock -period 10.000 -name pcie_ref_clk [get_ports pcie_ref_clk_p]

# RESET
set_property PACKAGE_PIN BE24 [get_ports pcie_resetn]
set_property IOSTANDARD LVCMOS18 [get_ports pcie_resetn]

# MGT

######################################################
set_property PACKAGE_PIN AL2 [get_ports {pcie_rxp[0]}]
set_property PACKAGE_PIN AL1 [get_ports {pcie_rxn[0]}]
set_property PACKAGE_PIN Y5 [get_ports {pcie_txp[0]}]
set_property PACKAGE_PIN Y4 [get_ports {pcie_txn[0]}]
#set_property PACKAGE_PIN AM4 [get_ports {pcie_rxp[1]}]
#set_property PACKAGE_PIN AM3 [get_ports {pcie_rxn[1]}]
#set_property PACKAGE_PIN AA7 [get_ports {pcie_txp[1]}]
#set_property PACKAGE_PIN AA6 [get_ports {pcie_txn[1]}]
#set_property PACKAGE_PIN AK4 [get_ports {pcie_rxp[2]}]
#set_property PACKAGE_PIN AK3 [get_ports {pcie_rxn[2]}]
#set_property PACKAGE_PIN AB5 [get_ports {pcie_txp[2]}]
#set_property PACKAGE_PIN AB4 [get_ports {pcie_txn[2]}]
#set_property PACKAGE_PIN AN2 [get_ports {pcie_rxp[3]}]
#set_property PACKAGE_PIN AN1 [get_ports {pcie_rxn[3]}]
#set_property PACKAGE_PIN AC7 [get_ports {pcie_txp[3]}]
#set_property PACKAGE_PIN AC6 [get_ports {pcie_txn[3]}]
#set_property PACKAGE_PIN AP4 [get_ports {pcie_rxp[4]}]
#set_property PACKAGE_PIN AP3 [get_ports {pcie_rxn[4]}]
#set_property PACKAGE_PIN AD5 [get_ports {pcie_txp[4]}]
#set_property PACKAGE_PIN AD4 [get_ports {pcie_txn[4]}]
#set_property PACKAGE_PIN AR2 [get_ports {pcie_rxp[5]}]
#set_property PACKAGE_PIN AR1 [get_ports {pcie_rxn[5]}]
#set_property PACKAGE_PIN AF5 [get_ports {pcie_txp[5]}]
#set_property PACKAGE_PIN AF4 [get_ports {pcie_txn[5]}]
#set_property PACKAGE_PIN AT4 [get_ports {pcie_rxp[6]}]
#set_property PACKAGE_PIN AT3 [get_ports {pcie_rxn[6]}]
#set_property PACKAGE_PIN AE7 [get_ports {pcie_txp[6]}]
#set_property PACKAGE_PIN AE6 [get_ports {pcie_txn[6]}]
#set_property PACKAGE_PIN AU2 [get_ports {pcie_rxp[7]}]
#set_property PACKAGE_PIN AU1 [get_ports {pcie_rxn[7]}]
#set_property PACKAGE_PIN AH5 [get_ports {pcie_txp[7]}]
#set_property PACKAGE_PIN AH4 [get_ports {pcie_txn[7]}]
#set_property PACKAGE_PIN AV4 [get_ports {pcie_rxp[8]}]
#set_property PACKAGE_PIN AV3 [get_ports {pcie_rxn[8]}]
#set_property PACKAGE_PIN AG7 [get_ports {pcie_txp[8]}]
#set_property PACKAGE_PIN AG6 [get_ports {pcie_txn[8]}]
#set_property PACKAGE_PIN AW2 [get_ports {pcie_rxp[9]}]
#set_property PACKAGE_PIN AW1 [get_ports {pcie_rxn[9]}]
#set_property PACKAGE_PIN AJ7 [get_ports {pcie_txp[9]}]
#set_property PACKAGE_PIN AJ6 [get_ports {pcie_txn[9]}]
#set_property PACKAGE_PIN BA2 [get_ports {pcie_rxp[10]}]
#set_property PACKAGE_PIN BA1 [get_ports {pcie_rxn[10]}]
#set_property PACKAGE_PIN AL7 [get_ports {pcie_txp[10]}]
#set_property PACKAGE_PIN AL6 [get_ports {pcie_txn[10]}]
#set_property PACKAGE_PIN BC2 [get_ports {pcie_rxp[11]}]
#set_property PACKAGE_PIN BC1 [get_ports {pcie_rxn[11]}]
#set_property PACKAGE_PIN AM9 [get_ports {pcie_txp[11]}]
#set_property PACKAGE_PIN AM8 [get_ports {pcie_txn[11]}]
#set_property PACKAGE_PIN AY4 [get_ports {pcie_rxp[12]}]
#set_property PACKAGE_PIN AY3 [get_ports {pcie_rxn[12]}]
#set_property PACKAGE_PIN AN7 [get_ports {pcie_txp[12]}]
#set_property PACKAGE_PIN AN6 [get_ports {pcie_txn[12]}]
#set_property PACKAGE_PIN BB4 [get_ports {pcie_rxp[13]}]
#set_property PACKAGE_PIN BB3 [get_ports {pcie_rxn[13]}]
#set_property PACKAGE_PIN AP9 [get_ports {pcie_txp[13]}]
#set_property PACKAGE_PIN AP8 [get_ports {pcie_txn[13]}]
#set_property PACKAGE_PIN BD4 [get_ports {pcie_rxp[14]}]
#set_property PACKAGE_PIN BD3 [get_ports {pcie_rxn[14]}]
#set_property PACKAGE_PIN AR7 [get_ports {pcie_txp[14]}]
#set_property PACKAGE_PIN AR6 [get_ports {pcie_txn[14]}]
#set_property PACKAGE_PIN BE6 [get_ports {pcie_rxp[15]}]
#set_property PACKAGE_PIN BE5 [get_ports {pcie_rxn[15]}]
#set_property PACKAGE_PIN AT9 [get_ports {pcie_txp[15]}]
#set_property PACKAGE_PIN AT8 [get_ports {pcie_txn[15]}]

# CLKREQ
set_property PACKAGE_PIN BE25 [get_ports {pcie_clkreq[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {pcie_clkreq[0]}]

########### End PCIe ##################################

########### System Clock ##############################
set_property PACKAGE_PIN BC26 [get_ports {hbm_ref_clk_p[0]}]
set_property PACKAGE_PIN BC27 [get_ports {hbm_ref_clk_n[0]}]
set_property IOSTANDARD LVDS [get_ports {hbm_ref_clk_n[0]}]
set_property IOSTANDARD LVDS [get_ports {hbm_ref_clk_p[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {hbm_ref_clk_p[0]}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {hbm_ref_clk_n[0]}]

# DQS_BIAS only supported by DIFF_SSTL18
#set_property DQS_BIAS TRUE [get_ports hbm_ref_clk_p]
#set_property DQS_BIAS TRUE [get_ports hbm_ref_clk_n]
#set_property EQUALIZATION EQ_LEVEL0 [get_ports hbm_ref_clk_p]
#set_property EQUALIZATION EQ_LEVEL0 [get_ports hbm_ref_clk_n]

# Not needed for this design, since the block diagram instantiates the clock
# create_clock -name sys_clk -period 5.000 [get_ports hbm_ref_clk_p]
########### End System Clock ##########################

############ LEDs ##################################
#set_property PACKAGE_PIN BD25 [get_ports pcie_linkup]
#set_property PACKAGE_PIN BD25 [get_ports LED_A]
#set_property PACKAGE_PIN BE26 [get_ports LED_B]
#set_property PACKAGE_PIN BD23 [get_ports LED_C]
#set_property PACKAGE_PIN BF26 [get_ports LED_D]
#set_property PACKAGE_PIN BC25 [get_ports LED_RGB_R]
#set_property PACKAGE_PIN BB26 [get_ports LED_RGB_G]
#set_property PACKAGE_PIN BB25 [get_ports LED_RGB_B]
#set_property IOSTANDARD LVCMOS18 [get_ports LED_A]
#set_property IOSTANDARD LVCMOS18 [get_ports LED_B]
#set_property IOSTANDARD LVCMOS18 [get_ports LED_C]
#set_property IOSTANDARD LVCMOS18 [get_ports LED_D]
#set_property IOSTANDARD LVCMOS18 [get_ports LED_RGB_R]
#set_property IOSTANDARD LVCMOS18 [get_ports LED_RGB_G]
#set_property IOSTANDARD LVCMOS18 [get_ports LED_RGB_B]

############# I2C-local (to PMIC) ##################
#set_property PACKAGE_PIN BB24 [get_ports IIC_scl_io]
#set_property PACKAGE_PIN BA24 [get_ports IIC_sda_io]
#set_property IOSTANDARD LVCMOS18 [get_ports IIC_scl_io]
#set_property IOSTANDARD LVCMOS18 [get_ports IIC_sda_io]

###############################################################################
# Additional design / project settings
###############################################################################

# High-speed configuration so FPGA is up in time to negotiate with PCIe root complex
# Available rates: 2.7, 5.3, 8.0, 10.6, 21.3, 31.9, 36.4, 51.0, 56.7, 63.8, 72.9, 85.0, 102.0, 127.5, 170.0
# Should be able to push to 140 (flash part accepts 166; 15% tolerance on internal osc), so 127 really
set_property BITSTREAM.CONFIG.CONFIGRATE 127.5 [current_design]

#set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Div-1 [current_design]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]




create_pblock pblock_ocl_block
add_cells_to_pblock [get_pblocks pblock_ocl_block] [get_cells -quiet [list bd_i/ocl_block]]
resize_pblock [get_pblocks pblock_ocl_block] -add {CLOCKREGION_X1Y2:CLOCKREGION_X2Y3}
set_property SNAPPING_MODE ON [get_pblocks pblock_ocl_block]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
