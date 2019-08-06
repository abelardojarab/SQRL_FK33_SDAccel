
set ProjectName fk33_test2
set ProjectFolder ./$ProjectName

#Remove unnecessary files.
set file_list [glob -nocomplain webtalk*.*]
foreach name $file_list {
    file delete $name
}

#Delete old project if folder already exists.
if {[file exists .Xil]} { 
    file delete -force .Xil
}

#Delete old project if folder already exists.
if {[file exists "$ProjectFolder"]} { 
    file delete -force $ProjectFolder
}

set scriptPath [file dirname [file normalize [info script]]]
#puts stdout $scriptPath
#puts stdout [file dirname [info script]]
#return -code 1

create_project $ProjectName ./$ProjectName -part xcvu33p-fsvh2104-2-e
#create_project $ProjectName ./$ProjectName -part xcvu33p-fsvh2104-2-e-es1

set_param synth.maxThreads 8
set_param general.maxThreads 12

create_bd_design "bd"


create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.1 xdma
set_property -dict [list CONFIG.cfg_mgmt_if {false}] [get_bd_cells xdma]
set_property -dict [list CONFIG.pl_link_cap_max_link_width {X1} CONFIG.pl_link_cap_max_link_speed {8.0_GT/s}] [get_bd_cells xdma]
set_property -dict [list CONFIG.vendor_id {D953}] [get_bd_cells xdma]
set_property -dict [list CONFIG.xdma_pcie_64bit_en {true} CONFIG.pf0_msix_cap_table_bir {BAR_1:0} CONFIG.pf0_msix_cap_pba_bir {BAR_1:0}] [get_bd_cells xdma]
set_property -dict [list CONFIG.pcie_blk_locn {PCIE4C_X1Y0}] [get_bd_cells xdma]
set_property -dict [list CONFIG.pf0_device_id {1533} CONFIG.PF0_DEVICE_ID_mqdma {1533} CONFIG.PF2_DEVICE_ID_mqdma {1533} CONFIG.PF3_DEVICE_ID_mqdma {1533}] [get_bd_cells xdma]
set_property -dict [list CONFIG.pf0_revision_id {A3} CONFIG.pf0_subsystem_vendor_id {D953} CONFIG.pf0_subsystem_id {0001}] [get_bd_cells xdma]
set_property -dict [list CONFIG.pf0_Use_Class_Code_Lookup_Assistant {true} CONFIG.pf0_base_class_menu {Processing_accelerators} CONFIG.pf0_class_code_base {12} CONFIG.pf0_sub_class_interface_menu {Unknown} CONFIG.pf0_class_code_interface {00} CONFIG.pf0_class_code {120000}] [get_bd_cells xdma]

