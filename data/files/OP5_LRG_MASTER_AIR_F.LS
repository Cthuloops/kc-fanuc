/PROG  OP5_LRG_MASTER_AIR_F
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Air move update";
PROG_SIZE	= 123886;
CREATE		= DATE 25-08-25  TIME 10:39:22;
MODIFIED	= DATE 25-08-25  TIME 10:43:36;
FILE_NAME	= OP5_LRG_;
VERSION		= 0;
LINE_COUNT	= 2640;
MEMORY_SIZE	= 124514;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL
  ARC Welding Equipment : 1,*,*,*,*;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
   1:  !********** WAR HAMMER ********** ;
   2:  !*------- FRAME LARGE ----------* ;
   3:  !*------- FR500 CELL: F --------* ;
   4:  !******************************** ;
   5:   ;
   6:  CALL HOME    ;
   7:  UFRAME_NUM=1 ;
   8:  DO[17:ON :SCAN ZONE2]=OFF ;
   9:   ;
  10:  !********POSITIONER MOVE******** ;
  11:J P[1] 85% CNT30    ;
  12:   ;
  13:L P[3] 1000mm/sec CNT40    ;
  14:   ;
  15:  !FR50L1000 ;
  16:  IF R[15:TECH HOLD]=1002,CALL TECH_HOLD ;
  17:   ;
  18:  !TO SKIP FRONT BUMPER WELDS ;
  19:  CALL ARC_DISABLE_FRONT_BMPR_LRG(0) ;
  20:   ;
1578:   ;
1579:L P[124] 1000mm/sec FINE
    :  Arc Start[6]    ;
1580:  Weave Sine[6] ;
1581:  Track TAST[6] ;
1582:L P[125] WELD_SPEED FINE
    :  Arc End[6]    ;
1583:  Weave End ;
1584:  Track End ;
1585:   ;
  22:   ;
  23:   ;
  24:L P[8] 800mm/sec CNT30    ;
  25:   ;
  26:L P[9] 1000mm/sec CNT30    ;
  27:   ;
  28:   ;
  29:  !FR50L1001 ;
  30:  IF R[15:TECH HOLD]=1003,CALL TECH_HOLD ;
  31:   ;
  32:   ;
1587:   ;
1588:L P[126] 1000mm/sec FINE
    :  Arc Start[6]    ;
1589:  Weave Sine[6] ;
1590:  Track TAST[6] ;
1591:L P[129] WELD_SPEED FINE
    :  Arc End[6]    ;
1592:  Weave End ;
1593:  Track End ;
1594:   ;
  34:   ;
  35:L P[12] 1000mm/sec CNT100    ;
  36:   ;
  37:   ;
  38:  !FR50L1002 ;
  39:  IF R[15:TECH HOLD]=1004,CALL TECH_HOLD ;
  40:   ;
  41:   ;
  42:L P[13] 1000mm/sec CNT70    ;
  43:   ;
1596:   ;
1597:L P[130] 1000mm/sec FINE
    :  Arc Start[6]    ;
1598:  Weave Sine[6] ;
1599:  Track TAST[6] ;
1600:L P[131] WELD_SPEED FINE
    :  Arc End[6]    ;
1601:  Weave End ;
1602:  Track End ;
1603:   ;
  45:   ;
  46:  CALL ARC_DISABLE_FRONT_BMPR_LRG(1) ;
  47:   ;
  48:L P[16] 1000mm/sec CNT100    ;
  49:   ;
  50:  !HOME ;
  51:J P[4] 70% CNT30    ;
  52:   ;
  53:  !********POSITIONER MOVE******** ;
  54:J P[17] 85% CNT30    ;
  55:   ;
  56:J P[18] 50% CNT100    ;
  57:   ;
  58:L P[19] 1000mm/sec CNT100    ;
  59:   ;
  60:   ;
  61:  !FR50L1003 ;
  62:  IF R[15:TECH HOLD]=1005,CALL TECH_HOLD ;
  63:   ;
  64:   ;
  65:L P[20] 1000mm/sec CNT25    ;
  66:   ;
1605:   ;
1606:L P[132] 1000mm/sec FINE
    :  Arc Start[6]    ;
1607:  Weave Sine[6] ;
1608:  Track TAST[6] ;
1609:L P[137] WELD_SPEED CNT100    ;
1610:L P[138] WELD_SPEED FINE
    :  Arc End[6]    ;
1611:  Track End ;
1612:  Weave End ;
1613:   ;
  68:   ;
  69:L P[24] 1000mm/sec CNT30    ;
  70:   ;
  71:   ;
  72:  !FR50L1010 ;
  73:  IF R[15:TECH HOLD]=1012,CALL TECH_HOLD ;
  74:   ;
  75:   ;
  76:L P[25] 1000mm/sec CNT30    ;
  77:   ;
1615:   ;
1616:L P[141] 1000mm/sec FINE
    :  Arc Start[6]    ;
1617:  Weave Sine[6] ;
1618:  Track TAST[6] ;
1619:L P[142] WELD_SPEED CNT100    ;
1620:L P[146] WELD_SPEED FINE
    :  Arc End[6]    ;
1621:  Weave End ;
1622:  Track End ;
1623:   ;
  79:   ;
  80:L P[29] 1000mm/sec CNT25    ;
  81:   ;
  82:   ;
  83:  !FR50L1020 ;
  84:  IF R[15:TECH HOLD]=1022,CALL TECH_HOLD ;
  85:   ;
  86:   ;
  87:J P[30] 50% CNT25    ;
  88:   ;
1625:   ;
1626:L P[147] 1000mm/sec FINE
    :  Arc Start[6]    ;
1627:  Weave Sine[6] ;
1628:  Track TAST[6] ;
1629:L P[150] WELD_SPEED FINE
    :  Arc End[6]    ;
1630:  Weave End ;
1631:  Track End ;
1632:   ;
  90:   ;
  91:L P[33] 1000mm/sec CNT30    ;
  92:   ;
  93:L P[34] 1000mm/sec CNT30    ;
  94:   ;
  95:   ;
  96:  !FR50L1030 ;
  97:  IF R[15:TECH HOLD]=1032,CALL TECH_HOLD ;
  98:   ;
  99:   ;
1634:   ;
1635:L P[151] 1000mm/sec FINE
    :  Arc Start[6]    ;
1636:  Weave Sine[6] ;
1637:  Track TAST[6] ;
1638:L P[156] WELD_SPEED FINE
    :  Arc End[6]    ;
1639:  Weave End ;
1640:  Track End ;
1641:   ;
 101:   ;
 102:L P[37] 1000mm/sec CNT50    ;
 103:   ;
 104:J P[38] 50% CNT50    ;
 105:   ;
 106:L P[39] 1000mm/sec CNT25    ;
 107:   ;
 108:   ;
 109:  !FR50L1040 ;
 110:  IF R[15:TECH HOLD]=1042,CALL TECH_HOLD ;
 111:   ;
 112:   ;
1643:   ;
1644:L P[157] 1000mm/sec FINE
    :  Arc Start[6]    ;
1645:  Weave Sine[6] ;
1646:L P[158] WELD_SPEED FINE
    :  Arc End[6]    ;
1647:  Weave End ;
1648:   ;
 114:   ;
 115:L P[42] 1000mm/sec CNT30    ;
 116:   ;
 117:L P[43] 1000mm/sec CNT70    ;
 118:   ;
 119:J P[44] 50% CNT50    ;
 120:   ;
 121:L P[45] 1000mm/sec CNT30    ;
 122:   ;
 123:   ;
 124:  !FR50L1050 ;
 125:  IF R[15:TECH HOLD]=1052,CALL TECH_HOLD ;
 126:   ;
 127:   ;
1650:   ;
1651:L P[161] 1000mm/sec FINE
    :  Arc Start[6]    ;
1652:  Weave Sine[6] ;
1653:L P[162] WELD_SPEED FINE
    :  Arc End[6]    ;
1654:  Weave End ;
1655:   ;
 129:   ;
 130:L P[48] 1000mm/sec CNT80    ;
 131:   ;
 132:J P[49] 50% CNT25    ;
 133:   ;
 134:L P[50] 1000mm/sec CNT25    ;
 135:   ;
 136:   ;
 137:  !FR50L1060 ;
 138:  IF R[15:TECH HOLD]=1062,CALL TECH_HOLD ;
 139:   ;
 140:   ;
1657:   ;
1658:L P[770] 1000mm/sec FINE
    :  Arc Start[6]    ;
1659:  Weave Sine[6] ;
1660:L P[771] WELD_SPEED FINE
    :  Arc End[6]    ;
1661:  Weave End ;
1662:   ;
 142:   ;
 143:L P[53] 500mm/sec CNT100    ;
 144:   ;
 145:L P[54] 1500mm/sec CNT35    ;
 146:   ;
 147:J P[55] 50% CNT30    ;
 148:   ;
 149:L P[56] 1000mm/sec CNT30    ;
 150:   ;
 151:   ;
 152:  !FR50L1070 ;
 153:  IF R[15:TECH HOLD]=1072,CALL TECH_HOLD ;
 154:   ;
 155:   ;
1664:   ;
1665:L P[772] 1000mm/sec FINE
    :  Arc Start[6]    ;
1666:  Weave Sine[6] ;
1667:  Track TAST[6] ;
1668:L P[773] WELD_SPEED FINE
    :  Arc End[6]    ;
1669:  Weave End ;
1670:  Track End ;
1671:   ;
 157:   ;
 158:L P[59] 1000mm/sec CNT100    ;
 159:   ;
 160:L P[60] 1000mm/sec CNT80    ;
 161:   ;
 162:   ;
 163:  !FR50L1080 ;
 164:  IF R[15:TECH HOLD]=1082,CALL TECH_HOLD ;
 165:   ;
 166:   ;
1673:   ;
1674:L P[774] 1000mm/sec FINE
    :  Arc Start[6]    ;
1675:  Weave Sine[6] ;
1676:  Track TAST[6] ;
1677:L P[775] WELD_SPEED FINE
    :  Arc End[6]    ;
1678:  Weave End ;
1679:  Track End ;
1680:   ;
 168:   ;
 169:J P[63] 30% CNT100    ;
 170:   ;
 171:J P[64] 50% CNT100    ;
 172:   ;
 173:L P[65] 1000mm/sec CNT80    ;
 174:   ;
 175:   ;
 176:  !FR50L1090 ;
 177:  IF R[15:TECH HOLD]=1092,CALL TECH_HOLD ;
 178:  !10MM PASS ;
 179:   ;
 180:   ;
1682:   ;
1683:L P[776] 1000mm/sec FINE
    :  Arc Start[6]    ;
1684:  Weave Sine[6] ;
1685:  Track TAST[6] RPM[1] ;
1686:L P[777] WELD_SPEED CNT100    ;
1687:L P[779] WELD_SPEED CNT100    ;
1688:C P[782]    
    :  P[783] WELD_SPEED CNT100    ;
1689:L P[784] WELD_SPEED FINE
    :  Arc End[6]    ;
1690:  Track End ;
1691:  Weave End ;
1692:   ;
 182:   ;
 183:J P[72] 16% CNT25    ;
 184:   ;
 185:J P[74] 50% CNT25    ;
 186:   ;
 187:L P[75] 1000mm/sec CNT25    ;
 188:   ;
 189:   ;
 190:  !FR50L1100 ;
 191:  IF R[15:TECH HOLD]=1102,CALL TECH_HOLD ;
 192:   ;
 193:   ;
1694:   ;
1695:L P[785] 1000mm/sec FINE
    :  Arc Start[6]    ;
1696:  Weave Sine[6] ;
1697:  Track TAST[6] RPM[2] ;
1698:L P[786] WELD_SPEED CNT100    ;
1699:L P[787] WELD_SPEED CNT100    ;
1700:C P[788]    
    :  P[789] WELD_SPEED CNT100    ;
1701:L P[791] WELD_SPEED FINE
    :  Arc End[6]    ;
1702:  Weave End ;
1703:  Track End ;
1704:   ;
 195:   ;
 196:J P[82] 30% CNT10    ;
 197:   ;
 198:J P[83] 50% CNT80    ;
 199:   ;
 200:L P[84] 1000mm/sec CNT25    ;
 201:   ;
 202:   ;
 203:  !FR50L1110MP ;
 204:  IF R[15:TECH HOLD]=1112,CALL TECH_HOLD ;
 205:   ;
 206:   ;
 207:  MP Offset  PR[3] RPM[1] ;
 210:   ;
 211:J P[91] 25% CNT10    ;
 212:   ;
 213:J P[92] 50% CNT30    ;
 214:   ;
 215:L P[93] 1000mm/sec CNT25    ;
 216:   ;
 217:   ;
 218:  !FR50M1110MP ;
 219:   ;
 220:   ;
 221:  MP Offset  PR[4] RPM[1] ;
 224:   ;
 225:J P[100] 25% CNT25    ;
 226:   ;
 227:J P[102] 50% CNT25    ;
 228:   ;
 229:L P[103] 1000mm/sec CNT25    ;
 230:   ;
 231:   ;
 232:  !FR50L1120MP ;
 233:  IF R[15:TECH HOLD]=1122,CALL TECH_HOLD ;
 234:   ;
 235:   ;
 236:  MP Offset  PR[1] RPM[2] ;
 239:   ;
 240:J P[110] 50% CNT25    ;
 241:   ;
 242:J P[111] 50% CNT25    ;
 243:   ;
 244:L P[112] 1000mm/sec CNT25    ;
 245:   ;
 246:   ;
 247:  !FR501130MP ;
 248:   ;
 249:   ;
 250:  MP Offset  PR[2] RPM[2] ;
 253:   ;
 254:J P[119] 50% CNT25    ;
 255:   ;
 256:J P[121] 50% CNT25    ;
 257:   ;
 258:L P[122] 1000mm/sec CNT25    ;
 259:   ;
 260:   ;
 261:  !FR50L1140 ;
 262:  IF R[15:TECH HOLD]=1142,CALL TECH_HOLD ;
 263:   ;
 264:   ;
1746:   ;
1747:L P[817] 1000mm/sec FINE
    :  Arc Start[8]    ;
1748:  Weave Sine[8] ;
1749:L P[818] WELD_SPEED CNT100    ;
1750:C P[819]    
    :  P[820] WELD_SPEED FINE
    :  Arc End[8]    ;
1751:  Weave End ;
1752:   ;
 266:   ;
 267:L P[127] 1000mm/sec CNT25    ;
 268:   ;
 269:J P[128] 50% CNT25    ;
 270:   ;
 271:   ;
 272:  !FR50L1141 ;
 273:  IF R[15:TECH HOLD]=1143,CALL TECH_HOLD ;
 274:   ;
 275:   ;
1754:   ;
1755:L P[821] 1000mm/sec FINE
    :  Arc Start[8]    ;
1756:  Weave Sine[8] ;
1757:L P[822] WELD_SPEED CNT100    ;
1758:C P[823]    
    :  P[824] WELD_SPEED FINE
    :  Arc End[8]    ;
1759:  Weave End ;
1760:   ;
 277:   ;
 278:L P[133] 1000mm/sec CNT25    ;
 279:   ;
 280:L P[134] 1000mm/sec CNT25    ;
 281:   ;
 282:J P[135] 50% CNT25    ;
 283:   ;
 284:L P[136] 1000mm/sec CNT50    ;
 285:   ;
 286:   ;
 287:  !FR50L1150 ;
 288:  IF R[15:TECH HOLD]=1152,CALL TECH_HOLD ;
 289:   ;
 290:   ;
1762:   ;
1763:L P[825] 1000mm/sec FINE
    :  Arc Start[6]    ;
1764:  Weave Sine[6] ;
1765:  Track TAST[6] ;
1766:L P[826] WELD_SPEED FINE
    :  Arc End[6]    ;
1767:  Weave End ;
1768:  Track End ;
1769:   ;
 292:   ;
 293:L P[139] 1000mm/sec CNT100    ;
 294:   ;
 295:L P[140] 1000mm/sec CNT50    ;
 296:   ;
 297:   ;
 298:  !FR50L1160 ;
 299:  IF R[15:TECH HOLD]=1162,CALL TECH_HOLD ;
 300:   ;
1771:   ;
1772:L P[827] 1000mm/sec FINE
    :  Arc Start[6]    ;
1773:  Weave Sine[6] ;
1774:  Track TAST[6] ;
1775:L P[828] WELD_SPEED FINE
    :  Arc End[6]    ;
1776:  Weave End ;
1777:  Track End ;
1778:   ;
 302:   ;
 303:L P[143] 1000mm/sec CNT30    ;
 304:   ;
 305:  !********POSITIONER MOVE******** ;
 306:J P[144] 85% CNT30    ;
 307:   ;
 308:L P[145] 1000mm/sec CNT100    ;
 309:   ;
 310:   ;
 311:  !FR50L1170 ;
 312:  IF R[15:TECH HOLD]=1172,CALL TECH_HOLD ;
 313:   ;
 314:   ;
1780:   ;
1781:L P[829] 1000mm/sec FINE
    :  Arc Start[6]    ;
1782:  Weave Sine[6] ;
1783:  Track TAST[6] ;
1784:L P[830] WELD_SPEED FINE
    :  Arc End[6]    ;
1785:  Weave End ;
1786:  Track End ;
1787:   ;
 316:   ;
 317:L P[148] 1000mm/sec CNT100    ;
 318:   ;
 319:L P[149] 1500mm/sec CNT100    ;
 320:   ;
 321:   ;
 322:  !FR50L1180 ;
 323:  IF R[15:TECH HOLD]=1182,CALL TECH_HOLD ;
 324:   ;
 325:   ;
1789:   ;
1790:L P[831] 1000mm/sec FINE
    :  Arc Start[6]    ;
1791:  Weave Sine[6] ;
1792:  Track TAST[6] ;
1793:L P[832] WELD_SPEED FINE
    :  Arc End[6]    ;
1794:  Weave End ;
1795:  Track End ;
1796:   ;
 327:   ;
 328:L P[152] 1000mm/sec CNT100    ;
 329:   ;
 330:  !HOME ;
 331:J P[7] 100% CNT30    ;
 332:  TIMER[7]=RESET ;
 333:  TIMER[7]=START ;
 334:   ;
 335:  !********POSITIONER MOVE******** ;
 336:J P[153] 80% CNT30    ;
 337:   ;
 338:J P[154] 50% CNT100    ;
 339:   ;
 340:L P[155] 1000mm/sec CNT25    ;
 341:   ;
 342:   ;
 343:  !FR50L1210 ;
 344:  IF R[15:TECH HOLD]=1212,CALL TECH_HOLD ;
 345:   ;
 346:   ;
1798:   ;
1799:L P[833] 1000mm/sec FINE
    :  Arc Start[6]    ;
1800:  Weave Sine[6] ;
1801:  Track TAST[6] ;
1802:L P[834] WELD_SPEED CNT100    ;
1803:L P[835] WELD_SPEED FINE
    :  Arc End[6]    ;
1804:  Weave End ;
1805:  Track End ;
1806:   ;
 348:   ;
 349:L P[159] 1000mm/sec CNT25    ;
 350:   ;
 351:L P[160] 1000mm/sec CNT25    ;
 352:   ;
 353:   ;
 354:  !FR50L1220 ;
 355:  IF R[15:TECH HOLD]=1222,CALL TECH_HOLD ;
 356:   ;
 357:   ;
1808:   ;
1809:L P[836] 1000mm/sec FINE
    :  Arc Start[6]    ;
1810:  Weave Sine[6] ;
1811:  Track TAST[6] ;
1812:L P[837] WELD_SPEED CNT100    ;
1813:L P[838] WELD_SPEED FINE
    :  Arc End[6]    ;
1814:  Weave End ;
1815:  Track End ;
1816:   ;
 359:   ;
 360:L P[163] 1000mm/sec CNT80    ;
 361:   ;
 362:L P[164] 1200mm/sec CNT25    ;
 363:   ;
 364:   ;
 365:  !FR50L1230 ;
 366:  IF R[15:TECH HOLD]=1232,CALL TECH_HOLD ;
 367:   ;
 368:   ;
1818:   ;
1819:L P[839] 1000mm/sec FINE
    :  Arc Start[6]    ;
1820:  Weave Sine[6] ;
1821:  Track TAST[6] ;
1822:L P[840] WELD_SPEED CNT100    ;
1823:L P[841] WELD_SPEED FINE
    :  Arc End[6]    ;
1824:  Weave End ;
1825:  Track End ;
1826:   ;
 370:   ;
 371:L P[167] 1000mm/sec CNT25    ;
 372:   ;
 373:L P[168] 1000mm/sec CNT25    ;
 374:   ;
 375:   ;
 376:  !FR50L1240 ;
 377:  IF R[15:TECH HOLD]=1242,CALL TECH_HOLD ;
 378:   ;
 379:   ;
1828:   ;
1829:L P[842] 1000mm/sec FINE
    :  Arc Start[6]    ;
1830:  Weave Sine[6] ;
1831:  Track TAST[6] ;
1832:L P[843] WELD_SPEED CNT100    ;
1833:L P[844] WELD_SPEED FINE
    :  Arc End[6]    ;
1834:  Weave End ;
1835:  Track End ;
1836:   ;
 381:   ;
 382:L P[172] 1000mm/sec CNT25    ;
 383:   ;
 384:L P[173] 1000mm/sec CNT100    ;
 385:   ;
 386:  !HOME ;
 387:J P[116] 100% CNT100    ;
 388:   ;
 389:   ;
 390:  !********POSITIONER MOVE******** ;
 391:J P[174] 85% FINE    ;
 392:   ;
 393:  CALL T_CLEAN    ;
 394:   ;
 395:J P[175] 50% CNT35    ;
 396:   ;
 397:L P[176] 1000mm/sec CNT25    ;
 398:   ;
 399:   ;
 400:  !FR50L1250 ;
 401:  IF R[15:TECH HOLD]=1252,CALL TECH_HOLD ;
 402:   ;
 403:   ;
1838:   ;
1839:L P[845] 1000mm/sec FINE
    :  Arc Start[6]    ;
1840:  Weave Sine[6] ;
1841:  Track TAST[6] ;
1842:L P[846] WELD_SPEED CNT100    ;
1843:L P[847] WELD_SPEED CNT100    ;
1844:L P[848] WELD_SPEED FINE
    :  Arc End[6]    ;
1845:  Weave End ;
1846:  Track End ;
1847:   ;
 405:   ;
 406:L P[181] 1000mm/sec CNT100    ;
 407:   ;
 408:J P[182] 50% CNT100    ;
 409:   ;
 410:L P[184] 500mm/sec CNT100    ;
 411:   ;
 412:   ;
 413:  !FR50L1260 ;
 414:  IF R[15:TECH HOLD]=1262,CALL TECH_HOLD ;
 415:   ;
 416:   ;
1849:   ;
1850:L P[849] 1000mm/sec FINE
    :  Arc Start[6]    ;
1851:  Weave Sine[6] ;
1852:  Track TAST[6] ;
1853:L P[850] WELD_SPEED CNT100    ;
1854:L P[851] WELD_SPEED CNT100    ;
1855:L P[852] WELD_SPEED FINE
    :  Arc End[6]    ;
1856:  Weave End ;
1857:  Track End ;
1858:   ;
 418:   ;
 419:L P[189] 1000mm/sec CNT25    ;
 420:   ;
 421:J P[190] 50% CNT25    ;
 422:   ;
 423:L P[191] 1000mm/sec CNT25    ;
 424:   ;
 425:   ;
 426:  !FR50L1270 ;
 427:  IF R[15:TECH HOLD]=1272,CALL TECH_HOLD ;
 428:   ;
 429:   ;
1860:   ;
1861:L P[853] 1000mm/sec FINE
    :  Arc Start[6]    ;
1862:  Weave Sine[6] ;
1863:  Track TAST[6] ;
1864:L P[854] WELD_SPEED CNT100    ;
1865:  Track End ;
1866:L P[855] WELD_SPEED FINE
    :  Arc End[6]    ;
1867:  Weave End ;
1868:  Track End ;
1869:   ;
 431:   ;
 432:L P[195] 1000mm/sec CNT80    ;
 433:   ;
 434:L P[196] 1000mm/sec CNT100    ;
 435:   ;
 436:   ;
 437:  !FR50L1280 ;
 438:  IF R[15:TECH HOLD]=1282,CALL TECH_HOLD ;
 439:   ;
 440:   ;
1871:   ;
1872:L P[856] 1000mm/sec FINE
    :  Arc Start[6]    ;
1873:  Weave Sine[6] ;
1874:  Track TAST[6] ;
1875:L P[857] WELD_SPEED CNT100    ;
1876:  Track End ;
1877:L P[858] WELD_SPEED FINE
    :  Arc End[6]    ;
1878:  Weave End ;
1879:  Track End ;
1880:   ;
 442:   ;
 443:L P[200] 1000mm/sec CNT25    ;
 444:   ;
 445:J P[201] 50% CNT25    ;
 446:   ;
 447:L P[202] 1000mm/sec CNT25    ;
 448:  TIMER[7]=RESET ;
 449:  TIMER[7]=START ;
 450:   ;
 451:   ;
 452:  !FR50L1290 ;
 453:  IF R[15:TECH HOLD]=1292,CALL TECH_HOLD ;
 454:   ;
 455:   ;
1882:   ;
1883:L P[859] 1000mm/sec FINE
    :  Arc Start[6]    ;
1884:  Weave Sine[6] ;
1885:  Track TAST[6] ;
1886:L P[860] WELD_SPEED CNT100    ;
1887:L P[861] WELD_SPEED FINE
    :  Arc End[6]    ;
1888:  Weave End ;
1889:  Track End ;
1890:   ;
 457:   ;
 458:L P[206] 1000mm/sec CNT100    ;
 459:   ;
 460:L P[207] 1000mm/sec CNT100    ;
 461:   ;
 462:   ;
 463:  !FR50L1300 ;
 464:  IF R[15:TECH HOLD]=1302,CALL TECH_HOLD ;
 465:   ;
 466:   ;
1892:   ;
1893:L P[862] 1000mm/sec FINE
    :  Arc Start[6]    ;
1894:  Weave Sine[6] ;
1895:  Track TAST[6] ;
1896:L P[863] WELD_SPEED CNT100    ;
1897:L P[864] WELD_SPEED FINE
    :  Arc End[6]    ;
1898:  Weave End ;
1899:  Track End ;
1900:   ;
 468:   ;
 469:L P[210] 1000mm/sec CNT100    ;
 470:   ;
 471:L P[211] 1000mm/sec CNT100    ;
 472:   ;
 473:   ;
 474:  !FR50L1310 ;
 475:  IF R[15:TECH HOLD]=1312,CALL TECH_HOLD ;
 476:   ;
 477:   ;
1902:   ;
1903:L P[865] 1000mm/sec FINE
    :  Arc Start[6]    ;
1904:  Weave Sine[6] ;
1905:  Track TAST[6] ;
1906:L P[866] WELD_SPEED FINE
    :  Arc End[6]    ;
1907:  Weave End ;
1908:  Track End ;
1909:   ;
 479:   ;
 480:L P[214] 1000mm/sec CNT100    ;
 481:   ;
 482:L P[215] 1000mm/sec CNT100    ;
 483:   ;
 484:   ;
 485:  !FR50L1320 ;
 486:  IF R[15:TECH HOLD]=1322,CALL TECH_HOLD ;
 487:   ;
 488:   ;
1911:   ;
1912:L P[867] 1000mm/sec FINE
    :  Arc Start[6]    ;
1913:  Weave Sine[6] ;
1914:  Track TAST[6] ;
1915:L P[868] WELD_SPEED CNT100    ;
1916:L P[869] WELD_SPEED FINE
    :  Arc End[6]    ;
1917:  Weave End ;
1918:  Track End ;
1919:   ;
 490:   ;
 491:L P[219] 1000mm/sec CNT100    ;
 492:   ;
 493:L P[220] 1000mm/sec CNT100    ;
 494:  TIMER[7]=STOP ;
 495:   ;
 496:J P[73] 50% CNT30    ;
 497:   ;
 498:  !********POSITIONER MOVE******** ;
 499:J P[86] 100% CNT30    ;
 500:   ;
 501:  !FR50L1330 ;
 502:  IF R[15:TECH HOLD]=1332,CALL TECH_HOLD ;
 503:   ;
 504:   ;
 505:J P[327] 40% CNT10    ;
 506:   ;
1921:   ;
1922:L P[870] 1000mm/sec FINE
    :  Arc Start[8]    ;
1923:  Weave Sine[8] ;
1924:L P[871] WELD_SPEED FINE
    :  Arc End[8]    ;
1925:  Weave End ;
1926:   ;
 508:   ;
 509:J P[85] 50% CNT30    ;
 510:   ;
 511:J P[87] 50% CNT20    ;
 512:   ;
 513:  !********POSITIONER MOVE******** ;
 514:J P[225] 80% CNT20    ;
 515:   ;
 516:   ;
 517:   ;
 518:  !FR50L1340 ;
 519:  IF R[15:TECH HOLD]=1342,CALL TECH_HOLD ;
 520:   ;
 521:   ;
1928:   ;
1929:L P[872] 1000mm/sec FINE
    :  Arc Start[6]    ;
1930:  Weave Sine[6] ;
1931:L P[873] WELD_SPEED FINE
    :  Arc End[6]    ;
1932:  Weave End ;
1933:   ;
 523:   ;
 524:   ;
 525:  !FR50L1350 ;
 526:  IF R[15:TECH HOLD]=1352,CALL TECH_HOLD ;
 527:   ;
 528:   ;
1935:   ;
1936:L P[874] 1000mm/sec FINE
    :  Arc Start[6]    ;
1937:  Weave Sine[6] ;
1938:L P[875] WELD_SPEED FINE
    :  Arc End[6]    ;
1939:  Weave End ;
1940:   ;
 530:   ;
 531:L P[230] 1000mm/sec CNT25    ;
 532:   ;
 533:  !HOME ;
 534:J P[117] 100% CNT50    ;
 535:   ;
 536:  !********POSITIONER MOVE******** ;
 537:J P[231] 90% CNT25    ;
 538:   ;
 539:J P[232] 50% CNT25    ;
 540:   ;
 541:L P[234] 1000mm/sec CNT25    ;
 542:   ;
 543:J P[235] 50% CNT25    ;
 544:   ;
 545:   ;
 546:  !FR50L1380 ;
 547:  IF R[15:TECH HOLD]=1382,CALL TECH_HOLD ;
 548:   ;
 549:   ;
1942:   ;
1943:L P[876] 1000mm/sec FINE
    :  Arc Start[6]    ;
1944:  Weave Sine[6] ;
1945:  Track TAST[6] ;
1946:L P[877] WELD_SPEED CNT100    ;
1947:L P[878] WELD_SPEED CNT100    ;
1948:L P[879] WELD_SPEED FINE
    :  Arc End[6]    ;
1949:  Weave End ;
1950:  Track End ;
1951:   ;
 551:   ;
 552:L P[240] 800mm/sec CNT2    ;
 553:   ;
 554:L P[241] 800mm/sec CNT25    ;
 555:   ;
 556:  !********POSITIONER MOVE******** ;
 557:J P[242] 75% CNT5    ;
 558:   ;
 559:L P[243] 1000mm/sec CNT25    ;
 560:   ;
 561:   ;
 562:  !FR50L1390 ;
 563:  IF R[15:TECH HOLD]=1392,CALL TECH_HOLD ;
 564:   ;
1953:   ;
1954:L P[880] 1000mm/sec FINE
    :  Arc Start[6]    ;
1955:  Weave Sine[6] ;
1956:L P[881] WELD_SPEED CNT100    ;
1957:L P[882] WELD_SPEED CNT100    ;
1958:L P[883] WELD_SPEED FINE
    :  Arc End[6]    ;
1959:  Weave End ;
1960:   ;
 566:   ;
 567:L P[248] 1000mm/sec CNT25    ;
 568:   ;
 569:L P[249] 1000mm/sec CNT25    ;
 570:   ;
 571:   ;
 572:  !FR50L1400 ;
 573:  IF R[15:TECH HOLD]=1402,CALL TECH_HOLD ;
 574:   ;
 575:   ;
1962:   ;
1963:L P[884] 1000mm/sec FINE
    :  Arc Start[6]    ;
1964:  Weave Sine[6] ;
1965:  Track TAST[6] ;
1966:L P[885] WELD_SPEED FINE
    :  Arc End[6]    ;
1967:  Weave End ;
1968:  Track End ;
1969:   ;
 577:   ;
 578:L P[252] 1000mm/sec CNT25    ;
 579:   ;
 580:   ;
 581:  !FR50L1410 ;
 582:  IF R[15:TECH HOLD]=1412,CALL TECH_HOLD ;
 583:   ;
 584:   ;
1971:   ;
1972:L P[886] 1000mm/sec FINE
    :  Arc Start[6]    ;
1973:  Weave Sine[6] ;
1974:  Track TAST[6] ;
1975:L P[887] WELD_SPEED CNT100    ;
1976:L P[888] WELD_SPEED FINE
    :  Arc End[6]    ;
1977:  Weave End ;
1978:  Track End ;
1979:   ;
 586:   ;
 587:L P[256] 1000mm/sec CNT25    ;
 588:   ;
 589:   ;
 590:  !FR50L1420 ;
 591:  IF R[15:TECH HOLD]=1422,CALL TECH_HOLD ;
 592:   ;
 593:   ;
1981:   ;
1982:L P[889] 1000mm/sec FINE
    :  Arc Start[6]    ;
1983:  Weave Sine[6] ;
1984:  Track TAST[6] ;
1985:L P[890] WELD_SPEED CNT100    ;
1986:L P[891] WELD_SPEED FINE
    :  Arc End[6]    ;
1987:  Weave End ;
1988:  Track End ;
1989:   ;
 595:   ;
 596:L P[260] 1000mm/sec CNT25    ;
 597:   ;
 598:L P[261] 1000mm/sec CNT25    ;
 599:   ;
 600:   ;
 601:  !FR50L1430 ;
 602:  IF R[15:TECH HOLD]=1432,CALL TECH_HOLD ;
 603:   ;
 604:   ;
1991:   ;
1992:L P[892] 1000mm/sec FINE
    :  Arc Start[6]    ;
1993:  Weave Sine[6] ;
1994:L P[893] WELD_SPEED CNT100    ;
1995:  Weave End ;
1996:L P[894] WELD_SPEED FINE
    :  Arc End[6]    ;
1997:   ;
 606:   ;
 607:L P[265] 1000mm/sec CNT25    ;
 608:   ;
 609:   ;
 610:  !FR50L1431 ;
 611:  IF R[15:TECH HOLD]=1433,CALL TECH_HOLD ;
 612:   ;
 613:   ;
1999:   ;
2000:L P[895] 1000mm/sec FINE
    :  Arc Start[6]    ;
