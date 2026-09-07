// This is the unpowered netlist.
module housekeeping_spi (CSB,
    SCK,
    SDI,
    SDO,
    pass_thru_mgmt,
    pass_thru_mgmt_delay,
    pass_thru_mgmt_reset,
    pass_thru_user,
    pass_thru_user_delay,
    pass_thru_user_reset,
    rdstb,
    reset,
    sdoenb,
    wrstb,
    idata,
    oaddr,
    odata);
 input CSB;
 input SCK;
 input SDI;
 output SDO;
 output pass_thru_mgmt;
 output pass_thru_mgmt_delay;
 output pass_thru_mgmt_reset;
 output pass_thru_user;
 output pass_thru_user_delay;
 output pass_thru_user_reset;
 output rdstb;
 input reset;
 output sdoenb;
 output wrstb;
 input [7:0] idata;
 output [7:0] oaddr;
 output [7:0] odata;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _037_;
 wire _038_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _047_;
 wire _049_;
 wire _051_;
 wire _053_;
 wire _055_;
 wire _057_;
 wire _059_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire \addr[0] ;
 wire \addr[1] ;
 wire \addr[2] ;
 wire \addr[3] ;
 wire \addr[4] ;
 wire \addr[5] ;
 wire \addr[6] ;
 wire \addr[7] ;
 wire clknet_0_SCK;
 wire clknet_0__221_;
 wire clknet_1_0__leaf__221_;
 wire clknet_1_1__leaf__221_;
 wire clknet_2_0__leaf_SCK;
 wire clknet_2_1__leaf_SCK;
 wire clknet_2_2__leaf_SCK;
 wire clknet_2_3__leaf_SCK;
 wire \count[0] ;
 wire \count[1] ;
 wire \count[2] ;
 wire \fixed[0] ;
 wire \fixed[1] ;
 wire \fixed[2] ;
 wire \ldata[0] ;
 wire \ldata[1] ;
 wire \ldata[2] ;
 wire \ldata[3] ;
 wire \ldata[4] ;
 wire \ldata[5] ;
 wire \ldata[6] ;
 wire net1;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net2;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net3;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net4;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net5;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net6;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net7;
 wire net70;
 wire net71;
 wire net72;
 wire net8;
 wire net9;
 wire pre_pass_thru_mgmt;
 wire pre_pass_thru_user;
 wire readmode;
 wire \state[0] ;
 wire \state[1] ;
 wire \state[2] ;
 wire \state[3] ;
 wire \state[4] ;
 wire writemode;

 sky130_fd_sc_hd__decap_8 FILLER_0_0_104 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_119 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_126 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_134 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_156 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_162 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_174 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_38 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_0_72 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_0_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_10_109 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_139 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_151 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_163 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_10_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_10_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_108 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_121 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_133 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_145 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_165 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_175 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_46 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_50 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_11_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_63 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_84 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_105 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_125 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_133 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_138 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_150 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_156 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_160 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_166 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_12_176 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_60 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_72 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_12_85 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_12_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_146 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_178 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_32 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_13_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_73 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_13_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_13_87 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_112 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_128 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_14_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_14_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_14_22 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_14_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_14_76 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_111 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_15_117 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_149 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_15_166 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_32 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15_44 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_15_60 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_15_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_161 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_25 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_16_51 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_16_61 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_16_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_16_81 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_16_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_16_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_16_94 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_17_116 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_124 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_128 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_140 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_17_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_173 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_17_24 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_17_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_17_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_17_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_129 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_147 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_151 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_18_159 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_164 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18_173 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_181 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_18_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_18_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_47 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_18_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_18_97 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_19_121 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_152 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_16 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_162 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_19_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_175 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_44 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_19_48 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_19_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_7 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_19_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_19_86 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_90 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_19_94 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_156 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_1_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_1_86 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_20_149 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_181 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_20 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_20_37 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_20_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_20_93 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_21_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_11 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_21_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_167 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_21_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_28 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_21_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_21_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_21_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_22_108 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_114 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_120 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_16 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_165 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_22_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_22_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_49 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_22_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_22_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_22_96 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_111 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_23_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_23_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_154 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_166 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_180 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_22 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_23_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_23_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_75 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_87 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_23_99 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_129 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_139 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_153 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_24_160 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_178 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_62 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_24_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_24_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_24_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_24_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_25_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_143 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_147 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_16 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_178 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_25_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_39 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_25_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_25_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_25_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_145 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_152 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_26_22 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_38 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_50 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_26_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_26_66 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_26_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_26_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_105 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_111 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_125 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_137 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_15 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_27_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_27_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_60 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_72 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_27_84 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_27_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_28_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_156 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_28_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_28_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_28_88 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_109 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_29_177 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29_23 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_29_57 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_29_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_2_108 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_116 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_144 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_156 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_66 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_96 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_104 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_30_135 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_149 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_16 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_165 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_37 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_30_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_30_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_30_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_30_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_30_99 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_109 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_136 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_148 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_160 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_3_77 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_3_89 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_109 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_129 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_134 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_141 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_4_158 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_42 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_65 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_83 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_85 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_9 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_106 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_15 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_160 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_181 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_50 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_76 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_5_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_92 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_121 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_6_133 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_141 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_158 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_168 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_6_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_100 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_104 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_113 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_130 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_142 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_154 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_7_166 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_177 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_50 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_7_74 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_88 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_131 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_141 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_153 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_8_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_62 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_8_82 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_85 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_10 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_9_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_111 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_130 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_167 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_181 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_48 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_9_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_67 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_79 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_91 ();
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__buf_2 _222_ (.A(net11),
    .X(_100_));
 sky130_fd_sc_hd__clkbuf_4 _223_ (.A(_100_),
    .X(_101_));
 sky130_fd_sc_hd__buf_2 _224_ (.A(net1),
    .X(_102_));
 sky130_fd_sc_hd__clkbuf_4 _225_ (.A(_102_),
    .X(_103_));
 sky130_fd_sc_hd__nor2_1 _226_ (.A(_101_),
    .B(_103_),
    .Y(_059_));
 sky130_fd_sc_hd__or3_1 _227_ (.A(\count[2] ),
    .B(\count[1] ),
    .C(\count[0] ),
    .X(_104_));
 sky130_fd_sc_hd__clkbuf_4 _228_ (.A(_104_),
    .X(_105_));
 sky130_fd_sc_hd__mux2_1 _229_ (.A0(net10),
    .A1(\ldata[6] ),
    .S(_105_),
    .X(_106_));
 sky130_fd_sc_hd__nand2_4 _230_ (.A(readmode),
    .B(\state[2] ),
    .Y(_107_));
 sky130_fd_sc_hd__mux2_1 _231_ (.A0(_106_),
    .A1(net65),
    .S(_107_),
    .X(_108_));
 sky130_fd_sc_hd__clkbuf_1 _232_ (.A(_108_),
    .X(_099_));
 sky130_fd_sc_hd__nor2_1 _233_ (.A(_101_),
    .B(_103_),
    .Y(_057_));
 sky130_fd_sc_hd__mux2_1 _234_ (.A0(net9),
    .A1(\ldata[5] ),
    .S(_105_),
    .X(_109_));
 sky130_fd_sc_hd__mux2_1 _235_ (.A0(_109_),
    .A1(net70),
    .S(_107_),
    .X(_110_));
 sky130_fd_sc_hd__clkbuf_1 _236_ (.A(_110_),
    .X(_098_));
 sky130_fd_sc_hd__nor2_1 _237_ (.A(_101_),
    .B(_103_),
    .Y(_055_));
 sky130_fd_sc_hd__mux2_1 _238_ (.A0(net8),
    .A1(\ldata[4] ),
    .S(_105_),
    .X(_111_));
 sky130_fd_sc_hd__mux2_1 _239_ (.A0(_111_),
    .A1(net64),
    .S(_107_),
    .X(_112_));
 sky130_fd_sc_hd__clkbuf_1 _240_ (.A(_112_),
    .X(_097_));
 sky130_fd_sc_hd__nor2_1 _241_ (.A(_101_),
    .B(_103_),
    .Y(_053_));
 sky130_fd_sc_hd__mux2_1 _242_ (.A0(net7),
    .A1(\ldata[3] ),
    .S(_105_),
    .X(_113_));
 sky130_fd_sc_hd__mux2_1 _243_ (.A0(_113_),
    .A1(net69),
    .S(_107_),
    .X(_114_));
 sky130_fd_sc_hd__clkbuf_1 _244_ (.A(_114_),
    .X(_096_));
 sky130_fd_sc_hd__nor2_1 _245_ (.A(_101_),
    .B(_103_),
    .Y(_051_));
 sky130_fd_sc_hd__mux2_1 _246_ (.A0(net6),
    .A1(\ldata[2] ),
    .S(_105_),
    .X(_115_));
 sky130_fd_sc_hd__mux2_1 _247_ (.A0(_115_),
    .A1(net63),
    .S(_107_),
    .X(_116_));
 sky130_fd_sc_hd__clkbuf_1 _248_ (.A(_116_),
    .X(_095_));
 sky130_fd_sc_hd__nor2_1 _249_ (.A(_101_),
    .B(_103_),
    .Y(_049_));
 sky130_fd_sc_hd__mux2_1 _250_ (.A0(net5),
    .A1(\ldata[1] ),
    .S(_105_),
    .X(_117_));
 sky130_fd_sc_hd__mux2_1 _251_ (.A0(_117_),
    .A1(\ldata[2] ),
    .S(_107_),
    .X(_118_));
 sky130_fd_sc_hd__clkbuf_1 _252_ (.A(_118_),
    .X(_094_));
 sky130_fd_sc_hd__nor2_1 _253_ (.A(_101_),
    .B(_103_),
    .Y(_047_));
 sky130_fd_sc_hd__mux2_1 _254_ (.A0(net4),
    .A1(\ldata[0] ),
    .S(_105_),
    .X(_119_));
 sky130_fd_sc_hd__mux2_1 _255_ (.A0(_119_),
    .A1(net61),
    .S(_107_),
    .X(_120_));
 sky130_fd_sc_hd__clkbuf_1 _256_ (.A(_120_),
    .X(_093_));
 sky130_fd_sc_hd__nor2_1 _257_ (.A(_101_),
    .B(_103_),
    .Y(_045_));
 sky130_fd_sc_hd__nor2_1 _258_ (.A(_107_),
    .B(_105_),
    .Y(_121_));
 sky130_fd_sc_hd__a22o_1 _259_ (.A1(net53),
    .A2(_107_),
    .B1(_121_),
    .B2(net3),
    .X(_092_));
 sky130_fd_sc_hd__nor2_1 _260_ (.A(_101_),
    .B(_103_),
    .Y(_038_));
 sky130_fd_sc_hd__and3_1 _261_ (.A(\count[2] ),
    .B(\count[1] ),
    .C(\count[0] ),
    .X(_122_));
 sky130_fd_sc_hd__buf_2 _262_ (.A(_122_),
    .X(_123_));
 sky130_fd_sc_hd__o211a_1 _263_ (.A1(net57),
    .A2(writemode),
    .B1(\state[2] ),
    .C1(_123_),
    .X(_091_));
 sky130_fd_sc_hd__clkbuf_4 _264_ (.A(\state[0] ),
    .X(_124_));
 sky130_fd_sc_hd__clkbuf_4 _265_ (.A(\count[0] ),
    .X(_125_));
 sky130_fd_sc_hd__nand2_2 _266_ (.A(\count[2] ),
    .B(\count[1] ),
    .Y(_126_));
 sky130_fd_sc_hd__nor2_1 _267_ (.A(_125_),
    .B(_126_),
    .Y(_127_));
 sky130_fd_sc_hd__inv_2 _268_ (.A(\state[0] ),
    .Y(_128_));
 sky130_fd_sc_hd__a211o_1 _269_ (.A1(pre_pass_thru_mgmt),
    .A2(_125_),
    .B1(_128_),
    .C1(_126_),
    .X(_129_));
 sky130_fd_sc_hd__a32o_1 _270_ (.A1(net2),
    .A2(_124_),
    .A3(_127_),
    .B1(_129_),
    .B2(net66),
    .X(_090_));
 sky130_fd_sc_hd__nor2_1 _271_ (.A(_101_),
    .B(_103_),
    .Y(_035_));
 sky130_fd_sc_hd__nand2b_2 _272_ (.A_N(\count[1] ),
    .B(_125_),
    .Y(_130_));
 sky130_fd_sc_hd__inv_2 _273_ (.A(_130_),
    .Y(_131_));
 sky130_fd_sc_hd__inv_2 _274_ (.A(pre_pass_thru_mgmt),
    .Y(_132_));
 sky130_fd_sc_hd__a31oi_1 _275_ (.A1(\count[2] ),
    .A2(_125_),
    .A3(_124_),
    .B1(_132_),
    .Y(_133_));
 sky130_fd_sc_hd__a41o_1 _276_ (.A1(net2),
    .A2(\count[2] ),
    .A3(_124_),
    .A4(_131_),
    .B1(_133_),
    .X(_089_));
 sky130_fd_sc_hd__nor3b_2 _277_ (.A(\state[0] ),
    .B(\state[3] ),
    .C_N(\state[2] ),
    .Y(_134_));
 sky130_fd_sc_hd__mux2_1 _278_ (.A0(net67),
    .A1(net27),
    .S(_134_),
    .X(_135_));
 sky130_fd_sc_hd__clkbuf_1 _279_ (.A(net68),
    .X(_088_));
 sky130_fd_sc_hd__mux2_1 _280_ (.A0(net71),
    .A1(net26),
    .S(_134_),
    .X(_136_));
 sky130_fd_sc_hd__clkbuf_1 _281_ (.A(_136_),
    .X(_087_));
 sky130_fd_sc_hd__mux2_1 _282_ (.A0(net26),
    .A1(net25),
    .S(net38),
    .X(_137_));
 sky130_fd_sc_hd__clkbuf_1 _283_ (.A(_137_),
    .X(_086_));
 sky130_fd_sc_hd__mux2_1 _284_ (.A0(net25),
    .A1(net24),
    .S(net38),
    .X(_138_));
 sky130_fd_sc_hd__clkbuf_1 _285_ (.A(_138_),
    .X(_085_));
 sky130_fd_sc_hd__mux2_1 _286_ (.A0(net24),
    .A1(net23),
    .S(net38),
    .X(_139_));
 sky130_fd_sc_hd__clkbuf_1 _287_ (.A(_139_),
    .X(_084_));
 sky130_fd_sc_hd__mux2_1 _288_ (.A0(net23),
    .A1(net22),
    .S(net38),
    .X(_140_));
 sky130_fd_sc_hd__clkbuf_1 _289_ (.A(_140_),
    .X(_083_));
 sky130_fd_sc_hd__mux2_1 _290_ (.A0(net22),
    .A1(net2),
    .S(net38),
    .X(_141_));
 sky130_fd_sc_hd__clkbuf_1 _291_ (.A(_141_),
    .X(_082_));
 sky130_fd_sc_hd__o2111a_1 _292_ (.A1(\fixed[2] ),
    .A2(\fixed[1] ),
    .B1(\count[2] ),
    .C1(\count[1] ),
    .D1(_125_),
    .X(_142_));
 sky130_fd_sc_hd__a32o_1 _293_ (.A1(\state[0] ),
    .A2(_104_),
    .A3(_126_),
    .B1(net38),
    .B2(_142_),
    .X(_143_));
 sky130_fd_sc_hd__nand2_1 _294_ (.A(_130_),
    .B(_143_),
    .Y(_144_));
 sky130_fd_sc_hd__inv_2 _295_ (.A(\fixed[0] ),
    .Y(_145_));
 sky130_fd_sc_hd__a21oi_1 _296_ (.A1(\fixed[2] ),
    .A2(_145_),
    .B1(_124_),
    .Y(_146_));
 sky130_fd_sc_hd__a31o_1 _297_ (.A1(_124_),
    .A2(_130_),
    .A3(_143_),
    .B1(\fixed[2] ),
    .X(_147_));
 sky130_fd_sc_hd__o31a_1 _298_ (.A1(\fixed[1] ),
    .A2(_144_),
    .A3(_146_),
    .B1(_147_),
    .X(_081_));
 sky130_fd_sc_hd__or3b_1 _299_ (.A(\fixed[0] ),
    .B(_131_),
    .C_N(_143_),
    .X(_148_));
 sky130_fd_sc_hd__a31o_1 _300_ (.A1(\state[0] ),
    .A2(_130_),
    .A3(_143_),
    .B1(\fixed[1] ),
    .X(_149_));
 sky130_fd_sc_hd__xnor2_1 _301_ (.A(_148_),
    .B(_149_),
    .Y(_080_));
 sky130_fd_sc_hd__nand2_1 _302_ (.A(net2),
    .B(\state[0] ),
    .Y(_150_));
 sky130_fd_sc_hd__a21o_1 _303_ (.A1(_130_),
    .A2(_143_),
    .B1(_145_),
    .X(_151_));
 sky130_fd_sc_hd__o221ai_1 _304_ (.A1(_150_),
    .A2(_144_),
    .B1(_148_),
    .B2(_124_),
    .C1(_151_),
    .Y(_079_));
 sky130_fd_sc_hd__or4b_1 _305_ (.A(\count[2] ),
    .B(_128_),
    .C(\count[1] ),
    .D_N(_125_),
    .X(_152_));
 sky130_fd_sc_hd__mux2_1 _306_ (.A0(net2),
    .A1(readmode),
    .S(_152_),
    .X(_153_));
 sky130_fd_sc_hd__clkbuf_1 _307_ (.A(_153_),
    .X(_078_));
 sky130_fd_sc_hd__o21ai_1 _308_ (.A1(_128_),
    .A2(_105_),
    .B1(net54),
    .Y(_154_));
 sky130_fd_sc_hd__o21ai_1 _309_ (.A1(_105_),
    .A2(_150_),
    .B1(_154_),
    .Y(_077_));
 sky130_fd_sc_hd__clkbuf_4 _310_ (.A(\state[3] ),
    .X(_155_));
 sky130_fd_sc_hd__or3_2 _311_ (.A(\state[0] ),
    .B(\state[2] ),
    .C(_155_),
    .X(_156_));
 sky130_fd_sc_hd__a21bo_1 _312_ (.A1(_125_),
    .A2(_156_),
    .B1_N(\count[1] ),
    .X(_157_));
 sky130_fd_sc_hd__or2_1 _313_ (.A(\count[2] ),
    .B(\count[1] ),
    .X(_158_));
 sky130_fd_sc_hd__and2_1 _314_ (.A(_158_),
    .B(_126_),
    .X(_159_));
 sky130_fd_sc_hd__xnor2_1 _315_ (.A(_157_),
    .B(_159_),
    .Y(_076_));
 sky130_fd_sc_hd__inv_2 _316_ (.A(\state[2] ),
    .Y(_160_));
 sky130_fd_sc_hd__inv_2 _317_ (.A(_155_),
    .Y(_161_));
 sky130_fd_sc_hd__and3_2 _318_ (.A(_128_),
    .B(_160_),
    .C(_161_),
    .X(_162_));
 sky130_fd_sc_hd__o21ai_1 _319_ (.A1(_130_),
    .A2(_162_),
    .B1(_157_),
    .Y(_075_));
 sky130_fd_sc_hd__xor2_1 _320_ (.A(_125_),
    .B(_156_),
    .X(_074_));
 sky130_fd_sc_hd__or2b_1 _321_ (.A(\state[3] ),
    .B_N(\addr[7] ),
    .X(_163_));
 sky130_fd_sc_hd__a21bo_1 _322_ (.A1(\addr[6] ),
    .A2(\state[3] ),
    .B1_N(_163_),
    .X(_164_));
 sky130_fd_sc_hd__buf_1 _323_ (.A(_164_),
    .X(net20));
 sky130_fd_sc_hd__and4_1 _324_ (.A(\addr[3] ),
    .B(\addr[2] ),
    .C(\addr[1] ),
    .D(\addr[0] ),
    .X(_165_));
 sky130_fd_sc_hd__clkbuf_2 _325_ (.A(_165_),
    .X(_166_));
 sky130_fd_sc_hd__and4_1 _326_ (.A(\addr[6] ),
    .B(\addr[5] ),
    .C(\addr[4] ),
    .D(_166_),
    .X(_167_));
 sky130_fd_sc_hd__mux2_1 _327_ (.A0(net20),
    .A1(_163_),
    .S(_167_),
    .X(_168_));
 sky130_fd_sc_hd__o311a_1 _328_ (.A1(\fixed[2] ),
    .A2(\fixed[1] ),
    .A3(_145_),
    .B1(\state[2] ),
    .C1(_123_),
    .X(_169_));
 sky130_fd_sc_hd__o21a_4 _329_ (.A1(_155_),
    .A2(_169_),
    .B1(_128_),
    .X(_170_));
 sky130_fd_sc_hd__mux2_1 _330_ (.A0(net62),
    .A1(_168_),
    .S(_170_),
    .X(_171_));
 sky130_fd_sc_hd__clkbuf_1 _331_ (.A(_171_),
    .X(_073_));
 sky130_fd_sc_hd__clkbuf_4 _332_ (.A(_155_),
    .X(_172_));
 sky130_fd_sc_hd__a31oi_1 _333_ (.A1(\addr[5] ),
    .A2(\addr[4] ),
    .A3(_166_),
    .B1(\addr[6] ),
    .Y(_173_));
 sky130_fd_sc_hd__nand2_1 _334_ (.A(\addr[5] ),
    .B(_172_),
    .Y(_174_));
 sky130_fd_sc_hd__o31ai_1 _335_ (.A1(_172_),
    .A2(_167_),
    .A3(_173_),
    .B1(_174_),
    .Y(_175_));
 sky130_fd_sc_hd__mux2_1 _336_ (.A0(\addr[6] ),
    .A1(_175_),
    .S(_170_),
    .X(_176_));
 sky130_fd_sc_hd__clkbuf_1 _337_ (.A(_176_),
    .X(_072_));
 sky130_fd_sc_hd__a21oi_1 _338_ (.A1(\addr[4] ),
    .A2(_166_),
    .B1(\addr[5] ),
    .Y(_177_));
 sky130_fd_sc_hd__a31o_1 _339_ (.A1(\addr[5] ),
    .A2(\addr[4] ),
    .A3(_166_),
    .B1(_155_),
    .X(_178_));
 sky130_fd_sc_hd__a2bb2o_1 _340_ (.A1_N(_177_),
    .A2_N(_178_),
    .B1(\addr[4] ),
    .B2(_172_),
    .X(_179_));
 sky130_fd_sc_hd__mux2_1 _341_ (.A0(\addr[5] ),
    .A1(_179_),
    .S(_170_),
    .X(_180_));
 sky130_fd_sc_hd__clkbuf_1 _342_ (.A(_180_),
    .X(_071_));
 sky130_fd_sc_hd__or2_1 _343_ (.A(\addr[4] ),
    .B(_166_),
    .X(_181_));
 sky130_fd_sc_hd__a21oi_1 _344_ (.A1(\addr[4] ),
    .A2(_166_),
    .B1(_155_),
    .Y(_182_));
 sky130_fd_sc_hd__a22o_1 _345_ (.A1(\addr[3] ),
    .A2(_155_),
    .B1(_181_),
    .B2(_182_),
    .X(_183_));
 sky130_fd_sc_hd__mux2_1 _346_ (.A0(\addr[4] ),
    .A1(_183_),
    .S(_170_),
    .X(_184_));
 sky130_fd_sc_hd__clkbuf_1 _347_ (.A(_184_),
    .X(_070_));
 sky130_fd_sc_hd__a31o_1 _348_ (.A1(\addr[2] ),
    .A2(\addr[1] ),
    .A3(\addr[0] ),
    .B1(\addr[3] ),
    .X(_185_));
 sky130_fd_sc_hd__nor2_1 _349_ (.A(_155_),
    .B(_166_),
    .Y(_186_));
 sky130_fd_sc_hd__a22o_1 _350_ (.A1(\addr[2] ),
    .A2(_155_),
    .B1(_185_),
    .B2(_186_),
    .X(_187_));
 sky130_fd_sc_hd__mux2_1 _351_ (.A0(\addr[3] ),
    .A1(_187_),
    .S(_170_),
    .X(_188_));
 sky130_fd_sc_hd__clkbuf_1 _352_ (.A(_188_),
    .X(_069_));
 sky130_fd_sc_hd__a21oi_1 _353_ (.A1(\addr[1] ),
    .A2(\addr[0] ),
    .B1(\addr[2] ),
    .Y(_189_));
 sky130_fd_sc_hd__a31o_1 _354_ (.A1(\addr[2] ),
    .A2(\addr[1] ),
    .A3(\addr[0] ),
    .B1(_155_),
    .X(_190_));
 sky130_fd_sc_hd__a2bb2o_1 _355_ (.A1_N(_189_),
    .A2_N(_190_),
    .B1(\addr[1] ),
    .B2(_172_),
    .X(_191_));
 sky130_fd_sc_hd__mux2_1 _356_ (.A0(\addr[2] ),
    .A1(_191_),
    .S(_170_),
    .X(_192_));
 sky130_fd_sc_hd__clkbuf_1 _357_ (.A(_192_),
    .X(_068_));
 sky130_fd_sc_hd__nand2_1 _358_ (.A(\addr[1] ),
    .B(_161_),
    .Y(_193_));
 sky130_fd_sc_hd__xnor2_1 _359_ (.A(\addr[0] ),
    .B(_193_),
    .Y(_194_));
 sky130_fd_sc_hd__mux2_1 _360_ (.A0(\addr[1] ),
    .A1(_194_),
    .S(_170_),
    .X(_195_));
 sky130_fd_sc_hd__clkbuf_1 _361_ (.A(_195_),
    .X(_067_));
 sky130_fd_sc_hd__inv_2 _362_ (.A(\addr[0] ),
    .Y(_196_));
 sky130_fd_sc_hd__mux2_1 _363_ (.A0(net2),
    .A1(_196_),
    .S(_161_),
    .X(_197_));
 sky130_fd_sc_hd__mux2_1 _364_ (.A0(\addr[0] ),
    .A1(_197_),
    .S(_170_),
    .X(_198_));
 sky130_fd_sc_hd__clkbuf_1 _365_ (.A(_198_),
    .X(_066_));
 sky130_fd_sc_hd__nand2_1 _366_ (.A(\state[0] ),
    .B(_123_),
    .Y(_199_));
 sky130_fd_sc_hd__mux2_1 _367_ (.A0(pre_pass_thru_user),
    .A1(net33),
    .S(_199_),
    .X(_200_));
 sky130_fd_sc_hd__clkbuf_1 _368_ (.A(_200_),
    .X(_065_));
 sky130_fd_sc_hd__inv_2 _369_ (.A(\state[4] ),
    .Y(_201_));
 sky130_fd_sc_hd__a31o_1 _370_ (.A1(_201_),
    .A2(\state[1] ),
    .A3(_162_),
    .B1(net49),
    .X(_064_));
 sky130_fd_sc_hd__o31a_1 _371_ (.A1(_125_),
    .A2(_128_),
    .A3(_126_),
    .B1(net30),
    .X(_202_));
 sky130_fd_sc_hd__a31o_1 _372_ (.A1(net72),
    .A2(_124_),
    .A3(_127_),
    .B1(_202_),
    .X(_063_));
 sky130_fd_sc_hd__a21o_1 _373_ (.A1(\state[4] ),
    .A2(_162_),
    .B1(net51),
    .X(_062_));
 sky130_fd_sc_hd__o211a_1 _374_ (.A1(readmode),
    .A2(net35),
    .B1(_128_),
    .C1(_156_),
    .X(_203_));
 sky130_fd_sc_hd__a22o_1 _375_ (.A1(net60),
    .A2(_162_),
    .B1(_203_),
    .B2(_123_),
    .X(_061_));
 sky130_fd_sc_hd__a31o_1 _376_ (.A1(pre_pass_thru_mgmt),
    .A2(_124_),
    .A3(_123_),
    .B1(net58),
    .X(_005_));
 sky130_fd_sc_hd__a41o_1 _377_ (.A1(pre_pass_thru_user),
    .A2(_132_),
    .A3(_124_),
    .A4(_123_),
    .B1(net55),
    .X(_002_));
 sky130_fd_sc_hd__o32a_1 _378_ (.A1(pre_pass_thru_user),
    .A2(pre_pass_thru_mgmt),
    .A3(_199_),
    .B1(_123_),
    .B2(_161_),
    .X(_204_));
 sky130_fd_sc_hd__inv_2 _379_ (.A(_204_),
    .Y(_004_));
 sky130_fd_sc_hd__nand3_1 _380_ (.A(\count[2] ),
    .B(\count[1] ),
    .C(_125_),
    .Y(_205_));
 sky130_fd_sc_hd__or4_1 _381_ (.A(\fixed[2] ),
    .B(\fixed[1] ),
    .C(_145_),
    .D(_205_),
    .X(_206_));
 sky130_fd_sc_hd__a22o_1 _382_ (.A1(_172_),
    .A2(_123_),
    .B1(_206_),
    .B2(\state[2] ),
    .X(_003_));
 sky130_fd_sc_hd__a2bb2o_1 _383_ (.A1_N(_160_),
    .A2_N(_206_),
    .B1(_205_),
    .B2(_124_),
    .X(_001_));
 sky130_fd_sc_hd__nor2_1 _384_ (.A(\state[4] ),
    .B(\state[1] ),
    .Y(_207_));
 sky130_fd_sc_hd__o21a_1 _385_ (.A1(\state[2] ),
    .A2(_207_),
    .B1(_107_),
    .X(_000_));
 sky130_fd_sc_hd__mux2_1 _386_ (.A0(\addr[0] ),
    .A1(net2),
    .S(_172_),
    .X(_208_));
 sky130_fd_sc_hd__clkbuf_1 _387_ (.A(_208_),
    .X(net13));
 sky130_fd_sc_hd__o21ai_1 _388_ (.A1(_196_),
    .A2(_161_),
    .B1(_193_),
    .Y(net14));
 sky130_fd_sc_hd__mux2_1 _389_ (.A0(\addr[2] ),
    .A1(\addr[1] ),
    .S(_172_),
    .X(_209_));
 sky130_fd_sc_hd__buf_1 _390_ (.A(_209_),
    .X(net15));
 sky130_fd_sc_hd__mux2_1 _391_ (.A0(\addr[3] ),
    .A1(\addr[2] ),
    .S(_172_),
    .X(_210_));
 sky130_fd_sc_hd__clkbuf_1 _392_ (.A(_210_),
    .X(net16));
 sky130_fd_sc_hd__mux2_1 _393_ (.A0(\addr[4] ),
    .A1(\addr[3] ),
    .S(_172_),
    .X(_211_));
 sky130_fd_sc_hd__clkbuf_1 _394_ (.A(_211_),
    .X(net17));
 sky130_fd_sc_hd__mux2_1 _395_ (.A0(\addr[5] ),
    .A1(\addr[4] ),
    .S(_172_),
    .X(_212_));
 sky130_fd_sc_hd__clkbuf_1 _396_ (.A(_212_),
    .X(net18));
 sky130_fd_sc_hd__a21bo_1 _397_ (.A1(\addr[6] ),
    .A2(_161_),
    .B1_N(_174_),
    .X(net19));
 sky130_fd_sc_hd__or2_1 _398_ (.A(pre_pass_thru_mgmt),
    .B(net30),
    .X(_213_));
 sky130_fd_sc_hd__clkbuf_1 _399_ (.A(_213_),
    .X(net31));
 sky130_fd_sc_hd__or2_1 _400_ (.A(pre_pass_thru_user),
    .B(net33),
    .X(_214_));
 sky130_fd_sc_hd__clkbuf_1 _401_ (.A(_214_),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_4 _402_ (.A(_100_),
    .X(_215_));
 sky130_fd_sc_hd__clkbuf_4 _403_ (.A(_102_),
    .X(_216_));
 sky130_fd_sc_hd__nor2_1 _404_ (.A(_215_),
    .B(_216_),
    .Y(_006_));
 sky130_fd_sc_hd__nor2_1 _405_ (.A(_215_),
    .B(_216_),
    .Y(_007_));
 sky130_fd_sc_hd__nor2_1 _406_ (.A(_215_),
    .B(_216_),
    .Y(_008_));
 sky130_fd_sc_hd__nor2_1 _407_ (.A(_215_),
    .B(_216_),
    .Y(_009_));
 sky130_fd_sc_hd__nor2_1 _408_ (.A(_215_),
    .B(_216_),
    .Y(_010_));
 sky130_fd_sc_hd__nor2_1 _409_ (.A(_215_),
    .B(_216_),
    .Y(_011_));
 sky130_fd_sc_hd__nor2_1 _410_ (.A(_215_),
    .B(_216_),
    .Y(_012_));
 sky130_fd_sc_hd__nor2_1 _411_ (.A(_215_),
    .B(_216_),
    .Y(_013_));
 sky130_fd_sc_hd__nor2_1 _412_ (.A(_215_),
    .B(_216_),
    .Y(_014_));
 sky130_fd_sc_hd__nor2_1 _413_ (.A(_215_),
    .B(_216_),
    .Y(_015_));
 sky130_fd_sc_hd__clkbuf_4 _414_ (.A(_100_),
    .X(_217_));
 sky130_fd_sc_hd__clkbuf_4 _415_ (.A(_102_),
    .X(_218_));
 sky130_fd_sc_hd__nor2_1 _416_ (.A(_217_),
    .B(_218_),
    .Y(_016_));
 sky130_fd_sc_hd__nor2_1 _417_ (.A(_217_),
    .B(_218_),
    .Y(_017_));
 sky130_fd_sc_hd__nor2_1 _418_ (.A(_217_),
    .B(_218_),
    .Y(_018_));
 sky130_fd_sc_hd__nor2_1 _419_ (.A(_217_),
    .B(_218_),
    .Y(_019_));
 sky130_fd_sc_hd__nor2_1 _420_ (.A(_217_),
    .B(_218_),
    .Y(_020_));
 sky130_fd_sc_hd__nor2_1 _421_ (.A(_217_),
    .B(_218_),
    .Y(_021_));
 sky130_fd_sc_hd__nor2_1 _422_ (.A(_217_),
    .B(_218_),
    .Y(_022_));
 sky130_fd_sc_hd__nor2_1 _423_ (.A(_217_),
    .B(_218_),
    .Y(_023_));
 sky130_fd_sc_hd__nor2_1 _424_ (.A(_217_),
    .B(_218_),
    .Y(_024_));
 sky130_fd_sc_hd__nor2_1 _425_ (.A(_217_),
    .B(_218_),
    .Y(_025_));
 sky130_fd_sc_hd__clkbuf_4 _426_ (.A(_100_),
    .X(_219_));
 sky130_fd_sc_hd__clkbuf_4 _427_ (.A(_102_),
    .X(_220_));
 sky130_fd_sc_hd__nor2_1 _428_ (.A(_219_),
    .B(_220_),
    .Y(_026_));
 sky130_fd_sc_hd__nor2_1 _429_ (.A(_219_),
    .B(_220_),
    .Y(_027_));
 sky130_fd_sc_hd__nor2_1 _430_ (.A(_219_),
    .B(_220_),
    .Y(_028_));
 sky130_fd_sc_hd__nor2_1 _431_ (.A(_219_),
    .B(_220_),
    .Y(_029_));
 sky130_fd_sc_hd__nor2_1 _432_ (.A(_219_),
    .B(_220_),
    .Y(_030_));
 sky130_fd_sc_hd__nor2_1 _433_ (.A(_219_),
    .B(_220_),
    .Y(_031_));
 sky130_fd_sc_hd__nor2_1 _434_ (.A(_219_),
    .B(_220_),
    .Y(_032_));
 sky130_fd_sc_hd__nor2_1 _435_ (.A(_219_),
    .B(_220_),
    .Y(_033_));
 sky130_fd_sc_hd__nor2_1 _436_ (.A(_219_),
    .B(_220_),
    .Y(_034_));
 sky130_fd_sc_hd__buf_1 _437_ (.A(clknet_2_3__leaf_SCK),
    .X(_221_));
 sky130_fd_sc_hd__inv_2 _438__1 (.A(clknet_1_1__leaf__221_),
    .Y(net39));
 sky130_fd_sc_hd__nor2_1 _439_ (.A(_219_),
    .B(_220_),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _440__2 (.A(clknet_1_0__leaf__221_),
    .Y(net40));
 sky130_fd_sc_hd__nor2_1 _441_ (.A(_100_),
    .B(_102_),
    .Y(_040_));
 sky130_fd_sc_hd__nor2_1 _442_ (.A(_100_),
    .B(_102_),
    .Y(_041_));
 sky130_fd_sc_hd__nor2_1 _443_ (.A(_100_),
    .B(_102_),
    .Y(_042_));
 sky130_fd_sc_hd__nor2_1 _444_ (.A(_100_),
    .B(_102_),
    .Y(_043_));
 sky130_fd_sc_hd__nor2_1 _445_ (.A(_100_),
    .B(_102_),
    .Y(_044_));
 sky130_fd_sc_hd__inv_2 _446__3 (.A(clknet_1_1__leaf__221_),
    .Y(net41));
 sky130_fd_sc_hd__inv_2 _447__4 (.A(clknet_1_1__leaf__221_),
    .Y(net42));
 sky130_fd_sc_hd__inv_2 _448__5 (.A(clknet_1_1__leaf__221_),
    .Y(net43));
 sky130_fd_sc_hd__inv_2 _449__6 (.A(clknet_1_0__leaf__221_),
    .Y(net44));
 sky130_fd_sc_hd__inv_2 _450__7 (.A(clknet_1_0__leaf__221_),
    .Y(net45));
 sky130_fd_sc_hd__inv_2 _451__8 (.A(clknet_1_0__leaf__221_),
    .Y(net46));
 sky130_fd_sc_hd__inv_2 _452__9 (.A(clknet_1_1__leaf__221_),
    .Y(net47));
 sky130_fd_sc_hd__inv_2 _453__10 (.A(clknet_1_1__leaf__221_),
    .Y(net48));
 sky130_fd_sc_hd__dfrtp_1 _454_ (.CLK(clknet_2_3__leaf_SCK),
    .D(_061_),
    .RESET_B(_006_),
    .Q(net35));
 sky130_fd_sc_hd__dfrtp_1 _455_ (.CLK(clknet_2_3__leaf_SCK),
    .D(net52),
    .RESET_B(_007_),
    .Q(net29));
 sky130_fd_sc_hd__dfrtp_1 _456_ (.CLK(clknet_2_3__leaf_SCK),
    .D(_063_),
    .RESET_B(_008_),
    .Q(net30));
 sky130_fd_sc_hd__dfrtp_1 _457_ (.CLK(clknet_2_3__leaf_SCK),
    .D(net50),
    .RESET_B(_009_),
    .Q(net32));
 sky130_fd_sc_hd__dfrtp_1 _458_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_065_),
    .RESET_B(_010_),
    .Q(net33));
 sky130_fd_sc_hd__dfrtp_4 _459_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_066_),
    .RESET_B(_011_),
    .Q(\addr[0] ));
 sky130_fd_sc_hd__dfrtp_4 _460_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_067_),
    .RESET_B(_012_),
    .Q(\addr[1] ));
 sky130_fd_sc_hd__dfrtp_4 _461_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_068_),
    .RESET_B(_013_),
    .Q(\addr[2] ));
 sky130_fd_sc_hd__dfrtp_2 _462_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_069_),
    .RESET_B(_014_),
    .Q(\addr[3] ));
 sky130_fd_sc_hd__dfrtp_4 _463_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_070_),
    .RESET_B(_015_),
    .Q(\addr[4] ));
 sky130_fd_sc_hd__dfrtp_2 _464_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_071_),
    .RESET_B(_016_),
    .Q(\addr[5] ));
 sky130_fd_sc_hd__dfrtp_1 _465_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_072_),
    .RESET_B(_017_),
    .Q(\addr[6] ));
 sky130_fd_sc_hd__dfrtp_1 _466_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_073_),
    .RESET_B(_018_),
    .Q(\addr[7] ));
 sky130_fd_sc_hd__dfrtp_1 _467_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_074_),
    .RESET_B(_019_),
    .Q(\count[0] ));
 sky130_fd_sc_hd__dfrtp_4 _468_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_075_),
    .RESET_B(_020_),
    .Q(\count[1] ));
 sky130_fd_sc_hd__dfrtp_4 _469_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_076_),
    .RESET_B(_021_),
    .Q(\count[2] ));
 sky130_fd_sc_hd__dfrtp_1 _470_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_077_),
    .RESET_B(_022_),
    .Q(writemode));
 sky130_fd_sc_hd__dfrtp_1 _471_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_078_),
    .RESET_B(_023_),
    .Q(readmode));
 sky130_fd_sc_hd__dfrtp_1 _472_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_079_),
    .RESET_B(_024_),
    .Q(\fixed[0] ));
 sky130_fd_sc_hd__dfrtp_2 _473_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_080_),
    .RESET_B(_025_),
    .Q(\fixed[1] ));
 sky130_fd_sc_hd__dfrtp_1 _474_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_081_),
    .RESET_B(_026_),
    .Q(\fixed[2] ));
 sky130_fd_sc_hd__dfrtp_1 _475_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_082_),
    .RESET_B(_027_),
    .Q(net22));
 sky130_fd_sc_hd__dfrtp_1 _476_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_083_),
    .RESET_B(_028_),
    .Q(net23));
 sky130_fd_sc_hd__dfrtp_1 _477_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_084_),
    .RESET_B(_029_),
    .Q(net24));
 sky130_fd_sc_hd__dfrtp_1 _478_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_085_),
    .RESET_B(_030_),
    .Q(net25));
 sky130_fd_sc_hd__dfrtp_1 _479_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_086_),
    .RESET_B(_031_),
    .Q(net26));
 sky130_fd_sc_hd__dfrtp_1 _480_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_087_),
    .RESET_B(_032_),
    .Q(net27));
 sky130_fd_sc_hd__dfrtp_1 _481_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_088_),
    .RESET_B(_033_),
    .Q(net28));
 sky130_fd_sc_hd__dfrtp_4 _482_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_089_),
    .RESET_B(_034_),
    .Q(pre_pass_thru_mgmt));
 sky130_fd_sc_hd__dfstp_1 _483_ (.CLK(net39),
    .D(_000_),
    .SET_B(_035_),
    .Q(net36));
 sky130_fd_sc_hd__dfrtp_1 _484_ (.CLK(clknet_2_1__leaf_SCK),
    .D(_090_),
    .RESET_B(_037_),
    .Q(pre_pass_thru_user));
 sky130_fd_sc_hd__dfrtp_1 _485_ (.CLK(net40),
    .D(_091_),
    .RESET_B(_038_),
    .Q(net37));
 sky130_fd_sc_hd__dfstp_2 _486_ (.CLK(clknet_2_0__leaf_SCK),
    .D(_001_),
    .SET_B(_040_),
    .Q(\state[0] ));
 sky130_fd_sc_hd__dfrtp_1 _487_ (.CLK(clknet_2_2__leaf_SCK),
    .D(net56),
    .RESET_B(_041_),
    .Q(\state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _488_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_003_),
    .RESET_B(_042_),
    .Q(\state[2] ));
 sky130_fd_sc_hd__dfrtp_1 _489_ (.CLK(clknet_2_2__leaf_SCK),
    .D(_004_),
    .RESET_B(_043_),
    .Q(\state[3] ));
 sky130_fd_sc_hd__dfrtp_1 _490_ (.CLK(clknet_2_3__leaf_SCK),
    .D(net59),
    .RESET_B(_044_),
    .Q(\state[4] ));
 sky130_fd_sc_hd__dfrtp_1 _491_ (.CLK(net41),
    .D(_092_),
    .RESET_B(_045_),
    .Q(\ldata[0] ));
 sky130_fd_sc_hd__dfrtp_1 _492_ (.CLK(net42),
    .D(_093_),
    .RESET_B(_047_),
    .Q(\ldata[1] ));
 sky130_fd_sc_hd__dfrtp_1 _493_ (.CLK(net43),
    .D(_094_),
    .RESET_B(_049_),
    .Q(\ldata[2] ));
 sky130_fd_sc_hd__dfrtp_1 _494_ (.CLK(net44),
    .D(_095_),
    .RESET_B(_051_),
    .Q(\ldata[3] ));
 sky130_fd_sc_hd__dfrtp_1 _495_ (.CLK(net45),
    .D(_096_),
    .RESET_B(_053_),
    .Q(\ldata[4] ));
 sky130_fd_sc_hd__dfrtp_1 _496_ (.CLK(net46),
    .D(_097_),
    .RESET_B(_055_),
    .Q(\ldata[5] ));
 sky130_fd_sc_hd__dfrtp_1 _497_ (.CLK(net47),
    .D(_098_),
    .RESET_B(_057_),
    .Q(\ldata[6] ));
 sky130_fd_sc_hd__dfrtp_1 _498_ (.CLK(net48),
    .D(_099_),
    .RESET_B(_059_),
    .Q(net12));
 sky130_fd_sc_hd__clkbuf_1 _499_ (.A(net2),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_SCK (.A(SCK),
    .X(clknet_0_SCK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0__221_ (.A(_221_),
    .X(clknet_0__221_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f__221_ (.A(clknet_0__221_),
    .X(clknet_1_0__leaf__221_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f__221_ (.A(clknet_0__221_),
    .X(clknet_1_1__leaf__221_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_0__f_SCK (.A(clknet_0_SCK),
    .X(clknet_2_0__leaf_SCK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_1__f_SCK (.A(clknet_0_SCK),
    .X(clknet_2_1__leaf_SCK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_2__f_SCK (.A(clknet_0_SCK),
    .X(clknet_2_2__leaf_SCK));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_2_3__f_SCK (.A(clknet_0_SCK),
    .X(clknet_2_3__leaf_SCK));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(net32),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\state[4] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(_005_),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(net35),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\ldata[1] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\addr[7] ),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\ldata[3] ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\ldata[5] ),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(net12),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(pre_pass_thru_user),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(net28),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(_064_),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(_135_),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(\ldata[4] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\ldata[6] ),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(net27),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(pre_pass_thru_mgmt),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(net29),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(_062_),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\ldata[0] ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(writemode),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\state[1] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(_002_),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(net37),
    .X(net57));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(CSB),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(idata[7]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(reset),
    .X(net11));
 sky130_fd_sc_hd__buf_2 input2 (.A(SDI),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(idata[0]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(idata[1]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(idata[2]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(idata[3]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(idata[4]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(idata[5]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(idata[6]),
    .X(net9));
 sky130_fd_sc_hd__buf_2 max_cap38 (.A(_134_),
    .X(net38));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(SDO));
 sky130_fd_sc_hd__clkbuf_4 output13 (.A(net13),
    .X(oaddr[0]));
 sky130_fd_sc_hd__clkbuf_4 output14 (.A(net14),
    .X(oaddr[1]));
 sky130_fd_sc_hd__clkbuf_4 output15 (.A(net15),
    .X(oaddr[2]));
 sky130_fd_sc_hd__clkbuf_4 output16 (.A(net16),
    .X(oaddr[3]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(oaddr[4]));
 sky130_fd_sc_hd__clkbuf_4 output18 (.A(net18),
    .X(oaddr[5]));
 sky130_fd_sc_hd__clkbuf_4 output19 (.A(net19),
    .X(oaddr[6]));
 sky130_fd_sc_hd__clkbuf_4 output20 (.A(net20),
    .X(oaddr[7]));
 sky130_fd_sc_hd__clkbuf_4 output21 (.A(net21),
    .X(odata[0]));
 sky130_fd_sc_hd__clkbuf_4 output22 (.A(net22),
    .X(odata[1]));
 sky130_fd_sc_hd__clkbuf_4 output23 (.A(net23),
    .X(odata[2]));
 sky130_fd_sc_hd__clkbuf_4 output24 (.A(net24),
    .X(odata[3]));
 sky130_fd_sc_hd__buf_2 output25 (.A(net25),
    .X(odata[4]));
 sky130_fd_sc_hd__clkbuf_4 output26 (.A(net26),
    .X(odata[5]));
 sky130_fd_sc_hd__clkbuf_4 output27 (.A(net27),
    .X(odata[6]));
 sky130_fd_sc_hd__clkbuf_4 output28 (.A(net28),
    .X(odata[7]));
 sky130_fd_sc_hd__buf_2 output29 (.A(net29),
    .X(pass_thru_mgmt));
 sky130_fd_sc_hd__clkbuf_4 output30 (.A(net30),
    .X(pass_thru_mgmt_delay));
 sky130_fd_sc_hd__clkbuf_4 output31 (.A(net31),
    .X(pass_thru_mgmt_reset));
 sky130_fd_sc_hd__clkbuf_4 output32 (.A(net32),
    .X(pass_thru_user));
 sky130_fd_sc_hd__clkbuf_4 output33 (.A(net33),
    .X(pass_thru_user_delay));
 sky130_fd_sc_hd__clkbuf_4 output34 (.A(net34),
    .X(pass_thru_user_reset));
 sky130_fd_sc_hd__clkbuf_4 output35 (.A(net35),
    .X(rdstb));
 sky130_fd_sc_hd__buf_6 output36 (.A(net36),
    .X(sdoenb));
 sky130_fd_sc_hd__buf_2 output37 (.A(net37),
    .X(wrstb));
endmodule