create_bd_cell -type ip -vlnv xilinx.com:ip:hbm:1.0 hbm
set_property -dict [list CONFIG.USER_HBM_DENSITY {8GB} CONFIG.USER_HBM_STACK {2} CONFIG.USER_MEMORY_DISPLAY {8192}] [get_bd_cells hbm]
set_property -dict [list CONFIG.USER_CLK_SEL_LIST0 {AXI_00_ACLK} CONFIG.USER_SAXI_01 {false} CONFIG.USER_SAXI_02 {false} CONFIG.USER_SAXI_03 {false} CONFIG.USER_SAXI_04 {false} CONFIG.USER_SAXI_05 {false} CONFIG.USER_SAXI_06 {false} CONFIG.USER_SAXI_07 {false} CONFIG.USER_SAXI_08 {false} CONFIG.USER_SAXI_09 {false} CONFIG.USER_SAXI_10 {false} CONFIG.USER_SAXI_11 {false} CONFIG.USER_SAXI_12 {false} CONFIG.USER_SAXI_13 {false} CONFIG.USER_SAXI_14 {false} CONFIG.USER_SAXI_15 {false}] [get_bd_cells hbm]
set_property -dict [list CONFIG.USER_CLK_SEL_LIST1 {AXI_16_ACLK} CONFIG.USER_SAXI_17 {false} CONFIG.USER_SAXI_18 {false} CONFIG.USER_SAXI_19 {false} CONFIG.USER_SAXI_20 {false} CONFIG.USER_SAXI_21 {false} CONFIG.USER_SAXI_22 {false} CONFIG.USER_SAXI_23 {false} CONFIG.USER_SAXI_24 {false} CONFIG.USER_SAXI_25 {false} CONFIG.USER_SAXI_26 {false} CONFIG.USER_SAXI_27 {false} CONFIG.USER_SAXI_28 {false} CONFIG.USER_SAXI_29 {false} CONFIG.USER_SAXI_30 {false} CONFIG.USER_SAXI_31 {false}] [get_bd_cells hbm]
set_property -dict [list CONFIG.USER_HBM_REF_CLK_0 {200} CONFIG.USER_HBM_REF_CLK_PS_0 {2500.00} CONFIG.USER_HBM_REF_CLK_XDC_0 {5.00} CONFIG.USER_HBM_REF_CLK_PS_1 {2500.00} CONFIG.USER_HBM_REF_CLK_XDC_1 {5.00} CONFIG.USER_HBM_FBDIV_0 {18} CONFIG.USER_HBM_RES_0 {9} CONFIG.USER_HBM_LOCK_REF_DLY_0 {20} CONFIG.USER_HBM_LOCK_FB_DLY_0 {20} CONFIG.USER_HBM_HEX_CP_RES_0 {0x00009600} CONFIG.USER_HBM_HEX_LOCK_FB_REF_DLY_0 {0x00001414} CONFIG.USER_HBM_HEX_FBDIV_CLKOUTDIV_0 {0x00000482} CONFIG.USER_HBM_RES_1 {9} CONFIG.USER_HBM_LOCK_REF_DLY_1 {20} CONFIG.USER_HBM_LOCK_FB_DLY_1 {20} CONFIG.USER_HBM_REF_CLK_1 {200} CONFIG.USER_HBM_FBDIV_1 {18} CONFIG.USER_HBM_HEX_CP_RES_1 {0x00009600} CONFIG.USER_HBM_HEX_LOCK_FB_REF_DLY_1 {0x00001414} CONFIG.USER_HBM_HEX_FBDIV_CLKOUTDIV_1 {0x00000482}] [get_bd_cells hbm]
set_property -dict [list CONFIG.USER_AXI_INPUT_CLK_FREQ {250} CONFIG.USER_AXI_INPUT_CLK_NS {4.000} CONFIG.USER_AXI_INPUT_CLK_PS {4000} CONFIG.USER_AXI_INPUT_CLK_XDC {4.000} CONFIG.USER_AXI_INPUT_CLK1_FREQ {250} CONFIG.USER_AXI_INPUT_CLK1_NS {4.000} CONFIG.USER_AXI_INPUT_CLK1_PS {4000} CONFIG.USER_AXI_INPUT_CLK1_XDC {4.000}] [get_bd_cells hbm]
set_property -dict [list CONFIG.USER_MC0_TRAFFIC_OPTION {Random} CONFIG.USER_MC1_TRAFFIC_OPTION {Random} CONFIG.USER_MC2_TRAFFIC_OPTION {Random} CONFIG.USER_MC3_TRAFFIC_OPTION {Random} CONFIG.USER_MC4_TRAFFIC_OPTION {Random} CONFIG.USER_MC5_TRAFFIC_OPTION {Random} CONFIG.USER_MC6_TRAFFIC_OPTION {Random} CONFIG.USER_MC7_TRAFFIC_OPTION {Random} CONFIG.USER_MC8_TRAFFIC_OPTION {Random} CONFIG.USER_MC9_TRAFFIC_OPTION {Random} CONFIG.USER_MC10_TRAFFIC_OPTION {Random} CONFIG.USER_MC11_TRAFFIC_OPTION {Random} CONFIG.USER_MC12_TRAFFIC_OPTION {Random} CONFIG.USER_MC13_TRAFFIC_OPTION {Random} CONFIG.USER_MC14_TRAFFIC_OPTION {Random} CONFIG.USER_MC15_TRAFFIC_OPTION {Random}] [get_bd_cells hbm]
set_property CONFIG.USER_APB_EN false [get_bd_cells /hbm]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 hbm_reset

create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0
set_property -dict [list CONFIG.C_BUF_TYPE {IBUFDSGTE}] [get_bd_cells util_ds_buf_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0
set_property CONFIG.RESET_TYPE ACTIVE_LOW [get_bd_cells /clk_wiz_0]
set_property -dict [list CONFIG.PRIM_IN_FREQ.VALUE_SRC USER] [get_bd_cells clk_wiz_0]
set_property -dict [list CONFIG.PRIM_IN_FREQ {200.000}] [get_bd_cells clk_wiz_0]
set_property -dict [list CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000}] [get_bd_cells clk_wiz_0]