2001:  Weave Sine[6] ;
2002:L P[896] WELD_SPEED CNT100    ;
2003:L P[897] WELD_SPEED FINE
    :  Arc End[6]    ;
2004:  Weave End ;
2005:   ;
 615:   ;
 616:L P[269] 1000mm/sec CNT25    ;
 617:   ;
 618:L P[270] 1000mm/sec CNT25    ;
 619:   ;
 620:L P[271] 1000mm/sec CNT50 Wjnt    ;
 621:   ;
 622:J P[272] 50% CNT25    ;
 623:   ;
 624:L P[273] 1000mm/sec CNT25    ;
 625:   ;
 626:   ;
 627:  !FR50L1440 ;
 628:  IF R[15:TECH HOLD]=1442,CALL TECH_HOLD ;
 629:   ;
 630:   ;
2007:   ;
2008:L P[898] 1000mm/sec FINE
    :  Arc Start[6]    ;
2009:  Weave Sine[6] ;
2010:  Track TAST[6] ;
2011:L P[899] WELD_SPEED FINE
    :  Arc End[6]    ;
2012:  Weave End ;
2013:  Track End ;
2014:   ;
 632:   ;
 633:L P[276] 1000mm/sec CNT25    ;
 634:   ;
 635:   ;
 636:  !FR50L1450 ;
 637:  IF R[15:TECH HOLD]=1452,CALL TECH_HOLD ;
 638:   ;
 639:   ;
2016:   ;
2017:L P[900] 1000mm/sec FINE
    :  Arc Start[6]    ;
2018:  Weave Sine[6] ;
2019:  Track TAST[6] ;
2020:L P[901] WELD_SPEED CNT100    ;
2021:L P[902] WELD_SPEED FINE
    :  Arc End[6]    ;
2022:  Weave End ;
2023:  Track End ;
2024:   ;
 641:   ;
 642:L P[280] 1000mm/sec CNT25    ;
 643:   ;
 644:L P[281] 1000mm/sec CNT25    ;
 645:   ;
 646:   ;
 647:  !FR50L1460 ;
 648:  IF R[15:TECH HOLD]=1462,CALL TECH_HOLD ;
 649:   ;
 650:   ;
2026:   ;
2027:L P[903] 1000mm/sec FINE
    :  Arc Start[6]    ;
2028:  Weave Sine[6] ;
2029:  Track TAST[6] ;
2030:L P[904] WELD_SPEED CNT100    ;
2031:L P[905] WELD_SPEED FINE
    :  Arc End[6]    ;
2032:  Weave End ;
2033:  Track End ;
2034:   ;
 652:   ;
 653:L P[285] 1000mm/sec CNT25    ;
 654:   ;
 655:  !********POSITIONER MOVE******** ;
 656:J P[286] 75% FINE    ;
 657:   ;
 658:L P[287] 1000mm/sec CNT25    ;
 659:   ;
 660:   ;
 661:  !FR50L1470 ;
 662:  IF R[15:TECH HOLD]=1472,CALL TECH_HOLD ;
 663:   ;
 664:   ;
2036:   ;
2037:L P[906] 1000mm/sec FINE
    :  Arc Start[6]    ;
2038:  Weave Sine[6] ;
2039:  Track TAST[6] ;
2040:L P[907] WELD_SPEED FINE
    :  Arc End[6]    ;
2041:  Weave End ;
2042:  Track End ;
2043:   ;
 666:   ;
 667:L P[290] 1000mm/sec CNT25    ;
 668:   ;
 669:  !********POSITIONER MOVE******** ;
 670:J P[291] 65% CNT2    ;
 671:   ;
 672:L P[292] 1000mm/sec CNT25    ;
 673:   ;
 674:   ;
 675:  !FR50L1480 ;
 676:  IF R[15:TECH HOLD]=1482,CALL TECH_HOLD ;
 677:   ;
 678:   ;
2045:   ;
2046:L P[908] 1000mm/sec FINE
    :  Arc Start[8]    ;
2047:  Weave Sine[8] ;
2048:L P[909] WELD_SPEED FINE
    :  Arc End[8]    ;
2049:  Weave End ;
2050:   ;
 680:   ;
 681:L P[295] 1000mm/sec CNT25    ;
 682:   ;
 683:L P[296] 1000mm/sec CNT25    ;
 684:   ;
 685:   ;
 686:  !FR50L1490 ;
 687:  IF R[15:TECH HOLD]=1492,CALL TECH_HOLD ;
 688:   ;
 689:   ;
2052:   ;
2053:L P[910] 1000mm/sec FINE
    :  Arc Start[6]    ;
2054:  Weave Sine[6] ;
2055:  Track TAST[6] ;
2056:L P[911] WELD_SPEED FINE
    :  Arc End[6]    ;
2057:  Weave End ;
2058:  Track End ;
2059:   ;
 691:   ;
 692:L P[299] 1000mm/sec CNT25    ;
 693:   ;
 694:L P[300] 1000mm/sec CNT25    ;
 695:   ;
 696:L P[301] 1000mm/sec CNT25    ;
 697:   ;
 698:  !********POSITIONER MOVE******** ;
 699:J P[302] 85% FINE    ;
 700:   ;
 701:L P[303] 1000mm/sec CNT25    ;
 702:   ;
 703:   ;
 704:  !FR50L1500 ;
 705:  IF R[15:TECH HOLD]=1502,CALL TECH_HOLD ;
 706:   ;
 707:   ;
2061:   ;
2062:L P[912] 1000mm/sec FINE
    :  Arc Start[6]    ;
2063:  Weave Sine[6] ;
2064:L P[913] WELD_SPEED CNT100    ;
2065:L P[914] WELD_SPEED FINE
    :  Arc End[6]    ;
2066:  Weave End ;
2067:   ;
 709:   ;
 710:L P[307] 1000mm/sec CNT25    ;
 711:   ;
 712:J P[308] 50% CNT25    ;
 713:   ;
 714:L P[309] 1000mm/sec CNT25    ;
 715:   ;
 716:   ;
 717:  !FR50L1510 ;
 718:  IF R[15:TECH HOLD]=1512,CALL TECH_HOLD ;
 719:   ;
 720:   ;
2069:   ;
2070:L P[915] 1000mm/sec FINE
    :  Arc Start[6]    ;
2071:  Weave Sine[6] ;
2072:  Track TAST[6] ;
2073:L P[916] WELD_SPEED CNT100    ;
2074:C P[917]    
    :  P[918] WELD_SPEED CNT100    ;
2075:L P[919] WELD_SPEED CNT100    ;
2076:C P[920]    
    :  P[921] WELD_SPEED CNT100    ;
2077:L P[922] WELD_SPEED CNT100    ;
2078:C P[923]    
    :  P[924] WELD_SPEED CNT100    ;
2079:L P[925] WELD_SPEED FINE
    :  Arc End[6]    ;
2080:  Weave End ;
2081:  Track End ;
2082:L P[926] 2400mm/sec FINE
    :  Arc Start[1]    ;
2083:L P[927] WELD_SPEED FINE
    :  Arc End[1]    ;
2084:J P[928] 40% FINE
    :  Arc Start[1]    ;
2085:L P[929] WELD_SPEED FINE
    :  Arc End[1]    ;
2086:J P[930] 40% FINE
    :  Arc Start[1]    ;
2087:L P[931] WELD_SPEED FINE
    :  Arc End[1]    ;
2088:   ;
 722:   ;
 723:L P[321] 1000mm/sec CNT25    ;
 724:   ;
 725:J P[322] 40% CNT100    ;
 726:   ;
 727:J P[323] 40% CNT25    ;
 728:   ;
 729:  !CELL ID: F -.. ;
 730:   ;
 731:   ;
 732:J P[324] 50% CNT20    ;
 733:   ;
 740:   ;
 741:L P[328] 800mm/sec CNT25    ;
 742:   ;
 743:J P[224] 40% CNT100    ;
 744:   ;
 745:J P[329] 40% CNT100    ;
 746:   ;
 747:J P[331] 50% CNT50    ;
 748:   ;
 749:L P[332] 1000mm/sec CNT25    ;
 750:   ;
 751:   ;
 752:  !FR50L1520 ;
 753:  IF R[15:TECH HOLD]=1522,CALL TECH_HOLD ;
 754:   ;
 755:   ;
2090:   ;
2091:L P[932] 1000mm/sec FINE
    :  Arc Start[6]    ;
2092:  Weave Sine[6] ;
2093:  Track TAST[6] ;
2094:L P[933] WELD_SPEED FINE
    :  Arc End[6]    ;
2095:  Weave End ;
2096:  Track End ;
2097:   ;
 757:   ;
 758:L P[335] 1000mm/sec CNT25    ;
 759:   ;
 760:J P[336] 50% CNT25    ;
 761:   ;
 762:L P[337] 1000mm/sec CNT25    ;
 763:   ;
 764:   ;
 765:  !FR50L1530 ;
 766:  IF R[15:TECH HOLD]=1532,CALL TECH_HOLD ;
 767:   ;
 768:   ;
2099:   ;
2100:L P[934] 1000mm/sec FINE
    :  Arc Start[6]    ;
2101:  Weave Sine[6] ;
2102:  Track TAST[6] ;
2103:L P[935] WELD_SPEED FINE
    :  Arc End[6]    ;
2104:  Weave End ;
2105:  Track End ;
2106:   ;
 770:   ;
 771:L P[340] 1000mm/sec CNT25    ;
 772:   ;
 773:L P[341] 1000mm/sec CNT25    ;
 774:   ;
 775:L P[342] 1000mm/sec CNT25    ;
 776:   ;
 777:  !FR50L1540 ;
 778:  IF R[15:TECH HOLD]=1542,CALL TECH_HOLD ;
 779:   ;
 780:   ;
2118:   ;
2119:L P[939] 1000mm/sec FINE
    :  Arc Start[6]    ;
2120:  Weave Sine[6] ;
2121:  Track TAST[6] ;
2122:L P[940] WELD_SPEED CNT100    ;
2123:L P[941] WELD_SPEED CNT100    ;
2124:L P[942] WELD_SPEED CNT100    ;
2125:L P[943] WELD_SPEED CNT100    ;
2126:L P[944] WELD_SPEED CNT100    ;
2127:L P[945] WELD_SPEED CNT100    ;
2128:L P[946] WELD_SPEED FINE
    :  Arc End[6]    ;
2129:  Weave End ;
2130:  Track End ;
2131:   ;
 782:   ;
 783:L P[346] 1000mm/sec CNT25    ;
 784:   ;
 785:L P[347] 1000mm/sec CNT25    ;
 786:   ;
 787:L P[348] 1000mm/sec CNT100    ;
 788:   ;
 789:  !HOME ;
 790:J P[118] 100% CNT30    ;
 791:   ;
 792:  !********POSITIONER MOVE******** ;
 793:J P[349] 90% CNT30    ;
 794:   ;
 795:J P[350] 50% CNT25    ;
 796:   ;
 797:L P[351] 1000mm/sec CNT25    ;
 798:   ;
 799:   ;
 800:  !FR50L1540 ;
 801:  IF R[15:TECH HOLD]=1542,CALL TECH_HOLD ;
 802:   ;
 803:   ;
2118:   ;
2119:L P[939] 1000mm/sec FINE
    :  Arc Start[6]    ;
2120:  Weave Sine[6] ;
2121:  Track TAST[6] ;
2122:L P[940] WELD_SPEED CNT100    ;
2123:L P[941] WELD_SPEED CNT100    ;
2124:L P[942] WELD_SPEED CNT100    ;
2125:L P[943] WELD_SPEED CNT100    ;
2126:L P[944] WELD_SPEED CNT100    ;
2127:L P[945] WELD_SPEED CNT100    ;
2128:L P[946] WELD_SPEED FINE
    :  Arc End[6]    ;
2129:  Weave End ;
2130:  Track End ;
2131:   ;
 805:   ;
 806:L P[360] 1000mm/sec CNT60    ;
 807:   ;
 808:L P[361] 1000mm/sec CNT25    ;
 809:   ;
 810:   ;
 811:  !FR50L1550 ;
 812:  IF R[15:TECH HOLD]=1552,CALL TECH_HOLD ;
 813:   ;
 814:   ;
2133:   ;
2134:L P[947] 1000mm/sec FINE
    :  Arc Start[6]    ;
2135:  Weave Sine[6] ;
2136:  Track TAST[6] ;
2137:L P[948] WELD_SPEED CNT100    ;
2138:L P[949] WELD_SPEED CNT100    ;
2139:L P[950] WELD_SPEED CNT100    ;
2140:L P[951] WELD_SPEED FINE
    :  Arc End[6]    ;
2141:  Weave End ;
2142:  Track End ;
2143:   ;
 816:   ;
 817:L P[367] 1000mm/sec CNT25    ;
 818:   ;
 819:L P[368] 1000mm/sec CNT100    ;
 820:   ;
 821:  !HOME ;
 822:J P[183] 100% CNT60    ;
 823:   ;
 824:  !********POSITIONER MOVE******** ;
 825:  !LOAD POSITION ;
 826:J P[233] 90% FINE    ;
 827:   ;
 828:  CALL HOME    ;
 829:  CALL T_CLEAN    ;
 830:   ;
 831:  !********POSITIONER MOVE******** ;
 832:J P[377] 90% CNT20    ;
 833:   ;
 834:L P[378] 1000mm/sec CNT25    ;
 835:   ;
 836:L P[379] 1000mm/sec CNT25    ;
 837:   ;
 838:   ;
 839:  !FR50L1570 ;
 840:  IF R[15:TECH HOLD]=1572,CALL TECH_HOLD ;
 841:   ;
 842:   ;
2145:   ;
2146:L P[952] 1000mm/sec FINE
    :  Arc Start[6]    ;
2147:  Weave Sine[6] ;
2148:  Track TAST[6] ;
2149:L P[953] WELD_SPEED CNT100    ;
2150:L P[954] WELD_SPEED CNT100    ;
2151:L P[955] WELD_SPEED CNT100    ;
2152:L P[956] WELD_SPEED CNT100    ;
2153:L P[957] WELD_SPEED CNT100    ;
2154:L P[958] WELD_SPEED CNT100    ;
2155:L P[959] WELD_SPEED FINE
    :  Arc End[6]    ;
2156:  Weave End ;
2157:  Track End ;
2158:   ;
 844:   ;
 845:L P[388] 1000mm/sec CNT100    ;
 846:   ;
 847:L P[389] 1000mm/sec CNT25    ;
 848:   ;
 849:   ;
 850:  !FR50L1580 ;
 851:  IF R[15:TECH HOLD]=1582,CALL TECH_HOLD ;
 852:   ;
 853:   ;
2160:   ;
2161:L P[960] 1000mm/sec FINE
    :  Arc Start[6]    ;
2162:  Weave Sine[6] ;
2163:  Track TAST[6] ;
2164:L P[961] WELD_SPEED CNT100    ;
2165:L P[962] WELD_SPEED CNT100    ;
2166:L P[963] WELD_SPEED CNT100    ;
2167:L P[964] WELD_SPEED FINE
    :  Arc End[6]    ;
2168:  Weave End ;
2169:  Track End ;
2170:   ;
 855:   ;
 856:L P[395] 600mm/sec CNT25    ;
 857:   ;
 858:L P[396] 1000mm/sec CNT100    ;
 859:   ;
 860:J P[326] 100% CNT25    ;
 861:   ;
 862:J P[325] 100% CNT30    ;
 863:   ;
 864:  !********POSITIONER MOVE******** ;
 865:J P[397] 90% CNT30    ;
 866:   ;
 867:J P[398] 50% CNT100    ;
 868:   ;
 869:L P[399] 1000mm/sec CNT25    ;
 870:   ;
 871:   ;
 872:  !FR50L1590 ;
 873:  IF R[15:TECH HOLD]=1592,CALL TECH_HOLD ;
 874:   ;
 875:   ;
2172:   ;
2173:L P[965] 1000mm/sec FINE
    :  Arc Start[6]    ;
2174:  Weave Sine[6] ;
2175:  Track TAST[6] ;
2176:L P[966] WELD_SPEED FINE
    :  Arc End[6]    ;
2177:  Weave End ;
2178:  Track End ;
2179:   ;
 877:   ;
 878:L P[402] 1000mm/sec CNT25    ;
 879:   ;
 880:J P[403] 50% CNT25    ;
 881:   ;
 882:   ;
 883:  !FR50L1600 ;
 884:  IF R[15:TECH HOLD]=1602,CALL TECH_HOLD ;
 885:   ;
 886:   ;
2181:   ;
2182:L P[967] 1000mm/sec FINE
    :  Arc Start[6]    ;
2183:  Weave Sine[6] ;
2184:  Track TAST[6] ;
2185:L P[968] WELD_SPEED FINE
    :  Arc End[6]    ;
2186:  Weave End ;
2187:  Track End ;
2188:   ;
 888:   ;
 889:L P[406] 1000mm/sec CNT25    ;
 890:   ;
 891:J P[407] 50% CNT25    ;
 892:   ;
 893:   ;
 894:  !FR50L1601 ;
 895:  IF R[15:TECH HOLD]=1603,CALL TECH_HOLD ;
 896:   ;
 897:   ;
2190:   ;
2191:L P[969] 1000mm/sec FINE
    :  Arc Start[6]    ;
2192:  Weave Sine[6] ;
2193:  Track TAST[6] ;
2194:L P[970] WELD_SPEED FINE
    :  Arc End[6]    ;
2195:  Weave End ;
2196:  Track End ;
2197:   ;
 899:   ;
 900:L P[410] 1000mm/sec CNT25    ;
 901:   ;
 902:L P[411] 1200mm/sec CNT40    ;
 903:   ;
 904:  !********POSITIONER MOVE******** ;
 905:J P[412] 90% CNT30    ;
 906:   ;
 907:L P[413] 1000mm/sec CNT25    ;
 908:   ;
 909:L P[414] 1000mm/sec CNT25    ;
 910:   ;
 911:   ;
 912:  !FR50L1610 ;
 913:  IF R[15:TECH HOLD]=1612,CALL TECH_HOLD ;
 914:   ;
 915:   ;
2199:   ;
2200:L P[971] 1000mm/sec FINE
    :  Arc Start[6]    ;
2201:  Weave Sine[6] ;
2202:  Track TAST[6] ;
2203:L P[972] WELD_SPEED CNT100    ;
2204:L P[973] WELD_SPEED FINE
    :  Arc End[6]    ;
2205:  Weave End ;
2206:  Track End ;
2207:   ;
 917:   ;
 918:L P[418] 1000mm/sec CNT25    ;
 919:   ;
 920:L P[419] 1000mm/sec CNT25    ;
 921:   ;
 922:   ;
 923:   ;
 924:  !FR50L1620 ;
 925:  IF R[15:TECH HOLD]=1622,CALL TECH_HOLD ;
 926:   ;
 927:   ;
2209:   ;
2210:L P[974] 1000mm/sec FINE
    :  Arc Start[6]    ;
2211:  Weave Sine[6] ;
2212:  Track TAST[6] ;
2213:L P[975] WELD_SPEED CNT100    ;
2214:L P[976] WELD_SPEED FINE
    :  Arc End[6]    ;
2215:  Weave End ;
2216:  Track End ;
2217:   ;
 929:   ;
 930:L P[423] 1000mm/sec CNT75    ;
 931:   ;
 932:L P[330] 1000mm/sec CNT25    ;
 933:   ;
 934:J P[424] 50% CNT25    ;
 935:   ;
 936:  !********POSITIONER MOVE******** ;
 937:J P[425] 90% CNT30    ;
 938:   ;
 939:J P[426] 50% CNT25    ;
 940:   ;
 941:   ;
 942:  !FR50L1630 ;
 943:  IF R[15:TECH HOLD]=1632,CALL TECH_HOLD ;
 944:   ;
 945:   ;
2219:   ;
2220:L P[977] 1000mm/sec FINE
    :  Arc Start[6]    ;
2221:  Weave Sine[6] ;
2222:  Track TAST[6] ;
2223:L P[978] WELD_SPEED CNT100    ;
2224:C P[979]    
    :  P[980] WELD_SPEED CNT100    ;
2225:L P[981] WELD_SPEED CNT100    ;
2226:C P[982]    
    :  P[983] WELD_SPEED CNT100    ;
2227:L P[984] WELD_SPEED FINE
    :  Arc End[6]    ;
2228:  Weave End ;
2229:  Track End ;
2230:   ;
 947:   ;
 948:L P[435] 1000mm/sec CNT40    ;
 949:   ;
 950:J P[436] 50% CNT35    ;
 951:   ;
 952:   ;
 953:  !FR50L1640 ;
 954:  IF R[15:TECH HOLD]=1642,CALL TECH_HOLD ;
 955:   ;
 956:   ;
2232:   ;
2233:L P[985] 1000mm/sec FINE
    :  Arc Start[6]    ;
2234:  Weave Sine[6] ;
2235:  Track TAST[6] ;
2236:L P[986] WELD_SPEED CNT100    ;
2237:C P[987]    
    :  P[988] WELD_SPEED CNT100    ;
2238:L P[989] WELD_SPEED CNT100    ;
2239:L P[990] WELD_SPEED CNT100    ;
2240:L P[991] WELD_SPEED CNT100    ;
2241:L P[992] WELD_SPEED CNT100    ;
2242:L P[993] WELD_SPEED FINE
    :  Arc End[6]    ;
2243:  Weave End ;
2244:  Track End ;
2245:   ;
 958:   ;
 959:L P[446] 1000mm/sec CNT100    ;
 960:   ;
 961:J P[447] 50% CNT25    ;
 962:   ;
 963:  !********POSITIONER MOVE******** ;
 964:J P[448] 100% FINE    ;
 965:   ;
 966:L P[449] 1000mm/sec CNT25    ;
 967:   ;
 968:J P[450] 50% CNT25    ;
 969:   ;
 970:   ;
 971:  !FR50L1650 ;
 972:  IF R[15:TECH HOLD]=1652,CALL TECH_HOLD ;
 973:   ;
 974:   ;
2247:   ;
2248:L P[994] 1000mm/sec FINE
    :  Arc Start[6]    ;
2249:  Weave Sine[6] ;
2250:L P[995] WELD_SPEED CNT100    ;
2251:L P[996] WELD_SPEED CNT100    ;
2252:L P[997] WELD_SPEED CNT100    ;
2253:  Track TAST[6] ;
2254:L P[998] WELD_SPEED CNT100    ;
2255:L P[999] WELD_SPEED CNT100    ;
2256:L P[1000] WELD_SPEED CNT100    ;
2257:L P[1001] WELD_SPEED CNT100    ;
2258:C P[1002]    
    :  P[1003] WELD_SPEED CNT100    ;
2259:L P[1004] WELD_SPEED CNT100    ;
2260:C P[1005]    
    :  P[1006] WELD_SPEED CNT100    ;
2261:L P[1007] WELD_SPEED FINE
    :  Arc End[6]    ;
2262:  Weave End ;
2263:  Track End ;
2264:   ;
 976:   ;
 977:L P[465] 1000mm/sec CNT100    ;
 978:   ;
 979:L P[466] 1000mm/sec CNT80    ;
 980:   ;
 981:   ;
 982:  !FR50L1651 ;
 983:  IF R[15:TECH HOLD]=1653,CALL TECH_HOLD ;
 984:   ;
 985:   ;
2266:   ;
2267:L P[1008] 1000mm/sec FINE
    :  Arc Start[6]    ;
2268:  Weave Sine[6] ;
2269:  Track TAST[6] ;
2270:L P[1009] WELD_SPEED CNT100    ;
2271:C P[1010]    
    :  P[1011] WELD_SPEED CNT100    ;
2272:C P[1012]    
    :  P[1013] WELD_SPEED FINE
    :  Arc End[6]    ;
2273:  Weave End ;
2274:  Track End ;
2275:   ;
 987:   ;
 988:L P[473] 1000mm/sec CNT25    ;
 989:   ;
 990:L P[474] 1000mm/sec CNT100    ;
 991:   ;
 992:L P[475] 1000mm/sec CNT30    ;
 993:   ;
 994:  !HOME ;
 995:J P[88] 100% CNT30    ;
 996:   ;
 997:  !********POSITIONER MOVE******** ;
 998:J P[477] 100% CNT30    ;
 999:   ;
1000:J P[478] 50% CNT100    ;
1001:   ;
1002:J P[479] 50% CNT60    ;
1003:   ;
1004:L P[480] 1000mm/sec CNT25    ;
1005:   ;
1006:   ;
1007:  !FR50L1660 ;
1008:  IF R[15:TECH HOLD]=1662,CALL TECH_HOLD ;
1009:   ;
1010:   ;
2277:   ;
2278:L P[1014] 1000mm/sec FINE
    :  Arc Start[6]    ;
2279:  Weave Sine[6] ;
2280:  Track TAST[6] ;
2281:L P[1015] WELD_SPEED FINE
    :  Arc End[6]    ;
2282:  Weave End ;
2283:  Track End ;
2284:   ;
1012:   ;
1013:J P[483] 20% CNT100    ;
1014:   ;
1015:J P[484] 60% CNT25    ;
1016:   ;
1017:L P[485] 600mm/sec CNT25    ;
1018:   ;
1019:   ;
1020:  !FR50L1661 ;
1021:  IF R[15:TECH HOLD]=1663,CALL TECH_HOLD ;
1022:   ;
1023:   ;
2286:   ;
2287:L P[1016] 1000mm/sec FINE
    :  Arc Start[6]    ;
2288:  Weave Sine[6] ;
2289:  Track TAST[6] ;
2290:L P[1017] WELD_SPEED FINE
    :  Arc End[6]    ;
2291:  Weave End ;
2292:  Track End ;
2293:   ;
1025:   ;
1026:L P[488] 500mm/sec CNT25    ;
1027:   ;
1028:L P[489] 500mm/sec CNT25    ;
1029:   ;
1030:L P[490] 1000mm/sec CNT25    ;
1031:   ;
1032:  !********POSITIONER MOVE******** ;
1033:J P[491] 90% CNT25    ;
1034:   ;
1035:L P[492] 1000mm/sec CNT25    ;
1036:   ;
1037:   ;
1038:  !FR50L1670 ;
1039:  IF R[15:TECH HOLD]=1672,CALL TECH_HOLD ;
1040:   ;
1041:   ;
2295:   ;
2296:L P[1018] 1000mm/sec FINE
    :  Arc Start[8]    ;
2297:  Weave Sine[8] ;
2298:L P[1019] WELD_SPEED FINE
    :  Arc End[8]    ;
2299:  Weave End ;
2300:   ;
1043:   ;
1044:L P[495] 500mm/sec CNT25    ;
1045:   ;
1046:L P[496] 1000mm/sec CNT25    ;
1047:   ;
1048:   ;
1049:  !FR50L1680 ;
1050:  IF R[15:TECH HOLD]=1682,CALL TECH_HOLD ;
1051:   ;
1052:   ;
2302:   ;
2303:L P[1020] 1000mm/sec FINE
    :  Arc Start[6]    ;
2304:  Weave Sine[6] ;
2305:  Track TAST[6] ;
2306:L P[1021] WELD_SPEED FINE
    :  Arc End[6]    ;
2307:  Weave End ;
2308:  Track End ;
2309:   ;
1054:   ;
1055:L P[499] 1000mm/sec CNT25    ;
1056:   ;
1057:  !********POSITIONER MOVE******** ;
1058:J P[500] 75% FINE    ;
1059:   ;
1060:L P[501] 1000mm/sec CNT25    ;
1061:   ;
1062:   ;
1063:  !FR50L1690 ;
1064:  IF R[15:TECH HOLD]=1692,CALL TECH_HOLD ;
1065:   ;
1066:   ;
2311:   ;
2312:L P[1022] 1000mm/sec FINE
    :  Arc Start[6]    ;
2313:  Weave Sine[6] ;
2314:  Track TAST[6] ;
2315:L P[1023] WELD_SPEED CNT100    ;
2316:L P[1024] WELD_SPEED FINE
    :  Arc End[6]    ;
2317:  Weave End ;
2318:  Track End ;
2319:   ;
1068:   ;
1069:L P[505] 300mm/sec CNT25    ;
1070:   ;
1071:L P[506] 1000mm/sec CNT25    ;
1072:   ;
1073:L P[507] 1000mm/sec CNT25    ;
1074:   ;
1075:   ;
1076:  !FR50L1700 ;
1077:  IF R[15:TECH HOLD]=1702,CALL TECH_HOLD ;
1078:   ;
1079:   ;
2321:   ;
2322:L P[1025] 1000mm/sec FINE
    :  Arc Start[6]    ;
2323:  Weave Sine[6] ;
2324:  Track TAST[6] ;
2325:L P[1026] WELD_SPEED CNT100    ;
2326:C P[1027]    
    :  P[1028] WELD_SPEED CNT100    ;
2327:L P[1029] WELD_SPEED CNT100    ;
2328:C P[1030]    
    :  P[1031] WELD_SPEED CNT100    ;
2329:L P[1032] WELD_SPEED CNT100    ;
2330:C P[1033]    
    :  P[1034] WELD_SPEED CNT100    ;
2331:L P[1035] WELD_SPEED FINE
    :  Arc End[6]    ;
2332:  Weave End ;
2333:  Track End ;
2334:   ;
1081:   ;
1082:L P[519] 1000mm/sec CNT100    ;
1083:   ;
1084:L P[520] 1000mm/sec CNT25    ;
1085:   ;
1086:L P[521] 500mm/sec CNT25    ;
1087:   ;
1088:   ;
1089:  !FR50L1710 ;
1090:  IF R[15:TECH HOLD]=1712,CALL TECH_HOLD ;
1091:   ;
1092:   ;
2336:   ;
2337:L P[1036] 1000mm/sec FINE
    :  Arc Start[6]    ;
2338:  Weave Sine[6] ;
2339:  Track TAST[6] ;
2340:L P[1037] WELD_SPEED CNT100    ;
2341:L P[1038] WELD_SPEED FINE
    :  Arc End[6]    ;
2342:  Weave End ;
2343:  Track End ;
2344:   ;
1094:   ;
1095:L P[525] 500mm/sec CNT25    ;
1096:   ;
1097:L P[526] 800mm/sec CNT25    ;
1098:   ;
1099:L P[527] 1000mm/sec CNT100    ;
1100:   ;
1101:J P[528] 50% CNT100    ;
1102:   ;
1103:L P[529] 1000mm/sec CNT25    ;
1104:   ;
1105:   ;
1106:  !FR50L1720 ;
1107:  IF R[15:TECH HOLD]=1722,CALL TECH_HOLD ;
1108:   ;
1109:   ;
2346:   ;
2347:L P[1039] 1000mm/sec FINE
    :  Arc Start[6]    ;
2348:  Weave Sine[6] ;
2349:L P[1040] WELD_SPEED CNT100    ;
2350:L P[1041] WELD_SPEED CNT100    ;
2351:L P[1042] WELD_SPEED FINE
    :  Arc End[6]    ;
2352:  Weave End ;
2353:   ;
1111:   ;
1112:J P[534] 50% CNT10    ;
1113:   ;
1114:  !********POSITIONER MOVE******** ;
1115:J P[535] 40% CNT10    ;
1116:   ;
1117:J P[536] 20% CNT5    ;
1118:   ;
1119:L P[537] 1000mm/sec CNT25    ;
1120:   ;
1121:   ;
1122:  !FR50L1730 ;
1123:  IF R[15:TECH HOLD]=1732,CALL TECH_HOLD ;
1124:   ;
1125:   ;
2355:   ;
2356:L P[1043] 1000mm/sec FINE
    :  Arc Start[6]    ;
2357:  Weave Sine[6] ;
2358:  Track TAST[6] ;
2359:L P[1044] WELD_SPEED CNT100    ;
2360:L P[1045] WELD_SPEED CNT100    ;
2361:L P[1046] WELD_SPEED FINE
    :  Arc End[6]    ;
2362:  Weave End ;
2363:  Track End ;
2364:   ;
1127:   ;
1128:L P[542] 1000mm/sec CNT25    ;
1129:   ;
1130:J P[543] 50% CNT10    ;
1131:   ;
1132:  !********POSITIONER MOVE******** ;
1133:J P[544] 80% CNT10    ;
1134:   ;
1135:   ;
1136:  !FR50L1740 ;
1137:  IF R[15:TECH HOLD]=1742,CALL TECH_HOLD ;
1138:   ;
1139:   ;
2366:   ;
2367:L P[1047] 1000mm/sec FINE
    :  Arc Start[6]    ;
2368:  Weave Sine[6] ;
2369:  Track TAST[6] ;
2370:L P[1048] WELD_SPEED FINE
    :  Arc End[6]    ;
2371:  Weave End ;
2372:  Track End ;
2373:   ;
1141:   ;
1142:L P[547] 1000mm/sec CNT25    ;
1143:   ;
1144:L P[548] 1000mm/sec CNT25    ;
1145:   ;
1146:L P[549] 1000mm/sec CNT25    ;
1147:   ;
1148:   ;
1149:  !FR50L1750 ;
1150:  IF R[15:TECH HOLD]=1752,CALL TECH_HOLD ;
1151:   ;
1152:   ;
2375:   ;
2376:L P[1049] 1000mm/sec FINE
    :  Arc Start[6]    ;
2377:  Weave Sine[6] ;
2378:  Track TAST[6] ;
2379:L P[1050] WELD_SPEED CNT100    ;
2380:L P[1051] WELD_SPEED FINE
    :  Arc End[6]    ;
2381:  Weave End ;
2382:  Track End ;
2383:   ;
1154:   ;
1155:L P[553] 1000mm/sec CNT25    ;
1156:   ;
1157:L P[554] 1000mm/sec CNT100    ;
1158:   ;
1159:L P[555] 1000mm/sec CNT100    ;
1160:   ;
1161:L P[556] 1000mm/sec CNT40    ;
1162:   ;
1163:   ;
1164:  !FR50L1770 ;
1165:  IF R[15:TECH HOLD]=1772,CALL TECH_HOLD ;
1166:   ;
1167:   ;
2385:   ;
2386:L P[1052] 1000mm/sec FINE
    :  Arc Start[6]    ;
2387:  Weave Sine[6] ;
2388:  Track TAST[6] ;
2389:L P[1053] WELD_SPEED FINE
    :  Arc End[6]    ;
2390:  Weave End ;
2391:  Track End ;
2392:L P[1054] 1000mm/sec FINE
    :  Arc Start[6]    ;
2393:  Weave Sine[6] ;
2394:L P[1055] WELD_SPEED FINE
    :  Arc End[6]    ;
2395:  Weave End ;
2396:L P[1056] 2400mm/sec FINE
    :  Arc Start[6]    ;
2397:  Weave Sine[6] ;
2398:L P[1057] WELD_SPEED FINE
    :  Arc End[6]    ;
