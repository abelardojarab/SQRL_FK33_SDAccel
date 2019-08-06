
########### PCIe ##################################

# REFCLK
set_property PACKAGE_PIN AD8 [get_ports {pcie_refclk_clk_n[0]}]
set_property PACKAGE_PIN AD9 [get_ports {pcie_refclk_clk_p[0]}]

create_clock -period 10.000 -name pcie_refclk [get_ports pcie_refclk_clk_p]

# RESET
set_property -dict {PACKAGE_PIN BE24 IOSTANDARD LVCMOS18} [get_ports pcie_perstn]

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
create_clock -period 5.000 -name hbm_clk [get_ports hbm_ref_clk_p]
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
set_property -dict {PACKAGE_PIN BD25 IOSTANDARD LVCMOS18} [get_ports led[0]]
set_property -dict {PACKAGE_PIN BE26 IOSTANDARD LVCMOS18} [get_ports led[1]]
set_property -dict {PACKAGE_PIN BD23 IOSTANDARD LVCMOS18} [get_ports led[2]]
set_property -dict {PACKAGE_PIN BF26 IOSTANDARD LVCMOS18} [get_ports led[3]]
set_property -dict {PACKAGE_PIN BC25 IOSTANDARD LVCMOS18} [get_ports led[4]]
set_property -dict {PACKAGE_PIN BB26 IOSTANDARD LVCMOS18} [get_ports led[5]]
set_property -dict {PACKAGE_PIN BB25 IOSTANDARD LVCMOS18} [get_ports led[6]]

############# I2C-local (to PMIC) ##################
set_property -dict {PACKAGE_PIN BB24 IOSTANDARD LVCMOS18} [get_ports iic_scl_io]
set_property -dict {PACKAGE_PIN BA24 IOSTANDARD LVCMOS18} [get_ports iic_sda_io]

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

#set_property HD.RECONFIGURABLE true [get_cells bd_i/ocl_block]
#set_property DONT_TOUCH true [get_cells bd_i/ocl_block]

#create_pblock dynamic
#add_cells_to_pblock [get_pblocks dynamic] [get_cells -quiet [list bd_i/ocl_block]]
#resize_pblock [get_pblocks dynamic] -add {SLICE_X0Y239:SLICE_X116Y239 SLICE_X0Y60:SLICE_X219Y238}
#resize_pblock [get_pblocks dynamic] -add {CMACE4_X0Y0:CMACE4_X0Y1}
#resize_pblock [get_pblocks dynamic] -add {DSP48E2_X16Y18:DSP48E2_X30Y87 DSP48E2_X0Y18:DSP48E2_X15Y89}
#resize_pblock [get_pblocks dynamic] -add {LAGUNA_X16Y0:LAGUNA_X29Y117 LAGUNA_X0Y0:LAGUNA_X15Y119}
#resize_pblock [get_pblocks dynamic] -add {PCIE4CE4_X0Y1:PCIE4CE4_X0Y1}
#resize_pblock [get_pblocks dynamic] -add {RAMB18_X8Y24:RAMB18_X12Y93 RAMB18_X0Y24:RAMB18_X7Y95}
#resize_pblock [get_pblocks dynamic] -add {RAMB36_X8Y12:RAMB36_X12Y46 RAMB36_X0Y12:RAMB36_X7Y47}
#resize_pblock [get_pblocks dynamic] -add {URAM288_X2Y16:URAM288_X4Y59 URAM288_X0Y16:URAM288_X1Y63}
#set_property SNAPPING_MODE ON [get_pblocks dynamic]

#create_pblock static
#add_cells_to_pblock [get_pblocks static] [get_cells -quiet [list bd_i/axi2pr bd_i/axi_gpio_0 bd_i/clk_wiz_0 bd_i/hbm bd_i/jtag_axi bd_i/pr2axi bd_i/sys_reset bd_i/util_ds_buf_0 bd_i/util_ds_buf_1 bd_i/xdma bd_i/xlconstant_0]]
#resize_pblock [get_pblocks static] -add {SLICE_X220Y0:SLICE_X232Y239 SLICE_X0Y0:SLICE_X219Y59}
#resize_pblock [get_pblocks static] -add {DSP48E2_X31Y0:DSP48E2_X31Y89 DSP48E2_X0Y0:DSP48E2_X30Y17}
#resize_pblock [get_pblocks static] -add {LAGUNA_X30Y0:LAGUNA_X31Y119}
#resize_pblock [get_pblocks static] -add {RAMB18_X13Y0:RAMB18_X13Y95 RAMB18_X0Y0:RAMB18_X12Y23}
#resize_pblock [get_pblocks static] -add {RAMB36_X13Y0:RAMB36_X13Y47 RAMB36_X0Y0:RAMB36_X12Y11}
#resize_pblock [get_pblocks static] -add {URAM288_X0Y0:URAM288_X4Y15}


#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]

create_pblock xdma_hbm_pblock
resize_pblock [get_pblocks xdma_hbm_pblock] -add {SLICE_X221Y0:SLICE_X232Y239 SLICE_X0Y0:SLICE_X220Y30}
resize_pblock [get_pblocks xdma_hbm_pblock] -add {DSP48E2_X31Y0:DSP48E2_X31Y89 DSP48E2_X0Y0:DSP48E2_X30Y5}
resize_pblock [get_pblocks xdma_hbm_pblock] -add {LAGUNA_X30Y0:LAGUNA_X31Y119}
resize_pblock [get_pblocks xdma_hbm_pblock] -add {RAMB18_X13Y0:RAMB18_X13Y95 RAMB18_X0Y0:RAMB18_X12Y11}
resize_pblock [get_pblocks xdma_hbm_pblock] -add {RAMB36_X13Y0:RAMB36_X13Y47 RAMB36_X0Y0:RAMB36_X12Y5}
resize_pblock [get_pblocks xdma_hbm_pblock] -add {URAM288_X0Y0:URAM288_X4Y7}
set_property MARK_DEBUG false [get_nets bd_i/xdma/inst/pcie4c_ip_i/inst/store_ltssm]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