make_bd_intf_pins_external  [get_bd_intf_pins xdma/pcie_mgt]
set_property name pcie [get_bd_intf_ports pcie_mgt_0]

make_bd_intf_pins_external  [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
set_property name pcie_refclk [get_bd_intf_ports CLK_IN_D_0]
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_DS_ODIV2] [get_bd_pins xdma/sys_clk]
connect_bd_net [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins xdma/sys_clk_gt]

make_bd_pins_external  [get_bd_pins xdma/sys_rst_n]
set_property CONFIG.POLARITY ACTIVE_LOW [get_bd_ports sys_rst_n_0]
set_property name pcie_perstn [get_bd_ports sys_rst_n_0]

create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0
make_bd_pins_external  [get_bd_pins xlconstant_0/dout]
set_property name pcie_clkreq [get_bd_ports dout_0]

                                                                                                     
create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi
set_property -dict [list CONFIG.M_AXI_DATA_WIDTH {64} CONFIG.M_AXI_ADDR_WIDTH {64}] [get_bd_cells jtag_axi]
set_property -dict [list CONFIG.M_HAS_BURST {0}] [get_bd_cells jtag_axi]

create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1
set_property -dict [list CONFIG.C_BUF_TYPE {IBUFDS}] [get_bd_cells util_ds_buf_1]
make_bd_intf_pins_external  [get_bd_intf_pins util_ds_buf_1/CLK_IN_D]
set_property name hbm_ref [get_bd_intf_ports CLK_IN_D_0]
set_property -dict [list CONFIG.FREQ_HZ {200000000}] [get_bd_intf_ports hbm_ref]

#Add AXI I2C to control voltages
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0
set_property -dict [list CONFIG.C_GPO_WIDTH {7} CONFIG.C_DEFAULT_VALUE {0x3F}] [get_bd_cells axi_iic_0]
make_bd_intf_pins_external  [get_bd_intf_pins axi_iic_0/IIC]
set_property name iic [get_bd_intf_ports IIC_0]
make_bd_pins_external  [get_bd_pins axi_iic_0/gpo]
set_property name led [get_bd_ports gpo_0]

#Add AXI interconnect IP
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 pcie2hbm
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.NUM_MI {3}] [get_bd_cells pcie2hbm]



connect_bd_net [get_bd_pins util_ds_buf_1/IBUF_OUT] [get_bd_pins hbm/HBM_REF_CLK_0]
connect_bd_net [get_bd_pins util_ds_buf_1/IBUF_OUT] [get_bd_pins hbm/HBM_REF_CLK_1]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins pcie2hbm/S00_AXI] [get_bd_intf_pins xdma/M_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins pcie2hbm/S01_AXI] [get_bd_intf_pins jtag_axi/M_AXI]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins pcie2hbm/M00_AXI] [get_bd_intf_pins hbm/SAXI_00]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins pcie2hbm/M01_AXI] [get_bd_intf_pins hbm/SAXI_16]
connect_bd_intf_net -boundary_type upper [get_bd_intf_pins pcie2hbm/M02_AXI] [get_bd_intf_pins axi_iic_0/S_AXI]

connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins pcie2hbm/ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins pcie2hbm/S00_ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins pcie2hbm/S01_ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins pcie2hbm/M00_ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins pcie2hbm/M01_ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins pcie2hbm/M02_ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins hbm/AXI_00_ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins hbm/AXI_16_ACLK]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk]
connect_bd_net [get_bd_pins xdma/axi_aclk] [get_bd_pins jtag_axi/aclk]


connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins pcie2hbm/ARESETN]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins pcie2hbm/S00_ARESETN]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins pcie2hbm/S01_ARESETN]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins pcie2hbm/M00_ARESETN]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins pcie2hbm/M01_ARESETN]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins pcie2hbm/M02_ARESETN]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins jtag_axi/aresetn]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins hbm/AXI_00_ARESET_N]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins hbm/AXI_16_ARESET_N]
connect_bd_net [get_bd_pins xdma/axi_aresetn] [get_bd_pins hbm_reset/ext_reset_in]