2399:  Weave End ;
2400:   ;
1169:   ;
1170:L P[559] 1000mm/sec CNT100    ;
1171:   ;
1172:L P[560] 1000mm/sec CNT25    ;
1173:   ;
1176:L P[563] 1200mm/sec CNT100    ;
1177:   ;
1178:L P[89] 800mm/sec CNT100    ;
1179:   ;
1180:J P[565] 30% CNT20    ;
1181:   ;
1184:J P[568] 25% CNT25    ;
1185:   ;
1186:J P[569] 50% CNT100    ;
1187:   ;
1188:  !HOME ;
1189:J P[90] 100% CNT30    ;
1190:   ;
1191:  !********POSITIONER MOVE******** ;
1192:J P[570] 100% CNT30    ;
1193:   ;
1194:J P[371] 50% CNT100    ;
1195:   ;
1196:L P[572] 1000mm/sec CNT25    ;
1197:   ;
1198:L P[573] 1000mm/sec CNT25    ;
1199:   ;
1200:   ;
1201:  !FR50L1780 ;
1202:  IF R[15:TECH HOLD]=1782,CALL TECH_HOLD ;
1203:   ;
1204:   ;
2402:   ;
2403:L P[1058] 500mm/sec FINE
    :  Arc Start[6]    ;
2404:  Weave Sine[6] ;
2405:  Track TAST[6] ;
2406:L P[1059] WELD_SPEED FINE
    :  Arc End[6]    ;
2407:  Weave End ;
2408:  Track End ;
2409:   ;
1206:   ;
1207:L P[576] 500mm/sec CNT25    ;
1208:   ;
1209:L P[577] 1000mm/sec CNT25    ;
1210:   ;
1211:  !********POSITIONER MOVE******** ;
1212:J P[578] 100% FINE    ;
1213:   ;
1214:   ;
1215:  !FR50L1790 ;
1216:  IF R[15:TECH HOLD]=1792,CALL TECH_HOLD ;
1217:   ;
1218:   ;
2411:   ;
2412:L P[1060] 1000mm/sec FINE
    :  Arc Start[6]    ;
2413:  Weave Sine[6] ;
2414:  Track TAST[6] ;
2415:L P[1061] WELD_SPEED FINE
    :  Arc End[6]    ;
2416:  Weave End ;
2417:  Track End ;
2418:   ;
1220:   ;
1221:L P[581] 1000mm/sec CNT100    ;
1222:   ;
1223:   ;
1224:  !FR50L1800 ;
1225:  IF R[15:TECH HOLD]=1802,CALL TECH_HOLD ;
1226:   ;
1227:   ;
2420:   ;
2421:L P[1062] 1000mm/sec FINE
    :  Arc Start[6]    ;
2422:  Weave Sine[6] ;
2423:  Track TAST[6] ;
2424:L P[1063] WELD_SPEED CNT100    ;
2425:L P[1064] WELD_SPEED FINE
    :  Arc End[6]    ;
2426:  Weave End ;
2427:  Track End ;
2428:   ;
1229:   ;
1230:L P[585] 1000mm/sec CNT25    ;
1231:   ;
1232:   ;
1233:  !FR50L1810 ;
1234:  IF R[15:TECH HOLD]=1812,CALL TECH_HOLD ;
1235:   ;
1236:   ;
2430:   ;
2431:L P[1065] 1000mm/sec FINE
    :  Arc Start[6]    ;
2432:  Weave Sine[6] ;
2433:  Track TAST[6] ;
2434:L P[1066] WELD_SPEED CNT100    ;
2435:L P[1067] WELD_SPEED FINE
    :  Arc End[6]    ;
2436:  Weave End ;
2437:  Track End ;
2438:   ;
1238:   ;
1239:L P[589] 1000mm/sec CNT25    ;
1240:   ;
1241:J P[590] 50% CNT25    ;
1242:   ;
1243:L P[591] 1000mm/sec CNT25    ;
1244:   ;
1245:   ;
1246:  !FR50L1820 ;
1247:  IF R[15:TECH HOLD]=1822,CALL TECH_HOLD ;
1248:   ;
1249:   ;
2440:   ;
2441:L P[1068] 1000mm/sec FINE
    :  Arc Start[6]    ;
2442:  Weave Sine[6] ;
2443:L P[1069] WELD_SPEED CNT100    ;
2444:L P[1070] WELD_SPEED FINE
    :  Arc End[6]    ;
2445:  Weave End ;
2446:   ;
1251:   ;
1252:L P[595] 1000mm/sec CNT25    ;
1253:   ;
1254:J P[596] 50% CNT100    ;
1255:   ;
1256:J P[597] 50% CNT100    ;
1257:   ;
1258:L P[598] 1000mm/sec CNT25    ;
1259:   ;
1260:   ;
1261:   ;
1262:  !FR50L1830 ;
1263:  IF R[15:TECH HOLD]=1832,CALL TECH_HOLD ;
1264:   ;
1265:   ;
2448:   ;
2449:L P[1071] 1000mm/sec FINE
    :  Arc Start[6]    ;
2450:  Weave Sine[6] ;
2451:  Track TAST[6] ;
2452:L P[1072] WELD_SPEED CNT100    ;
2453:C P[1073]    
    :  P[1074] WELD_SPEED CNT100    ;
2454:L P[1075] WELD_SPEED CNT100    ;
2455:C P[1076]    
    :  P[1077] WELD_SPEED CNT100    ;
2456:L P[1078] WELD_SPEED FINE
    :  Arc End[6]    ;
2457:  Weave End ;
2458:  Track End ;
2459:   ;
1267:   ;
1268:L P[607] 1000mm/sec CNT60    ;
1269:   ;
1270:J P[608] 50% CNT50    ;
1271:   ;
1272:   ;
1273:  !FR50L1840 ;
1274:  IF R[15:TECH HOLD]=1842,CALL TECH_HOLD ;
1275:   ;
1276:   ;
2461:   ;
2462:L P[1079] 1000mm/sec FINE
    :  Arc Start[6]    ;
2463:  Weave Sine[6] ;
2464:  Track TAST[6] ;
2465:L P[1080] WELD_SPEED CNT100    ;
2466:C P[1081]    
    :  P[1082] WELD_SPEED CNT100    ;
2467:L P[1083] WELD_SPEED CNT100    ;
2468:L P[1084] WELD_SPEED CNT100    ;
2469:L P[1085] WELD_SPEED CNT100    ;
2470:L P[1086] WELD_SPEED CNT100    ;
2471:L P[1087] WELD_SPEED FINE
    :  Arc End[6]    ;
2472:  Weave End ;
2473:  Track End ;
2474:   ;
1278:   ;
1279:L P[618] 1000mm/sec CNT25    ;
1280:   ;
1281:J P[619] 50% CNT100    ;
1282:   ;
1283:J P[620] 50% CNT100    ;
1284:   ;
1285:J P[372] 50% CNT100    ;
1286:   ;
1287:L P[621] 1000mm/sec CNT25    ;
1288:   ;
1289:   ;
1290:  !FR50L1850 ;
1291:  IF R[15:TECH HOLD]=1852,CALL TECH_HOLD ;
1292:   ;
2476:   ;
2477:L P[1088] 1000mm/sec FINE
    :  Arc Start[6]    ;
2478:  Weave Sine[6] ;
2479:L P[1089] WELD_SPEED CNT100    ;
2480:L P[1090] WELD_SPEED CNT100    ;
2481:L P[1091] WELD_SPEED FINE
    :  Arc End[6]    ;
2482:  Weave End ;
2483:   ;
1294:   ;
1295:L P[626] 1000mm/sec CNT100    ;
1296:   ;
1297:L P[627] 1000mm/sec CNT100    ;
1298:   ;
1299:   ;
1300:  !FR50L1860 ;
1301:  IF R[15:TECH HOLD]=1862,CALL TECH_HOLD ;
1302:   ;
1303:   ;
2485:   ;
2486:L P[1092] 1000mm/sec FINE
    :  Arc Start[6]    ;
2487:  Weave Sine[6] ;
2488:  Track TAST[6] ;
2489:L P[1093] WELD_SPEED FINE
    :  Arc End[6]    ;
2490:  Weave End ;
2491:  Track End ;
2492:   ;
1305:   ;
1306:L P[630] 1000mm/sec CNT50    ;
1307:   ;
1308:   ;
1309:  !FR50L1870 ;
1310:  IF R[15:TECH HOLD]=1872,CALL TECH_HOLD ;
1311:   ;
1312:   ;
2494:   ;
2495:L P[1094] 1000mm/sec FINE
    :  Arc Start[6]    ;
2496:  Weave Sine[6] ;
2497:  Track TAST[6] ;
2498:L P[1095] WELD_SPEED CNT100    ;
2499:L P[1096] WELD_SPEED FINE
    :  Arc End[6]    ;
2500:  Weave End ;
2501:  Track End ;
2502:   ;
1314:   ;
1315:L P[634] 1000mm/sec CNT60    ;
1316:   ;
1317:   ;
1318:  !FR50L1880 ;
1319:  IF R[15:TECH HOLD]=1882,CALL TECH_HOLD ;
1320:   ;
1321:   ;
2504:   ;
2505:L P[1097] 1000mm/sec FINE
    :  Arc Start[6]    ;
2506:  Weave Sine[6] ;
2507:  Track TAST[6] ;
2508:L P[1098] WELD_SPEED CNT100    ;
2509:L P[1099] WELD_SPEED FINE
    :  Arc End[6]    ;
2510:  Weave End ;
2511:  Track End ;
2512:   ;
1323:   ;
1324:L P[373] 1000mm/sec CNT25    ;
1325:   ;
1326:J P[638] 50% CNT25    ;
1327:   ;
1328:J P[641] 50% CNT25    ;
1329:   ;
1330:   ;
1331:  !FR50L1900 ;
1332:  IF R[15:TECH HOLD]=1902,CALL TECH_HOLD ;
1333:   ;
1334:   ;
2514:   ;
2515:L P[1100] 1000mm/sec FINE
    :  Arc Start[6]    ;
2516:  Weave Sine[6] ;
2517:  Track TAST[6] ;
2518:L P[1101] WELD_SPEED CNT100    ;
2519:L P[1102] WELD_SPEED FINE
    :  Arc End[6]    ;
2520:  Weave End ;
2521:  Track End ;
2522:   ;
1336:   ;
1337:L P[645] 1000mm/sec CNT25    ;
1338:   ;
1339:  !********POSITIONER MOVE******** ;
1340:J P[646] 100% FINE    ;
1341:   ;
1342:L P[647] 1000mm/sec CNT25    ;
1343:   ;
1344:L P[648] 1000mm/sec CNT25    ;
1345:   ;
1346:   ;
1347:  !FR50L1910 ;
1348:  IF R[15:TECH HOLD]=1912,CALL TECH_HOLD ;
1349:   ;
1350:   ;
2524:   ;
2525:L P[1103] 1000mm/sec FINE
    :  Arc Start[6]    ;
2526:  Weave Sine[6] ;
2527:  Track TAST[6] ;
2528:L P[1104] WELD_SPEED CNT100    ;
2529:C P[1105]    
    :  P[1106] WELD_SPEED CNT100    ;
2530:L P[1107] WELD_SPEED CNT100    ;
2531:L P[1108] WELD_SPEED CNT100    ;
2532:L P[1109] WELD_SPEED CNT100    ;
2533:L P[1110] WELD_SPEED CNT100    ;
2534:C P[1111]    
    :  P[1112] WELD_SPEED CNT100    ;
2535:L P[1113] WELD_SPEED CNT100    ;
2536:C P[1114]    
    :  P[1115] WELD_SPEED CNT100    ;
2537:L P[1116] WELD_SPEED CNT100    ;
2538:C P[1117]    
    :  P[1118] WELD_SPEED CNT100    ;
2539:L P[1119] WELD_SPEED CNT100    ;
2540:L P[1120] WELD_SPEED CNT100    ;
2541:L P[1121] WELD_SPEED CNT100    ;
2542:C P[1122]    
    :  P[1123] WELD_SPEED FINE
    :  Arc End[6]    ;
2543:  Weave End ;
2544:  Track End ;
2545:   ;
2546:  !FR50l1911 ;
2547:   ;
2548:L P[1124] 500mm/sec FINE
    :  Arc Start[6]    ;
2549:  Weave Sine[6] ;
2550:  Track TAST[6] ;
2551:L P[1125] WELD_SPEED CNT100    ;
2552:C P[1126]    
    :  P[1127] WELD_SPEED CNT100    ;
2553:L P[1128] WELD_SPEED CNT100    ;
2554:C P[1129]    
    :  P[1130] WELD_SPEED FINE
    :  Arc End[6]    ;
2555:  Weave End ;
2556:  Track End ;
2557:   ;
1352:   ;
1353:L P[670] 1000mm/sec CNT25    ;
1354:   ;
1355:L P[671] 500mm/sec CNT25    ;
1356:   ;
1357:   ;
1358:  !FR50L1911 ;
1359:  IF R[15:TECH HOLD]=1913,CALL TECH_HOLD ;
1360:   ;
1361:   ;
1364:L P[679] 1000mm/sec CNT100    ;
1365:   ;
1366:J P[680] 50% CNT100    ;
1367:   ;
1368:J P[95] 50% CNT100    ;
1369:   ;
1370:J P[681] 50% CNT50    ;
1371:   ;
1372:  !HOME ;
1373:J P[94] 100% FINE    ;
1374:   ;
1375:  CALL T_CLEAN    ;
1376:   ;
1377:  !********POSITIONER MOVE******** ;
1378:J P[682] 90% CNT30    ;
1379:   ;
1380:J P[683] 50% CNT25    ;
1381:   ;
1382:J P[684] 50% CNT25    ;
1383:   ;
1384:L P[685] 1000mm/sec CNT25    ;
1385:   ;
1386:  !TO SKIP FRONT BUMPER WELDS ;
1387:  CALL ARC_DISABLE_FRONT_BMPR_LRG(0) ;
1388:   ;
1389:  !FR50L1920 ;
1390:  IF R[15:TECH HOLD]=1922,CALL TECH_HOLD ;
1391:   ;
1392:   ;
2559:   ;
2560:L P[1131] 1000mm/sec FINE
    :  Arc Start[6]    ;
2561:  Weave Sine[6] ;
2562:  Track TAST[6] ;
2563:L P[1132] WELD_SPEED FINE
    :  Arc End[6]    ;
2564:  Weave End ;
2565:  Track End ;
2566:   ;
1394:   ;
1395:L P[688] 1000mm/sec CNT100    ;
1396:   ;
1397:J P[689] 50% CNT25    ;
1398:   ;
1399:L P[690] 1000mm/sec CNT25    ;
1400:   ;
1401:   ;
1402:  !FR50L1930 ;
1403:  IF R[15:TECH HOLD]=1932,CALL TECH_HOLD ;
2568:   ;
2569:L P[1133] 1000mm/sec FINE
    :  Arc Start[6]    ;
2570:  Weave Sine[6] ;
2571:  Track TAST[6] ;
2572:L P[1134] WELD_SPEED CNT100    ;
2573:L P[1135] WELD_SPEED FINE
    :  Arc End[6]    ;
2574:  Weave End ;
2575:  Track End ;
2576:   ;
1405:   ;
1406:L P[694] 1000mm/sec CNT100    ;
1407:   ;
1408:L P[695] 1000mm/sec CNT100    ;
1409:   ;
1410:  !FR50L1940 ;
1411:  IF R[15:TECH HOLD]=1942,CALL TECH_HOLD ;
1412:   ;
1413:   ;
2578:   ;
2579:L P[1136] 1000mm/sec FINE
    :  Arc Start[6]    ;
2580:  Weave Sine[6] ;
2581:  Track TAST[6] ;
2582:L P[1137] WELD_SPEED FINE
    :  Arc End[6]    ;
2583:  Weave End ;
2584:  Track End ;
2585:   ;
1415:   ;
1416:  CALL ARC_DISABLE_FRONT_BMPR_LRG(1) ;
1417:   ;
1418:L P[698] 1000mm/sec CNT25    ;
1419:   ;
1420:J P[699] 70% CNT40    ;
1421:   ;
1422:  !********POSITIONER MOVE******** ;
1423:J P[700] 90% CNT30    ;
1424:   ;
1425:L P[701] 1000mm/sec CNT25    ;
1426:   ;
1427:   ;
1428:  CALL ARC_ENABLE_LH_LS(0) ;
1429:   ;
1430:  !FR50L1950 ;
1431:  IF R[15:TECH HOLD]=1952,CALL TECH_HOLD ;
1432:   ;
1433:   ;
1434:L P[702] 1000mm/sec CNT25    ;
1435:   ;
2587:   ;
2588:L P[1138] 1000mm/sec FINE
    :  Arc Start[6]    ;
2589:  Weave Sine[6] ;
2590:  Track TAST[6] ;
2591:L P[1139] WELD_SPEED CNT100    ;
2592:L P[1140] WELD_SPEED CNT100    ;
2593:C P[1141]    
    :  P[1142] WELD_SPEED FINE
    :  Arc End[6]    ;
2594:  Weave End ;
2595:  Track End ;
2596:   ;
1437:   ;
1438:  CALL ARC_ENABLE_LH_LS(1) ;
1439:   ;
1440:L P[708] 1000mm/sec CNT50    ;
1441:   ;
1442:J P[97] 50% CNT25    ;
1443:   ;
1444:J P[710] 50% CNT25    ;
1445:   ;
1446:  !HOME ;
1447:J P[98] 100% CNT50    ;
1448:   ;
1449:  !********POSITIONER MOVE******** ;
1450:J P[2] 85% CNT100    ;
1451:   ;
1452:J P[105] 50% CNT25    ;
1453:   ;
1454:L P[113] 1000mm/sec CNT25    ;
1455:   ;
1456:  CALL ARC_ENABLE_RH_LS(0) ;
1457:   ;
1458:  !FR50L1970 ;
1459:  IF R[15:TECH HOLD]=1972,CALL TECH_HOLD ;
1460:   ;
1461:   ;
2609:   ;
2610:L P[1148] 800mm/sec FINE
    :  Arc Start[6]    ;
2611:  Weave Sine[6] ;
2612:  Track TAST[6] ;
2613:L P[1149] WELD_SPEED CNT100    ;
2614:C P[1150]    
    :  P[1151] WELD_SPEED FINE
    :  Arc End[6]    ;
2615:  Track End ;
2616:  Weave End ;
2617:   ;
1463:   ;
1464:L P[564] 800mm/sec CNT5    ;
1465:   ;
1466:J P[571] 20% CNT40    ;
1467:   ;
1468:J P[639] 40% CNT25    ;
1469:   ;
1470:J P[640] 75% CNT50    ;
1471:   ;
1472:  !********POSITIONER MOVE******** ;
1473:J P[711] 85% CNT30    ;
1474:   ;
1475:J P[712] 50% CNT100    ;
1476:   ;
1477:L P[713] 1000mm/sec CNT25    ;
1478:   ;
1479:   ;
1480:  !FR50L1960 ;
1481:  IF R[15:TECH HOLD]=1962,CALL TECH_HOLD ;
1482:   ;
1483:   ;
1484:L P[714] 500mm/sec CNT25    ;
1485:   ;
2598:   ;
2599:L P[1143] 1000mm/sec FINE
    :  Arc Start[6]    ;
2600:  Weave Sine[6] ;
2601:  Track TAST[6] ;
2602:L P[1144] WELD_SPEED CNT100    ;
2603:L P[1145] WELD_SPEED CNT100    ;
2604:C P[1146]    
    :  P[1147] WELD_SPEED FINE
    :  Arc End[6]    ;
2605:  Weave End ;
2606:  Track End ;
2607:   ;
1487:   ;
1488:  CALL ARC_ENABLE_RH_LS(1) ;
1489:   ;
1490:L P[720] 500mm/sec CNT25    ;
1491:   ;
1492:L P[721] 1000mm/sec CNT100    ;
1493:   ;
1494:J P[99] 100% CNT30    ;
1495:   ;
1496:  !******** POSITIONER MOVE ******* ;
1497:J P[793] 85% CNT30    ;
1498:   ;
1499:J P[732] 75% CNT25    ;
1500:   ;
1501:L P[733] 1000mm/sec CNT100    ;
1502:   ;
1503:   ;
1504:  CALL ARC_ENABLE_LH_LS(0) ;
1505:   ;
1506:  !FR50L1980 ;
1507:  IF R[15:TECH HOLD]=1982,CALL TECH_HOLD ;
1508:   ;
1509:   ;
2619:   ;
2620:L P[1152] 800mm/sec FINE
    :  Arc Start[6]    ;
2621:  Weave Sine[6] ;
2622:  Track TAST[6] ;
2623:L P[1153] WELD_SPEED CNT100    ;
2624:C P[1154]    
    :  P[1155] WELD_SPEED FINE
    :  Arc End[6]    ;
2625:  Weave End ;
2626:  Track End ;
2627:   ;
2628:   ;
1511:   ;
1512:L P[738] 800mm/sec CNT20    ;
1513:   ;
1514:L P[739] 1000mm/sec CNT100    ;
1515:   ;
1516:J P[740] 100% CNT100    ;
1517:   ;
1518:  !HOME ;
1519:J P[104] 100% CNT30    ;
1520:   ;
1521:   ;
1522:  !********POSITIONER MOVE******** ;
1523:J P[722] 85% CNT30    ;
1524:   ;
1525:J P[106] 50% CNT90    ;
1526:   ;
1527:   ;
1528:  !FR50L2010 ;
1529:  IF R[15:TECH HOLD]=2012,CALL TECH_HOLD ;
1530:   ;
1531:L P[756] 1000mm/sec CNT25    ;
1532:   ;
2630:   ;
2631:L P[1162] 1000mm/sec FINE
    :  Arc Start[8]    ;
2632:  Weave Sine[8] ;
2633:L P[1163] WELD_SPEED CNT100    ;
2634:C P[1164]    
    :  P[1165] WELD_SPEED CNT100    ;
2635:L P[1166] WELD_SPEED CNT100    ;
2636:L P[1167] WELD_SPEED CNT100    ;
2637:L P[1168] WELD_SPEED CNT100    ;
2638:L P[1169] WELD_SPEED FINE
    :  Arc End[8]    ;