connect_bd_net [get_bd_pins hbm_reset/peripheral_aresetn] [get_bd_pins hbm/APB_0_PRESET_N]
connect_bd_net [get_bd_pins hbm_reset/peripheral_aresetn] [get_bd_pins hbm/APB_1_PRESET_N]
connect_bd_net [get_bd_pins hbm_reset/peripheral_aresetn] [get_bd_pins clk_wiz_0/resetn]

connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins hbm_reset/dcm_locked]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins hbm/APB_0_PCLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins hbm/APB_1_PCLK]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins hbm_reset/slowest_sync_clk]
connect_bd_net [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins util_ds_buf_1/IBUF_OUT]


regenerate_bd_layout
save_bd_design

assign_bd_address -offset  0x00000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM00 }]
assign_bd_address -offset  0x10000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM01 }]
assign_bd_address -offset  0x20000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM02 }]
assign_bd_address -offset  0x30000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM03 }]
assign_bd_address -offset  0x40000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM04 }]
assign_bd_address -offset  0x50000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM05 }]
assign_bd_address -offset  0x60000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM06 }]
assign_bd_address -offset  0x70000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM07 }]
assign_bd_address -offset  0x80000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM08 }]
assign_bd_address -offset  0x90000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM09 }]
assign_bd_address -offset  0xA0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM10 }]
assign_bd_address -offset  0xB0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM11 }]
assign_bd_address -offset  0xC0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM12 }]
assign_bd_address -offset  0xD0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM13 }]
assign_bd_address -offset  0xE0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM14 }]
assign_bd_address -offset  0xF0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_00/HBM_MEM15 }]
assign_bd_address -offset 0x100000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM16 }]
assign_bd_address -offset 0x110000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM17 }]
assign_bd_address -offset 0x120000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM18 }]
assign_bd_address -offset 0x130000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM19 }]
assign_bd_address -offset 0x140000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM20 }]
assign_bd_address -offset 0x150000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM21 }]
assign_bd_address -offset 0x160000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM22 }]
assign_bd_address -offset 0x170000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM23 }]
assign_bd_address -offset 0x180000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM24 }]
assign_bd_address -offset 0x190000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM25 }]
assign_bd_address -offset 0x1A0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM26 }]
assign_bd_address -offset 0x1B0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM27 }]
assign_bd_address -offset 0x1C0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM28 }]
assign_bd_address -offset 0x1D0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM29 }]
assign_bd_address -offset 0x1E0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM30 }]
assign_bd_address -offset 0x1F0000000 -range 256M [get_bd_addr_segs {hbm/SAXI_16/HBM_MEM31 }]
assign_bd_address [get_bd_addr_segs {axi_iic_0/S_AXI/Reg }]

exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM00] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM01] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM02] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM03] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM04] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM05] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM06] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM07] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM08] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM09] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM10] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM11] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM12] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM13] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM14] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_16/HBM_MEM15] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM16] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM17] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM18] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM19] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM20] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM21] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM22] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM23] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM24] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM25] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM26] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM27] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM28] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM29] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM30] -target_address_space [get_bd_addr_spaces jtag_axi/Data]
exclude_bd_addr_seg [get_bd_addr_segs hbm/SAXI_00/HBM_MEM31] -target_address_space [get_bd_addr_spaces jtag_axi/Data]


#set_property PR_FLOW 1 [current_project]
add_files -fileset constrs_1 -norecurse $scriptPath/fk33_test.xdc

make_wrapper -files [get_files ./$ProjectName/$ProjectName.srcs/sources_1/bd/bd/bd.bd] -top
add_files -norecurse ./$ProjectName/$ProjectName.srcs/sources_1/bd/bd/hdl/bd_wrapper.v
update_compile_order -fileset sources_1

set_property strategy Performance_RefinePlacement [get_runs impl_1]




create_hw_cfgmem -hw_device [lindex [get_hw_devices xcvu33p_0] 0] [lindex [get_cfgmem_parts {mt25qu256-spi-x1_x2_x4}] 0]
set_property PROGRAM.BLANK_CHECK  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcvu33p_0] 0]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcvu33p_0] 0]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcvu33p_0] 0]]
set_property PROGRAM.VERIFY  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcvu33p_0] 0]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xcvu33p_0] 0]]