2639:  Weave End ;
2640:   ;
1534:   ;
1535:  CALL ARC_ENABLE_LH_LS(1) ;
1536:   ;
1537:L P[765] 1000mm/sec CNT50    ;
1538:   ;
1539:J P[109] 50% CNT100    ;
1540:   ;
1541:J P[108] 50% CNT70    ;
1542:   ;
1543:  !HOME ;
1544:J P[107] 100% CNT50    ;
1545:   ;
1546:   ;
1547:  !********POSITIONER MOVE******** ;
1548:J P[778] 90% CNT30    ;
1549:   ;
1550:J P[780] 50% CNT25    ;
1551:   ;
1552:  CALL ARC_ENABLE_RH_LS(0) ;
1553:   ;
1554:   ;
1555:  !FR50L2040 ;
1556:  IF R[15:TECH HOLD]=2042,CALL TECH_HOLD ;
1557:   ;
1558:   ;
1559:L P[781] 1000mm/sec CNT25    ;
1560:   ;
1563:  CALL ARC_ENABLE_RH_LS(1) ;
1564:   ;
1565:L P[790] 1000mm/sec CNT25    ;
1566:   ;
1567:J P[115] 50% CNT100    ;
1568:   ;
1569:  !HOME ;
1570:J P[114] 100% CNT10    ;
1571:  CALL HOME    ;
1572:   ;
1573:  !********POSITIONER MOVE******** ;
1574:  CALL LOAD_POS    ;
1575:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1048.285  mm,	Y = -1294.070  mm,	Z =   701.250  mm,
	W =     -.009 deg,	P =    41.863 deg,	R =  -150.867 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1163.054  mm,	Y = -1078.949  mm,	Z =  1751.193  mm,
	W =   -29.332 deg,	P =   -12.370 deg,	R =    13.560 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1209.555  mm,	Y = -1322.972  mm,	Z =   229.179  mm,
	W =     -.010 deg,	P =    41.970 deg,	R =  -145.526 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.050  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1269.879  mm,	Y = -1253.433  mm,	Z =    79.373  mm,
	W =    -1.683 deg,	P =    44.139 deg,	R =  -145.609 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1314.620  mm,	Y = -1313.270  mm,	Z =    82.919  mm,
	W =     1.498 deg,	P =    44.726 deg,	R =  -177.480 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1272.049  mm,	Y = -1319.952  mm,	Z =   170.275  mm,
	W =    -4.003 deg,	P =    44.859 deg,	R =  -166.486 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   909.960  mm,	Y =  -872.839  mm,	Z =   170.274  mm,
	W =      .297 deg,	P =    44.999 deg,	R =  -138.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   907.923  mm,	Y =  -828.465  mm,	Z =    78.992  mm,
	W =     -.234 deg,	P =    44.187 deg,	R =  -138.544 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1239.992  mm,	Y = -1224.689  mm,	Z =    81.310  mm,
	W =      .993 deg,	P =    44.648 deg,	R =  -147.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1163.391  mm,	Y = -1298.112  mm,	Z =   230.228  mm,
	W =     1.291 deg,	P =    44.986 deg,	R =  -138.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   860.828  mm,	Y =  -857.112  mm,	Z =   230.228  mm,
	W =     1.291 deg,	P =    44.986 deg,	R =  -138.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   882.027  mm,	Y =  -793.098  mm,	Z =    83.021  mm,
	W =    -1.714 deg,	P =    41.650 deg,	R =  -137.126 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   833.656  mm,	Y =  -734.388  mm,	Z =    84.663  mm,
	W =    -1.870 deg,	P =    41.238 deg,	R =  -117.739 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   643.854  mm,	Y = -1045.560  mm,	Z =   456.782  mm,
	W =     1.290 deg,	P =    44.986 deg,	R =  -124.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.972  mm,	Z =  2177.323  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1593.884  mm,	Y =    54.651  mm,	Z =  1425.564  mm,
	W =    40.560 deg,	P =     2.984 deg,	R =   -28.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2419.244  mm,	Y =   170.457  mm,	Z =   756.322  mm,
	W =    40.554 deg,	P =     2.977 deg,	R =   -28.823 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2486.244  mm,	Y =   320.457  mm,	Z =   579.520  mm,
	W =    40.554 deg,	P =     2.977 deg,	R =    -7.352 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2507.432  mm,	Y =   427.190  mm,	Z =   497.403  mm,
	W =    44.780 deg,	P =     5.017 deg,	R =    -1.188 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2456.052  mm,	Y =   425.683  mm,	Z =   498.220  mm,
	W =    45.076 deg,	P =     5.046 deg,	R =    -1.313 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2440.584  mm,	Y =   427.227  mm,	Z =   496.365  mm,
	W =    44.794 deg,	P =     5.016 deg,	R =    30.070 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2521.819  mm,	Y =   261.320  mm,	Z =   656.993  mm,
	W =    44.759 deg,	P =     5.240 deg,	R =    21.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2511.367  mm,	Y =  -251.873  mm,	Z =   577.119  mm,
	W =   -39.345 deg,	P =     9.413 deg,	R =    11.283 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2524.023  mm,	Y =  -405.057  mm,	Z =   494.826  mm,
	W =   -44.056 deg,	P =    10.309 deg,	R =     9.167 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2485.759  mm,	Y =  -405.522  mm,	Z =   494.261  mm,
	W =   -44.059 deg,	P =    10.320 deg,	R =     9.160 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2449.237  mm,	Y =  -403.696  mm,	Z =   493.863  mm,
	W =   -44.053 deg,	P =    10.305 deg,	R =   -21.685 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2549.787  mm,	Y =  -262.671  mm,	Z =   682.477  mm,
	W =   -44.052 deg,	P =    10.305 deg,	R =   -20.066 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2103.073  mm,	Y =   282.472  mm,	Z =   462.977  mm,
	W =    30.589 deg,	P =    34.770 deg,	R =    43.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2005.168  mm,	Y =   409.142  mm,	Z =   362.802  mm,
	W =    43.300 deg,	P =    13.762 deg,	R =    75.821 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2006.405  mm,	Y =   326.766  mm,	Z =   364.251  mm,
	W =    43.298 deg,	P =    13.766 deg,	R =    75.811 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2084.488  mm,	Y =   314.464  mm,	Z =   441.765  mm,
	W =    43.281 deg,	P =    13.759 deg,	R =    75.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.988  mm,	Y =  -331.633  mm,	Z =   441.764  mm,
	W =   -41.228 deg,	P =    19.917 deg,	R =   -68.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2011.652  mm,	Y =  -388.238  mm,	Z =   360.755  mm,
	W =   -41.218 deg,	P =    19.912 deg,	R =   -68.759 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.324  mm,	Y =  -307.165  mm,	Z =   359.779  mm,
	W =   -41.228 deg,	P =    19.919 deg,	R =   -68.761 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.807  mm,	Y =  -322.474  mm,	Z =   465.914  mm,
	W =   -41.228 deg,	P =    19.917 deg,	R =   -68.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2109.307  mm,	Y =    75.081  mm,	Z =   465.913  mm,
	W =     3.207 deg,	P =    44.910 deg,	R =   -85.462 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2681.306  mm,	Y =  -103.919  mm,	Z =  -438.087  mm,
	W =    -1.257 deg,	P =    33.277 deg,	R =   -88.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2748.326  mm,	Y =   -40.263  mm,	Z =  -588.425  mm,
	W =      .901 deg,	P =    44.837 deg,	R =   -88.538 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2772.290  mm,	Y =   -39.566  mm,	Z =  -589.780  mm,
	W =      .689 deg,	P =    45.118 deg,	R =   -88.678 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.993 deg,	J2=     0.000 deg
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2676.306  mm,	Y =  -106.919  mm,	Z =  -439.087  mm,
	W =    -1.257 deg,	P =    33.277 deg,	R =   -88.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2576.306  mm,	Y =    -6.919  mm,	Z =  -439.087  mm,
	W =    -1.257 deg,	P =    33.277 deg,	R =   -88.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2582.224  mm,	Y =   118.706  mm,	Z =  -400.809  mm,
	W =      .677 deg,	P =    39.803 deg,	R =    91.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2706.224  mm,	Y =   118.706  mm,	Z =  -483.809  mm,
	W =      .677 deg,	P =    39.803 deg,	R =    91.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2747.106  mm,	Y =    60.104  mm,	Z =  -590.117  mm,
	W =      .903 deg,	P =    44.988 deg,	R =    91.263 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2767.558  mm,	Y =    60.104  mm,	Z =  -590.117  mm,
	W =      .903 deg,	P =    44.988 deg,	R =    91.263 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2706.224  mm,	Y =   118.706  mm,	Z =  -483.809  mm,
	W =      .677 deg,	P =    39.803 deg,	R =    91.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2750.938  mm,	Y =   112.285  mm,	Z =  -474.250  mm,
	W =     -.713 deg,	P =    25.922 deg,	R =     -.241 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2778.081  mm,	Y =    53.285  mm,	Z =  -487.998  mm,
	W =     -.713 deg,	P =    25.922 deg,	R =     -.241 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.833  mm,	Y =    59.955  mm,	Z =  -590.785  mm,
	W =     -.292 deg,	P =    37.605 deg,	R =      .743 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.834  mm,	Y =   -36.401  mm,	Z =  -590.784  mm,
	W =     -.292 deg,	P =    37.605 deg,	R =      .743 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2774.367  mm,	Y =   -45.046  mm,	Z =  -326.584  mm,
	W =     -.063 deg,	P =     6.406 deg,	R =     -.319 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2318.510  mm,	Y =     4.126  mm,	Z =   836.416  mm,
	W =     -.063 deg,	P =     6.406 deg,	R =     -.319 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2651.064  mm,	Y =   274.146  mm,	Z =   596.222  mm,
	W =    40.438 deg,	P =    -1.956 deg,	R =     2.337 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2678.366  mm,	Y =   323.391  mm,	Z =   552.416  mm,
	W =    40.027 deg,	P =    -6.599 deg,	R =     7.835 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2749.821  mm,	Y =   428.939  mm,	Z =   464.667  mm,
	W =    44.528 deg,	P =    -7.216 deg,	R =     7.296 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2715.354  mm,	Y =   428.138  mm,	Z =   464.592  mm,
	W =    44.543 deg,	P =    -7.213 deg,	R =     7.268 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2698.437  mm,	Y =   269.508  mm,	Z =   599.906  mm,
	W =    44.541 deg,	P =    -7.214 deg,	R =     7.272 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2703.937  mm,	Y =  -282.492  mm,	Z =   602.906  mm,
	W =   -34.404 deg,	P =     5.822 deg,	R =     8.425 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2752.117  mm,	Y =  -403.442  mm,	Z =   463.818  mm,
	W =   -44.526 deg,	P =     7.212 deg,	R =     7.276 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2715.282  mm,	Y =  -404.077  mm,	Z =   462.987  mm,
	W =   -44.523 deg,	P =     7.209 deg,	R =     7.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2699.988  mm,	Y =  -282.600  mm,	Z =   597.231  mm,
	W =   -44.541 deg,	P =     7.214 deg,	R =     7.272 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2542.011  mm,	Y =    62.997  mm,	Z =   733.500  mm,
	W =      .337 deg,	P =   -50.731 deg,	R =     6.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2864.014  mm,	Y =   282.441  mm,	Z =   502.065  mm,
	W =   -15.171 deg,	P =   -43.175 deg,	R =    33.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2905.759  mm,	Y =   297.489  mm,	Z =   466.526  mm,
	W =   -14.926 deg,	P =   -42.904 deg,	R =    33.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.895  mm,	Y =   379.659  mm,	Z =   467.464  mm,
	W =    -8.441 deg,	P =   -43.927 deg,	R =    33.763 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.123  mm,	Y =   411.321  mm,	Z =   468.436  mm,
	W =    -2.983 deg,	P =   -44.252 deg,	R =    40.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2902.073  mm,	Y =   421.602  mm,	Z =   467.948  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    53.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2887.593  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2878.735  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2697.000  mm,	Y =   247.797  mm,	Z =   648.652  mm,
	W =    -2.629 deg,	P =   -43.936 deg,	R =    42.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   949.898  mm,	Y =    98.916  mm,	Z =  1480.357  mm,
	W =   -25.667 deg,	P =   -34.352 deg,	R =    34.753 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  2528.555  mm,	Y =   -65.615  mm,	Z =   892.718  mm,
	W =   -11.578 deg,	P =   -57.733 deg,	R =     8.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2860.056  mm,	Y =  -309.345  mm,	Z =   520.586  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2903.526  mm,	Y =  -269.076  mm,	Z =   466.198  mm,
	W =    14.881 deg,	P =   -42.512 deg,	R =   -27.203 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.858  mm,	Y =  -366.735  mm,	Z =   467.050  mm,
	W =     7.402 deg,	P =   -43.864 deg,	R =   -27.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.317  mm,	Y =  -381.646  mm,	Z =   467.885  mm,
	W =     7.404 deg,	P =   -43.863 deg,	R =   -33.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2895.908  mm,	Y =  -394.691  mm,	Z =   467.867  mm,
	W =    -1.094 deg,	P =   -44.445 deg,	R =   -50.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.996 deg,	J2=     0.000 deg
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2889.336  mm,	Y =  -400.456  mm,	Z =   464.138  mm,
	W =    -1.103 deg,	P =   -44.447 deg,	R =   -71.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2877.924  mm,	Y =  -402.031  mm,	Z =   463.256  mm,
	W =    -1.100 deg,	P =   -44.451 deg,	R =   -71.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2690.549  mm,	Y =  -310.856  mm,	Z =   600.282  mm,
	W =     1.613 deg,	P =   -43.868 deg,	R =   -40.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2542.011  mm,	Y =    62.997  mm,	Z =   733.500  mm,
	W =      .337 deg,	P =   -50.731 deg,	R =     6.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2864.014  mm,	Y =   282.441  mm,	Z =   502.065  mm,
	W =   -15.171 deg,	P =   -43.175 deg,	R =    33.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2172.059  mm,	Y =  -149.810  mm,	Z =  -336.475  mm,
	W =    -4.848 deg,	P =     4.640 deg,	R =    10.727 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   182.246 deg
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1780.474  mm,	Y =    29.584  mm,	Z =   -67.946  mm,
	W =    -4.424 deg,	P =     7.600 deg,	R =    11.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   182.246 deg
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2177.031  mm,	Y =    47.881  mm,	Z =  -336.554  mm,
	W =    -4.848 deg,	P =     4.640 deg,	R =    15.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   182.246 deg
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   355.995  mm,	Y =    -2.072  mm,	Z =  2424.048  mm,
	W =      .014 deg,	P =   -40.003 deg,	R =     -.008 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2298.943  mm,	Y =    15.028  mm,	Z =   995.580  mm,
	W =   -33.416 deg,	P =    -1.271 deg,	R =    34.407 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.010  mm,	Y =    -2.130  mm,	Z =  2424.082  mm,
	W =      .012 deg,	P =   -40.007 deg,	R =     -.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2701.500  mm,	Y =   248.797  mm,	Z =   650.852  mm,
	W =    -2.629 deg,	P =   -43.936 deg,	R =    42.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2542.011  mm,	Y =    62.997  mm,	Z =   733.500  mm,
	W =      .337 deg,	P =   -50.731 deg,	R =     6.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2864.014  mm,	Y =   282.441  mm,	Z =   502.065  mm,
	W =   -15.171 deg,	P =   -43.175 deg,	R =    33.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.016  mm,	Y =    -2.054  mm,	Z =  2424.089  mm,
	W =      .020 deg,	P =   -40.008 deg,	R =     -.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1917.622  mm,	Y =   283.121  mm,	Z =   189.834  mm,
	W =   -26.631 deg,	P =    72.567 deg,	R =   160.596 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2849.615  mm,	Y =  1373.219  mm,	Z =    -7.397  mm,
	W =      .303 deg,	P =     1.056 deg,	R =    25.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1913.400  mm,	Y = -1217.274  mm,	Z =  1258.765  mm,
	W =   -40.515 deg,	P =     2.084 deg,	R =   -24.296 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   355.994  mm,	Y =    -2.149  mm,	Z =  2424.037  mm,
	W =     -.001 deg,	P =   -40.002 deg,	R =     -.003 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1419.375  mm,	Y =   870.775  mm,	Z =  1903.281  mm,
	W =    32.261 deg,	P =   -18.474 deg,	R =    10.214 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2701.500  mm,	Y =   248.797  mm,	Z =   650.852  mm,
	W =    -2.629 deg,	P =   -43.936 deg,	R =    42.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2849.614  mm,	Y =  1359.434  mm,	Z =    -7.398  mm,
	W =      .171 deg,	P =     1.085 deg,	R =    18.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.056  mm,	Y =  -231.345  mm,	Z =   639.889  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2860.056  mm,	Y =  -309.345  mm,	Z =   520.586  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.007  mm,	Y =    -2.068  mm,	Z =  2424.055  mm,
	W =      .010 deg,	P =   -40.003 deg,	R =     -.004 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1166.553  mm,	Y = -1374.013  mm,	Z =  1522.225  mm,
	W =   -32.586 deg,	P =   -12.067 deg,	R =    17.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.765  mm,	Y = -1447.908  mm,	Z =  1189.179  mm,
	W =   -45.668 deg,	P =   -29.178 deg,	R =    61.340 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   347.064  mm,	Y =    -5.448  mm,	Z =  2436.079  mm,
	W =     -.019 deg,	P =   -39.997 deg,	R =      .013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1642.115  mm,	Y = -1225.593  mm,	Z =  1744.283  mm,
	W =   -30.785 deg,	P =   -19.925 deg,	R =    38.701 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.765  mm,	Y = -1447.908  mm,	Z =  1189.179  mm,
	W =   -45.668 deg,	P =   -29.178 deg,	R =    61.340 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2690.549  mm,	Y =  -310.856  mm,	Z =   600.282  mm,
	W =     1.613 deg,	P =   -43.868 deg,	R =   -40.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  2528.555  mm,	Y =   -65.615  mm,	Z =   892.718  mm,
	W =   -11.578 deg,	P =   -57.733 deg,	R =     8.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2860.056  mm,	Y =  -309.345  mm,	Z =   520.586  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.625  mm,	Y = -1470.562  mm,	Z =  1075.975  mm,
	W =   -42.854 deg,	P =   -15.295 deg,	R =    39.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2048.592  mm,	Y =  1142.742  mm,	Z =  1844.585  mm,
	W =    41.764 deg,	P =     3.536 deg,	R =   -26.914 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.004  mm,	Y =    -2.058  mm,	Z =  2424.066  mm,
	W =      .021 deg,	P =   -40.005 deg,	R =     -.012 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.050  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2690.549  mm,	Y =  -310.856  mm,	Z =   600.282  mm,
	W =     1.613 deg,	P =   -43.868 deg,	R =   -40.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2831.471  mm,	Y =  1359.434  mm,	Z =    -7.398  mm,
	W =      .171 deg,	P =     1.085 deg,	R =    18.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2671.361  mm,	Y =  -220.509  mm,	Z =   618.788  mm,
	W =    39.952 deg,	P =    49.905 deg,	R =  -159.452 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2675.436  mm,	Y =  -298.605  mm,	Z =   591.354  mm,
	W =    31.909 deg,	P =    33.590 deg,	R =  -130.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2831.470  mm,	Y =  1380.434  mm,	Z =    -7.398  mm,
	W =      .171 deg,	P =     1.085 deg,	R =    18.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1269.879  mm,	Y = -1253.433  mm,	Z =    79.373  mm,
	W =    -1.683 deg,	P =    44.139 deg,	R =  -145.609 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1314.620  mm,	Y = -1313.270  mm,	Z =    82.919  mm,
	W =     1.498 deg,	P =    44.726 deg,	R =  -177.480 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   907.923  mm,	Y =  -828.465  mm,	Z =    78.992  mm,
	W =     -.234 deg,	P =    44.187 deg,	R =  -138.544 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2781.851  mm,	Y =  -350.503  mm,	Z =   533.590  mm,
	W =    31.150 deg,	P =     5.212 deg,	R =   -83.519 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2698.335  mm,	Y =   256.194  mm,	Z =   573.763  mm,
	W =   -42.051 deg,	P =    32.739 deg,	R =   124.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1239.992  mm,	Y = -1224.689  mm,	Z =    81.310  mm,
	W =      .993 deg,	P =    44.648 deg,	R =  -147.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   882.027  mm,	Y =  -793.098  mm,	Z =    83.021  mm,
	W =    -1.714 deg,	P =    41.650 deg,	R =  -137.126 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   833.656  mm,	Y =  -734.388  mm,	Z =    84.663  mm,
	W =    -1.870 deg,	P =    41.238 deg,	R =  -117.739 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2507.432  mm,	Y =   427.190  mm,	Z =   497.403  mm,
	W =    44.780 deg,	P =     5.017 deg,	R =    -1.188 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2750.496  mm,	Y =   369.295  mm,	Z =   531.685  mm,
	W =   -32.204 deg,	P =    27.169 deg,	R =   115.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2433.364  mm,	Y =   -19.547  mm,	Z =   530.114  mm,
	W =    -7.526 deg,	P =    51.572 deg,	R =   125.549 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.092  mm,	Y =   128.072  mm,	Z =   485.282  mm,
	W =    14.025 deg,	P =    31.485 deg,	R =    29.572 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.950  mm,	Y =   181.788  mm,	Z =   449.993  mm,
	W =    35.022 deg,	P =    36.482 deg,	R =    50.220 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2456.052  mm,	Y =   425.683  mm,	Z =   498.220  mm,
	W =    45.076 deg,	P =     5.046 deg,	R =    -1.313 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2440.584  mm,	Y =   427.227  mm,	Z =   496.365  mm,
	W =    44.794 deg,	P =     5.016 deg,	R =    30.070 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1754.079  mm,	Y =   165.415  mm,	Z =   449.266  mm,
	W =    31.721 deg,	P =    33.769 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1754.079  mm,	Y =  -235.814  mm,	Z =   449.266  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -52.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2524.023  mm,	Y =  -405.057  mm,	Z =   494.826  mm,
	W =   -44.056 deg,	P =    10.309 deg,	R =     9.167 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2485.759  mm,	Y =  -405.522  mm,	Z =   494.261  mm,
	W =   -44.059 deg,	P =    10.320 deg,	R =     9.160 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1843.198  mm,	Y =  -173.825  mm,	Z =   537.934  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -52.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.054  mm,	Y =   -90.826  mm,	Z =  1125.220  mm,
	W =      .036 deg,	P =     1.106 deg,	R =     1.891 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.054  mm,	Y =  -390.825  mm,	Z =  1004.220  mm,
	W =     -.607 deg,	P =      .924 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2449.237  mm,	Y =  -403.696  mm,	Z =   493.863  mm,
	W =   -44.053 deg,	P =    10.305 deg,	R =   -21.685 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2005.168  mm,	Y =   409.142  mm,	Z =   362.802  mm,
	W =    43.300 deg,	P =    13.762 deg,	R =    75.821 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1816.054  mm,	Y =  -176.826  mm,	Z =  1084.220  mm,
	W =     -.607 deg,	P =      .924 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.054  mm,	Y =   376.174  mm,	Z =  1018.220  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.441 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2006.405  mm,	Y =   326.766  mm,	Z =   364.251  mm,
	W =    43.298 deg,	P =    13.766 deg,	R =    75.811 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2011.652  mm,	Y =  -388.238  mm,	Z =   360.755  mm,
	W =   -41.218 deg,	P =    19.912 deg,	R =   -68.759 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.054  mm,	Y =   173.895  mm,	Z =  1166.219  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.441 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.972  mm,	Z =  2177.323  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1841.244  mm,	Y =   574.028  mm,	Z =  1589.322  mm,
	W =     -.010 deg,	P =   -11.091 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2130.244  mm,	Y =   574.028  mm,	Z =  1472.322  mm,
	W =     -.010 deg,	P =   -11.091 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.324  mm,	Y =  -307.165  mm,	Z =   359.779  mm,
	W =   -41.228 deg,	P =    19.919 deg,	R =   -68.761 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2748.326  mm,	Y =   -40.263  mm,	Z =  -588.425  mm,
	W =      .901 deg,	P =    44.837 deg,	R =   -88.538 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2772.290  mm,	Y =   -39.566  mm,	Z =  -589.780  mm,
	W =      .689 deg,	P =    45.118 deg,	R =   -88.678 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.993 deg,	J2=     0.000 deg
};
P[159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.055  mm,	Y =   448.511  mm,	Z =  1378.272  mm,
	W =     0.000 deg,	P =    -1.567 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2174.054  mm,	Y =    17.763  mm,	Z =  1379.272  mm,
	W =     0.000 deg,	P =    -1.567 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2747.106  mm,	Y =    60.104  mm,	Z =  -590.117  mm,
	W =      .903 deg,	P =    44.988 deg,	R =    91.263 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2767.558  mm,	Y =    60.104  mm,	Z =  -590.117  mm,
	W =      .903 deg,	P =    44.988 deg,	R =    91.263 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2194.122  mm,	Y =  -401.237  mm,	Z =  1396.402  mm,
	W =     0.000 deg,	P =     1.835 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2176.122  mm,	Y =   354.763  mm,	Z =  1397.402  mm,
	W =     0.000 deg,	P =     1.835 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2745.545  mm,	Y =  -276.052  mm,	Z =   464.654  mm,
	W =    29.147 deg,	P =    30.453 deg,	R =  -132.266 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2745.001  mm,	Y =  -318.060  mm,	Z =   465.700  mm,
	W =    29.459 deg,	P =    30.698 deg,	R =  -132.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2176.122  mm,	Y =    15.763  mm,	Z =  1427.402  mm,
	W =     0.000 deg,	P =    -4.591 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2176.122  mm,	Y =  -553.165  mm,	Z =  1427.402  mm,
	W =     0.000 deg,	P =    -4.591 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[169]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2759.258  mm,	Y =  -343.755  mm,	Z =   464.873  mm,
	W =    32.708 deg,	P =    26.756 deg,	R =  -103.211 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[170]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2781.851  mm,	Y =  -350.503  mm,	Z =   466.805  mm,
	W =    32.871 deg,	P =    19.630 deg,	R =   -83.146 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[171]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2740.523  mm,	Y =   300.010  mm,	Z =   465.528  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[172]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2174.639  mm,	Y =  -639.399  mm,	Z =  1514.172  mm,
	W =     0.000 deg,	P =   -23.113 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[173]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1929.795  mm,	Y =  -639.399  mm,	Z =  1514.172  mm,
	W =     0.000 deg,	P =   -23.113 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[174]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.050  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[175]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.972  mm,	Z =  1061.322  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =   -90.656 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[176]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2167.744  mm,	Y =   245.457  mm,	Z =   371.894  mm,
	W =    34.980 deg,	P =    30.342 deg,	R =   -11.521 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[177]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2741.022  mm,	Y =   348.224  mm,	Z =   465.529  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[178]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2758.912  mm,	Y =   371.174  mm,	Z =   466.650  mm,
	W =   -32.204 deg,	P =    27.169 deg,	R =   100.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[179]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2774.997  mm,	Y =   375.066  mm,	Z =   468.013  mm,
	W =   -28.646 deg,	P =    22.121 deg,	R =    94.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[180]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.284  mm,	Y =  -228.674  mm,	Z =   362.649  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[181]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2189.474  mm,	Y =   383.790  mm,	Z =   296.220  mm,
	W =    47.745 deg,	P =     8.599 deg,	R =   -35.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[182]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2150.796  mm,	Y =    51.228  mm,	Z =   379.826  mm,
	W =     9.396 deg,	P =    -3.028 deg,	R =   -24.284 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[183]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.147  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[184]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2161.838  mm,	Y =  -354.344  mm,	Z =   373.103  mm,
	W =   -42.503 deg,	P =    -2.383 deg,	R =   -32.742 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[185]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.070  mm,	Y =  -158.103  mm,	Z =   362.293  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[186]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.877  mm,	Y =   251.121  mm,	Z =   363.698  mm,
	W =    31.331 deg,	P =    33.498 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[187]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.020  mm,	Y =   178.121  mm,	Z =   363.698  mm,
	W =    31.331 deg,	P =    33.498 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[188]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1808.570  mm,	Y =  -390.427  mm,	Z =   832.270  mm,
	W =     -.610 deg,	P =      .928 deg,	R =   -33.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[189]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2149.286  mm,	Y =  -279.133  mm,	Z =   456.472  mm,
	W =   -44.186 deg,	P =    -9.562 deg,	R =     3.909 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[190]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1982.724  mm,	Y =   -25.313  mm,	Z =   235.548  mm,
	W =    21.889 deg,	P =    35.316 deg,	R =  -145.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[191]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2182.725  mm,	Y =  -216.312  mm,	Z =    -6.136  mm,
	W =    32.857 deg,	P =    25.665 deg,	R =  -124.570 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[192]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.828  mm,	Y =  -159.968  mm,	Z =   830.736  mm,
	W =     -.607 deg,	P =      .924 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[193]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1804.560  mm,	Y =   408.326  mm,	Z =   829.592  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[194]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1806.042  mm,	Y =   179.612  mm,	Z =   828.163  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[195]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2185.038  mm,	Y =   -47.631  mm,	Z =   -82.880  mm,
	W =     1.218 deg,	P =    44.987 deg,	R =  -147.433 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[196]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2185.038  mm,	Y =   213.369  mm,	Z =   -82.880  mm,
	W =   -26.253 deg,	P =    37.378 deg,	R =   139.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[197]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2178.657  mm,	Y =   659.349  mm,	Z =  1322.478  mm,
	W =     -.151 deg,	P =     4.190 deg,	R =     -.119 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
};
P[198]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.570  mm,	Y =   501.982  mm,	Z =  1322.098  mm,
	W =      .050 deg,	P =     4.374 deg,	R =     -.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.995 deg,	J2=     0.000 deg
};
P[199]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.470  mm,	Y =   459.845  mm,	Z =  1322.928  mm,
	W =   -10.985 deg,	P =     4.746 deg,	R =     -.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.999 deg,	J2=     0.000 deg
};
P[200]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2149.428  mm,	Y =    61.346  mm,	Z =   -40.697  mm,
	W =    14.710 deg,	P =    43.024 deg,	R =   172.922 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[201]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1379.179  mm,	Y =     5.048  mm,	Z =   295.119  mm,
	W =    -2.053 deg,	P =    45.296 deg,	R =  -168.776 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[202]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1381.432  mm,	Y =  -574.038  mm,	Z =   156.436  mm,
	W =    42.351 deg,	P =    16.902 deg,	R =  -106.783 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[203]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2167.431  mm,	Y =    27.132  mm,	Z =  1339.879  mm,
	W =     -.713 deg,	P =     8.623 deg,	R =     -.119 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
};
P[204]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2168.446  mm,	Y =  -166.967  mm,	Z =  1339.463  mm,
	W =     -.016 deg,	P =    10.106 deg,	R =      .980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[205]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2169.557  mm,	Y =  -389.532  mm,	Z =  1339.244  mm,
	W =     -.928 deg,	P =     7.504 deg,	R =     -.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[206]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1351.612  mm,	Y =  -644.118  mm,	Z =   196.361  mm,
	W =    42.489 deg,	P =    16.481 deg,	R =  -107.209 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[207]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1351.612  mm,	Y =     1.774  mm,	Z =   196.362  mm,
	W =     -.786 deg,	P =    44.995 deg,	R =   178.888 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[208]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2165.947  mm,	Y =   412.114  mm,	Z =  1341.826  mm,
	W =      .150 deg,	P =     6.214 deg,	R =      .016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[209]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2167.028  mm,	Y =   193.246  mm,	Z =  1340.156  mm,
	W =      .990 deg,	P =     7.423 deg,	R =      .117 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[210]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1404.034  mm,	Y =  -379.314  mm,	Z =   119.254  mm,
	W =    18.566 deg,	P =    41.762 deg,	R =  -153.239 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[211]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1404.034  mm,	Y =   331.497  mm,	Z =   119.254  mm,
	W =   -20.958 deg,	P =    40.782 deg,	R =   149.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[212]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2168.042  mm,	Y =    21.221  mm,	Z =  1339.306  mm,
	W =    -1.723 deg,	P =     8.124 deg,	R =     2.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[213]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2183.748  mm,	Y =  -629.768  mm,	Z =  1321.915  mm,
	W =      .004 deg,	P =     8.094 deg,	R =      .009 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[214]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1267.764  mm,	Y =    -5.079  mm,	Z =   257.741  mm,
	W =     -.786 deg,	P =    44.995 deg,	R =   178.888 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[215]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1267.763  mm,	Y =   567.064  mm,	Z =   257.741  mm,
	W =    24.666 deg,	P =    38.913 deg,	R =  -143.830 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[216]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2183.088  mm,	Y =  -436.975  mm,	Z =  1322.259  mm,
	W =      .023 deg,	P =     7.896 deg,	R =     -.019 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[217]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2182.831  mm,	Y =  -431.800  mm,	Z =  1321.998  mm,
	W =     8.588 deg,	P =     5.688 deg,	R =      .847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[218]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2136.258  mm,	Y =   423.750  mm,	Z =   282.790  mm,
	W =    39.277 deg,	P =    23.849 deg,	R =     9.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[219]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1302.181  mm,	Y =   638.659  mm,	Z =   248.465  mm,
	W =    31.136 deg,	P =    34.298 deg,	R =  -133.008 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[220]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.272  mm,	Y =   472.511  mm,	Z =   672.833  mm,
	W =    32.440 deg,	P =    45.276 deg,	R =   -70.624 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[221]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.097  mm,	Y =   424.295  mm,	Z =   280.001  mm,
	W =    39.267 deg,	P =    23.856 deg,	R =   -24.748 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[222]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2191.038  mm,	Y =   425.038  mm,	Z =   280.145  mm,
	W =    39.348 deg,	P =    23.574 deg,	R =   -24.954 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[223]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2201.796  mm,	Y =   419.697  mm,	Z =   288.204  mm,
	W =    48.341 deg,	P =     9.057 deg,	R =   -36.927 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[224]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.654  mm,	Y =  1128.978  mm,	Z =   266.859  mm,
	W =   -16.763 deg,	P =    16.253 deg,	R =    47.184 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[225]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1547.891  mm,	Y =   -77.836  mm,	Z =    80.464  mm,
	W =     5.459 deg,	P =    -9.689 deg,	R =   -27.215 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[226]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.458  mm,	Y =  -402.882  mm,	Z =   276.210  mm,
	W =   -42.888 deg,	P =    -2.088 deg,	R =   -37.991 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[227]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2146.996  mm,	Y =  -401.034  mm,	Z =   278.267  mm,
	W =   -42.902 deg,	P =    -2.083 deg,	R =    -3.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[228]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2201.068  mm,	Y =  -403.642  mm,	Z =   276.795  mm,
	W =   -42.889 deg,	P =    -2.090 deg,	R =    -3.521 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[229]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2208.911  mm,	Y =  -404.418  mm,	Z =   278.857  mm,
	W =   -37.665 deg,	P =   -22.310 deg,	R =     8.929 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[230]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.812  mm,	Y =  -160.809  mm,	Z =   231.788  mm,
	W =     9.627 deg,	P =   -18.262 deg,	R =   -28.428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[231]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.972  mm,	Z =  2177.323  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[232]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1395.243  mm,	Y =  -108.972  mm,	Z =   429.036  mm,
	W =    41.026 deg,	P =    20.397 deg,	R =     1.960 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[233]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   355.971  mm,	Y =    -2.142  mm,	Z =  2424.070  mm,
	W =     0.000 deg,	P =   -40.006 deg,	R =     -.004 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=     0.000 deg
};
P[234]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2525.957  mm,	Y =  -153.860  mm,	Z =   104.179  mm,
	W =    36.503 deg,	P =    18.679 deg,	R =   -19.970 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[235]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2443.957  mm,	Y =  -153.860  mm,	Z =    41.179  mm,
	W =    36.503 deg,	P =    18.679 deg,	R =    32.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[236]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2235.739  mm,	Y =  -233.047  mm,	Z =  -188.744  mm,
	W =    34.819 deg,	P =    27.070 deg,	R =  -123.447 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[237]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2233.830  mm,	Y =    -8.684  mm,	Z =  -186.712  mm,
	W =    34.826 deg,	P =    27.081 deg,	R =  -123.458 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[238]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2234.912  mm,	Y =    11.625  mm,	Z =  -185.523  mm,
	W =    33.015 deg,	P =    26.717 deg,	R =   -93.423 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[239]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2233.192  mm,	Y =   249.052  mm,	Z =  -187.235  mm,
	W =   -26.756 deg,	P =    37.337 deg,	R =   139.556 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[240]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2443.958  mm,	Y =  -141.290  mm,	Z =    41.179  mm,
	W =    36.502 deg,	P =    18.679 deg,	R =    44.252 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[241]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2525.957  mm,	Y =  -153.860  mm,	Z =   104.179  mm,
	W =    36.503 deg,	P =    18.679 deg,	R =   -19.970 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[242]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1638.942  mm,	Y =  -220.932  mm,	Z =   176.092  mm,
	W =    39.659 deg,	P =    20.135 deg,	R =   -30.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[243]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1677.355  mm,	Y =  -241.647  mm,	Z =    77.021  mm,
	W =    39.659 deg,	P =    20.135 deg,	R =   -14.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[244]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2237.745  mm,	Y =    33.563  mm,	Z =  -188.748  mm,
	W =   -26.755 deg,	P =    37.337 deg,	R =   139.561 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[245]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2232.730  mm,	Y =     3.648  mm,	Z =  -186.256  mm,
	W =   -20.117 deg,	P =    35.519 deg,	R =   111.507 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[246]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1487.823  mm,	Y =  -637.223  mm,	Z =     4.887  mm,
	W =    42.306 deg,	P =    16.820 deg,	R =  -100.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[247]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1488.724  mm,	Y =  -603.338  mm,	Z =     5.170  mm,
	W =    42.315 deg,	P =    16.837 deg,	R =  -100.936 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[248]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1961.011  mm,	Y =  -250.911  mm,	Z =    63.963  mm,
	W =    38.570 deg,	P =    15.643 deg,	R =   -37.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[249]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2227.011  mm,	Y =   -35.911  mm,	Z =    63.963  mm,
	W =    41.142 deg,	P =     1.290 deg,	R =    -4.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[250]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1485.624  mm,	Y =  -440.808  mm,	Z =     7.456  mm,
	W =    42.350 deg,	P =    16.907 deg,	R =   -86.948 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[251]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1462.579  mm,	Y =    13.411  mm,	Z =     4.510  mm,
	W =      .947 deg,	P =    42.922 deg,	R =   177.955 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[252]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2193.552  mm,	Y =   -35.911  mm,	Z =    63.963  mm,
	W =    41.142 deg,	P =     1.290 deg,	R =    -4.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[253]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1463.463  mm,	Y =  -315.428  mm,	Z =     5.740  mm,
	W =    -1.380 deg,	P =    43.931 deg,	R =   175.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[254]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1462.309  mm,	Y =  -379.397  mm,	Z =     6.892  mm,
	W =     5.165 deg,	P =    43.293 deg,	R =  -179.580 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[255]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1459.882  mm,	Y =   397.906  mm,	Z =     4.916  mm,
	W =   -18.718 deg,	P =    37.733 deg,	R =   149.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[256]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2104.646  mm,	Y =   -14.305  mm,	Z =    58.276  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[257]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.720  mm,	Y =    13.774  mm,	Z =     7.353  mm,
	W =      .274 deg,	P =    41.497 deg,	R =   174.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[258]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1483.448  mm,	Y =   656.175  mm,	Z =    14.251  mm,
	W =    29.504 deg,	P =    31.493 deg,	R =  -136.893 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[259]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1482.620  mm,	Y =   468.746  mm,	Z =    12.817  mm,
	W =    40.718 deg,	P =    18.744 deg,	R =  -126.943 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[260]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2104.646  mm,	Y =   -54.652  mm,	Z =   175.276  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[261]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1705.582  mm,	Y =   -41.652  mm,	Z =   107.776  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    11.940 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[262]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1482.535  mm,	Y =   458.132  mm,	Z =    12.780  mm,
	W =    41.200 deg,	P =    17.928 deg,	R =  -126.514 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[263]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.201  mm,	Y =   -70.461  mm,	Z =  -434.552  mm,
	W =     -.954 deg,	P =    22.924 deg,	R =      .993 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[264]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2191.595  mm,	Y =  -150.581  mm,	Z =  -435.156  mm,
	W =     -.956 deg,	P =    22.925 deg,	R =    22.595 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[265]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1700.208  mm,	Y =   -40.379  mm,	Z =   119.303  mm,
	W =    53.172 deg,	P =     1.611 deg,	R =    24.177 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[266]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1531.039  mm,	Y =   -74.045  mm,	Z =   -60.070  mm,
	W =     1.185 deg,	P =   -23.204 deg,	R =    -8.287 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[267]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1531.995  mm,	Y =   -94.374  mm,	Z =   -60.791  mm,
	W =     1.176 deg,	P =   -23.207 deg,	R =    -8.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[268]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1532.795  mm,	Y =  -150.585  mm,	Z =   -61.433  mm,
	W =     1.185 deg,	P =   -23.200 deg,	R =    -8.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[269]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1902.999  mm,	Y =   -46.261  mm,	Z =   175.051  mm,
	W =    52.365 deg,	P =    -4.474 deg,	R =   -14.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[270]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1161.856  mm,	Y =   -92.689  mm,	Z =   175.051  mm,
	W =    38.130 deg,	P =    -5.720 deg,	R =    -4.359 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[271]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1353.427  mm,	Y =   457.025  mm,	Z =   417.051  mm,
	W =    -2.563 deg,	P =     5.520 deg,	R =     2.347 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[272]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1530.428  mm,	Y =   623.025  mm,	Z =   175.051  mm,
	W =   -41.304 deg,	P =     5.776 deg,	R =    -1.616 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[273]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2221.857  mm,	Y =   134.025  mm,	Z =   133.501  mm,
	W =   -39.814 deg,	P =   -13.337 deg,	R =   -23.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[274]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1532.399  mm,	Y =  -119.775  mm,	Z =   -61.224  mm,
	W =     1.182 deg,	P =   -23.203 deg,	R =    -8.289 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[275]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2377.991  mm,	Y =   -75.118  mm,	Z =   -21.967  mm,
	W =    40.518 deg,	P =    40.131 deg,	R =    23.486 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[276]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2162.665  mm,	Y =   110.242  mm,	Z =    59.358  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[277]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2373.865  mm,	Y =   -94.159  mm,	Z =   -21.772  mm,
	W =    40.517 deg,	P =    40.133 deg,	R =    54.911 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[278]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2374.227  mm,	Y =  -129.954  mm,	Z =   -20.479  mm,
	W =    40.518 deg,	P =    40.131 deg,	R =    54.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[279]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2375.496  mm,	Y =  -148.718  mm,	Z =   -20.852  mm,
	W =    39.922 deg,	P =    39.704 deg,	R =    81.922 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[280]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2200.817  mm,	Y =   103.879  mm,	Z =    45.598  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[281]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1991.025  mm,	Y =   103.879  mm,	Z =    45.598  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[282]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1673.244  mm,	Y =  -186.849  mm,	Z =   -12.723  mm,
	W =    38.562 deg,	P =    15.652 deg,	R =    22.711 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[283]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.281  mm,	Y =  -187.144  mm,	Z =   -10.891  mm,
	W =    38.570 deg,	P =    15.647 deg,	R =   -27.578 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[284]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.359  mm,	Y =  -186.916  mm,	Z =   -11.179  mm,
	W =    41.524 deg,	P =    13.967 deg,	R =   -26.862 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[285]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.451  mm,	Y =   114.405  mm,	Z =   133.369  mm,
	W =   -44.606 deg,	P =    -6.682 deg,	R =     6.426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[286]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2121.394  mm,	Y =   114.404  mm,	Z =   147.283  mm,
	W =   -41.424 deg,	P =   -19.434 deg,	R =   -97.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[287]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2080.531  mm,	Y =    -7.596  mm,	Z =    92.282  mm,
	W =   -41.424 deg,	P =   -19.434 deg,	R =   -97.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[288]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2000.913  mm,	Y =  -186.696  mm,	Z =   -10.347  mm,
	W =    38.528 deg,	P =    15.652 deg,	R =   -66.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[289]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.198  mm,	Y =    55.160  mm,	Z =     5.970  mm,
	W =    44.926 deg,	P =     3.034 deg,	R =    -3.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[290]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2080.530  mm,	Y =    -7.596  mm,	Z =    92.282  mm,
	W =   -41.424 deg,	P =   -19.434 deg,	R =   -97.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[291]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2080.530  mm,	Y =   309.547  mm,	Z =   503.711  mm,
	W =    -3.830 deg,	P =   -10.878 deg,	R =   -17.892 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[292]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2670.559  mm,	Y =   209.547  mm,	Z =   314.711  mm,
	W =    -3.830 deg,	P =   -10.878 deg,	R =   -17.892 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[293]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.476  mm,	Y =    55.786  mm,	Z =     6.601  mm,
	W =    44.923 deg,	P =     3.031 deg,	R =    -3.038 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[294]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.017  mm,	Y =    55.089  mm,	Z =    -2.879  mm,
	W =    44.921 deg,	P =     3.028 deg,	R =    -3.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[295]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2649.168  mm,	Y =   166.049  mm,	Z =   301.659  mm,
	W =    13.374 deg,	P =   -35.036 deg,	R =   -22.495 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[296]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2349.168  mm,	Y =   281.049  mm,	Z =   301.659  mm,
	W =     -.090 deg,	P =    -5.498 deg,	R =      .950 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[297]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.116  mm,	Y =    54.430  mm,	Z =    -1.611  mm,
	W =    44.924 deg,	P =     3.032 deg,	R =    -3.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[298]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.246  mm,	Y =    53.876  mm,	Z =     -.373  mm,
	W =    44.919 deg,	P =     3.026 deg,	R =   -14.186 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[299]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2703.820  mm,	Y =   252.204  mm,	Z =   224.219  mm,
	W =     -.140 deg,	P =    -8.465 deg,	R =      .956 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[300]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2289.178  mm,	Y =   268.490  mm,	Z =   224.220  mm,
	W =     -.140 deg,	P =    -8.465 deg,	R =      .956 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[301]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1843.464  mm,	Y =   431.347  mm,	Z =   609.934  mm,
	W =     -.140 deg,	P =    -8.465 deg,	R =   -19.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[302]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1843.464  mm,	Y =   431.347  mm,	Z =   378.506  mm,
	W =    39.110 deg,	P =     2.688 deg,	R =   -82.797 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[303]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2020.464  mm,	Y =   107.456  mm,	Z =   101.505  mm,
	W =    39.110 deg,	P =     2.688 deg,	R =   -82.797 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[304]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2118.129  mm,	Y =    53.365  mm,	Z =   -11.331  mm,
	W =    44.928 deg,	P =     3.034 deg,	R =     5.574 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[305]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2025.224  mm,	Y =    53.089  mm,	Z =   -11.323  mm,
	W =    44.928 deg,	P =     3.031 deg,	R =     5.581 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[306]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.630  mm,	Y =    53.107  mm,	Z =   -11.366  mm,
	W =    44.931 deg,	P =     3.043 deg,	R =    34.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[307]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2012.815  mm,	Y =   114.104  mm,	Z =    90.700  mm,
	W =    40.362 deg,	P =    21.867 deg,	R =  -139.995 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[308]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1644.243  mm,	Y =   456.961  mm,	Z =    90.700  mm,
	W =   -42.959 deg,	P =    14.926 deg,	R =    16.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[309]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1667.302  mm,	Y =   122.961  mm,	Z =    90.700  mm,
	W =   -42.959 deg,	P =    14.926 deg,	R =    16.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[310]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1799.188  mm,	Y =    54.902  mm,	Z =    56.394  mm,
	W =    50.324 deg,	P =     2.539 deg,	R =    12.040 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[311]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1690.022  mm,	Y =    51.584  mm,	Z =    58.827  mm,
	W =    50.328 deg,	P =     2.543 deg,	R =    12.043 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[312]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.210  mm,	Y =    49.772  mm,	Z =    60.285  mm,
	W =    55.797 deg,	P =      .901 deg,	R =    26.090 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[313]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.347  mm,	Y =    53.166  mm,	Z =    58.863  mm,
	W =    52.751 deg,	P =    -4.416 deg,	R =     3.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[314]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.650  mm,	Y =    55.105  mm,	Z =    55.758  mm,
	W =    53.721 deg,	P =    -4.476 deg,	R =     3.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[315]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2000.056  mm,	Y =    51.972  mm,	Z =    58.502  mm,
	W =    52.868 deg,	P =   -12.268 deg,	R =   -23.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[316]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.180  mm,	Y =    66.099  mm,	Z =    -1.785  mm,
	W =   -44.609 deg,	P =    -6.680 deg,	R =    -6.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[317]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2266.839  mm,	Y =    67.302  mm,	Z =     -.064  mm,
	W =   -44.609 deg,	P =    -6.676 deg,	R =    -6.726 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[318]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2139.677  mm,	Y =    66.559  mm,	Z =    -8.353  mm,
	W =   -44.605 deg,	P =    -6.678 deg,	R =    -6.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[319]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.201  mm,	Y =    67.923  mm,	Z =    -7.410  mm,
	W =   -44.606 deg,	P =    -6.676 deg,	R =    -6.723 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[320]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2213.314  mm,	Y =    66.559  mm,	Z =    -7.780  mm,
	W =   -44.607 deg,	P =    -6.680 deg,	R =     6.845 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[321]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1385.322  mm,	Y =    99.987  mm,	Z =    81.524  mm,
	W =   -41.156 deg,	P =    19.919 deg,	R =    36.091 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[322]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1773.758  mm,	Y =  1132.590  mm,	Z =   293.935  mm,
	W =   -17.776 deg,	P =    15.458 deg,	R =    47.254 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[323]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2772.800  mm,	Y =  1353.842  mm,	Z =    52.554  mm,
	W =      .247 deg,	P =     2.267 deg,	R =    25.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[324]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2849.615  mm,	Y =  1373.219  mm,	Z =     2.246  mm,
	W =      .303 deg,	P =     1.056 deg,	R =    25.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[325]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[326]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1109.146  mm,	Y =  -695.879  mm,	Z =  1059.006  mm,
	W =   -45.665 deg,	P =    -3.656 deg,	R =    28.137 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[327]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2182.795  mm,	Y =   -54.409  mm,	Z =  -297.620  mm,
	W =    -4.848 deg,	P =     4.640 deg,	R =    10.727 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   182.246 deg
};
P[328]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2785.854  mm,	Y =  1360.233  mm,	Z =    51.016  mm,
	W =      .260 deg,	P =     1.052 deg,	R =    25.457 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[329]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1254.943  mm,	Y =   301.685  mm,	Z =   234.946  mm,
	W =   -61.903 deg,	P =    47.077 deg,	R =    68.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[330]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.353  mm,	Y =   209.744  mm,	Z =   328.977  mm,
	W =   -44.718 deg,	P =   -17.447 deg,	R =    -6.431 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[331]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1217.104  mm,	Y =  -169.780  mm,	Z =   187.729  mm,
	W =   -34.745 deg,	P =    30.619 deg,	R =   119.475 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[332]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1573.104  mm,	Y =  -218.075  mm,	Z =    59.729  mm,
	W =   -34.744 deg,	P =    30.618 deg,	R =   128.397 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[333]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1993.335  mm,	Y =    66.632  mm,	Z =   -18.063  mm,
	W =   -44.598 deg,	P =    -6.687 deg,	R =    -3.028 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[334]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.177  mm,	Y =    68.196  mm,	Z =   -16.279  mm,
	W =   -44.610 deg,	P =    -6.676 deg,	R =    -3.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[335]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1459.008  mm,	Y =   -74.800  mm,	Z =   199.820  mm,
	W =   -34.742 deg,	P =    30.617 deg,	R =   153.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[336]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1319.009  mm,	Y =  -291.799  mm,	Z =   199.820  mm,
	W =    44.863 deg,	P =    -3.871 deg,	R =     -.364 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[337]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2390.009  mm,	Y =  -240.799  mm,	Z =    52.820  mm,
	W =    42.099 deg,	P =    -2.376 deg,	R =   -15.667 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[338]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.669  mm,	Y =    68.079  mm,	Z =   -12.688  mm,
	W =   -42.116 deg,	P =   -17.568 deg,	R =    21.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[339]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.751  mm,	Y =   102.079  mm,	Z =   -12.082  mm,
	W =   -45.253 deg,	P =    -8.453 deg,	R =  -108.141 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[340]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2502.492  mm,	Y =  -211.230  mm,	Z =    67.973  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[341]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2329.524  mm,	Y =  -211.230  mm,	Z =    67.973  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[342]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2329.524  mm,	Y =  -124.230  mm,	Z =    67.973  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[343]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.223  mm,	Y =  -122.001  mm,	Z =   -48.481  mm,
	W =   -45.248 deg,	P =    -8.452 deg,	R =   -86.326 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[344]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.457  mm,	Y =   175.047  mm,	Z =   183.225  mm,
	W =     2.780 deg,	P =    -7.669 deg,	R =   -18.458 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[345]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2866.579  mm,	Y =   178.189  mm,	Z =   188.861  mm,
	W =     9.502 deg,	P =   -26.582 deg,	R =   -20.495 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   135.000 deg
};
P[346]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2329.524  mm,	Y =  -124.230  mm,	Z =    67.973  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[347]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1069.524  mm,	Y =  -124.230  mm,	Z =   124.973  mm,
	W =    46.380 deg,	P =     2.235 deg,	R =    13.463 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[348]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1069.524  mm,	Y =  -124.230  mm,	Z =  1102.115  mm,
	W =    23.155 deg,	P =    41.431 deg,	R =   -41.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[349]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.972  mm,	Z =  2177.323  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[350]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.971  mm,	Z =  1249.465  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -65.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[351]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.600  mm,	Y =   479.028  mm,	Z =   916.465  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -65.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[352]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.254  mm,	Y =   277.346  mm,	Z =    92.106  mm,
	W =     1.846 deg,	P =     -.179 deg,	R =      .947 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[353]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.953  mm,	Y =   278.563  mm,	Z =    92.649  mm,
	W =     1.723 deg,	P =    -7.244 deg,	R =      .958 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[354]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2079.674  mm,	Y =   119.684  mm,	Z =   -13.503  mm,
	W =    37.938 deg,	P =    17.393 deg,	R =   -97.677 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[355]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2107.541  mm,	Y =    91.774  mm,	Z =   -12.232  mm,
	W =    37.933 deg,	P =    17.391 deg,	R =  -104.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[356]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2123.963  mm,	Y =    74.328  mm,	Z =    -9.686  mm,
	W =    40.829 deg,	P =    19.041 deg,	R =  -124.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[357]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1688.578  mm,	Y =    68.430  mm,	Z =   -18.303  mm,
	W =   -42.811 deg,	P =    15.445 deg,	R =    16.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[358]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1651.189  mm,	Y =    68.384  mm,	Z =   -18.170  mm,
	W =   -42.811 deg,	P =    15.445 deg,	R =    16.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[359]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1641.486  mm,	Y =    69.984  mm,	Z =   -18.017  mm,
	W =   -42.802 deg,	P =    15.441 deg,	R =    -7.970 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[360]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.637  mm,	Y =   898.337  mm,	Z =  1001.782  mm,
	W =   -20.210 deg,	P =   -41.106 deg,	R =     1.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[361]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.137  mm,	Y =   345.195  mm,	Z =   941.171  mm,
	W =    42.022 deg,	P =   -15.891 deg,	R =   -33.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[362]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.303  mm,	Y =    72.574  mm,	Z =   -19.890  mm,
	W =   -38.580 deg,	P =    25.212 deg,	R =   -16.906 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[363]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.511  mm,	Y =   100.945  mm,	Z =   -20.220  mm,
	W =   -38.581 deg,	P =    25.213 deg,	R =   -16.910 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[364]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.434  mm,	Y =   111.509  mm,	Z =   -19.223  mm,
	W =   -44.998 deg,	P =    -3.171 deg,	R =      .428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[365]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1565.857  mm,	Y =    86.604  mm,	Z =   -16.661  mm,
	W =   -45.448 deg,	P =    19.946 deg,	R =    98.978 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[366]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1561.980  mm,	Y =    43.412  mm,	Z =   -17.393  mm,
	W =   -45.341 deg,	P =    20.071 deg,	R =    97.877 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[367]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1855.998  mm,	Y =   173.909  mm,	Z =   960.367  mm,
	W =    58.350 deg,	P =   -26.173 deg,	R =   -73.280 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[368]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1161.954  mm,	Y =   199.930  mm,	Z =   960.367  mm,
	W =    58.350 deg,	P =   -26.173 deg,	R =   -73.280 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[369]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1557.455  mm,	Y =    34.734  mm,	Z =   -14.659  mm,
	W =   -41.212 deg,	P =    19.951 deg,	R =    68.903 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[370]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.432  mm,	Y =    29.710  mm,	Z =   -18.261  mm,
	W =   -41.212 deg,	P =    19.944 deg,	R =    34.864 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[371]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1433.073  mm,	Y =  -528.643  mm,	Z =   576.275  mm,
	W =    -5.611 deg,	P =   -10.020 deg,	R =     8.093 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[372]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1558.148  mm,	Y =   135.723  mm,	Z =   206.394  mm,
	W =   -46.360 deg,	P =    11.199 deg,	R =    10.858 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[373]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2022.992  mm,	Y =   -45.728  mm,	Z =     2.837  mm,
	W =   -43.918 deg,	P =    -5.993 deg,	R =   -30.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[374]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1545.443  mm,	Y =    27.978  mm,	Z =   -18.518  mm,
	W =   -41.206 deg,	P =    19.937 deg,	R =    34.859 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[375]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1661.474  mm,	Y =  -211.430  mm,	Z =   -14.467  mm,
	W =   -32.923 deg,	P =    29.352 deg,	R =   129.298 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[376]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1661.456  mm,	Y =    27.029  mm,	Z =   -15.234  mm,
	W =   -34.235 deg,	P =    30.074 deg,	R =   141.357 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[377]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   542.376  mm,	Y =     2.168  mm,	Z =  1509.670  mm,
	W =     -.030 deg,	P =    22.091 deg,	R =      .051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[378]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1435.014  mm,	Y =  -472.973  mm,	Z =   966.321  mm,
	W =     -.010 deg,	P =   -46.549 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[379]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1645.943  mm,	Y =  -472.973  mm,	Z =   885.320  mm,
	W =   -29.059 deg,	P =   -38.116 deg,	R =    41.980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[380]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.583  mm,	Y =  -166.791  mm,	Z =    -1.143  mm,
	W =    44.579 deg,	P =     6.896 deg,	R =    -6.948 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[381]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2528.956  mm,	Y =  -162.655  mm,	Z =     -.745  mm,
	W =    44.582 deg,	P =     6.894 deg,	R =    -6.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[382]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2357.492  mm,	Y =   -79.748  mm,	Z =     -.449  mm,
	W =    43.253 deg,	P =    13.899 deg,	R =   -18.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[383]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2403.170  mm,	Y =   -77.561  mm,	Z =     -.153  mm,
	W =    43.247 deg,	P =    13.894 deg,	R =   -18.614 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[384]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2425.265  mm,	Y =   -75.847  mm,	Z =     -.682  mm,
	W =    42.932 deg,	P =    13.800 deg,	R =   -51.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.994 deg,	J2=    90.001 deg
};
P[385]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.325  mm,	Y =   473.158  mm,	Z =   835.968  mm,
	W =    39.872 deg,	P =   -22.882 deg,	R =   -65.015 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[386]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.315  mm,	Y =   491.221  mm,	Z =   835.551  mm,
	W =    39.874 deg,	P =   -22.882 deg,	R =   -65.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[387]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.342  mm,	Y =   498.399  mm,	Z =   835.965  mm,
	W =    39.869 deg,	P =   -22.881 deg,	R =   -69.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[388]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.869  mm,	Y =  -854.871  mm,	Z =   914.402  mm,
	W =   -20.245 deg,	P =   -41.090 deg,	R =    57.299 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[389]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.869  mm,	Y =  -357.729  mm,	Z =   914.402  mm,
	W =   -53.336 deg,	P =     2.108 deg,	R =    49.603 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[390]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1686.294  mm,	Y =   502.192  mm,	Z =   835.782  mm,
	W =    39.867 deg,	P =   -22.881 deg,	R =   -70.971 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[391]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.542  mm,	Y =   572.021  mm,	Z =   833.650  mm,
	W =    39.889 deg,	P =   -22.872 deg,	R =   -70.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[392]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.635  mm,	Y =   574.784  mm,	Z =   834.621  mm,
	W =    39.875 deg,	P =   -22.876 deg,	R =   -74.849 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[393]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.926  mm,	Y =   578.115  mm,	Z =   833.070  mm,
	W =    39.876 deg,	P =   -22.873 deg,	R =   -82.539 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[394]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.977  mm,	Y =   837.117  mm,	Z =   835.341  mm,
	W =    14.308 deg,	P =   -43.040 deg,	R =   -40.623 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -89.991 deg,	J2=   -89.999 deg
};
P[395]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1813.190  mm,	Y =  -222.628  mm,	Z =   892.611  mm,
	W =   -54.261 deg,	P =    -6.374 deg,	R =    77.692 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[396]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1480.982  mm,	Y =  -280.121  mm,	Z =   888.392  mm,
	W =   -52.435 deg,	P =    -5.968 deg,	R =    77.563 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[397]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.972  mm,	Z =  2177.323  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[398]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1987.244  mm,	Y =     -.972  mm,	Z =  1525.322  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[399]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2368.673  mm,	Y =    45.599  mm,	Z =  1002.320  mm,
	W =     -.010 deg,	P =    44.998 deg,	R =    66.715 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[400]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1705.072  mm,	Y =   434.306  mm,	Z =   834.623  mm,
	W =    43.039 deg,	P =   -14.376 deg,	R =   -45.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[401]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1837.222  mm,	Y =   282.936  mm,	Z =   837.197  mm,
	W =    43.048 deg,	P =   -14.367 deg,	R =   -45.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[402]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.268  mm,	Y =   -62.420  mm,	Z =   888.262  mm,
	W =     4.742 deg,	P =    44.802 deg,	R =    66.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[403]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2434.487  mm,	Y =  -113.503  mm,	Z =   886.043  mm,
	W =   -16.311 deg,	P =    44.679 deg,	R =   -47.493 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[404]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1846.282  mm,	Y =   274.844  mm,	Z =   836.456  mm,
	W =    43.043 deg,	P =   -14.373 deg,	R =   -42.869 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[405]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.284  mm,	Y =   264.264  mm,	Z =   837.590  mm,
	W =    43.040 deg,	P =   -14.375 deg,	R =   -40.827 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[406]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.624  mm,	Y =  -138.635  mm,	Z =   886.232  mm,
	W =   -16.306 deg,	P =    44.680 deg,	R =   -47.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[407]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2284.980  mm,	Y =  -119.488  mm,	Z =   927.926  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[408]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1921.924  mm,	Y =   216.710  mm,	Z =   837.742  mm,
	W =    43.043 deg,	P =   -14.374 deg,	R =   -40.827 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[409]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.193  mm,	Y =  -453.390  mm,	Z =   837.036  mm,
	W =   -28.324 deg,	P =   -37.469 deg,	R =    36.656 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[410]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2364.441  mm,	Y =  -140.196  mm,	Z =   874.079  mm,
	W =    33.535 deg,	P =    29.220 deg,	R =   -67.391 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[411]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1110.996  mm,	Y =   547.835  mm,	Z =  1204.956  mm,
	W =    30.412 deg,	P =    23.153 deg,	R =   -68.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[412]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1110.996  mm,	Y =   547.835  mm,	Z =  1204.956  mm,
	W =   -37.197 deg,	P =    -5.451 deg,	R =   -16.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[413]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2157.996  mm,	Y =    56.121  mm,	Z =   156.955  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[414]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.996  mm,	Y =    56.121  mm,	Z =   156.955  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[415]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.929  mm,	Y =  -469.569  mm,	Z =   837.938  mm,
	W =   -28.311 deg,	P =   -37.472 deg,	R =    36.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[416]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.868  mm,	Y =  -474.172  mm,	Z =   837.920  mm,
	W =   -28.319 deg,	P =   -37.466 deg,	R =    39.717 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[417]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.234  mm,	Y =  -476.970  mm,	Z =   837.454  mm,
	W =   -28.320 deg,	P =   -37.464 deg,	R =    41.169 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[418]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2550.156  mm,	Y =    45.835  mm,	Z =   135.483  mm,
	W =   -31.566 deg,	P =   -16.651 deg,	R =   -48.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[419]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2346.710  mm,	Y =    66.661  mm,	Z =   156.955  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[420]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1705.800  mm,	Y =  -547.787  mm,	Z =   836.670  mm,
	W =   -28.304 deg,	P =   -37.472 deg,	R =    41.151 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[421]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.265  mm,	Y =  -551.949  mm,	Z =   836.333  mm,
	W =   -28.320 deg,	P =   -37.465 deg,	R =    48.503 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[422]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1711.157  mm,	Y =  -557.289  mm,	Z =   835.170  mm,
	W =   -28.318 deg,	P =   -37.465 deg,	R =    55.395 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[423]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2357.041  mm,	Y =   -23.041  mm,	Z =    82.290  mm,
	W =   -26.718 deg,	P =   -22.770 deg,	R =   -10.639 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[424]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1021.447  mm,	Y =   514.547  mm,	Z =   990.276  mm,
	W =   -21.266 deg,	P =    21.107 deg,	R =   -13.044 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[425]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1626.194  mm,	Y =   455.887  mm,	Z =  1153.200  mm,
	W =     5.544 deg,	P =    60.170 deg,	R =  -166.026 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[426]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2103.205  mm,	Y =   181.792  mm,	Z =  1015.411  mm,
	W =     -.647 deg,	P =    55.219 deg,	R =   156.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[427]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.295  mm,	Y =  -818.144  mm,	Z =   836.002  mm,
	W =   -28.326 deg,	P =   -37.469 deg,	R =    50.637 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[428]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.432  mm,	Y =  -414.901  mm,	Z =   836.550  mm,
	W =   -39.458 deg,	P =    -8.332 deg,	R =    42.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[429]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1836.725  mm,	Y =  -261.130  mm,	Z =   837.566  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    42.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[430]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.154  mm,	Y =  -250.558  mm,	Z =   837.780  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    38.620 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[431]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1865.972  mm,	Y =  -238.338  mm,	Z =   836.303  mm,
	W =   -39.464 deg,	P =    -8.329 deg,	R =    41.376 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[432]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1936.009  mm,	Y =  -184.129  mm,	Z =   835.922  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    45.243 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[433]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2332.738  mm,	Y =   -47.271  mm,	Z =   843.561  mm,
	W =     4.734 deg,	P =    44.798 deg,	R =    66.699 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[434]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2397.915  mm,	Y =   -81.738  mm,	Z =   843.540  mm,
	W =     4.740 deg,	P =    44.803 deg,	R =    66.701 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[435]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.302  mm,	Y =   204.441  mm,	Z =   988.994  mm,
	W =      .815 deg,	P =    36.667 deg,	R =   159.784 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[436]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2128.801  mm,	Y =   250.942  mm,	Z =   983.493  mm,
	W =    -8.588 deg,	P =    43.492 deg,	R =    86.611 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[437]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.544  mm,	Y =  -101.513  mm,	Z =   844.600  mm,
	W =   -19.423 deg,	P =    41.434 deg,	R =   -56.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[438]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.369  mm,	Y =   -81.730  mm,	Z =   844.555  mm,
	W =   -19.420 deg,	P =    41.429 deg,	R =   -56.056 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[439]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2328.544  mm,	Y =   -68.370  mm,	Z =   846.428  mm,
	W =    34.013 deg,	P =    31.443 deg,	R =   -66.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[440]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2393.286  mm,	Y =  -101.982  mm,	Z =   846.571  mm,
	W =    34.017 deg,	P =    31.444 deg,	R =   -66.601 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[441]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2528.546  mm,	Y =   -75.301  mm,	Z =   -25.347  mm,
	W =   -31.378 deg,	P =   -16.422 deg,	R =   -28.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[442]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2478.819  mm,	Y =   -77.760  mm,	Z =   -27.432  mm,
	W =   -25.030 deg,	P =   -25.322 deg,	R =   -46.368 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[443]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2453.018  mm,	Y =   -75.007  mm,	Z =   -22.167  mm,
	W =   -25.030 deg,	P =   -25.320 deg,	R =   -79.891 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[444]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.417  mm,	Y =   -77.872  mm,	Z =   -26.021  mm,
	W =   -31.933 deg,	P =   -15.149 deg,	R =   -17.048 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[445]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2405.871  mm,	Y =   -77.687  mm,	Z =   -25.824  mm,
	W =   -31.936 deg,	P =   -15.140 deg,	R =   -17.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[446]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2643.424  mm,	Y =  -135.910  mm,	Z =   990.550  mm,
	W =   -36.400 deg,	P =    28.534 deg,	R =    31.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[447]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   983.140  mm,	Y =    19.420  mm,	Z =   990.550  mm,
	W =   -36.400 deg,	P =    28.534 deg,	R =    23.998 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[448]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   983.140  mm,	Y =  -212.416  mm,	Z =   990.550  mm,
	W =   -43.636 deg,	P =   -12.296 deg,	R =    70.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[449]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1995.140  mm,	Y =  -212.416  mm,	Z =   320.550  mm,
	W =   -43.636 deg,	P =   -12.296 deg,	R =    70.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[450]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2018.730  mm,	Y =   -25.769  mm,	Z =   130.343  mm,
	W =   -38.665 deg,	P =    -2.420 deg,	R =   142.728 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[451]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2425.431  mm,	Y =   -74.422  mm,	Z =   -19.845  mm,
	W =   -21.656 deg,	P =   -28.186 deg,	R =   -20.809 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[452]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2131.448  mm,	Y =   167.383  mm,	Z =   837.718  mm,
	W =     2.978 deg,	P =    35.508 deg,	R =   160.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[453]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2138.426  mm,	Y =   185.708  mm,	Z =   836.262  mm,
	W =     2.984 deg,	P =    35.512 deg,	R =   160.108 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[454]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2123.406  mm,	Y =   217.744  mm,	Z =   837.111  mm,
	W =     2.989 deg,	P =    35.514 deg,	R =  -100.158 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[455]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2092.958  mm,	Y =   207.232  mm,	Z =   834.589  mm,
	W =     2.994 deg,	P =    35.514 deg,	R =   -13.063 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[456]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2078.138  mm,	Y =   163.139  mm,	Z =   834.542  mm,
	W =     2.985 deg,	P =    35.519 deg,	R =   -13.063 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[457]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2096.759  mm,	Y =   132.279  mm,	Z =   836.139  mm,
	W =     2.980 deg,	P =    35.506 deg,	R =    77.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[458]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.080  mm,	Y =   144.467  mm,	Z =   837.660  mm,
	W =     2.985 deg,	P =    35.516 deg,	R =   159.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[459]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.538  mm,	Y =   166.438  mm,	Z =   838.726  mm,
	W =     2.983 deg,	P =    35.509 deg,	R =   159.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[460]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.672  mm,	Y =   237.739  mm,	Z =   836.183  mm,
	W =    -2.356 deg,	P =    42.845 deg,	R =    86.535 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[461]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.874  mm,	Y =   237.707  mm,	Z =   836.167  mm,
	W =    -2.351 deg,	P =    42.846 deg,	R =    86.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[462]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2202.749  mm,	Y =   236.200  mm,	Z =   835.913  mm,
	W =    -2.491 deg,	P =    44.296 deg,	R =    56.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[463]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.456  mm,	Y =   232.643  mm,	Z =   837.248  mm,
	W =      .034 deg,	P =    44.146 deg,	R =    40.391 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[464]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2435.847  mm,	Y =   -25.240  mm,	Z =   836.935  mm,
	W =     -.127 deg,	P =    43.812 deg,	R =    45.343 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[465]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2562.114  mm,	Y =  -708.403  mm,	Z =     7.893  mm,
	W =   -27.687 deg,	P =   -22.321 deg,	R =    54.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[466]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2517.838  mm,	Y =  -811.403  mm,	Z =     7.893  mm,
	W =   -27.687 deg,	P =   -22.321 deg,	R =    54.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[467]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2452.948  mm,	Y =   -41.289  mm,	Z =   836.917  mm,
	W =      .173 deg,	P =    43.852 deg,	R =    54.361 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[468]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2458.273  mm,	Y =   -44.559  mm,	Z =   837.752  mm,
	W =    -1.320 deg,	P =    42.581 deg,	R =    55.585 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[469]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.577  mm,	Y =  -188.361  mm,	Z =   837.661  mm,
	W =   -30.971 deg,	P =    27.488 deg,	R =    12.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[470]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2658.956  mm,	Y =  -190.395  mm,	Z =   839.674  mm,
	W =   -30.965 deg,	P =    27.488 deg,	R =    12.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[471]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2077.002  mm,	Y =    50.699  mm,	Z =    20.367  mm,
	W =   -30.932 deg,	P =    -2.126 deg,	R =   142.465 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[472]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2118.468  mm,	Y =    13.622  mm,	Z =    10.816  mm,
	W =   -27.575 deg,	P =     5.122 deg,	R =   142.904 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[473]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2551.662  mm,	Y =  -712.821  mm,	Z =   124.119  mm,
	W =   -35.203 deg,	P =   -31.584 deg,	R =    53.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[474]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1870.645  mm,	Y =  -712.821  mm,	Z =   348.203  mm,
	W =   -35.203 deg,	P =   -31.584 deg,	R =    53.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[475]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1070.486  mm,	Y =   -84.821  mm,	Z =   533.119  mm,
	W =    -5.111 deg,	P =    43.836 deg,	R =   172.642 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[476]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2128.562  mm,	Y =     3.257  mm,	Z =     8.639  mm,
	W =   -27.571 deg,	P =     5.117 deg,	R =   139.585 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[477]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   775.567  mm,	Y =  -756.574  mm,	Z =  2062.635  mm,
	W =     -.031 deg,	P =   -39.384 deg,	R =   -44.251 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[478]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2082.302  mm,	Y = -1064.969  mm,	Z =   253.594  mm,
	W =   -44.935 deg,	P =    -7.056 deg,	R =    83.172 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[479]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2341.243  mm,	Y =  -989.972  mm,	Z =   103.893  mm,
	W =   -44.578 deg,	P =    -6.914 deg,	R =    83.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[480]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2449.739  mm,	Y =  -869.683  mm,	Z =    46.520  mm,
	W =   -44.665 deg,	P =    -6.870 deg,	R =    84.747 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[481]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2133.611  mm,	Y =    -1.323  mm,	Z =     8.073  mm,
	W =   -27.577 deg,	P =     5.121 deg,	R =   136.987 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[482]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2256.063  mm,	Y =  -170.351  mm,	Z =   -10.238  mm,
	W =   -36.468 deg,	P =    -8.805 deg,	R =   122.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[483]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2388.903  mm,	Y =  -813.009  mm,	Z =   289.336  mm,
	W =   -74.527 deg,	P =    19.606 deg,	R =   116.637 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[484]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2319.444  mm,	Y =  -496.566  mm,	Z =   203.241  mm,
	W =    16.540 deg,	P =   -14.582 deg,	R =      .664 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[485]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2429.174  mm,	Y =  -689.084  mm,	Z =   108.498  mm,
	W =   -41.825 deg,	P =    18.388 deg,	R =    51.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[486]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2264.054  mm,	Y =  -180.789  mm,	Z =   -11.290  mm,
	W =   -36.557 deg,	P =   -11.679 deg,	R =   125.980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[487]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2272.913  mm,	Y =  -192.246  mm,	Z =   -12.614  mm,
	W =   -36.298 deg,	P =   -14.510 deg,	R =   128.300 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[488]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2431.074  mm,	Y =  -699.084  mm,	Z =   106.298  mm,
	W =   -41.825 deg,	P =    18.388 deg,	R =    51.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[489]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2429.174  mm,	Y =  -689.084  mm,	Z =   254.213  mm,
	W =   -57.120 deg,	P =     5.483 deg,	R =    47.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[490]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1400.602  mm,	Y =  -689.084  mm,	Z =   254.213  mm,
	W =   -57.120 deg,	P =     5.483 deg,	R =    47.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[491]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1400.602  mm,	Y =  -353.084  mm,	Z =   501.233  mm,
	W =    -2.074 deg,	P =   -10.233 deg,	R =    32.173 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[492]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.602  mm,	Y =  -166.084  mm,	Z =   342.233  mm,
	W =     1.417 deg,	P =   -10.343 deg,	R =    12.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[493]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2514.871  mm,	Y =  -421.924  mm,	Z =   -52.397  mm,
	W =   -23.404 deg,	P =   -31.780 deg,	R =    95.153 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[494]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2535.771  mm,	Y =  -433.252  mm,	Z =   -58.742  mm,
	W =   -18.432 deg,	P =   -37.731 deg,	R =   100.748 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[495]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2823.448  mm,	Y =  -159.890  mm,	Z =   258.839  mm,
	W =    -7.346 deg,	P =   -29.104 deg,	R =    14.845 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[496]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2357.965  mm,	Y =  -270.302  mm,	Z =   258.839  mm,
	W =    -1.017 deg,	P =    -4.421 deg,	R =    12.975 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[497]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.963  mm,	Y =  -439.506  mm,	Z =   -62.069  mm,
	W =   -18.755 deg,	P =   -39.987 deg,	R =   104.532 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[498]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2565.918  mm,	Y =  -441.041  mm,	Z =   -62.851  mm,
	W =   -18.759 deg,	P =   -39.992 deg,	R =   104.538 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[499]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2641.832  mm,	Y =  -264.435  mm,	Z =   263.645  mm,
	W =     0.000 deg,	P =    -6.880 deg,	R =    -2.940 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[500]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2474.831  mm,	Y =   -41.435  mm,	Z =    90.241  mm,
	W =    43.945 deg,	P =   -11.174 deg,	R =     1.639 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[501]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2474.831  mm,	Y =    90.943  mm,	Z =    79.910  mm,
	W =    39.708 deg,	P =   -23.339 deg,	R =    15.773 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[502]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2617.462  mm,	Y =  -477.272  mm,	Z =   -70.883  mm,
	W =   -35.261 deg,	P =   -23.936 deg,	R =   103.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[503]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2632.248  mm,	Y =  -510.442  mm,	Z =   -76.249  mm,
	W =   -33.013 deg,	P =   -16.162 deg,	R =    67.004 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[504]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2631.598  mm,	Y =  -708.057  mm,	Z =   -73.978  mm,
	W =   -27.676 deg,	P =   -22.323 deg,	R =    54.093 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[505]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2478.831  mm,	Y =    82.943  mm,	Z =    74.910  mm,
	W =    39.708 deg,	P =   -23.339 deg,	R =    15.773 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[506]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2474.831  mm,	Y =  -180.721  mm,	Z =    90.242  mm,
	W =    43.034 deg,	P =    14.904 deg,	R =   -25.132 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[507]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1656.260  mm,	Y =  -180.721  mm,	Z =    90.242  mm,
	W =    43.034 deg,	P =    14.904 deg,	R =   -25.132 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[508]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2558.120  mm,	Y =  -818.838  mm,	Z =   -68.643  mm,
	W =   -27.687 deg,	P =   -22.317 deg,	R =    54.099 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[509]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2557.615  mm,	Y =  -807.503  mm,	Z =   -67.688  mm,
	W =   -27.687 deg,	P =   -22.318 deg,	R =    54.099 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[510]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2565.668  mm,	Y =  -794.948  mm,	Z =   -70.177  mm,
	W =   -27.684 deg,	P =   -22.320 deg,	R =    23.347 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[511]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2575.827  mm,	Y =  -789.432  mm,	Z =   -72.319  mm,
	W =   -33.338 deg,	P =   -11.310 deg,	R =    17.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[512]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2614.220  mm,	Y =  -761.078  mm,	Z =   -80.341  mm,
	W =   -30.065 deg,	P =    -4.703 deg,	R =    42.983 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[513]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2630.670  mm,	Y =  -703.014  mm,	Z =   -79.942  mm,
	W =   -25.583 deg,	P =   -24.734 deg,	R =    48.847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[514]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2500.101  mm,	Y =  -843.989  mm,	Z =      .763  mm,
	W =   -44.579 deg,	P =    -6.906 deg,	R =    84.731 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[515]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2498.506  mm,	Y =  -772.585  mm,	Z =      .733  mm,
	W =   -44.581 deg,	P =    -6.907 deg,	R =    84.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[516]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2525.148  mm,	Y =  -742.055  mm,	Z =     1.319  mm,
	W =   -39.980 deg,	P =    14.825 deg,	R =    17.711 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[517]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.357  mm,	Y =  -744.379  mm,	Z =    -1.238  mm,
	W =   -39.977 deg,	P =    14.826 deg,	R =    17.707 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[518]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.219  mm,	Y =  -152.494  mm,	Z =   181.656  mm,
	W =    -1.647 deg,	P =    -7.141 deg,	R =    13.038 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[519]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1477.103  mm,	Y =  -165.683  mm,	Z =   137.951  mm,
	W =    38.761 deg,	P =    24.667 deg,	R =   -44.781 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[520]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2334.769  mm,	Y =  -176.256  mm,	Z =   129.823  mm,
	W =    49.996 deg,	P =    12.253 deg,	R =   -42.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[521]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2334.769  mm,	Y =    95.744  mm,	Z =   109.147  mm,
	W =    41.080 deg,	P =   -17.089 deg,	R =    29.592 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[522]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2871.009  mm,	Y =  -153.833  mm,	Z =   186.035  mm,
	W =    -5.452 deg,	P =   -22.504 deg,	R =    14.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[523]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.307  mm,	Y =  -257.240  mm,	Z =    90.661  mm,
	W =     -.006 deg,	P =      .007 deg,	R =    -2.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[524]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2759.554  mm,	Y =  -256.153  mm,	Z =    93.128  mm,
	W =      .075 deg,	P =    -1.490 deg,	R =    -2.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[525]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2340.804  mm,	Y =    96.102  mm,	Z =    56.984  mm,
	W =    34.887 deg,	P =   -26.988 deg,	R =    21.909 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[526]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2334.769  mm,	Y =  -176.256  mm,	Z =   129.823  mm,
	W =    49.996 deg,	P =    12.253 deg,	R =   -42.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[527]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.769  mm,	Y =  -176.256  mm,	Z =   129.823  mm,
	W =    49.996 deg,	P =    12.253 deg,	R =   -42.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[528]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1137.626  mm,	Y =   231.744  mm,	Z =   129.823  mm,
	W =     5.452 deg,	P =    45.384 deg,	R =    96.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[529]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1702.626  mm,	Y =   216.744  mm,	Z =    45.395  mm,
	W =   -35.057 deg,	P =    31.336 deg,	R =    18.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[530]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2509.947  mm,	Y =   181.457  mm,	Z =    -1.616  mm,
	W =    37.876 deg,	P =   -26.378 deg,	R =    31.551 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[531]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2462.907  mm,	Y =   180.747  mm,	Z =    -1.513  mm,
	W =    37.870 deg,	P =   -26.389 deg,	R =    31.565 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[532]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2445.326  mm,	Y =   180.108  mm,	Z =      .250  mm,
	W =    40.547 deg,	P =   -21.447 deg,	R =    53.219 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[533]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1690.038  mm,	Y =   -49.964  mm,	Z =   -11.982  mm,
	W =    41.392 deg,	P =    19.516 deg,	R =   -17.038 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[534]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1968.756  mm,	Y =   235.799  mm,	Z =    41.294  mm,
	W =   -37.049 deg,	P =    22.562 deg,	R =    41.911 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[535]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2281.156  mm,	Y =   263.463  mm,	Z =    29.688  mm,
	W =   -37.041 deg,	P =    22.569 deg,	R =    41.916 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[536]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2487.498  mm,	Y =   206.111  mm,	Z =    13.958  mm,
	W =   -43.230 deg,	P =      .800 deg,	R =   -58.961 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[537]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2487.758  mm,	Y =   132.800  mm,	Z =    41.293  mm,
	W =   -42.488 deg,	P =     1.841 deg,	R =   -72.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[538]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.969  mm,	Y =   -49.284  mm,	Z =   -12.616  mm,
	W =    41.393 deg,	P =    19.516 deg,	R =   -16.113 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[539]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1642.910  mm,	Y =   -50.885  mm,	Z =   -11.965  mm,
	W =    41.394 deg,	P =    19.515 deg,	R =     3.468 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[540]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1634.473  mm,	Y =   -53.135  mm,	Z =   -14.299  mm,
	W =    41.393 deg,	P =    19.522 deg,	R =    24.098 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[541]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.240  mm,	Y =   -80.496  mm,	Z =   -13.783  mm,
	W =    37.029 deg,	P =    27.662 deg,	R =    15.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[542]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2487.758  mm,	Y =   132.800  mm,	Z =    41.293  mm,
	W =   -42.488 deg,	P =     1.841 deg,	R =   -72.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[543]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2487.757  mm,	Y =   235.800  mm,	Z =    41.293  mm,
	W =   -46.494 deg,	P =   -14.946 deg,	R =     1.465 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[544]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2363.757  mm,	Y =   235.799  mm,	Z =    47.485  mm,
	W =   -46.494 deg,	P =   -14.946 deg,	R =     1.465 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[545]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1588.769  mm,	Y =   -91.533  mm,	Z =   -13.038  mm,
	W =    38.934 deg,	P =    23.606 deg,	R =   -29.718 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[546]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1569.200  mm,	Y =   -66.418  mm,	Z =   -14.762  mm,
	W =    36.734 deg,	P =    28.084 deg,	R =  -109.083 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[547]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2483.422  mm,	Y =   242.950  mm,	Z =    62.981  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    17.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[548]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2280.422  mm,	Y =   242.950  mm,	Z =    62.981  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    17.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[549]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2280.422  mm,	Y =   142.950  mm,	Z =    62.981  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    17.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[550]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1565.612  mm,	Y =   -24.282  mm,	Z =   -16.223  mm,
	W =    36.733 deg,	P =    28.086 deg,	R =  -114.514 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[551]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1562.317  mm,	Y =   -16.001  mm,	Z =   -12.611  mm,
	W =    36.725 deg,	P =    28.084 deg,	R =   -80.637 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[552]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1553.848  mm,	Y =   -10.188  mm,	Z =   -12.900  mm,
	W =    36.731 deg,	P =    28.089 deg,	R =   -43.974 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[553]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2280.422  mm,	Y =   218.557  mm,	Z =   105.269  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    25.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[554]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1204.422  mm,	Y =   218.557  mm,	Z =   105.269  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    25.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[555]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1204.422  mm,	Y =  -167.443  mm,	Z =  1122.269  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    25.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[556]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2328.690  mm,	Y =   -25.109  mm,	Z =   925.961  mm,
	W =    38.029 deg,	P =    27.224 deg,	R =   -32.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[557]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1547.336  mm,	Y =    -8.620  mm,	Z =   -13.271  mm,
	W =    36.729 deg,	P =    28.089 deg,	R =   -43.983 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[558]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2367.321  mm,	Y =   184.102  mm,	Z =    -3.691  mm,
	W =    38.118 deg,	P =   -25.963 deg,	R =    27.293 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[559]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2407.814  mm,	Y =    -3.230  mm,	Z =   914.873  mm,
	W =    36.706 deg,	P =    26.470 deg,	R =   -16.230 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[560]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2465.307  mm,	Y =    64.859  mm,	Z =   899.479  mm,
	W =     5.388 deg,	P =    42.666 deg,	R =    25.064 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[561]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.160  mm,	Y =   183.060  mm,	Z =    -3.000  mm,
	W =    38.129 deg,	P =   -25.958 deg,	R =    27.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[562]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2428.050  mm,	Y =   179.285  mm,	Z =     1.204  mm,
	W =    11.741 deg,	P =   -38.464 deg,	R =    42.116 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.989 deg,	J2=   -90.001 deg
};
P[563]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2459.632  mm,	Y =   122.370  mm,	Z =   906.747  mm,
	W =    -6.207 deg,	P =    17.663 deg,	R =    19.082 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[564]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1677.456  mm,	Y = -1378.259  mm,	Z =  1040.445  mm,
	W =   -45.493 deg,	P =   -19.537 deg,	R =    48.719 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[565]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2294.163  mm,	Y =   101.033  mm,	Z =   891.661  mm,
	W =   -46.230 deg,	P =   -25.147 deg,	R =    34.050 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[566]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.666  mm,	Y =   205.664  mm,	Z =   -12.534  mm,
	W =   -36.933 deg,	P =    22.769 deg,	R =   -15.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[567]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1703.657  mm,	Y =   203.883  mm,	Z =   -12.893  mm,
	W =   -36.939 deg,	P =    22.781 deg,	R =    39.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[568]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2343.829  mm,	Y =   125.019  mm,	Z =   888.975  mm,
	W =   -38.032 deg,	P =    -5.730 deg,	R =    38.955 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[569]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.422  mm,	Y =   -78.871  mm,	Z =  1381.555  mm,
	W =    -4.515 deg,	P =      .965 deg,	R =    -2.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[570]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   908.243  mm,	Y =     -.972  mm,	Z =  2177.323  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[571]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.043  mm,	Y = -1395.782  mm,	Z =  1053.900  mm,
	W =   -44.560 deg,	P =   -18.266 deg,	R =    45.822 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[572]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.244  mm,	Y =  -177.973  mm,	Z =   164.824  mm,
	W =    -4.184 deg,	P =     7.592 deg,	R =    43.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[573]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.243  mm,	Y =   -20.258  mm,	Z =   164.824  mm,
	W =     2.218 deg,	P =    14.051 deg,	R =    70.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[574]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1979.129  mm,	Y =   205.388  mm,	Z =   -13.477  mm,
	W =   -36.938 deg,	P =    22.781 deg,	R =    39.327 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[575]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1995.822  mm,	Y =   203.251  mm,	Z =   -10.207  mm,
	W =   -40.748 deg,	P =    13.395 deg,	R =    62.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[576]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2113.743  mm,	Y =   -23.258  mm,	Z =   164.824  mm,
	W =     2.218 deg,	P =    14.051 deg,	R =    70.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[577]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.244  mm,	Y =  -177.973  mm,	Z =   164.824  mm,
	W =    -4.184 deg,	P =     7.592 deg,	R =    43.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[578]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.661  mm,	Y =  -177.973  mm,	Z =   164.824  mm,
	W =    28.994 deg,	P =   -15.433 deg,	R =    30.441 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[579]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2395.612  mm,	Y =    98.485  mm,	Z =   -19.732  mm,
	W =   -47.023 deg,	P =     6.661 deg,	R =   -51.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[580]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2391.596  mm,	Y =   124.389  mm,	Z =   -21.745  mm,
	W =   -46.999 deg,	P =     6.652 deg,	R =   -83.994 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[581]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2158.527  mm,	Y =  -106.081  mm,	Z =    42.026  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -3.635 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[582]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.331  mm,	Y =   158.473  mm,	Z =   -19.448  mm,
	W =   -47.981 deg,	P =     7.880 deg,	R =   -87.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[583]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2391.390  mm,	Y =   184.030  mm,	Z =   -21.542  mm,
	W =   -51.565 deg,	P =    20.299 deg,	R =  -107.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[584]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.000  mm,	Y =   195.031  mm,	Z =    -5.475  mm,
	W =   -44.811 deg,	P =    -4.561 deg,	R =    -2.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[585]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2060.197  mm,	Y =  -106.080  mm,	Z =    42.026  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -3.635 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[586]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2509.255  mm,	Y =   194.275  mm,	Z =    -4.194  mm,
	W =   -44.809 deg,	P =    -4.555 deg,	R =    -2.481 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[587]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2367.908  mm,	Y =    96.138  mm,	Z =    -4.435  mm,
	W =   -44.397 deg,	P =     8.168 deg,	R =    14.048 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[588]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2413.075  mm,	Y =    96.166  mm,	Z =    -3.839  mm,
	W =   -44.394 deg,	P =     8.166 deg,	R =    14.048 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[589]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1890.253  mm,	Y =  -197.333  mm,	Z =   104.046  mm,
	W =    40.690 deg,	P =   -21.162 deg,	R =    -6.795 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[590]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1890.254  mm,	Y =  -197.333  mm,	Z =   104.046  mm,
	W =   -33.760 deg,	P =   -16.746 deg,	R =    41.760 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[591]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2024.254  mm,	Y =  -116.333  mm,	Z =   104.046  mm,
	W =   -36.632 deg,	P =    -7.222 deg,	R =    55.482 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[592]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2427.383  mm,	Y =    97.382  mm,	Z =     -.048  mm,
	W =   -44.529 deg,	P =    -7.125 deg,	R =    33.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[593]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.427  mm,	Y =    71.440  mm,	Z =   847.749  mm,
	W =    45.399 deg,	P =    17.266 deg,	R =    -1.541 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[594]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2402.831  mm,	Y =   104.785  mm,	Z =   847.602  mm,
	W =    45.390 deg,	P =    17.268 deg,	R =    -1.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[595]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2056.301  mm,	Y =   -98.366  mm,	Z =    49.506  mm,
	W =   -42.382 deg,	P =     2.305 deg,	R =   105.198 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[596]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1663.323  mm,	Y =  -387.368  mm,	Z =   408.939  mm,
	W =   -27.547 deg,	P =    30.353 deg,	R =   152.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[597]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1656.330  mm,	Y =  -300.541  mm,	Z =  1123.310  mm,
	W =    -7.423 deg,	P =    33.575 deg,	R =  -172.195 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[598]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2106.086  mm,	Y =  -147.825  mm,	Z =   986.847  mm,
	W =    -2.744 deg,	P =    30.268 deg,	R =  -167.022 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[599]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2402.842  mm,	Y =   109.949  mm,	Z =   847.942  mm,
	W =     1.452 deg,	P =    40.371 deg,	R =    26.792 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[600]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.403  mm,	Y =   126.094  mm,	Z =   845.932  mm,
	W =     1.448 deg,	P =    40.368 deg,	R =    26.765 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[601]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2325.472  mm,	Y =    92.116  mm,	Z =   847.036  mm,
	W =   -46.230 deg,	P =   -25.147 deg,	R =    34.050 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[602]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2391.645  mm,	Y =   126.896  mm,	Z =   847.777  mm,
	W =   -46.222 deg,	P =   -25.150 deg,	R =    34.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[603]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2011.750  mm,	Y =   -80.950  mm,	Z =    -4.575  mm,
	W =    40.372 deg,	P =    23.935 deg,	R =    74.339 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[604]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2007.194  mm,	Y =   142.177  mm,	Z =   -45.001  mm,
	W =    45.685 deg,	P =     4.509 deg,	R =    78.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[605]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.070  mm,	Y =   -48.871  mm,	Z =     4.516  mm,
	W =    44.904 deg,	P =    -3.411 deg,	R =     3.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[606]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2266.341  mm,	Y =   -46.762  mm,	Z =     3.253  mm,
	W =    44.893 deg,	P =    -3.421 deg,	R =     3.427 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[607]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2096.605  mm,	Y =  -181.583  mm,	Z =   897.867  mm,
	W =     -.064 deg,	P =    31.734 deg,	R =  -164.129 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[608]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2114.149  mm,	Y =  -253.336  mm,	Z =   921.197  mm,
	W =     1.157 deg,	P =    35.359 deg,	R =   -90.786 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[609]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2142.334  mm,	Y =   -48.860  mm,	Z =    -3.830  mm,
	W =    44.883 deg,	P =     3.632 deg,	R =    -4.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[610]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.734  mm,	Y =   -47.597  mm,	Z =    -4.519  mm,
	W =    44.886 deg,	P =     3.634 deg,	R =    -4.918 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[611]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2216.176  mm,	Y =   -46.694  mm,	Z =    -5.378  mm,
	W =    44.882 deg,	P =     3.630 deg,	R =   -11.556 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[612]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1992.932  mm,	Y =   -47.776  mm,	Z =   -14.567  mm,
	W =    44.891 deg,	P =     3.636 deg,	R =    -8.860 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[613]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.099  mm,	Y =   -46.333  mm,	Z =   -15.544  mm,
	W =    44.875 deg,	P =     3.623 deg,	R =    -8.839 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[614]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.103  mm,	Y =   -50.973  mm,	Z =   -11.238  mm,
	W =    41.211 deg,	P =   -19.950 deg,	R =    -8.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[615]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2075.732  mm,	Y =  -109.868  mm,	Z =   -15.932  mm,
	W =   -37.504 deg,	P =      .971 deg,	R =    76.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[616]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.001  mm,	Y =   -75.797  mm,	Z =   -17.252  mm,
	W =   -37.498 deg,	P =      .974 deg,	R =    85.226 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[617]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2126.497  mm,	Y =   -60.152  mm,	Z =   -12.916  mm,
	W =   -48.237 deg,	P =     4.570 deg,	R =   105.632 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=   -90.001 deg
};
P[618]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2628.655  mm,	Y =   126.905  mm,	Z =   907.127  mm,
	W =    31.997 deg,	P =    23.849 deg,	R =   -38.788 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[619]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   949.417  mm,	Y =    74.708  mm,	Z =  1003.698  mm,
	W =    14.657 deg,	P =    21.488 deg,	R =   -36.321 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[620]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   931.440  mm,	Y =   198.476  mm,	Z =   335.127  mm,
	W =   -34.527 deg,	P =    19.136 deg,	R =    25.896 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[621]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1700.688  mm,	Y =   121.333  mm,	Z =   177.127  mm,
	W =   -48.737 deg,	P =     8.784 deg,	R =     7.978 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[622]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2137.360  mm,	Y =  -144.268  mm,	Z =   834.187  mm,
	W =      .668 deg,	P =    41.811 deg,	R =  -160.738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[623]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2144.152  mm,	Y =  -167.358  mm,	Z =   834.668  mm,
	W =      .532 deg,	P =    40.619 deg,	R =  -160.815 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[624]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.457  mm,	Y =  -193.376  mm,	Z =   832.812  mm,
	W =    -1.789 deg,	P =    43.352 deg,	R =   109.759 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[625]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.029  mm,	Y =  -181.626  mm,	Z =   831.918  mm,
	W =      .955 deg,	P =    43.489 deg,	R =    21.015 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[626]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1922.982  mm,	Y =    80.524  mm,	Z =   163.198  mm,
	W =   -51.903 deg,	P =     9.364 deg,	R =    21.482 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[627]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.982  mm,	Y =    80.524  mm,	Z =   163.199  mm,
	W =   -51.227 deg,	P =   -13.564 deg,	R =     3.543 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[628]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2085.167  mm,	Y =  -135.110  mm,	Z =   833.287  mm,
	W =      .566 deg,	P =    42.530 deg,	R =    14.578 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[629]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2104.005  mm,	Y =  -110.952  mm,	Z =   833.109  mm,
	W =      .858 deg,	P =    43.011 deg,	R =   -74.577 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[630]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.963  mm,	Y =     8.530  mm,	Z =    59.476  mm,
	W =   -44.735 deg,	P =    -5.491 deg,	R =    -5.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[631]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.832  mm,	Y =  -123.512  mm,	Z =   834.193  mm,
	W =      .102 deg,	P =    42.115 deg,	R =  -162.102 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[632]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2138.893  mm,	Y =  -144.672  mm,	Z =   833.681  mm,
	W =      .505 deg,	P =    42.850 deg,	R =  -163.809 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[633]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2107.700  mm,	Y =  -213.626  mm,	Z =   831.846  mm,
	W =     -.446 deg,	P =    39.556 deg,	R =   -90.694 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[634]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2083.048  mm,	Y =     5.303  mm,	Z =    47.541  mm,
	W =   -44.735 deg,	P =    -5.491 deg,	R =    -5.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[635]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2200.131  mm,	Y =  -214.897  mm,	Z =   833.980  mm,
	W =     -.446 deg,	P =    39.557 deg,	R =   -90.713 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[636]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.289  mm,	Y =  -210.992  mm,	Z =   834.347  mm,
	W =     -.442 deg,	P =    39.558 deg,	R =   -57.815 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[637]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2220.486  mm,	Y =  -200.207  mm,	Z =   832.598  mm,
	W =     -.448 deg,	P =    39.556 deg,	R =   -44.056 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[638]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2065.479  mm,	Y =    84.939  mm,	Z =   110.355  mm,
	W =   -44.734 deg,	P =    -5.490 deg,	R =     4.917 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[639]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.706  mm,	Y = -1470.455  mm,	Z =  1071.063  mm,
	W =   -42.856 deg,	P =   -15.293 deg,	R =    39.131 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[640]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1166.553  mm,	Y = -1374.013  mm,	Z =  1522.225  mm,
	W =   -32.586 deg,	P =   -12.067 deg,	R =    17.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[641]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1608.479  mm,	Y =   191.940  mm,	Z =    59.355  mm,
	W =    36.994 deg,	P =    27.707 deg,	R =  -122.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[642]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2441.776  mm,	Y =    55.830  mm,	Z =   833.792  mm,
	W =      .117 deg,	P =    42.766 deg,	R =   -42.899 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[643]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2448.836  mm,	Y =    63.315  mm,	Z =   833.149  mm,
	W =      .109 deg,	P =    42.766 deg,	R =   -49.058 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[644]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2455.189  mm,	Y =    65.446  mm,	Z =   835.378  mm,
	W =      .109 deg,	P =    42.768 deg,	R =   -56.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[645]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1517.805  mm,	Y =    56.341  mm,	Z =   141.822  mm,
	W =    36.993 deg,	P =    27.706 deg,	R =  -154.189 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[646]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1476.806  mm,	Y =   169.341  mm,	Z =   386.823  mm,
	W =    23.939 deg,	P =    39.314 deg,	R =  -177.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[647]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2034.807  mm,	Y =   169.341  mm,	Z =   186.823  mm,
	W =    23.939 deg,	P =    39.314 deg,	R =  -177.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[648]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2034.807  mm,	Y =     1.341  mm,	Z =   115.823  mm,
	W =    34.881 deg,	P =    30.459 deg,	R =  -142.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[649]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2645.172  mm,	Y =   206.772  mm,	Z =   838.084  mm,
	W =    29.497 deg,	P =    29.459 deg,	R =    -6.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[650]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2652.713  mm,	Y =   210.527  mm,	Z =   838.644  mm,
	W =    29.493 deg,	P =    29.463 deg,	R =    -6.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[651]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.929  mm,	Y =   -36.946  mm,	Z =    54.617  mm,
	W =   -51.899 deg,	P =     9.369 deg,	R =    14.299 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[652]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1952.806  mm,	Y =   -38.944  mm,	Z =    52.063  mm,
	W =   -51.882 deg,	P =     9.361 deg,	R =     5.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[653]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.004  mm,	Y =   -37.169  mm,	Z =    53.060  mm,
	W =   -51.893 deg,	P =     9.370 deg,	R =     5.849 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[654]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.652  mm,	Y =   -33.229  mm,	Z =    53.086  mm,
	W =   -51.882 deg,	P =     9.363 deg,	R =   -32.598 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[655]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.154  mm,	Y =   -35.668  mm,	Z =      .956  mm,
	W =   -45.065 deg,	P =    -5.945 deg,	R =    -3.251 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[656]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2263.854  mm,	Y =   -39.114  mm,	Z =    -2.230  mm,
	W =   -45.063 deg,	P =    -5.945 deg,	R =    -3.254 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[657]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2143.762  mm,	Y =   -38.233  mm,	Z =    -9.450  mm,
	W =   -46.267 deg,	P =    -5.650 deg,	R =    -4.455 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[658]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2211.456  mm,	Y =   -38.697  mm,	Z =   -10.423  mm,
	W =   -44.729 deg,	P =    -5.487 deg,	R =    -5.519 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[659]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2213.501  mm,	Y =   -38.329  mm,	Z =    -9.533  mm,
	W =   -44.727 deg,	P =    -5.491 deg,	R =    10.507 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[660]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.187  mm,	Y =   -36.549  mm,	Z =   -16.802  mm,
	W =   -44.729 deg,	P =    -5.491 deg,	R =    -5.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[661]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2031.075  mm,	Y =   -35.591  mm,	Z =   -15.945  mm,
	W =   -44.726 deg,	P =    -5.493 deg,	R =    -5.522 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[662]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.774  mm,	Y =   -33.603  mm,	Z =   -16.255  mm,
	W =   -44.728 deg,	P =    -5.488 deg,	R =   -41.543 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[663]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1659.349  mm,	Y =   229.576  mm,	Z =   -15.827  mm,
	W =    34.860 deg,	P =    26.474 deg,	R =  -126.851 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[664]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1662.403  mm,	Y =    10.748  mm,	Z =   -16.240  mm,
	W =    36.966 deg,	P =    27.691 deg,	R =  -122.597 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[665]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1661.230  mm,	Y =   -12.152  mm,	Z =   -15.927  mm,
	W =    37.079 deg,	P =    27.798 deg,	R =  -137.823 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[666]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2070.256  mm,	Y =   -29.016  mm,	Z =    17.551  mm,
	W =    27.122 deg,	P =    24.041 deg,	R =  -162.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[667]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2077.472  mm,	Y =     9.268  mm,	Z =    15.852  mm,
	W =    26.540 deg,	P =    23.907 deg,	R =  -139.393 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[668]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2079.821  mm,	Y =    18.267  mm,	Z =    15.557  mm,
	W =    26.544 deg,	P =    23.915 deg,	R =  -163.856 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[669]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2088.621  mm,	Y =    27.690  mm,	Z =    13.857  mm,
	W =    17.944 deg,	P =    33.024 deg,	R =   153.337 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[670]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2492.536  mm,	Y =   739.403  mm,	Z =    25.184  mm,
	W =   -42.166 deg,	P =     5.515 deg,	R =   107.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[671]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2492.536  mm,	Y =   809.403  mm,	Z =    25.184  mm,
	W =   -35.462 deg,	P =    25.069 deg,	R =   132.276 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[672]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2236.640  mm,	Y =   176.401  mm,	Z =    -7.067  mm,
	W =     2.794 deg,	P =    36.171 deg,	R =   129.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[673]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2264.963  mm,	Y =   203.116  mm,	Z =   -13.114  mm,
	W =     3.306 deg,	P =    33.869 deg,	R =   124.421 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[674]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2287.031  mm,	Y =   217.729  mm,	Z =   -16.695  mm,
	W =     6.006 deg,	P =    35.930 deg,	R =   123.381 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[675]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2387.696  mm,	Y =   277.952  mm,	Z =   -35.568  mm,
	W =     8.794 deg,	P =    37.204 deg,	R =   129.070 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[676]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.670  mm,	Y =   288.506  mm,	Z =   -40.636  mm,
	W =    -2.498 deg,	P =    34.190 deg,	R =   123.664 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[677]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2423.597  mm,	Y =   314.103  mm,	Z =   -39.372  mm,
	W =      .578 deg,	P =    31.082 deg,	R =   135.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[678]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2506.157  mm,	Y =   429.784  mm,	Z =   -53.556  mm,
	W =   -18.684 deg,	P =    29.858 deg,	R =   100.231 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[679]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2521.799  mm,	Y =   685.855  mm,	Z =   110.598  mm,
	W =   -11.653 deg,	P =   -32.812 deg,	R =    68.201 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[680]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.111  mm,	Y =   297.878  mm,	Z =   188.758  mm,
	W =   -43.260 deg,	P =    61.542 deg,	R =   123.185 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[681]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1368.100  mm,	Y =   306.117  mm,	Z =   479.720  mm,
	W =   -45.599 deg,	P =    57.111 deg,	R =   114.814 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[682]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[683]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   642.423  mm,	Y = -1094.246  mm,	Z =  1725.795  mm,
	W =     2.647 deg,	P =   -31.291 deg,	R =   -11.601 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[684]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   799.244  mm,	Y = -1202.971  mm,	Z =  1035.322  mm,
	W =    24.190 deg,	P =   -39.178 deg,	R =    -6.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[685]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   954.244  mm,	Y = -1102.971  mm,	Z =   861.322  mm,
	W =    24.190 deg,	P =   -39.178 deg,	R =    -6.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[686]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2522.874  mm,	Y =   447.428  mm,	Z =   -56.211  mm,
	W =   -18.818 deg,	P =    32.562 deg,	R =    79.861 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[687]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.598  mm,	Y =   458.467  mm,	Z =   -62.590  mm,
	W =   -16.507 deg,	P =    33.838 deg,	R =    74.968 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[688]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   955.526  mm,	Y = -1174.727  mm,	Z =   902.888  mm,
	W =    27.863 deg,	P =   -46.318 deg,	R =   -16.260 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[689]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   571.093  mm,	Y = -1097.630  mm,	Z =  1035.072  mm,
	W =    42.871 deg,	P =   -15.240 deg,	R =   -45.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[690]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   749.093  mm,	Y =  -654.630  mm,	Z =   835.073  mm,
	W =    44.064 deg,	P =   -10.243 deg,	R =   -50.428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[691]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.108  mm,	Y =   460.127  mm,	Z =   -64.835  mm,
	W =   -16.506 deg,	P =    33.836 deg,	R =    74.958 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[692]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2609.688  mm,	Y =   486.425  mm,	Z =   -71.766  mm,
	W =   -17.685 deg,	P =    33.469 deg,	R =   110.387 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[693]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2628.545  mm,	Y =   536.100  mm,	Z =   -75.597  mm,
	W =   -28.178 deg,	P =    11.271 deg,	R =   110.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[694]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   962.545  mm,	Y = -1093.036  mm,	Z =   867.966  mm,
	W =    44.863 deg,	P =     3.974 deg,	R =   -63.984 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[695]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   592.698  mm,	Y =  -634.536  mm,	Z =   863.966  mm,
	W =    36.388 deg,	P =   -28.554 deg,	R =   -27.033 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[696]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2632.222  mm,	Y =   732.009  mm,	Z =   -80.623  mm,
	W =   -28.919 deg,	P =    12.962 deg,	R =   109.016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[697]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2634.037  mm,	Y =   736.946  mm,	Z =   -80.036  mm,
	W =   -28.912 deg,	P =    12.964 deg,	R =    86.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[698]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   545.804  mm,	Y =  -597.246  mm,	Z =   979.702  mm,
	W =    15.937 deg,	P =   -42.493 deg,	R =     6.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[699]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   373.944  mm,	Y =  -794.657  mm,	Z =  1562.528  mm,
	W =    12.204 deg,	P =   -25.221 deg,	R =   -18.478 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[700]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   958.519  mm,	Y =  -942.564  mm,	Z =  1465.461  mm,
	W =     -.010 deg,	P =    45.866 deg,	R =    90.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[701]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1863.519  mm,	Y = -1304.565  mm,	Z =  1265.460  mm,
	W =   -41.810 deg,	P =   -20.894 deg,	R =   -21.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[702]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1929.519  mm,	Y = -1405.565  mm,	Z =  1058.460  mm,
	W =   -42.701 deg,	P =    18.644 deg,	R =    19.122 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[703]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2636.521  mm,	Y =   741.783  mm,	Z =   -80.114  mm,
	W =   -28.912 deg,	P =    12.964 deg,	R =    81.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[704]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2643.067  mm,	Y =   762.281  mm,	Z =   -80.422  mm,
	W =   -29.832 deg,	P =     9.276 deg,	R =    88.856 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[705]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2640.869  mm,	Y =   777.391  mm,	Z =   -80.196  mm,
	W =   -33.768 deg,	P =      .740 deg,	R =   112.866 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[706]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.805  mm,	Y =   840.968  mm,	Z =   -65.386  mm,
	W =   -31.195 deg,	P =     9.618 deg,	R =   105.424 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[707]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.195  mm,	Y =   827.922  mm,	Z =   -66.293  mm,
	W =   -32.481 deg,	P =     1.245 deg,	R =    91.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[708]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2039.010  mm,	Y = -1381.508  mm,	Z =  1071.568  mm,
	W =   -44.862 deg,	P =     3.961 deg,	R =   -20.537 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[709]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2562.628  mm,	Y =   816.135  mm,	Z =   -66.477  mm,
	W =   -29.304 deg,	P =   -14.723 deg,	R =   104.306 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[710]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1341.730  mm,	Y =  -571.237  mm,	Z =  1990.182  mm,
	W =   -18.602 deg,	P =   -32.070 deg,	R =   -22.859 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[711]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1392.804  mm,	Y =   640.782  mm,	Z =  1670.105  mm,
	W =    37.735 deg,	P =   -20.539 deg,	R =     -.894 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[712]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.519  mm,	Y =  1220.906  mm,	Z =  1351.461  mm,
	W =    44.958 deg,	P =    -2.212 deg,	R =     2.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[713]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1880.451  mm,	Y =  1275.016  mm,	Z =  1238.303  mm,
	W =    44.592 deg,	P =     6.805 deg,	R =    -6.838 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[714]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1926.400  mm,	Y =  1355.399  mm,	Z =  1070.204  mm,
	W =    41.277 deg,	P =    19.800 deg,	R =   -21.086 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[715]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2576.087  mm,	Y =   812.043  mm,	Z =   -72.164  mm,
	W =    -3.300 deg,	P =   -34.456 deg,	R =   105.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[716]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2599.271  mm,	Y =   811.663  mm,	Z =   -77.249  mm,
	W =    -3.299 deg,	P =   -34.461 deg,	R =   105.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[717]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2617.323  mm,	Y =   805.644  mm,	Z =   -77.465  mm,
	W =     3.038 deg,	P =   -34.483 deg,	R =    65.938 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[718]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2640.391  mm,	Y =   775.794  mm,	Z =   -80.773  mm,
	W =   -11.649 deg,	P =   -32.807 deg,	R =    38.714 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[719]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1063.279  mm,	Y = -1053.306  mm,	Z =   783.332  mm,
	W =    24.557 deg,	P =   -38.977 deg,	R =    -6.176 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[720]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1993.007  mm,	Y =  1431.170  mm,	Z =  1068.677  mm,
	W =    44.305 deg,	P =     8.850 deg,	R =     3.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[721]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1840.948  mm,	Y =  1174.835  mm,	Z =  1330.032  mm,
	W =    44.958 deg,	P =    -2.212 deg,	R =     2.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[722]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   975.793  mm,	Y =  -256.447  mm,	Z =  2489.902  mm,
	W =   -88.787 deg,	P =   -13.157 deg,	R =    77.737 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[723]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1109.166  mm,	Y = -1127.961  mm,	Z =   780.009  mm,
	W =    24.527 deg,	P =   -38.988 deg,	R =    -6.133 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[724]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   786.252  mm,	Y =  -573.217  mm,	Z =   780.478  mm,
	W =    38.067 deg,	P =   -23.497 deg,	R =   -32.642 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[725]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.792  mm,	Y =  -818.010  mm,	Z =   778.982  mm,
	W =    43.362 deg,	P =    -6.897 deg,	R =   -57.357 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[726]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1047.239  mm,	Y = -1021.242  mm,	Z =   783.994  mm,
	W =    37.928 deg,	P =   -23.474 deg,	R =   -37.343 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[727]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   765.614  mm,	Y =  -535.452  mm,	Z =   786.067  mm,
	W =    41.849 deg,	P =   -18.077 deg,	R =   -40.922 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[728]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   721.837  mm,	Y =  -462.053  mm,	Z =   783.548  mm,
	W =    27.769 deg,	P =   -36.841 deg,	R =   -11.320 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[729]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1898.693  mm,	Y = -1465.196  mm,	Z =  1035.174  mm,
	W =   -39.886 deg,	P =    23.861 deg,	R =    23.910 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[730]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1930.842  mm,	Y = -1465.932  mm,	Z =  1036.894  mm,
	W =   -43.540 deg,	P =    14.560 deg,	R =    14.833 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[731]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1966.391  mm,	Y = -1464.791  mm,	Z =  1037.270  mm,
	W =   -43.537 deg,	P =    14.558 deg,	R =    14.821 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[732]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   804.374  mm,	Y =   981.069  mm,	Z =  1117.927  mm,
	W =    50.730 deg,	P =      .639 deg,	R =   -51.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[733]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1064.016  mm,	Y =   999.283  mm,	Z =  1072.926  mm,
	W =    50.730 deg,	P =      .639 deg,	R =   -51.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[734]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.744  mm,	Y = -1479.610  mm,	Z =  1035.370  mm,
	W =   -43.544 deg,	P =    14.560 deg,	R =   -14.022 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[735]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2005.341  mm,	Y = -1493.994  mm,	Z =  1032.872  mm,
	W =   -44.808 deg,	P =     8.522 deg,	R =   -27.704 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[736]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1897.818  mm,	Y =  1491.288  mm,	Z =  1034.377  mm,
	W =    41.278 deg,	P =    19.806 deg,	R =   -17.231 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[737]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1932.829  mm,	Y =  1488.728  mm,	Z =  1037.568  mm,
	W =    41.270 deg,	P =    19.801 deg,	R =   -17.222 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[738]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1102.958  mm,	Y =   975.094  mm,	Z =  1056.986  mm,
	W =    50.535 deg,	P =   -23.426 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[739]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   851.887  mm,	Y =   977.237  mm,	Z =  1067.701  mm,
	W =    50.535 deg,	P =   -23.426 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[740]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   626.208  mm,	Y =  1096.450  mm,	Z =  1381.774  mm,
	W =    61.728 deg,	P =   -31.893 deg,	R =   -10.883 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[741]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.476  mm,	Y =  1486.706  mm,	Z =  1040.490  mm,
	W =    41.276 deg,	P =    19.802 deg,	R =   -17.225 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[742]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1987.397  mm,	Y =  1501.086  mm,	Z =  1037.179  mm,
	W =    41.274 deg,	P =    19.802 deg,	R =     6.738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[743]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1995.872  mm,	Y =  1510.585  mm,	Z =  1037.723  mm,
	W =    43.860 deg,	P =    11.269 deg,	R =    16.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[744]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1643.566  mm,	Y = -1408.541  mm,	Z =  1035.422  mm,
	W =   -42.856 deg,	P =   -15.294 deg,	R =    39.130 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[745]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.001  mm,	Y = -1400.198  mm,	Z =  1034.064  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    40.474 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[746]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1662.442  mm,	Y = -1389.784  mm,	Z =  1034.707  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    43.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[747]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.550  mm,	Y = -1382.945  mm,	Z =  1035.194  mm,
	W =   -43.824 deg,	P =   -18.067 deg,	R =    47.125 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[748]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1100.081  mm,	Y =  1012.995  mm,	Z =  1030.748  mm,
	W =    44.134 deg,	P =    -6.199 deg,	R =   -51.547 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[749]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1113.832  mm,	Y =  1008.842  mm,	Z =  1030.040  mm,
	W =    43.018 deg,	P =    -7.263 deg,	R =   -34.945 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[750]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1124.302  mm,	Y =  1006.723  mm,	Z =  1029.912  mm,
	W =    42.651 deg,	P =   -14.125 deg,	R =   -20.717 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[751]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1138.783  mm,	Y =  1004.894  mm,	Z =  1031.267  mm,
	W =    42.647 deg,	P =   -14.130 deg,	R =   -27.081 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[752]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2793.017  mm,	Y = -1472.744  mm,	Z =   939.115  mm,
	W =   -37.776 deg,	P =   -31.389 deg,	R =    42.831 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[753]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2794.995  mm,	Y = -1494.504  mm,	Z =   937.599  mm,
	W =   -37.762 deg,	P =   -31.393 deg,	R =    42.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[754]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2786.501  mm,	Y = -1525.976  mm,	Z =   936.000  mm,
	W =   -42.869 deg,	P =   -22.972 deg,	R =    39.989 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    99.999 deg,	J2=   -90.000 deg
};
P[755]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2776.812  mm,	Y = -1537.743  mm,	Z =   933.598  mm,
	W =   -45.701 deg,	P =   -14.897 deg,	R =    35.260 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[756]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2500.465  mm,	Y = -1499.903  mm,	Z =  1059.350  mm,
	W =   -50.284 deg,	P =   -30.325 deg,	R =    67.097 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[757]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2742.053  mm,	Y = -1559.698  mm,	Z =   926.134  mm,
	W =   -45.722 deg,	P =   -14.879 deg,	R =    30.415 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[758]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2723.925  mm,	Y = -1565.150  mm,	Z =   922.276  mm,
	W =   -45.707 deg,	P =   -14.888 deg,	R =    18.304 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[759]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2711.316  mm,	Y = -1566.584  mm,	Z =   918.265  mm,
	W =   -45.711 deg,	P =   -14.879 deg,	R =     6.076 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[760]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2683.065  mm,	Y = -1567.564  mm,	Z =   912.242  mm,
	W =   -45.718 deg,	P =   -14.888 deg,	R =     6.082 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[761]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2831.444  mm,	Y =  1497.758  mm,	Z =   887.365  mm,
	W =     1.873 deg,	P =   -42.067 deg,	R =    -2.897 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[762]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2831.262  mm,	Y =  1525.855  mm,	Z =   886.478  mm,
	W =     1.854 deg,	P =   -42.068 deg,	R =    -2.887 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[763]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2827.716  mm,	Y =  1550.337  mm,	Z =   883.519  mm,
	W =    47.255 deg,	P =   -13.928 deg,	R =   -43.726 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[764]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2804.967  mm,	Y =  1574.325  mm,	Z =   883.334  mm,
	W =    47.466 deg,	P =    -2.509 deg,	R =   -28.092 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[765]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2612.111  mm,	Y = -1537.301  mm,	Z =  1175.202  mm,
	W =   -45.531 deg,	P =     6.252 deg,	R =    32.963 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[766]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2773.183  mm,	Y =  1590.041  mm,	Z =   880.231  mm,
	W =    47.470 deg,	P =    -2.509 deg,	R =   -28.100 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[767]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2764.750  mm,	Y =  1592.676  mm,	Z =   879.887  mm,
	W =    46.963 deg,	P =     8.290 deg,	R =   -26.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[768]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2755.466  mm,	Y =  1595.589  mm,	Z =   878.719  mm,
	W =    47.288 deg,	P =    13.426 deg,	R =   -20.074 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.995 deg,	J2=    90.000 deg
};
P[769]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2714.916  mm,	Y =  1594.651  mm,	Z =   876.252  mm,
	W =    46.306 deg,	P =    12.117 deg,	R =   -20.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[770]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.833  mm,	Y =    59.955  mm,	Z =  -590.785  mm,
	W =     -.292 deg,	P =    37.605 deg,	R =      .743 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[771]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.834  mm,	Y =   -36.401  mm,	Z =  -590.784  mm,
	W =     -.292 deg,	P =    37.605 deg,	R =      .743 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[772]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2749.821  mm,	Y =   428.939  mm,	Z =   464.667  mm,
	W =    44.528 deg,	P =    -7.216 deg,	R =     7.296 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[773]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2715.354  mm,	Y =   428.138  mm,	Z =   464.592  mm,
	W =    44.543 deg,	P =    -7.213 deg,	R =     7.268 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[774]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2752.117  mm,	Y =  -403.442  mm,	Z =   463.818  mm,
	W =   -44.526 deg,	P =     7.212 deg,	R =     7.276 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[775]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2715.282  mm,	Y =  -404.077  mm,	Z =   462.987  mm,
	W =   -44.523 deg,	P =     7.209 deg,	R =     7.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[776]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2905.759  mm,	Y =   297.489  mm,	Z =   466.526  mm,
	W =   -14.926 deg,	P =   -42.904 deg,	R =    33.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[777]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.895  mm,	Y =   379.659  mm,	Z =   467.464  mm,
	W =    -8.441 deg,	P =   -43.927 deg,	R =    33.763 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[778]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1291.874  mm,	Y =   905.815  mm,	Z =  2427.792  mm,
	W =    68.242 deg,	P =   -43.563 deg,	R =   -51.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[779]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.123  mm,	Y =   411.321  mm,	Z =   468.436  mm,
	W =    -2.983 deg,	P =   -44.252 deg,	R =    40.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[780]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2526.820  mm,	Y =  1556.392  mm,	Z =  1079.609  mm,
	W =    21.780 deg,	P =   -40.404 deg,	R =   -29.962 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[781]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2659.725  mm,	Y =  1505.803  mm,	Z =  1079.609  mm,
	W =    15.908 deg,	P =   -31.536 deg,	R =   -26.500 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[782]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2902.073  mm,	Y =   421.602  mm,	Z =   467.948  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    53.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[783]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2887.593  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[784]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2878.735  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[785]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2903.526  mm,	Y =  -269.076  mm,	Z =   466.198  mm,
	W =    14.881 deg,	P =   -42.512 deg,	R =   -27.203 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[786]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.858  mm,	Y =  -366.735  mm,	Z =   467.050  mm,
	W =     7.402 deg,	P =   -43.864 deg,	R =   -27.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[787]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.317  mm,	Y =  -381.646  mm,	Z =   467.885  mm,
	W =     7.404 deg,	P =   -43.863 deg,	R =   -33.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[788]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2895.908  mm,	Y =  -394.691  mm,	Z =   467.867  mm,
	W =    -1.094 deg,	P =   -44.445 deg,	R =   -50.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.996 deg,	J2=     0.000 deg
};
P[789]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2889.336  mm,	Y =  -400.456  mm,	Z =   464.138  mm,
	W =    -1.103 deg,	P =   -44.447 deg,	R =   -71.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[790]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2586.641  mm,	Y =  1526.023  mm,	Z =  1082.786  mm,
	W =    42.689 deg,	P =    16.599 deg,	R =   -42.374 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[791]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2877.924  mm,	Y =  -402.031  mm,	Z =   463.256  mm,
	W =    -1.100 deg,	P =   -44.451 deg,	R =   -71.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[792]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2905.759  mm,	Y =   297.489  mm,	Z =   466.526  mm,
	W =   -14.926 deg,	P =   -42.904 deg,	R =    33.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[793]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   419.331  mm,	Y =  1026.789  mm,	Z =  1609.020  mm,
	W =    71.318 deg,	P =     7.769 deg,	R =   -20.454 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[794]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.895  mm,	Y =   379.659  mm,	Z =   467.464  mm,
	W =    -8.441 deg,	P =   -43.927 deg,	R =    33.763 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[795]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.123  mm,	Y =   411.321  mm,	Z =   468.436  mm,
	W =    -2.983 deg,	P =   -44.252 deg,	R =    40.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[796]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2902.073  mm,	Y =   421.602  mm,	Z =   467.948  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    53.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[797]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2887.593  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[798]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2878.735  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[799]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2905.759  mm,	Y =   297.489  mm,	Z =   466.526  mm,
	W =   -14.926 deg,	P =   -42.904 deg,	R =    33.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[800]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.895  mm,	Y =   379.659  mm,	Z =   467.464  mm,
	W =    -8.441 deg,	P =   -43.927 deg,	R =    33.763 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[801]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2904.123  mm,	Y =   411.321  mm,	Z =   468.436  mm,
	W =    -2.983 deg,	P =   -44.252 deg,	R =    40.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[802]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2902.073  mm,	Y =   421.602  mm,	Z =   467.948  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    53.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[803]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2887.593  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[804]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2878.735  mm,	Y =   431.459  mm,	Z =   467.662  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[805]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2903.526  mm,	Y =  -269.076  mm,	Z =   466.198  mm,
	W =    14.881 deg,	P =   -42.512 deg,	R =   -27.203 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[806]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.858  mm,	Y =  -366.735  mm,	Z =   467.050  mm,
	W =     7.402 deg,	P =   -43.864 deg,	R =   -27.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[807]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.317  mm,	Y =  -381.646  mm,	Z =   467.885  mm,
	W =     7.404 deg,	P =   -43.863 deg,	R =   -33.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[808]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2895.908  mm,	Y =  -394.691  mm,	Z =   467.867  mm,
	W =    -1.094 deg,	P =   -44.445 deg,	R =   -50.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.996 deg,	J2=     0.000 deg
};
P[809]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2889.336  mm,	Y =  -400.456  mm,	Z =   464.138  mm,
	W =    -1.103 deg,	P =   -44.447 deg,	R =   -71.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[810]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2877.924  mm,	Y =  -402.031  mm,	Z =   463.256  mm,
	W =    -1.100 deg,	P =   -44.451 deg,	R =   -71.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[811]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2903.526  mm,	Y =  -269.076  mm,	Z =   466.198  mm,
	W =    14.881 deg,	P =   -42.512 deg,	R =   -27.203 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[812]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.858  mm,	Y =  -366.735  mm,	Z =   467.050  mm,
	W =     7.402 deg,	P =   -43.864 deg,	R =   -27.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[813]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.317  mm,	Y =  -381.646  mm,	Z =   467.885  mm,
	W =     7.404 deg,	P =   -43.863 deg,	R =   -33.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[814]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2895.908  mm,	Y =  -394.691  mm,	Z =   467.867  mm,
	W =    -1.094 deg,	P =   -44.445 deg,	R =   -50.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.996 deg,	J2=     0.000 deg
};
P[815]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2889.336  mm,	Y =  -400.456  mm,	Z =   464.138  mm,
	W =    -1.103 deg,	P =   -44.447 deg,	R =   -71.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[816]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2877.924  mm,	Y =  -402.031  mm,	Z =   463.256  mm,
	W =    -1.100 deg,	P =   -44.451 deg,	R =   -71.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[817]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2745.545  mm,	Y =  -276.052  mm,	Z =   464.654  mm,
	W =    29.147 deg,	P =    30.453 deg,	R =  -132.266 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[818]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2745.001  mm,	Y =  -318.060  mm,	Z =   465.700  mm,
	W =    29.459 deg,	P =    30.698 deg,	R =  -132.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[819]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2759.258  mm,	Y =  -343.755  mm,	Z =   464.873  mm,
	W =    32.708 deg,	P =    26.756 deg,	R =  -103.211 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[820]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2781.851  mm,	Y =  -350.503  mm,	Z =   466.805  mm,
	W =    32.871 deg,	P =    19.630 deg,	R =   -83.146 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[821]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2740.523  mm,	Y =   300.010  mm,	Z =   465.528  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[822]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2741.022  mm,	Y =   348.224  mm,	Z =   465.529  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[823]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2758.912  mm,	Y =   371.174  mm,	Z =   466.650  mm,
	W =   -32.204 deg,	P =    27.169 deg,	R =   100.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[824]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2774.997  mm,	Y =   375.066  mm,	Z =   468.013  mm,
	W =   -28.646 deg,	P =    22.121 deg,	R =    94.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[825]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.877  mm,	Y =   251.121  mm,	Z =   363.698  mm,
	W =    31.331 deg,	P =    33.498 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[826]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.020  mm,	Y =   178.121  mm,	Z =   363.698  mm,
	W =    31.331 deg,	P =    33.498 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[827]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.284  mm,	Y =  -228.674  mm,	Z =   362.649  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[828]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.070  mm,	Y =  -158.103  mm,	Z =   362.293  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[829]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1808.570  mm,	Y =  -390.427  mm,	Z =   832.270  mm,
	W =     -.610 deg,	P =      .928 deg,	R =   -33.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[830]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.828  mm,	Y =  -159.968  mm,	Z =   830.736  mm,
	W =     -.607 deg,	P =      .924 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[831]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1804.560  mm,	Y =   408.326  mm,	Z =   829.592  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[832]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1806.042  mm,	Y =   179.612  mm,	Z =   828.163  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[833]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2178.657  mm,	Y =   659.349  mm,	Z =  1322.478  mm,
	W =     -.151 deg,	P =     4.190 deg,	R =     -.119 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
};
P[834]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.570  mm,	Y =   501.982  mm,	Z =  1322.098  mm,
	W =      .050 deg,	P =     4.374 deg,	R =     -.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.995 deg,	J2=     0.000 deg
};
P[835]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.470  mm,	Y =   459.845  mm,	Z =  1322.928  mm,
	W =   -10.985 deg,	P =     4.746 deg,	R =     -.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.999 deg,	J2=     0.000 deg
};
P[836]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2167.431  mm,	Y =    27.132  mm,	Z =  1339.879  mm,
	W =     -.713 deg,	P =     8.623 deg,	R =     -.119 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
};
P[837]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2168.446  mm,	Y =  -166.967  mm,	Z =  1339.463  mm,
	W =     -.016 deg,	P =    10.106 deg,	R =      .980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[838]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2169.557  mm,	Y =  -389.532  mm,	Z =  1339.244  mm,
	W =     -.928 deg,	P =     7.504 deg,	R =     -.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[839]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2165.947  mm,	Y =   412.114  mm,	Z =  1341.826  mm,
	W =      .150 deg,	P =     6.214 deg,	R =      .016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[840]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2167.028  mm,	Y =   193.246  mm,	Z =  1340.156  mm,
	W =      .990 deg,	P =     7.423 deg,	R =      .117 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[841]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2168.042  mm,	Y =    21.221  mm,	Z =  1339.306  mm,
	W =    -1.723 deg,	P =     8.124 deg,	R =     2.334 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[842]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2183.748  mm,	Y =  -629.768  mm,	Z =  1321.915  mm,
	W =      .004 deg,	P =     8.094 deg,	R =      .009 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[843]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2183.088  mm,	Y =  -436.975  mm,	Z =  1322.259  mm,
	W =      .023 deg,	P =     7.896 deg,	R =     -.019 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[844]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2182.831  mm,	Y =  -431.800  mm,	Z =  1321.998  mm,
	W =     8.588 deg,	P =     5.688 deg,	R =      .847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[845]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2136.258  mm,	Y =   423.750  mm,	Z =   282.790  mm,
	W =    39.277 deg,	P =    23.849 deg,	R =     9.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[846]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.097  mm,	Y =   424.295  mm,	Z =   280.001  mm,
	W =    39.267 deg,	P =    23.856 deg,	R =   -24.748 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[847]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2191.038  mm,	Y =   425.038  mm,	Z =   280.145  mm,
	W =    39.348 deg,	P =    23.574 deg,	R =   -24.954 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[848]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2201.796  mm,	Y =   419.697  mm,	Z =   288.204  mm,
	W =    48.341 deg,	P =     9.057 deg,	R =   -36.927 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[849]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.458  mm,	Y =  -402.882  mm,	Z =   276.210  mm,
	W =   -42.888 deg,	P =    -2.088 deg,	R =   -37.991 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[850]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2146.996  mm,	Y =  -401.034  mm,	Z =   278.267  mm,
	W =   -42.902 deg,	P =    -2.083 deg,	R =    -3.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[851]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2201.068  mm,	Y =  -403.642  mm,	Z =   276.795  mm,
	W =   -42.889 deg,	P =    -2.090 deg,	R =    -3.521 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[852]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2208.911  mm,	Y =  -404.418  mm,	Z =   278.857  mm,
	W =   -37.665 deg,	P =   -22.310 deg,	R =     8.929 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[853]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2235.739  mm,	Y =  -233.047  mm,	Z =  -188.744  mm,
	W =    34.819 deg,	P =    27.070 deg,	R =  -123.447 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[854]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2233.830  mm,	Y =    -8.684  mm,	Z =  -186.712  mm,
	W =    34.826 deg,	P =    27.081 deg,	R =  -123.458 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[855]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2234.912  mm,	Y =    11.625  mm,	Z =  -185.523  mm,
	W =    33.015 deg,	P =    26.717 deg,	R =   -93.423 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[856]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2233.192  mm,	Y =   249.052  mm,	Z =  -187.235  mm,
	W =   -26.756 deg,	P =    37.337 deg,	R =   139.556 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[857]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2237.745  mm,	Y =    33.563  mm,	Z =  -188.748  mm,
	W =   -26.755 deg,	P =    37.337 deg,	R =   139.561 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[858]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2232.730  mm,	Y =     3.648  mm,	Z =  -186.256  mm,
	W =   -20.117 deg,	P =    35.519 deg,	R =   111.507 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[859]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1487.823  mm,	Y =  -637.223  mm,	Z =     4.887  mm,
	W =    42.306 deg,	P =    16.820 deg,	R =  -100.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[860]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1488.724  mm,	Y =  -603.338  mm,	Z =     5.170  mm,
	W =    42.315 deg,	P =    16.837 deg,	R =  -100.936 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[861]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1485.624  mm,	Y =  -440.808  mm,	Z =     7.456  mm,
	W =    42.350 deg,	P =    16.907 deg,	R =   -86.948 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[862]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1462.579  mm,	Y =    13.411  mm,	Z =     4.510  mm,
	W =      .947 deg,	P =    42.922 deg,	R =   177.955 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[863]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1463.463  mm,	Y =  -315.428  mm,	Z =     5.740  mm,
	W =    -1.380 deg,	P =    43.931 deg,	R =   175.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[864]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1462.309  mm,	Y =  -379.397  mm,	Z =     6.892  mm,
	W =     5.165 deg,	P =    43.293 deg,	R =  -179.580 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[865]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1459.882  mm,	Y =   397.906  mm,	Z =     4.916  mm,
	W =   -18.718 deg,	P =    37.733 deg,	R =   149.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[866]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.720  mm,	Y =    13.774  mm,	Z =     7.353  mm,
	W =      .274 deg,	P =    41.497 deg,	R =   174.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[867]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1483.448  mm,	Y =   656.175  mm,	Z =    14.251  mm,
	W =    29.504 deg,	P =    31.493 deg,	R =  -136.893 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[868]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1482.620  mm,	Y =   468.746  mm,	Z =    12.817  mm,
	W =    40.718 deg,	P =    18.744 deg,	R =  -126.943 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[869]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1482.535  mm,	Y =   458.132  mm,	Z =    12.780  mm,
	W =    41.200 deg,	P =    17.928 deg,	R =  -126.514 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[870]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.201  mm,	Y =   -70.461  mm,	Z =  -434.552  mm,
	W =     -.954 deg,	P =    22.924 deg,	R =      .993 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[871]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2191.595  mm,	Y =  -150.581  mm,	Z =  -435.156  mm,
	W =     -.956 deg,	P =    22.925 deg,	R =    22.595 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[872]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1531.039  mm,	Y =   -74.045  mm,	Z =   -60.070  mm,
	W =     1.185 deg,	P =   -23.204 deg,	R =    -8.287 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[873]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1531.995  mm,	Y =   -94.374  mm,	Z =   -60.791  mm,
	W =     1.176 deg,	P =   -23.207 deg,	R =    -8.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[874]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1532.795  mm,	Y =  -150.585  mm,	Z =   -61.433  mm,
	W =     1.185 deg,	P =   -23.200 deg,	R =    -8.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[875]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1532.399  mm,	Y =  -119.775  mm,	Z =   -61.224  mm,
	W =     1.182 deg,	P =   -23.203 deg,	R =    -8.289 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[876]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2377.991  mm,	Y =   -75.118  mm,	Z =   -21.967  mm,
	W =    40.518 deg,	P =    40.131 deg,	R =    23.486 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[877]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2373.865  mm,	Y =   -94.159  mm,	Z =   -21.772  mm,
	W =    40.517 deg,	P =    40.133 deg,	R =    54.911 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[878]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2374.227  mm,	Y =  -129.954  mm,	Z =   -20.479  mm,
	W =    40.518 deg,	P =    40.131 deg,	R =    54.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[879]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2375.496  mm,	Y =  -148.718  mm,	Z =   -20.852  mm,
	W =    39.922 deg,	P =    39.704 deg,	R =    81.922 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[880]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1673.244  mm,	Y =  -186.849  mm,	Z =   -12.723  mm,
	W =    38.562 deg,	P =    15.652 deg,	R =    22.711 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[881]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.281  mm,	Y =  -187.144  mm,	Z =   -10.891  mm,
	W =    38.570 deg,	P =    15.647 deg,	R =   -27.578 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[882]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.359  mm,	Y =  -186.916  mm,	Z =   -11.179  mm,
	W =    41.524 deg,	P =    13.967 deg,	R =   -26.862 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[883]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2000.913  mm,	Y =  -186.696  mm,	Z =   -10.347  mm,
	W =    38.528 deg,	P =    15.652 deg,	R =   -66.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[884]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.198  mm,	Y =    55.160  mm,	Z =     5.970  mm,
	W =    44.926 deg,	P =     3.034 deg,	R =    -3.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[885]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.476  mm,	Y =    55.786  mm,	Z =     6.601  mm,
	W =    44.923 deg,	P =     3.031 deg,	R =    -3.038 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[886]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.017  mm,	Y =    55.089  mm,	Z =    -2.879  mm,
	W =    44.921 deg,	P =     3.028 deg,	R =    -3.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[887]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.116  mm,	Y =    54.430  mm,	Z =    -1.611  mm,
	W =    44.924 deg,	P =     3.032 deg,	R =    -3.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[888]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.246  mm,	Y =    53.876  mm,	Z =     -.373  mm,
	W =    44.919 deg,	P =     3.026 deg,	R =   -14.186 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[889]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2118.129  mm,	Y =    53.365  mm,	Z =   -11.331  mm,
	W =    44.928 deg,	P =     3.034 deg,	R =     5.574 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[890]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2025.224  mm,	Y =    53.089  mm,	Z =   -11.323  mm,
	W =    44.928 deg,	P =     3.031 deg,	R =     5.581 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[891]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.630  mm,	Y =    53.107  mm,	Z =   -11.366  mm,
	W =    44.931 deg,	P =     3.043 deg,	R =    34.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[892]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1799.188  mm,	Y =    54.902  mm,	Z =    56.394  mm,
	W =    50.324 deg,	P =     2.539 deg,	R =    12.040 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[893]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1690.022  mm,	Y =    51.584  mm,	Z =    58.827  mm,
	W =    50.328 deg,	P =     2.543 deg,	R =    12.043 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[894]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.210  mm,	Y =    49.772  mm,	Z =    60.285  mm,
	W =    55.797 deg,	P =      .901 deg,	R =    26.090 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[895]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.347  mm,	Y =    53.166  mm,	Z =    58.863  mm,
	W =    52.751 deg,	P =    -4.416 deg,	R =     3.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[896]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.650  mm,	Y =    55.105  mm,	Z =    55.758  mm,
	W =    53.721 deg,	P =    -4.476 deg,	R =     3.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[897]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2000.056  mm,	Y =    51.972  mm,	Z =    58.502  mm,
	W =    52.868 deg,	P =   -12.268 deg,	R =   -23.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[898]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.180  mm,	Y =    66.099  mm,	Z =    -1.785  mm,
	W =   -44.609 deg,	P =    -6.680 deg,	R =    -6.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[899]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2266.839  mm,	Y =    67.302  mm,	Z =     -.064  mm,
	W =   -44.609 deg,	P =    -6.676 deg,	R =    -6.726 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[900]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2139.677  mm,	Y =    66.559  mm,	Z =    -8.353  mm,
	W =   -44.605 deg,	P =    -6.678 deg,	R =    -6.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[901]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.201  mm,	Y =    67.923  mm,	Z =    -7.410  mm,
	W =   -44.606 deg,	P =    -6.676 deg,	R =    -6.723 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[902]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2213.314  mm,	Y =    66.559  mm,	Z =    -7.780  mm,
	W =   -44.607 deg,	P =    -6.680 deg,	R =     6.845 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[903]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1993.335  mm,	Y =    66.632  mm,	Z =   -18.063  mm,
	W =   -44.598 deg,	P =    -6.687 deg,	R =    -3.028 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[904]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.177  mm,	Y =    68.196  mm,	Z =   -16.279  mm,
	W =   -44.610 deg,	P =    -6.676 deg,	R =    -3.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[905]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.669  mm,	Y =    68.079  mm,	Z =   -12.688  mm,
	W =   -42.116 deg,	P =   -17.568 deg,	R =    21.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[906]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.751  mm,	Y =   102.079  mm,	Z =   -12.082  mm,
	W =   -45.253 deg,	P =    -8.453 deg,	R =  -108.141 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[907]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.223  mm,	Y =  -122.001  mm,	Z =   -48.481  mm,
	W =   -45.248 deg,	P =    -8.452 deg,	R =   -86.326 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[908]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.457  mm,	Y =   175.047  mm,	Z =   183.225  mm,
	W =     2.780 deg,	P =    -7.669 deg,	R =   -18.458 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[909]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2866.579  mm,	Y =   178.189  mm,	Z =   188.861  mm,
	W =     9.502 deg,	P =   -26.582 deg,	R =   -20.495 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   135.000 deg
};
P[910]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.254  mm,	Y =   277.346  mm,	Z =    92.106  mm,
	W =     1.846 deg,	P =     -.179 deg,	R =      .947 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[911]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.953  mm,	Y =   278.563  mm,	Z =    92.649  mm,
	W =     1.723 deg,	P =    -7.244 deg,	R =      .958 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[912]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2079.674  mm,	Y =   119.684  mm,	Z =   -13.503  mm,
	W =    37.938 deg,	P =    17.393 deg,	R =   -97.677 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[913]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2107.541  mm,	Y =    91.774  mm,	Z =   -12.232  mm,
	W =    37.933 deg,	P =    17.391 deg,	R =  -104.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[914]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2123.963  mm,	Y =    74.328  mm,	Z =    -9.686  mm,
	W =    40.829 deg,	P =    19.041 deg,	R =  -124.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[915]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1688.578  mm,	Y =    68.430  mm,	Z =   -18.303  mm,
	W =   -42.811 deg,	P =    15.445 deg,	R =    16.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[916]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1651.189  mm,	Y =    68.384  mm,	Z =   -18.170  mm,
	W =   -42.811 deg,	P =    15.445 deg,	R =    16.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[917]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1641.486  mm,	Y =    69.984  mm,	Z =   -18.017  mm,
	W =   -42.802 deg,	P =    15.441 deg,	R =    -7.970 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[918]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.303  mm,	Y =    72.574  mm,	Z =   -19.890  mm,
	W =   -38.580 deg,	P =    25.212 deg,	R =   -16.906 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[919]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.511  mm,	Y =   100.945  mm,	Z =   -20.220  mm,
	W =   -38.581 deg,	P =    25.213 deg,	R =   -16.910 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[920]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.434  mm,	Y =   111.509  mm,	Z =   -19.223  mm,
	W =   -44.998 deg,	P =    -3.171 deg,	R =      .428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[921]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1565.857  mm,	Y =    86.604  mm,	Z =   -16.661  mm,
	W =   -45.448 deg,	P =    19.946 deg,	R =    98.978 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[922]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1561.980  mm,	Y =    43.412  mm,	Z =   -17.393  mm,
	W =   -45.341 deg,	P =    20.071 deg,	R =    97.877 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[923]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1557.455  mm,	Y =    34.734  mm,	Z =   -14.659  mm,
	W =   -41.212 deg,	P =    19.951 deg,	R =    68.903 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[924]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.432  mm,	Y =    29.710  mm,	Z =   -18.261  mm,
	W =   -41.212 deg,	P =    19.944 deg,	R =    34.864 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[925]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1545.443  mm,	Y =    27.978  mm,	Z =   -18.518  mm,
	W =   -41.206 deg,	P =    19.937 deg,	R =    34.859 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[926]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2865.227  mm,	Y =  1437.901  mm,	Z =    -5.229  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[927]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2865.228  mm,	Y =  1421.330  mm,	Z =    -5.229  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[928]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2850.371  mm,	Y =  1421.330  mm,	Z =    -5.228  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[929]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2850.370  mm,	Y =  1421.329  mm,	Z =     -.942  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[930]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2850.129  mm,	Y =  1437.623  mm,	Z =    -5.153  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[931]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2850.129  mm,	Y =  1437.623  mm,	Z =     -.867  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[932]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1661.474  mm,	Y =  -211.430  mm,	Z =   -14.467  mm,
	W =   -32.923 deg,	P =    29.352 deg,	R =   129.298 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[933]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1661.456  mm,	Y =    27.029  mm,	Z =   -15.234  mm,
	W =   -34.235 deg,	P =    30.074 deg,	R =   141.357 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[934]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.583  mm,	Y =  -166.791  mm,	Z =    -1.143  mm,
	W =    44.579 deg,	P =     6.896 deg,	R =    -6.948 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[935]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2528.956  mm,	Y =  -162.655  mm,	Z =     -.745  mm,
	W =    44.582 deg,	P =     6.894 deg,	R =    -6.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[936]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2357.492  mm,	Y =   -79.748  mm,	Z =     -.449  mm,
	W =    43.253 deg,	P =    13.899 deg,	R =   -18.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[937]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2403.170  mm,	Y =   -77.561  mm,	Z =     -.153  mm,
	W =    43.247 deg,	P =    13.894 deg,	R =   -18.614 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[938]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2425.265  mm,	Y =   -75.847  mm,	Z =     -.682  mm,
	W =    42.932 deg,	P =    13.800 deg,	R =   -51.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.994 deg,	J2=    90.001 deg
};
P[939]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.325  mm,	Y =   473.158  mm,	Z =   835.968  mm,
	W =    39.872 deg,	P =   -22.882 deg,	R =   -65.015 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[940]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.315  mm,	Y =   491.221  mm,	Z =   835.551  mm,
	W =    39.874 deg,	P =   -22.882 deg,	R =   -65.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[941]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.342  mm,	Y =   498.399  mm,	Z =   835.965  mm,
	W =    39.869 deg,	P =   -22.881 deg,	R =   -69.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[942]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1686.294  mm,	Y =   502.192  mm,	Z =   835.782  mm,
	W =    39.867 deg,	P =   -22.881 deg,	R =   -70.971 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[943]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.542  mm,	Y =   572.021  mm,	Z =   833.650  mm,
	W =    39.889 deg,	P =   -22.872 deg,	R =   -70.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[944]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.635  mm,	Y =   574.784  mm,	Z =   834.621  mm,
	W =    39.875 deg,	P =   -22.876 deg,	R =   -74.849 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[945]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.926  mm,	Y =   578.115  mm,	Z =   833.070  mm,
	W =    39.876 deg,	P =   -22.873 deg,	R =   -82.539 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[946]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.977  mm,	Y =   837.117  mm,	Z =   835.341  mm,
	W =    14.308 deg,	P =   -43.040 deg,	R =   -40.623 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -89.991 deg,	J2=   -89.999 deg
};
P[947]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1705.072  mm,	Y =   434.306  mm,	Z =   834.623  mm,
	W =    43.039 deg,	P =   -14.376 deg,	R =   -45.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[948]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1837.222  mm,	Y =   282.936  mm,	Z =   837.197  mm,
	W =    43.048 deg,	P =   -14.367 deg,	R =   -45.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[949]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1846.282  mm,	Y =   274.844  mm,	Z =   836.456  mm,
	W =    43.043 deg,	P =   -14.373 deg,	R =   -42.869 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[950]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.284  mm,	Y =   264.264  mm,	Z =   837.590  mm,
	W =    43.040 deg,	P =   -14.375 deg,	R =   -40.827 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[951]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1921.924  mm,	Y =   216.710  mm,	Z =   837.742  mm,
	W =    43.043 deg,	P =   -14.374 deg,	R =   -40.827 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[952]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.193  mm,	Y =  -453.390  mm,	Z =   837.036  mm,
	W =   -28.324 deg,	P =   -37.469 deg,	R =    36.656 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[953]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.929  mm,	Y =  -469.569  mm,	Z =   837.938  mm,
	W =   -28.311 deg,	P =   -37.472 deg,	R =    36.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[954]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.868  mm,	Y =  -474.172  mm,	Z =   837.920  mm,
	W =   -28.319 deg,	P =   -37.466 deg,	R =    39.717 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[955]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.234  mm,	Y =  -476.970  mm,	Z =   837.454  mm,
	W =   -28.320 deg,	P =   -37.464 deg,	R =    41.169 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[956]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1705.800  mm,	Y =  -547.787  mm,	Z =   836.670  mm,
	W =   -28.304 deg,	P =   -37.472 deg,	R =    41.151 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[957]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.265  mm,	Y =  -551.949  mm,	Z =   836.333  mm,
	W =   -28.320 deg,	P =   -37.465 deg,	R =    48.503 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[958]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1711.157  mm,	Y =  -557.289  mm,	Z =   835.170  mm,
	W =   -28.318 deg,	P =   -37.465 deg,	R =    55.395 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[959]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.295  mm,	Y =  -818.144  mm,	Z =   836.002  mm,
	W =   -28.326 deg,	P =   -37.469 deg,	R =    50.637 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[960]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.432  mm,	Y =  -414.901  mm,	Z =   836.550  mm,
	W =   -39.458 deg,	P =    -8.332 deg,	R =    42.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[961]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1836.725  mm,	Y =  -261.130  mm,	Z =   837.566  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    42.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[962]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.154  mm,	Y =  -250.558  mm,	Z =   837.780  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    38.620 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[963]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1865.972  mm,	Y =  -238.338  mm,	Z =   836.303  mm,
	W =   -39.464 deg,	P =    -8.329 deg,	R =    41.376 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[964]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1936.009  mm,	Y =  -184.129  mm,	Z =   835.922  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    45.243 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[965]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2332.738  mm,	Y =   -47.271  mm,	Z =   843.561  mm,
	W =     4.734 deg,	P =    44.798 deg,	R =    66.699 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[966]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2397.915  mm,	Y =   -81.738  mm,	Z =   843.540  mm,
	W =     4.740 deg,	P =    44.803 deg,	R =    66.701 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[967]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.544  mm,	Y =  -101.513  mm,	Z =   844.600  mm,
	W =   -19.423 deg,	P =    41.434 deg,	R =   -56.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[968]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.369  mm,	Y =   -81.730  mm,	Z =   844.555  mm,
	W =   -19.420 deg,	P =    41.429 deg,	R =   -56.056 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[969]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2328.544  mm,	Y =   -68.370  mm,	Z =   846.428  mm,
	W =    34.013 deg,	P =    31.443 deg,	R =   -66.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[970]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2393.286  mm,	Y =  -101.982  mm,	Z =   846.571  mm,
	W =    34.017 deg,	P =    31.444 deg,	R =   -66.601 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[971]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2528.546  mm,	Y =   -75.301  mm,	Z =   -25.347  mm,
	W =   -31.378 deg,	P =   -16.422 deg,	R =   -28.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[972]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2478.819  mm,	Y =   -77.760  mm,	Z =   -27.432  mm,
	W =   -25.030 deg,	P =   -25.322 deg,	R =   -46.368 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[973]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2453.018  mm,	Y =   -75.007  mm,	Z =   -22.167  mm,
	W =   -25.030 deg,	P =   -25.320 deg,	R =   -79.891 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[974]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.417  mm,	Y =   -77.872  mm,	Z =   -26.021  mm,
	W =   -31.933 deg,	P =   -15.149 deg,	R =   -17.048 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[975]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2405.871  mm,	Y =   -77.687  mm,	Z =   -25.824  mm,
	W =   -31.936 deg,	P =   -15.140 deg,	R =   -17.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[976]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2425.431  mm,	Y =   -74.422  mm,	Z =   -19.845  mm,
	W =   -21.656 deg,	P =   -28.186 deg,	R =   -20.809 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[977]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2131.448  mm,	Y =   167.383  mm,	Z =   837.718  mm,
	W =     2.978 deg,	P =    35.508 deg,	R =   160.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[978]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2138.426  mm,	Y =   185.708  mm,	Z =   836.262  mm,
	W =     2.984 deg,	P =    35.512 deg,	R =   160.108 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[979]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2123.406  mm,	Y =   217.744  mm,	Z =   837.111  mm,
	W =     2.989 deg,	P =    35.514 deg,	R =  -100.158 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[980]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2092.958  mm,	Y =   207.232  mm,	Z =   834.589  mm,
	W =     2.994 deg,	P =    35.514 deg,	R =   -13.063 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[981]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2078.138  mm,	Y =   163.139  mm,	Z =   834.542  mm,
	W =     2.985 deg,	P =    35.519 deg,	R =   -13.063 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[982]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2096.759  mm,	Y =   132.279  mm,	Z =   836.139  mm,
	W =     2.980 deg,	P =    35.506 deg,	R =    77.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[983]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.080  mm,	Y =   144.467  mm,	Z =   837.660  mm,
	W =     2.985 deg,	P =    35.516 deg,	R =   159.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[984]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.538  mm,	Y =   166.438  mm,	Z =   838.726  mm,
	W =     2.983 deg,	P =    35.509 deg,	R =   159.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[985]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.672  mm,	Y =   237.739  mm,	Z =   836.183  mm,
	W =    -2.356 deg,	P =    42.845 deg,	R =    86.535 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[986]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.874  mm,	Y =   237.707  mm,	Z =   836.167  mm,
	W =    -2.351 deg,	P =    42.846 deg,	R =    86.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[987]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2202.749  mm,	Y =   236.200  mm,	Z =   835.913  mm,
	W =    -2.491 deg,	P =    44.296 deg,	R =    56.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[988]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.456  mm,	Y =   232.643  mm,	Z =   837.248  mm,
	W =      .034 deg,	P =    44.146 deg,	R =    40.391 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[989]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2435.847  mm,	Y =   -25.240  mm,	Z =   836.935  mm,
	W =     -.127 deg,	P =    43.812 deg,	R =    45.343 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[990]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2452.948  mm,	Y =   -41.289  mm,	Z =   836.917  mm,
	W =      .173 deg,	P =    43.852 deg,	R =    54.361 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[991]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2458.273  mm,	Y =   -44.559  mm,	Z =   837.752  mm,
	W =    -1.320 deg,	P =    42.581 deg,	R =    55.585 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[992]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.577  mm,	Y =  -188.361  mm,	Z =   837.661  mm,
	W =   -30.971 deg,	P =    27.488 deg,	R =    12.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[993]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2658.956  mm,	Y =  -190.395  mm,	Z =   839.674  mm,
	W =   -30.965 deg,	P =    27.488 deg,	R =    12.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[994]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2073.431  mm,	Y =    50.699  mm,	Z =    17.153  mm,
	W =   -30.932 deg,	P =    -2.126 deg,	R =   142.465 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[995]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.468  mm,	Y =    13.622  mm,	Z =     7.245  mm,
	W =   -27.575 deg,	P =     5.122 deg,	R =   142.904 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[996]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2121.990  mm,	Y =     3.257  mm,	Z =     4.854  mm,
	W =   -27.571 deg,	P =     5.117 deg,	R =   139.585 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[997]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2127.968  mm,	Y =    -1.323  mm,	Z =     3.645  mm,
	W =   -27.577 deg,	P =     5.121 deg,	R =   136.987 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[998]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2250.493  mm,	Y =  -170.352  mm,	Z =   -14.380  mm,
	W =   -36.468 deg,	P =    -8.805 deg,	R =   122.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[999]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2258.054  mm,	Y =  -180.789  mm,	Z =   -16.004  mm,
	W =   -36.557 deg,	P =   -11.679 deg,	R =   125.980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1000]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.270  mm,	Y =  -192.246  mm,	Z =   -17.258  mm,
	W =   -36.298 deg,	P =   -14.510 deg,	R =   128.300 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1001]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2511.729  mm,	Y =  -421.925  mm,	Z =   -58.540  mm,
	W =   -23.404 deg,	P =   -31.780 deg,	R =    95.153 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1002]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2535.771  mm,	Y =  -433.252  mm,	Z =   -64.743  mm,
	W =   -18.432 deg,	P =   -37.731 deg,	R =   100.748 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1003]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.962  mm,	Y =  -440.220  mm,	Z =   -66.569  mm,
	W =   -18.755 deg,	P =   -39.987 deg,	R =   104.532 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1004]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.777  mm,	Y =  -444.328  mm,	Z =   -68.493  mm,
	W =   -18.759 deg,	P =   -39.992 deg,	R =   104.538 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1005]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2613.677  mm,	Y =  -477.273  mm,	Z =   -77.598  mm,
	W =   -35.261 deg,	P =   -23.936 deg,	R =   103.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1006]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2626.463  mm,	Y =  -510.442  mm,	Z =   -79.962  mm,
	W =   -33.013 deg,	P =   -16.162 deg,	R =    67.004 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1007]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2625.741  mm,	Y =  -708.057  mm,	Z =   -78.550  mm,
	W =   -27.676 deg,	P =   -22.323 deg,	R =    54.093 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1008]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2553.477  mm,	Y =  -818.838  mm,	Z =   -68.643  mm,
	W =   -27.687 deg,	P =   -22.317 deg,	R =    54.099 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1009]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.187  mm,	Y =  -807.503  mm,	Z =   -67.688  mm,
	W =   -27.687 deg,	P =   -22.318 deg,	R =    54.099 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1010]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2563.526  mm,	Y =  -794.948  mm,	Z =   -70.177  mm,
	W =   -27.684 deg,	P =   -22.320 deg,	R =    23.347 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1011]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2575.827  mm,	Y =  -789.432  mm,	Z =   -72.319  mm,
	W =   -33.338 deg,	P =   -11.310 deg,	R =    17.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1012]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2614.220  mm,	Y =  -761.078  mm,	Z =   -80.341  mm,
	W =   -30.065 deg,	P =    -4.703 deg,	R =    42.983 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1013]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2630.670  mm,	Y =  -703.014  mm,	Z =   -79.942  mm,
	W =   -25.583 deg,	P =   -24.734 deg,	R =    48.847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[1014]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2500.101  mm,	Y =  -843.989  mm,	Z =      .763  mm,
	W =   -44.579 deg,	P =    -6.906 deg,	R =    84.731 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1015]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2498.506  mm,	Y =  -772.585  mm,	Z =      .733  mm,
	W =   -44.581 deg,	P =    -6.907 deg,	R =    84.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1016]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2525.148  mm,	Y =  -742.055  mm,	Z =     1.319  mm,
	W =   -39.980 deg,	P =    14.825 deg,	R =    17.711 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1017]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.357  mm,	Y =  -744.379  mm,	Z =    -1.238  mm,
	W =   -39.977 deg,	P =    14.826 deg,	R =    17.707 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1018]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.219  mm,	Y =  -152.494  mm,	Z =   181.656  mm,
	W =    -1.647 deg,	P =    -7.141 deg,	R =    13.038 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1019]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2871.009  mm,	Y =  -153.833  mm,	Z =   186.035  mm,
	W =    -5.452 deg,	P =   -22.504 deg,	R =    14.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1020]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.307  mm,	Y =  -257.240  mm,	Z =    90.661  mm,
	W =     -.006 deg,	P =      .007 deg,	R =    -2.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1021]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2759.554  mm,	Y =  -256.153  mm,	Z =    93.128  mm,
	W =      .075 deg,	P =    -1.490 deg,	R =    -2.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1022]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2509.947  mm,	Y =   181.457  mm,	Z =    -1.616  mm,
	W =    37.876 deg,	P =   -26.378 deg,	R =    31.551 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1023]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2462.907  mm,	Y =   180.747  mm,	Z =    -1.513  mm,
	W =    37.870 deg,	P =   -26.389 deg,	R =    31.565 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1024]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2445.326  mm,	Y =   180.108  mm,	Z =      .250  mm,
	W =    40.547 deg,	P =   -21.447 deg,	R =    53.219 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1025]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1690.038  mm,	Y =   -49.964  mm,	Z =   -11.982  mm,
	W =    41.392 deg,	P =    19.516 deg,	R =   -17.038 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1026]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.969  mm,	Y =   -49.284  mm,	Z =   -12.616  mm,
	W =    41.393 deg,	P =    19.516 deg,	R =   -16.113 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1027]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1642.910  mm,	Y =   -50.885  mm,	Z =   -11.965  mm,
	W =    41.394 deg,	P =    19.515 deg,	R =     3.468 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1028]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1634.473  mm,	Y =   -53.135  mm,	Z =   -14.299  mm,
	W =    41.393 deg,	P =    19.522 deg,	R =    24.098 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1029]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.240  mm,	Y =   -80.496  mm,	Z =   -13.783  mm,
	W =    37.029 deg,	P =    27.662 deg,	R =    15.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1030]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1588.769  mm,	Y =   -91.533  mm,	Z =   -13.038  mm,
	W =    38.934 deg,	P =    23.606 deg,	R =   -29.718 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1031]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1569.200  mm,	Y =   -66.418  mm,	Z =   -14.762  mm,
	W =    36.734 deg,	P =    28.084 deg,	R =  -109.083 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1032]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1565.612  mm,	Y =   -24.282  mm,	Z =   -16.223  mm,
	W =    36.733 deg,	P =    28.086 deg,	R =  -114.514 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1033]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1562.317  mm,	Y =   -16.001  mm,	Z =   -12.611  mm,
	W =    36.725 deg,	P =    28.084 deg,	R =   -80.637 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1034]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1553.848  mm,	Y =   -10.188  mm,	Z =   -12.900  mm,
	W =    36.731 deg,	P =    28.089 deg,	R =   -43.974 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1035]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1547.336  mm,	Y =    -8.620  mm,	Z =   -13.271  mm,
	W =    36.729 deg,	P =    28.089 deg,	R =   -43.983 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1036]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2367.321  mm,	Y =   184.102  mm,	Z =    -3.691  mm,
	W =    38.118 deg,	P =   -25.963 deg,	R =    27.293 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1037]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.160  mm,	Y =   183.060  mm,	Z =    -3.000  mm,
	W =    38.129 deg,	P =   -25.958 deg,	R =    27.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1038]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2428.050  mm,	Y =   179.285  mm,	Z =     1.204  mm,
	W =    11.741 deg,	P =   -38.464 deg,	R =    42.116 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.989 deg,	J2=   -90.001 deg
};
P[1039]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.666  mm,	Y =   205.664  mm,	Z =   -12.534  mm,
	W =   -36.933 deg,	P =    22.769 deg,	R =   -15.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1040]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1703.657  mm,	Y =   203.883  mm,	Z =   -12.893  mm,
	W =   -36.939 deg,	P =    22.781 deg,	R =    39.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1041]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1979.129  mm,	Y =   205.388  mm,	Z =   -13.477  mm,
	W =   -36.938 deg,	P =    22.781 deg,	R =    39.327 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1042]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1995.822  mm,	Y =   203.251  mm,	Z =   -10.207  mm,
	W =   -40.748 deg,	P =    13.395 deg,	R =    62.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1043]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2395.612  mm,	Y =    98.485  mm,	Z =   -19.732  mm,
	W =   -47.023 deg,	P =     6.661 deg,	R =   -51.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[1044]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2391.596  mm,	Y =   124.389  mm,	Z =   -21.745  mm,
	W =   -46.999 deg,	P =     6.652 deg,	R =   -83.994 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[1045]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.331  mm,	Y =   158.473  mm,	Z =   -19.448  mm,
	W =   -47.981 deg,	P =     7.880 deg,	R =   -87.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[1046]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2391.390  mm,	Y =   184.030  mm,	Z =   -21.542  mm,
	W =   -51.565 deg,	P =    20.299 deg,	R =  -107.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[1047]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.000  mm,	Y =   195.031  mm,	Z =    -5.475  mm,
	W =   -44.811 deg,	P =    -4.561 deg,	R =    -2.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1048]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2509.255  mm,	Y =   194.275  mm,	Z =    -4.194  mm,
	W =   -44.809 deg,	P =    -4.555 deg,	R =    -2.481 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1049]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2367.908  mm,	Y =    96.138  mm,	Z =    -4.435  mm,
	W =   -44.397 deg,	P =     8.168 deg,	R =    14.048 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1050]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2413.075  mm,	Y =    96.166  mm,	Z =    -3.839  mm,
	W =   -44.394 deg,	P =     8.166 deg,	R =    14.048 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1051]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2427.383  mm,	Y =    97.382  mm,	Z =     -.048  mm,
	W =   -44.529 deg,	P =    -7.125 deg,	R =    33.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1052]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.427  mm,	Y =    71.440  mm,	Z =   847.749  mm,
	W =    45.399 deg,	P =    17.266 deg,	R =    -1.541 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1053]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2402.831  mm,	Y =   104.785  mm,	Z =   847.602  mm,
	W =    45.390 deg,	P =    17.268 deg,	R =    -1.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1054]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2402.842  mm,	Y =   109.949  mm,	Z =   847.942  mm,
	W =     1.452 deg,	P =    40.371 deg,	R =    26.792 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1055]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.403  mm,	Y =   126.094  mm,	Z =   845.932  mm,
	W =     1.448 deg,	P =    40.368 deg,	R =    26.765 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1056]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2325.472  mm,	Y =    92.116  mm,	Z =   847.036  mm,
	W =   -46.230 deg,	P =   -25.147 deg,	R =    34.050 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1057]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2391.645  mm,	Y =   126.896  mm,	Z =   847.777  mm,
	W =   -46.222 deg,	P =   -25.150 deg,	R =    34.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1058]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2011.750  mm,	Y =   -80.950  mm,	Z =    -4.575  mm,
	W =    40.372 deg,	P =    23.935 deg,	R =    74.339 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[1059]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2007.194  mm,	Y =   142.177  mm,	Z =   -45.001  mm,
	W =    45.685 deg,	P =     4.509 deg,	R =    78.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[1060]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.070  mm,	Y =   -48.871  mm,	Z =     4.516  mm,
	W =    44.904 deg,	P =    -3.411 deg,	R =     3.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1061]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2266.341  mm,	Y =   -46.762  mm,	Z =     3.253  mm,
	W =    44.893 deg,	P =    -3.421 deg,	R =     3.427 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1062]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2142.334  mm,	Y =   -48.860  mm,	Z =    -3.830  mm,
	W =    44.883 deg,	P =     3.632 deg,	R =    -4.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1063]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.734  mm,	Y =   -47.597  mm,	Z =    -4.519  mm,
	W =    44.886 deg,	P =     3.634 deg,	R =    -4.918 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1064]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2216.176  mm,	Y =   -46.694  mm,	Z =    -5.378  mm,
	W =    44.882 deg,	P =     3.630 deg,	R =   -11.556 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1065]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1992.932  mm,	Y =   -47.776  mm,	Z =   -14.567  mm,
	W =    44.891 deg,	P =     3.636 deg,	R =    -8.860 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1066]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.099  mm,	Y =   -46.333  mm,	Z =   -15.544  mm,
	W =    44.875 deg,	P =     3.623 deg,	R =    -8.839 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1067]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.103  mm,	Y =   -50.973  mm,	Z =   -11.238  mm,
	W =    41.211 deg,	P =   -19.950 deg,	R =    -8.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1068]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2075.732  mm,	Y =  -109.868  mm,	Z =   -15.932  mm,
	W =   -37.504 deg,	P =      .971 deg,	R =    76.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1069]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.001  mm,	Y =   -75.797  mm,	Z =   -17.252  mm,
	W =   -37.498 deg,	P =      .974 deg,	R =    85.226 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1070]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2126.497  mm,	Y =   -60.152  mm,	Z =   -12.916  mm,
	W =   -48.237 deg,	P =     4.570 deg,	R =   105.632 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=   -90.001 deg
};
P[1071]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2137.360  mm,	Y =  -144.268  mm,	Z =   834.187  mm,
	W =      .668 deg,	P =    41.811 deg,	R =  -160.738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1072]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2144.152  mm,	Y =  -167.358  mm,	Z =   834.668  mm,
	W =      .532 deg,	P =    40.619 deg,	R =  -160.815 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1073]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.457  mm,	Y =  -193.376  mm,	Z =   832.812  mm,
	W =    -1.789 deg,	P =    43.352 deg,	R =   109.759 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1074]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.029  mm,	Y =  -181.626  mm,	Z =   831.918  mm,
	W =      .955 deg,	P =    43.489 deg,	R =    21.015 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1075]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2085.167  mm,	Y =  -135.110  mm,	Z =   833.287  mm,
	W =      .566 deg,	P =    42.530 deg,	R =    14.578 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1076]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2104.005  mm,	Y =  -110.952  mm,	Z =   833.109  mm,
	W =      .858 deg,	P =    43.011 deg,	R =   -74.577 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1077]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.832  mm,	Y =  -123.512  mm,	Z =   834.193  mm,
	W =      .102 deg,	P =    42.115 deg,	R =  -162.102 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1078]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2138.893  mm,	Y =  -144.672  mm,	Z =   833.681  mm,
	W =      .505 deg,	P =    42.850 deg,	R =  -163.809 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1079]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2107.700  mm,	Y =  -213.626  mm,	Z =   831.846  mm,
	W =     -.446 deg,	P =    39.556 deg,	R =   -90.694 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1080]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2200.131  mm,	Y =  -214.897  mm,	Z =   833.980  mm,
	W =     -.446 deg,	P =    39.557 deg,	R =   -90.713 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1081]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.289  mm,	Y =  -210.992  mm,	Z =   834.347  mm,
	W =     -.442 deg,	P =    39.558 deg,	R =   -57.815 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1082]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2220.486  mm,	Y =  -200.207  mm,	Z =   832.598  mm,
	W =     -.448 deg,	P =    39.556 deg,	R =   -44.056 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1083]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2441.776  mm,	Y =    55.830  mm,	Z =   833.792  mm,
	W =      .117 deg,	P =    42.766 deg,	R =   -42.899 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1084]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2448.836  mm,	Y =    63.315  mm,	Z =   833.149  mm,
	W =      .109 deg,	P =    42.766 deg,	R =   -49.058 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1085]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2455.189  mm,	Y =    65.446  mm,	Z =   835.378  mm,
	W =      .109 deg,	P =    42.768 deg,	R =   -56.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1086]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2645.172  mm,	Y =   206.772  mm,	Z =   838.084  mm,
	W =    29.497 deg,	P =    29.459 deg,	R =    -6.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1087]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2652.713  mm,	Y =   210.527  mm,	Z =   838.644  mm,
	W =    29.493 deg,	P =    29.463 deg,	R =    -6.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1088]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.929  mm,	Y =   -36.946  mm,	Z =    54.617  mm,
	W =   -51.899 deg,	P =     9.369 deg,	R =    14.299 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1089]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1952.806  mm,	Y =   -38.944  mm,	Z =    52.063  mm,
	W =   -51.882 deg,	P =     9.361 deg,	R =     5.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1090]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.004  mm,	Y =   -37.169  mm,	Z =    53.060  mm,
	W =   -51.893 deg,	P =     9.370 deg,	R =     5.849 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1091]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.652  mm,	Y =   -33.229  mm,	Z =    53.086  mm,
	W =   -51.882 deg,	P =     9.363 deg,	R =   -32.598 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1092]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.154  mm,	Y =   -35.668  mm,	Z =      .956  mm,
	W =   -45.065 deg,	P =    -5.945 deg,	R =    -3.251 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1093]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2263.854  mm,	Y =   -39.114  mm,	Z =    -2.230  mm,
	W =   -45.063 deg,	P =    -5.945 deg,	R =    -3.254 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1094]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2143.762  mm,	Y =   -38.233  mm,	Z =    -9.450  mm,
	W =   -46.267 deg,	P =    -5.650 deg,	R =    -4.455 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1095]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2211.456  mm,	Y =   -38.697  mm,	Z =   -10.423  mm,
	W =   -44.729 deg,	P =    -5.487 deg,	R =    -5.519 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1096]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2213.501  mm,	Y =   -38.329  mm,	Z =    -9.533  mm,
	W =   -44.727 deg,	P =    -5.491 deg,	R =    10.507 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1097]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.187  mm,	Y =   -36.549  mm,	Z =   -16.802  mm,
	W =   -44.729 deg,	P =    -5.491 deg,	R =    -5.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1098]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2031.075  mm,	Y =   -35.591  mm,	Z =   -15.945  mm,
	W =   -44.726 deg,	P =    -5.493 deg,	R =    -5.522 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1099]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.774  mm,	Y =   -33.603  mm,	Z =   -16.255  mm,
	W =   -44.728 deg,	P =    -5.488 deg,	R =   -41.543 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1659.349  mm,	Y =   229.576  mm,	Z =   -15.827  mm,
	W =    34.860 deg,	P =    26.474 deg,	R =  -126.851 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1662.403  mm,	Y =    10.748  mm,	Z =   -16.240  mm,
	W =    36.966 deg,	P =    27.691 deg,	R =  -122.597 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1661.230  mm,	Y =   -12.152  mm,	Z =   -15.927  mm,
	W =    37.079 deg,	P =    27.798 deg,	R =  -137.823 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2070.256  mm,	Y =   -29.016  mm,	Z =    17.551  mm,
	W =    27.122 deg,	P =    24.041 deg,	R =  -162.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2077.472  mm,	Y =     9.268  mm,	Z =    15.852  mm,
	W =    26.540 deg,	P =    23.907 deg,	R =  -139.393 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2079.821  mm,	Y =    18.267  mm,	Z =    15.557  mm,
	W =    26.544 deg,	P =    23.915 deg,	R =  -163.856 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2088.621  mm,	Y =    27.690  mm,	Z =    13.857  mm,
	W =    17.944 deg,	P =    33.024 deg,	R =   153.337 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2236.640  mm,	Y =   176.401  mm,	Z =    -7.067  mm,
	W =     2.794 deg,	P =    36.171 deg,	R =   129.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2264.963  mm,	Y =   203.116  mm,	Z =   -13.114  mm,
	W =     3.306 deg,	P =    33.869 deg,	R =   124.421 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2287.031  mm,	Y =   217.729  mm,	Z =   -16.695  mm,
	W =     6.006 deg,	P =    35.930 deg,	R =   123.381 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2387.696  mm,	Y =   277.952  mm,	Z =   -35.568  mm,
	W =     8.794 deg,	P =    37.204 deg,	R =   129.070 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.670  mm,	Y =   288.506  mm,	Z =   -40.636  mm,
	W =    -2.498 deg,	P =    34.190 deg,	R =   123.664 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2423.597  mm,	Y =   314.103  mm,	Z =   -39.372  mm,
	W =      .578 deg,	P =    31.082 deg,	R =   135.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2506.157  mm,	Y =   429.784  mm,	Z =   -53.556  mm,
	W =   -18.684 deg,	P =    29.858 deg,	R =   100.231 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2522.874  mm,	Y =   447.428  mm,	Z =   -56.211  mm,
	W =   -18.818 deg,	P =    32.562 deg,	R =    79.861 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.598  mm,	Y =   458.467  mm,	Z =   -62.590  mm,
	W =   -16.507 deg,	P =    33.838 deg,	R =    74.968 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.108  mm,	Y =   460.127  mm,	Z =   -64.835  mm,
	W =   -16.506 deg,	P =    33.836 deg,	R =    74.958 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2609.688  mm,	Y =   486.425  mm,	Z =   -71.766  mm,
	W =   -17.685 deg,	P =    33.469 deg,	R =   110.387 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2628.545  mm,	Y =   536.100  mm,	Z =   -75.597  mm,
	W =   -28.178 deg,	P =    11.271 deg,	R =   110.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2632.222  mm,	Y =   732.009  mm,	Z =   -80.623  mm,
	W =   -28.919 deg,	P =    12.962 deg,	R =   109.016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2634.037  mm,	Y =   736.946  mm,	Z =   -80.036  mm,
	W =   -28.912 deg,	P =    12.964 deg,	R =    86.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2636.521  mm,	Y =   741.783  mm,	Z =   -80.114  mm,
	W =   -28.912 deg,	P =    12.964 deg,	R =    81.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2643.067  mm,	Y =   762.281  mm,	Z =   -80.422  mm,
	W =   -29.832 deg,	P =     9.276 deg,	R =    88.856 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2640.869  mm,	Y =   777.391  mm,	Z =   -80.196  mm,
	W =   -33.768 deg,	P =      .740 deg,	R =   112.866 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.805  mm,	Y =   840.968  mm,	Z =   -65.386  mm,
	W =   -31.195 deg,	P =     9.618 deg,	R =   105.424 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.195  mm,	Y =   827.922  mm,	Z =   -66.293  mm,
	W =   -32.481 deg,	P =     1.245 deg,	R =    91.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2562.628  mm,	Y =   816.135  mm,	Z =   -66.477  mm,
	W =   -29.304 deg,	P =   -14.723 deg,	R =   104.306 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2576.087  mm,	Y =   812.043  mm,	Z =   -72.164  mm,
	W =    -3.300 deg,	P =   -34.456 deg,	R =   105.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2599.271  mm,	Y =   811.663  mm,	Z =   -77.249  mm,
	W =    -3.299 deg,	P =   -34.461 deg,	R =   105.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2617.323  mm,	Y =   805.644  mm,	Z =   -77.465  mm,
	W =     3.038 deg,	P =   -34.483 deg,	R =    65.938 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2640.391  mm,	Y =   775.794  mm,	Z =   -80.773  mm,
	W =   -11.649 deg,	P =   -32.807 deg,	R =    38.714 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[1131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1063.279  mm,	Y = -1053.306  mm,	Z =   783.332  mm,
	W =    24.557 deg,	P =   -38.977 deg,	R =    -6.176 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[1132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1109.166  mm,	Y = -1127.961  mm,	Z =   780.009  mm,
	W =    24.527 deg,	P =   -38.988 deg,	R =    -6.133 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[1133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   786.252  mm,	Y =  -573.217  mm,	Z =   780.478  mm,
	W =   -27.530 deg,	P =    35.491 deg,	R =   168.461 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[1134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.792  mm,	Y =  -818.010  mm,	Z =   778.982  mm,
	W =   -27.603 deg,	P =    35.465 deg,	R =   163.373 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[1135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1047.239  mm,	Y = -1021.242  mm,	Z =   783.994  mm,
	W =    33.109 deg,	P =    30.260 deg,	R =  -102.113 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[1136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   765.614  mm,	Y =  -535.452  mm,	Z =   786.067  mm,
	W =    41.849 deg,	P =   -18.077 deg,	R =   -40.922 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[1137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   721.837  mm,	Y =  -462.053  mm,	Z =   783.548  mm,
	W =    27.769 deg,	P =   -36.841 deg,	R =   -11.320 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[1138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1898.693  mm,	Y = -1465.196  mm,	Z =  1035.174  mm,
	W =   -39.886 deg,	P =    23.861 deg,	R =    23.910 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[1139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1930.842  mm,	Y = -1465.932  mm,	Z =  1036.894  mm,
	W =   -43.540 deg,	P =    14.560 deg,	R =    14.833 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[1140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1966.391  mm,	Y = -1464.791  mm,	Z =  1037.270  mm,
	W =   -43.537 deg,	P =    14.558 deg,	R =    14.821 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[1141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.744  mm,	Y = -1479.610  mm,	Z =  1035.370  mm,
	W =   -43.544 deg,	P =    14.560 deg,	R =   -14.022 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[1142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2005.341  mm,	Y = -1493.994  mm,	Z =  1032.872  mm,
	W =   -44.808 deg,	P =     8.522 deg,	R =   -27.704 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[1143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1897.818  mm,	Y =  1491.288  mm,	Z =  1034.377  mm,
	W =    41.278 deg,	P =    19.806 deg,	R =   -17.231 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[1144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1932.829  mm,	Y =  1488.728  mm,	Z =  1037.568  mm,
	W =    41.270 deg,	P =    19.801 deg,	R =   -17.222 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[1145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.476  mm,	Y =  1486.706  mm,	Z =  1040.490  mm,
	W =    41.276 deg,	P =    19.802 deg,	R =   -17.225 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[1146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1987.397  mm,	Y =  1501.086  mm,	Z =  1037.179  mm,
	W =    41.274 deg,	P =    19.802 deg,	R =     6.738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[1147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1995.872  mm,	Y =  1510.585  mm,	Z =  1037.723  mm,
	W =    43.860 deg,	P =    11.269 deg,	R =    16.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[1148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.192  mm,	Y = -1411.641  mm,	Z =  1037.125  mm,
	W =   -42.857 deg,	P =   -15.295 deg,	R =    39.125 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[1149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1657.327  mm,	Y = -1402.491  mm,	Z =  1038.261  mm,
	W =   -42.570 deg,	P =   -16.799 deg,	R =    40.477 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[1150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1673.592  mm,	Y = -1391.668  mm,	Z =  1036.866  mm,
	W =   -42.572 deg,	P =   -16.799 deg,	R =    43.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[1151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.567  mm,	Y = -1386.491  mm,	Z =  1039.737  mm,
	W =   -43.819 deg,	P =   -18.072 deg,	R =    47.125 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[1152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1107.454  mm,	Y =  1017.315  mm,	Z =  1037.603  mm,
	W =    44.131 deg,	P =    -6.201 deg,	R =   -51.550 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[1153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1116.811  mm,	Y =  1013.553  mm,	Z =  1037.422  mm,
	W =    43.027 deg,	P =    -7.259 deg,	R =   -34.946 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[1154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1131.215  mm,	Y =  1008.607  mm,	Z =  1040.074  mm,
	W =    42.657 deg,	P =   -14.123 deg,	R =   -20.713 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[1155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1138.823  mm,	Y =  1009.249  mm,	Z =  1040.961  mm,
	W =    42.642 deg,	P =   -14.134 deg,	R =   -27.083 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[1162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2793.017  mm,	Y = -1472.744  mm,	Z =   939.115  mm,
	W =   -37.776 deg,	P =   -31.389 deg,	R =    42.831 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[1163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2794.995  mm,	Y = -1494.504  mm,	Z =   937.599  mm,
	W =   -37.762 deg,	P =   -31.393 deg,	R =    42.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[1164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2786.501  mm,	Y = -1525.976  mm,	Z =   936.000  mm,
	W =   -42.869 deg,	P =   -22.972 deg,	R =    39.989 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    99.999 deg,	J2=   -90.000 deg
};
P[1165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2776.812  mm,	Y = -1537.743  mm,	Z =   933.598  mm,
	W =   -45.701 deg,	P =   -14.897 deg,	R =    35.260 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[1166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2742.053  mm,	Y = -1559.698  mm,	Z =   926.134  mm,
	W =   -45.722 deg,	P =   -14.879 deg,	R =    30.415 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[1167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2723.925  mm,	Y = -1565.150  mm,	Z =   922.276  mm,
	W =   -45.707 deg,	P =   -14.888 deg,	R =    18.304 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[1168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2711.316  mm,	Y = -1566.584  mm,	Z =   918.265  mm,
	W =   -45.711 deg,	P =   -14.879 deg,	R =     6.076 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[1169]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2683.065  mm,	Y = -1567.564  mm,	Z =   912.242  mm,
	W =   -45.718 deg,	P =   -14.888 deg,	R =     6.082 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
/END
