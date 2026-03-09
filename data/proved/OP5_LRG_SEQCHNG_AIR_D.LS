/PROG  OP5_LRG_SEQCHNG_AIR_D
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Large Main Base";
PROG_SIZE	= 95312;
CREATE		= DATE 26-02-26  TIME 11:37:22;
MODIFIED	= DATE 26-02-26  TIME 13:54:42;
FILE_NAME	= OP5_LRG_;
VERSION		= 0;
LINE_COUNT	= 2634;
MEMORY_SIZE	= 95996;
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
   3:  !*-- WELD SEQUENCE CHANGE 2026--* ;
   4:  !*------- FR500 CELL: D --------* ;
   5:  !******************************** ;
   6:   ;
   7:  CALL HOME    ;
   8:  UFRAME_NUM=1 ;
   9:  //DO[17:ON :SCAN ZONE2]=OFF ;
  10:   ;
  11:  !********POSITIONER MOVE******** ;
  12:J P[1] 85% CNT40    ;
  13:   ;
  14:L P[3] 1000mm/sec CNT40    ;
  15:   ;
  16:  !FR50L1000 ;
  17:  IF R[15:TECH HOLD]=1002,CALL TECH_HOLD ;
  18:   ;
  19:  !TO SKIP FRONT BUMPER WELDS ;
  20:  CALL ARC_DISABLE_FRONT_BMPR_LRG(0) ;
  21:   ;
  22:   ;
  23:   ;
  24:L P[5] 1000mm/sec FINE
    :  Arc Start[6]    ;
  25:  Weave Sine[6] ;
  26:  Track TAST[6] ;
  27:L P[6] WELD_SPEED FINE
    :  Arc End[6]    ;
  28:  Weave End ;
  29:  Track End ;
  30:   ;
  31:   ;
  32:   ;
  33:   ;
  34:L P[8] 800mm/sec CNT30    ;
  35:   ;
  36:L P[9] 1000mm/sec CNT30    ;
  37:   ;
  38:   ;
  39:  !FR50L1001 ;
  40:  IF R[15:TECH HOLD]=1003,CALL TECH_HOLD ;
  41:   ;
  42:   ;
  43:   ;
  44:   ;
  45:L P[10] 1000mm/sec FINE
    :  Arc Start[6]    ;
  46:  Weave Sine[6] ;
  47:  Track TAST[6] ;
  48:L P[11] WELD_SPEED FINE
    :  Arc End[6]    ;
  49:  Weave End ;
  50:  Track End ;
  51:   ;
  52:   ;
  53:   ;
  54:L P[12] 1000mm/sec CNT100    ;
  55:   ;
  56:   ;
  57:  !FR50L1002 ;
  58:  IF R[15:TECH HOLD]=1004,CALL TECH_HOLD ;
  59:   ;
  60:   ;
  61:L P[13] 1000mm/sec CNT70    ;
  62:   ;
  63:   ;
  64:   ;
  65:L P[14] 1000mm/sec FINE
    :  Arc Start[6]    ;
  66:  Weave Sine[6] ;
  67:  Track TAST[6] ;
  68:L P[15] WELD_SPEED FINE
    :  Arc End[6]    ;
  69:  Weave End ;
  70:  Track End ;
  71:   ;
  72:   ;
  73:   ;
  74:  CALL ARC_DISABLE_FRONT_BMPR_LRG(1) ;
  75:   ;
  76:L P[16] 1000mm/sec CNT100    ;
  77:   ;
  78:  !HOME ;
  79:J P[4] 70% CNT30    ;
  80:   ;
  81:  !********POSITIONER MOVE******** ;
  82:J P[17] 85% CNT30    ;
  83:   ;
  84:J P[18] 50% CNT100    ;
  85:   ;
  86:L P[19] 1000mm/sec CNT100    ;
  87:   ;
  88:   ;
  89:  !FR50L1003 ;
  90:  IF R[15:TECH HOLD]=1005,CALL TECH_HOLD ;
  91:   ;
  92:   ;
  93:L P[20] 1000mm/sec CNT25    ;
  94:   ;
  95:   ;
  96:   ;
  97:L P[21] 1000mm/sec FINE
    :  Arc Start[6]    ;
  98:  Weave Sine[6] ;
  99:  Track TAST[6] ;
 100:L P[22] WELD_SPEED CNT100    ;
 101:L P[23] WELD_SPEED FINE
    :  Arc End[6]    ;
 102:  Track End ;
 103:  Weave End ;
 104:   ;
 105:   ;
 106:   ;
 107:L P[24] 1000mm/sec CNT30    ;
 108:   ;
 109:   ;
 110:  !FR50L1010 ;
 111:  IF R[15:TECH HOLD]=1012,CALL TECH_HOLD ;
 112:   ;
 113:   ;
 114:L P[25] 1000mm/sec CNT30    ;
 115:   ;
 116:   ;
 117:   ;
 118:L P[26] 1000mm/sec FINE
    :  Arc Start[6]    ;
 119:  Weave Sine[6] ;
 120:  Track TAST[6] ;
 121:L P[27] WELD_SPEED CNT100    ;
 122:L P[28] WELD_SPEED FINE
    :  Arc End[6]    ;
 123:  Weave End ;
 124:  Track End ;
 125:   ;
 126:   ;
 127:   ;
 128:L P[29] 1000mm/sec CNT25    ;
 129:   ;
 130:   ;
 131:  !FR50L1020 ;
 132:  IF R[15:TECH HOLD]=1022,CALL TECH_HOLD ;
 133:   ;
 134:   ;
 135:J P[30] 50% CNT25    ;
 136:   ;
 137:   ;
 138:   ;
 139:L P[31] 1000mm/sec FINE
    :  Arc Start[6]    ;
 140:  Weave Sine[6] ;
 141:  Track TAST[6] ;
 142:L P[32] WELD_SPEED FINE
    :  Arc End[6]    ;
 143:  Weave End ;
 144:  Track End ;
 145:   ;
 146:   ;
 147:   ;
 148:L P[33] 1000mm/sec CNT30    ;
 149:   ;
 150:L P[34] 1000mm/sec CNT30    ;
 151:   ;
 152:   ;
 153:  !FR50L1030 ;
 154:  IF R[15:TECH HOLD]=1032,CALL TECH_HOLD ;
 155:   ;
 156:   ;
 157:   ;
 158:   ;
 159:L P[35] 1000mm/sec FINE
    :  Arc Start[6]    ;
 160:  Weave Sine[6] ;
 161:  Track TAST[6] ;
 162:L P[36] WELD_SPEED FINE
    :  Arc End[6]    ;
 163:  Weave End ;
 164:  Track End ;
 165:   ;
 166:   ;
 167:   ;
 168:L P[37] 1000mm/sec CNT50    ;
 169:   ;
 170:J P[38] 50% CNT50    ;
 171:   ;
 172:L P[39] 1000mm/sec CNT25    ;
 173:   ;
 174:   ;
 175:  !FR50L1040 ;
 176:  IF R[15:TECH HOLD]=1042,CALL TECH_HOLD ;
 177:   ;
 178:   ;
 179:   ;
 180:   ;
 181:L P[40] 1000mm/sec FINE
    :  Arc Start[6]    ;
 182:  Weave Sine[6] ;
 183:L P[41] WELD_SPEED FINE
    :  Arc End[6]    ;
 184:  Weave End ;
 185:   ;
 186:   ;
 187:   ;
 188:L P[42] 1000mm/sec CNT30    ;
 189:   ;
 190:L P[43] 1000mm/sec CNT70    ;
 191:   ;
 192:J P[44] 50% CNT50    ;
 193:   ;
 194:L P[45] 1000mm/sec CNT30    ;
 195:   ;
 196:   ;
 197:  !FR50L1050 ;
 198:  IF R[15:TECH HOLD]=1052,CALL TECH_HOLD ;
 199:   ;
 200:   ;
 201:   ;
 202:   ;
 203:L P[46] 1000mm/sec FINE
    :  Arc Start[6]    ;
 204:  Weave Sine[6] ;
 205:L P[47] WELD_SPEED FINE
    :  Arc End[6]    ;
 206:  Weave End ;
 207:   ;
 208:   ;
 209:   ;
 210:L P[48] 1000mm/sec CNT80    ;
 211:   ;
 212:J P[49] 50% CNT25    ;
 213:   ;
 214:L P[50] 1000mm/sec CNT25    ;
 215:   ;
 216:   ;
 217:  !FR50L1060 ;
 218:  IF R[15:TECH HOLD]=1062,CALL TECH_HOLD ;
 219:   ;
 220:   ;
 221:   ;
 222:   ;
 223:L P[51] 1000mm/sec FINE
    :  Arc Start[6]    ;
 224:  Weave Sine[6] ;
 225:L P[52] WELD_SPEED FINE
    :  Arc End[6]    ;
 226:  Weave End ;
 227:   ;
 228:   ;
 229:   ;
 230:L P[53] 500mm/sec CNT100    ;
 231:   ;
 232:L P[54] 1500mm/sec CNT35    ;
 233:   ;
 234:J P[55] 50% CNT30    ;
 235:   ;
 236:L P[56] 1000mm/sec CNT30    ;
 237:   ;
 238:   ;
 239:  !FR50L1070 ;
 240:  IF R[15:TECH HOLD]=1072,CALL TECH_HOLD ;
 241:   ;
 242:   ;
 243:   ;
 244:   ;
 245:L P[57] 1000mm/sec FINE
    :  Arc Start[6]    ;
 246:  Weave Sine[6] ;
 247:  Track TAST[6] ;
 248:L P[58] WELD_SPEED FINE
    :  Arc End[6]    ;
 249:  Weave End ;
 250:  Track End ;
 251:   ;
 252:   ;
 253:   ;
 254:L P[59] 1000mm/sec CNT100    ;
 255:   ;
 256:L P[60] 1000mm/sec CNT80    ;
 257:   ;
 258:   ;
 259:  !FR50L1080 ;
 260:  IF R[15:TECH HOLD]=1082,CALL TECH_HOLD ;
 261:   ;
 262:   ;
 263:   ;
 264:   ;
 265:L P[61] 1000mm/sec FINE
    :  Arc Start[6]    ;
 266:  Weave Sine[6] ;
 267:  Track TAST[6] ;
 268:L P[62] WELD_SPEED FINE
    :  Arc End[6]    ;
 269:  Weave End ;
 270:  Track End ;
 271:   ;
 272:   ;
 273:   ;
 274:J P[63] 30% CNT100    ;
 275:   ;
 276:J P[64] 50% CNT100    ;
 277:   ;
 278:L P[65] 1000mm/sec CNT80    ;
 279:   ;
 280:   ;
 281:  !FR50L1090 ;
 282:  IF R[15:TECH HOLD]=1092,CALL TECH_HOLD ;
 283:  !10MM PASS ;
 284:   ;
 285:   ;
 286:   ;
 287:   ;
 288:L P[66] 1000mm/sec FINE
    :  Arc Start[6]    ;
 289:  Weave Sine[6] ;
 290:  Track TAST[6] RPM[1] ;
 291:L P[67] WELD_SPEED CNT100    ;
 292:L P[68] WELD_SPEED CNT100    ;
 293:C P[69]    
    :  P[70] WELD_SPEED CNT100    ;
 294:L P[71] WELD_SPEED FINE
    :  Arc End[6]    ;
 295:  Track End ;
 296:  Weave End ;
 297:   ;
 298:   ;
 299:   ;
 300:J P[72] 16% CNT25    ;
 301:   ;
 302:J P[74] 50% CNT25    ;
 303:   ;
 304:L P[75] 1000mm/sec CNT25    ;
 305:   ;
 306:   ;
 307:  !FR50L1100 ;
 308:  IF R[15:TECH HOLD]=1102,CALL TECH_HOLD ;
 309:   ;
 310:   ;
 311:   ;
 312:   ;
 313:L P[76] 1000mm/sec FINE
    :  Arc Start[6]    ;
 314:  Weave Sine[6] ;
 315:  Track TAST[6] RPM[2] ;
 316:L P[77] WELD_SPEED CNT100    ;
 317:L P[78] WELD_SPEED CNT100    ;
 318:C P[79]    
    :  P[80] WELD_SPEED CNT100    ;
 319:L P[81] WELD_SPEED FINE
    :  Arc End[6]    ;
 320:  Weave End ;
 321:  Track End ;
 322:   ;
 323:   ;
 324:   ;
 325:J P[82] 50% CNT10    ;
 326:   ;
 327:J P[83] 50% CNT80    ;
 328:   ;
 329:L P[84] 1000mm/sec CNT25    ;
 330:   ;
 331:   ;
 332:  !FR50L1110MP1 ;
 333:  IF R[15:TECH HOLD]=1112,CALL TECH_HOLD ;
 334:   ;
 335:   ;
 336:  MP Offset  PR[3] RPM[1] ;
 337:   ;
 338:   ;
 339:L P[66] 1000mm/sec FINE
    :  Arc Start[6]    ;
 340:  Weave Sine[6] ;
 341:L P[67] WELD_SPEED CNT100    ;
 342:L P[68] WELD_SPEED CNT100    ;
 343:C P[69]    
    :  P[70] WELD_SPEED CNT100    ;
 344:L P[71] WELD_SPEED FINE
    :  Arc End[6]    ;
 345:  Track End ;
 346:  Weave End ;
 347:   ;
 348:   ;
 349:  MP Offset End ;
 350:   ;
 351:J P[91] 40% CNT10    ;
 352:   ;
 353:J P[92] 50% CNT30    ;
 354:   ;
 355:L P[93] 1000mm/sec CNT25    ;
 356:   ;
 357:   ;
 358:  !FR50M1110MP2 ;
 359:   ;
 360:   ;
 361:  MP Offset  PR[4] RPM[1] ;
 362:   ;
 363:   ;
 364:L P[66] 1000mm/sec FINE
    :  Arc Start[6]    ;
 365:  Weave Sine[6] ;
 366:L P[67] WELD_SPEED CNT100    ;
 367:L P[68] WELD_SPEED CNT100    ;
 368:C P[69]    
    :  P[70] WELD_SPEED CNT100    ;
 369:L P[71] WELD_SPEED FINE
    :  Arc End[6]    ;
 370:  Track End ;
 371:  Weave End ;
 372:   ;
 373:  MP Offset End ;
 374:   ;
 375:J P[100] 50% CNT25    ;
 376:   ;
 377:J P[102] 50% CNT25    ;
 378:   ;
 379:L P[103] 1000mm/sec CNT25    ;
 380:   ;
 381:   ;
 382:  !FR50L1120MP3 ;
 383:  IF R[15:TECH HOLD]=1122,CALL TECH_HOLD ;
 384:   ;
 385:   ;
 386:  MP Offset  PR[1] RPM[2] ;
 387:   ;
 388:   ;
 389:L P[76] 1000mm/sec FINE
    :  Arc Start[6]    ;
 390:  Weave Sine[6] ;
 391:L P[77] WELD_SPEED CNT100    ;
 392:L P[78] WELD_SPEED CNT100    ;
 393:C P[79]    
    :  P[80] WELD_SPEED CNT100    ;
 394:L P[81] WELD_SPEED FINE
    :  Arc End[6]    ;
 395:  Weave End ;
 396:  Track End ;
 397:   ;
 398:   ;
 399:  MP Offset End ;
 400:   ;
 401:J P[110] 50% CNT25    ;
 402:   ;
 403:J P[111] 50% CNT25    ;
 404:   ;
 405:L P[112] 1000mm/sec CNT25    ;
 406:   ;
 407:   ;
 408:  !FR501130MP4 ;
 409:   ;
 410:   ;
 411:  MP Offset  PR[2] RPM[2] ;
 412:   ;
 413:L P[76] 1000mm/sec FINE
    :  Arc Start[6]    ;
 414:  Weave Sine[6] ;
 415:L P[77] WELD_SPEED CNT100    ;
 416:L P[78] WELD_SPEED CNT100    ;
 417:C P[79]    
    :  P[80] WELD_SPEED CNT100    ;
 418:L P[81] WELD_SPEED FINE
    :  Arc End[6]    ;
 419:  Weave End ;
 420:  Track End ;
 421:   ;
 422:  MP Offset End ;
 423:   ;
 424:J P[119] 50% CNT25    ;
 425:   ;
 426:J P[121] 50% CNT25    ;
 427:   ;
 428:L P[122] 1000mm/sec CNT25    ;
 429:   ;
 430:   ;
 431:  !FR50L1140 ;
 432:  IF R[15:TECH HOLD]=1142,CALL TECH_HOLD ;
 433:   ;
 434:   ;
 435:   ;
 436:   ;
 437:L P[185] 1000mm/sec FINE
    :  Arc Start[8]    ;
 438:  Weave Sine[8] ;
 439:L P[186] WELD_SPEED CNT100    ;
 440:C P[187]    
    :  P[188] WELD_SPEED FINE
    :  Arc End[8]    ;
 441:  Weave End ;
 442:   ;
 443:   ;
 444:   ;
 445:L P[127] 1000mm/sec CNT25    ;
 446:   ;
 447:J P[128] 50% CNT25    ;
 448:   ;
 449:   ;
 450:  !FR50L1141 ;
 451:  IF R[15:TECH HOLD]=1143,CALL TECH_HOLD ;
 452:   ;
 453:   ;
 454:   ;
 455:   ;
 456:L P[192] 1000mm/sec FINE
    :  Arc Start[8]    ;
 457:  Weave Sine[8] ;
 458:L P[193] WELD_SPEED CNT100    ;
 459:C P[194]    
    :  P[197] WELD_SPEED FINE
    :  Arc End[8]    ;
 460:  Weave End ;
 461:   ;
 462:   ;
 463:   ;
 464:L P[133] 1000mm/sec CNT25    ;
 465:   ;
 466:L P[134] 1000mm/sec CNT25    ;
 467:   ;
 468:J P[135] 50% CNT25    ;
 469:   ;
 470:L P[136] 1000mm/sec CNT50    ;
 471:   ;
 472:   ;
 473:  !FR50L1150 ;
 474:  IF R[15:TECH HOLD]=1152,CALL TECH_HOLD ;
 475:   ;
 476:   ;
 477:   ;
 478:   ;
 479:L P[198] 1000mm/sec FINE
    :  Arc Start[6]    ;
 480:  Weave Sine[6] ;
 481:  Track TAST[6] ;
 482:L P[199] WELD_SPEED FINE
    :  Arc End[6]    ;
 483:  Weave End ;
 484:  Track End ;
 485:   ;
 486:   ;
 487:   ;
 488:L P[139] 1000mm/sec CNT100    ;
 489:   ;
 490:L P[140] 1000mm/sec CNT50    ;
 491:   ;
 492:   ;
 493:  !FR50L1160 ;
 494:  IF R[15:TECH HOLD]=1162,CALL TECH_HOLD ;
 495:   ;
 496:   ;
 497:   ;
 498:L P[203] 1000mm/sec FINE
    :  Arc Start[6]    ;
 499:  Weave Sine[6] ;
 500:  Track TAST[6] ;
 501:L P[204] WELD_SPEED FINE
    :  Arc End[6]    ;
 502:  Weave End ;
 503:  Track End ;
 504:   ;
 505:   ;
 506:   ;
 507:L P[143] 1000mm/sec CNT30    ;
 508:   ;
 509:  !********POSITIONER MOVE******** ;
 510:J P[144] 85% CNT30    ;
 511:   ;
 512:L P[145] 1000mm/sec CNT100    ;
 513:   ;
 514:   ;
 515:  !FR50L1170 ;
 516:  IF R[15:TECH HOLD]=1172,CALL TECH_HOLD ;
 517:   ;
 518:   ;
 519:   ;
 520:   ;
 521:L P[205] 1000mm/sec FINE
    :  Arc Start[6]    ;
 522:  Weave Sine[6] ;
 523:  Track TAST[6] ;
 524:L P[208] WELD_SPEED FINE
    :  Arc End[6]    ;
 525:  Weave End ;
 526:  Track End ;
 527:   ;
 528:   ;
 529:   ;
 530:L P[148] 1000mm/sec CNT100    ;
 531:   ;
 532:L P[149] 1500mm/sec CNT100    ;
 533:   ;
 534:   ;
 535:  !FR50L1180 ;
 536:  IF R[15:TECH HOLD]=1182,CALL TECH_HOLD ;
 537:   ;
 538:   ;
 539:   ;
 540:   ;
 541:L P[209] 1000mm/sec FINE
    :  Arc Start[6]    ;
 542:  Weave Sine[6] ;
 543:  Track TAST[6] ;
 544:L P[212] WELD_SPEED FINE
    :  Arc End[6]    ;
 545:  Weave End ;
 546:  Track End ;
 547:   ;
 548:   ;
 549:   ;
 550:L P[152] 1000mm/sec CNT100    ;
 551:   ;
 552:  !HOME ;
 553:J P[7] 100% CNT30    ;
 554:   ;
 555:  !********POSITIONER MOVE******** ;
 556:J P[153] 80% CNT30    ;
 557:   ;
 558:J P[154] 50% CNT100    ;
 559:   ;
 560:L P[155] 1000mm/sec CNT25    ;
 561:   ;
 562:   ;
 563:  !FR50L1210 ;
 564:  IF R[15:TECH HOLD]=1212,CALL TECH_HOLD ;
 565:   ;
 566:   ;
 567:   ;
 568:   ;
 569:L P[213] 1000mm/sec FINE
    :  Arc Start[6]    ;
 570:  Weave Sine[6] ;
 571:  Track TAST[6] ;
 572:L P[216] WELD_SPEED CNT100    ;
 573:L P[217] WELD_SPEED FINE
    :  Arc End[6]    ;
 574:  Weave End ;
 575:  Track End ;
 576:   ;
 577:   ;
 578:   ;
 579:L P[159] 1000mm/sec CNT25    ;
 580:   ;
 581:L P[160] 1000mm/sec CNT25    ;
 582:   ;
 583:   ;
 584:  !FR50L1220 ;
 585:  IF R[15:TECH HOLD]=1222,CALL TECH_HOLD ;
 586:   ;
 587:   ;
 588:   ;
 589:   ;
 590:L P[218] 1000mm/sec FINE
    :  Arc Start[6]    ;
 591:  Weave Sine[6] ;
 592:  Track TAST[6] ;
 593:L P[221] WELD_SPEED CNT100    ;
 594:L P[222] WELD_SPEED FINE
    :  Arc End[6]    ;
 595:  Weave End ;
 596:  Track End ;
 597:   ;
 598:   ;
 599:   ;
 600:L P[163] 1000mm/sec CNT80    ;
 601:   ;
 602:L P[164] 1200mm/sec CNT25    ;
 603:   ;
 604:   ;
 605:  !FR50L1230 ;
 606:  IF R[15:TECH HOLD]=1232,CALL TECH_HOLD ;
 607:   ;
 608:   ;
 609:   ;
 610:   ;
 611:L P[223] 1000mm/sec FINE
    :  Arc Start[6]    ;
 612:  Weave Sine[6] ;
 613:  Track TAST[6] ;
 614:L P[226] WELD_SPEED CNT100    ;
 615:L P[227] WELD_SPEED FINE
    :  Arc End[6]    ;
 616:  Weave End ;
 617:  Track End ;
 618:   ;
 619:   ;
 620:   ;
 621:L P[167] 1000mm/sec CNT25    ;
 622:   ;
 623:L P[168] 1000mm/sec CNT25    ;
 624:   ;
 625:   ;
 626:  !FR50L1240 ;
 627:  IF R[15:TECH HOLD]=1242,CALL TECH_HOLD ;
 628:   ;
 629:   ;
 630:   ;
 631:   ;
 632:L P[228] 1000mm/sec FINE
    :  Arc Start[6]    ;
 633:  Weave Sine[6] ;
 634:  Track TAST[6] ;
 635:L P[229] WELD_SPEED CNT100    ;
 636:L P[231] WELD_SPEED FINE
    :  Arc End[6]    ;
 637:  Weave End ;
 638:  Track End ;
 639:   ;
 640:   ;
 641:   ;
 642:L P[172] 1000mm/sec CNT25    ;
 643:   ;
 644:L P[173] 1000mm/sec CNT100    ;
 645:   ;
 646:  !HOME ;
 647:J P[116] 100% CNT100    ;
 648:   ;
 649:   ;
 650:  !********POSITIONER MOVE******** ;
 651:J P[174] 85% FINE    ;
 652:   ;
 653:  CALL T_CLEAN    ;
 654:   ;
 655:J P[175] 50% CNT35    ;
 656:   ;
 657:L P[176] 1000mm/sec CNT25    ;
 658:   ;
 659:   ;
 660:  !FR50L1250 ;
 661:  IF R[15:TECH HOLD]=1252,CALL TECH_HOLD ;
 662:   ;
 663:   ;
 664:   ;
 665:   ;
 666:L P[232] 1000mm/sec FINE
    :  Arc Start[6]    ;
 667:  Weave Sine[6] ;
 668:  Track TAST[6] ;
 669:L P[236] WELD_SPEED CNT100    ;
 670:L P[237] WELD_SPEED CNT100    ;
 671:L P[238] WELD_SPEED FINE
    :  Arc End[6]    ;
 672:  Weave End ;
 673:  Track End ;
 674:   ;
 675:   ;
 676:   ;
 677:L P[181] 1000mm/sec CNT100    ;
 678:   ;
 679:J P[182] 50% CNT100    ;
 680:   ;
 681:L P[184] 500mm/sec CNT100    ;
 682:   ;
 683:   ;
 684:  !FR50L1260 ;
 685:  IF R[15:TECH HOLD]=1262,CALL TECH_HOLD ;
 686:   ;
 687:   ;
 688:   ;
 689:   ;
 690:L P[239] 1000mm/sec FINE
    :  Arc Start[6]    ;
 691:  Weave Sine[6] ;
 692:  Track TAST[6] ;
 693:L P[244] WELD_SPEED CNT100    ;
 694:L P[245] WELD_SPEED CNT100    ;
 695:L P[246] WELD_SPEED FINE
    :  Arc End[6]    ;
 696:  Weave End ;
 697:  Track End ;
 698:   ;
 699:   ;
 700:   ;
 701:L P[189] 1000mm/sec CNT25    ;
 702:   ;
 703:J P[190] 50% CNT25    ;
 704:   ;
 705:L P[191] 1000mm/sec CNT25    ;
 706:   ;
 707:   ;
 708:  !FR50L1270 ;
 709:  IF R[15:TECH HOLD]=1272,CALL TECH_HOLD ;
 710:   ;
 711:   ;
 712:   ;
 713:   ;
 714:L P[247] 1000mm/sec FINE
    :  Arc Start[6]    ;
 715:  Weave Sine[6] ;
 716:  Track TAST[6] ;
 717:L P[250] WELD_SPEED CNT100    ;
 718:  Track End ;
 719:L P[251] WELD_SPEED FINE
    :  Arc End[6]    ;
 720:  Weave End ;
 721:  Track End ;
 722:   ;
 723:   ;
 724:   ;
 725:L P[195] 1000mm/sec CNT80    ;
 726:   ;
 727:L P[196] 1000mm/sec CNT100    ;
 728:   ;
 729:   ;
 730:  !FR50L1280 ;
 731:  IF R[15:TECH HOLD]=1282,CALL TECH_HOLD ;
 732:   ;
 733:   ;
 734:   ;
 735:   ;
 736:L P[253] 1000mm/sec FINE
    :  Arc Start[6]    ;
 737:  Weave Sine[6] ;
 738:  Track TAST[6] ;
 739:L P[254] WELD_SPEED CNT100    ;
 740:  Track End ;
 741:L P[255] WELD_SPEED FINE
    :  Arc End[6]    ;
 742:  Weave End ;
 743:  Track End ;
 744:   ;
 745:   ;
 746:   ;
 747:L P[200] 1000mm/sec CNT25    ;
 748:   ;
 749:J P[201] 50% CNT25    ;
 750:   ;
 751:L P[202] 1000mm/sec CNT25    ;
 752:   ;
 753:   ;
 754:  !FR50L1290 ;
 755:  IF R[15:TECH HOLD]=1292,CALL TECH_HOLD ;
 756:   ;
 757:   ;
 758:   ;
 759:   ;
 760:L P[257] 1000mm/sec FINE
    :  Arc Start[6]    ;
 761:  Weave Sine[6] ;
 762:  Track TAST[6] ;
 763:L P[258] WELD_SPEED CNT100    ;
 764:L P[259] WELD_SPEED FINE
    :  Arc End[6]    ;
 765:  Weave End ;
 766:  Track End ;
 767:L P[262] 1000mm/sec FINE
    :  Arc Start[6]    ;
 768:  Weave Sine[6] ;
 769:  Track TAST[6] ;
 770:L P[263] WELD_SPEED CNT100    ;
 771:L P[264] WELD_SPEED FINE
    :  Arc End[6]    ;
 772:  Weave End ;
 773:  Track End ;
 774:   ;
 775:   ;
 776:   ;
 777:L P[206] 1000mm/sec CNT100    ;
 778:   ;
 779:L P[207] 1000mm/sec CNT100    ;
 780:   ;
 781:   ;
 782:  !FR50L1300 ;
 783:  IF R[15:TECH HOLD]=1302,CALL TECH_HOLD ;
 784:   ;
 785:   ;
 786:   ;
 787:L P[90] 1000mm/sec FINE
    :  Arc Start[6]    ;
 788:  Weave Sine[6] ;
 789:  Track TAST[6] ;
 790:L P[98] WELD_SPEED CNT100    ;
 791:L P[101] WELD_SPEED FINE
    :  Arc End[6]    ;
 792:  Weave End ;
 793:  Track End ;
 794:   ;
 795:   ;
 796:L P[210] 1000mm/sec CNT100    ;
 797:   ;
 798:L P[211] 1000mm/sec CNT100    ;
 799:   ;
 800:   ;
 801:  !FR50L1310 ;
 802:  IF R[15:TECH HOLD]=1312,CALL TECH_HOLD ;
 803:   ;
 804:   ;
 805:   ;
 806:   ;
 807:L P[266] 1000mm/sec FINE
    :  Arc Start[6]    ;
 808:  Weave Sine[6] ;
 809:  Track TAST[6] ;
 810:L P[267] WELD_SPEED FINE
    :  Arc End[6]    ;
 811:  Weave End ;
 812:  Track End ;
 813:   ;
 814:   ;
 815:   ;
 816:L P[214] 1000mm/sec CNT100    ;
 817:   ;
 818:L P[215] 1000mm/sec CNT100    ;
 819:   ;
 820:   ;
 821:  !FR50L1320 ;
 822:  IF R[15:TECH HOLD]=1322,CALL TECH_HOLD ;
 823:   ;
 824:   ;
 825:   ;
 826:   ;
 827:L P[268] 1000mm/sec FINE
    :  Arc Start[6]    ;
 828:  Weave Sine[6] ;
 829:  Track TAST[6] ;
 830:L P[274] WELD_SPEED CNT100    ;
 831:L P[275] WELD_SPEED FINE
    :  Arc End[6]    ;
 832:  Weave End ;
 833:  Track End ;
 834:   ;
 835:   ;
 836:   ;
 837:L P[219] 1000mm/sec CNT100    ;
 838:   ;
 839:L P[220] 1000mm/sec CNT100    ;
 840:   ;
 841:J P[73] 50% CNT30    ;
 842:   ;
 843:  !********POSITIONER MOVE******** ;
 844:J P[86] 100% CNT30    ;
 845:   ;
 846:  !FR50L1330 ;
 847:  IF R[15:TECH HOLD]=1332,CALL TECH_HOLD ;
 848:   ;
 849:   ;
 850:J P[327] 40% CNT10    ;
 851:   ;
 852:   ;
 853:   ;
 854:L P[277] 1000mm/sec FINE
    :  Arc Start[8]    ;
 855:  Weave Sine[8] ;
 856:L P[278] WELD_SPEED FINE
    :  Arc End[8]    ;
 857:  Weave End ;
 858:   ;
 859:   ;
 860:   ;
 861:J P[85] 50% CNT30    ;
 862:   ;
 863:L P[233] 1000mm/sec CNT25    ;
 864:   ;
 865:  !********POSITIONER MOVE******** ;
 866:J P[225] 80% CNT20    ;
 867:   ;
 868:   ;
 869:   ;
 870:  !FR50L1340 ;
 871:  IF R[15:TECH HOLD]=1342,CALL TECH_HOLD ;
 872:   ;
 873:   ;
 874:   ;
 875:   ;
 876:L P[279] 1000mm/sec FINE
    :  Arc Start[6]    ;
 877:  Weave Sine[6] ;
 878:L P[282] WELD_SPEED FINE
    :  Arc End[6]    ;
 879:  Weave End ;
 880:   ;
 881:   ;
 882:   ;
 883:   ;
 884:  !FR50L1350 ;
 885:  IF R[15:TECH HOLD]=1352,CALL TECH_HOLD ;
 886:   ;
 887:   ;
 888:   ;
 889:   ;
 890:L P[283] 1000mm/sec FINE
    :  Arc Start[6]    ;
 891:  Weave Sine[6] ;
 892:L P[284] WELD_SPEED FINE
    :  Arc End[6]    ;
 893:  Weave End ;
 894:   ;
 895:   ;
 896:   ;
 897:L P[230] 1000mm/sec CNT25    ;
 898:   ;
 899:  !HOME ;
 900:J P[117] 100% CNT50    ;
 901:   ;
 902:  !********POSITIONER MOVE******** ;
 903:J P[768] 85% CNT25    ;
 904:   ;
 905:L P[234] 1000mm/sec CNT25    ;
 906:   ;
 907:J P[235] 50% CNT25    ;
 908:   ;
 909:   ;
 910:  !FR50L1380 ;
 911:  IF R[15:TECH HOLD]=1382,CALL TECH_HOLD ;
 912:   ;
 913:   ;
 914:   ;
 915:   ;
 916:L P[288] 1000mm/sec FINE
    :  Arc Start[6]    ;
 917:  Weave Sine[6] ;
 918:  Track TAST[6] ;
 919:L P[289] WELD_SPEED CNT100    ;
 920:L P[293] WELD_SPEED CNT100    ;
 921:L P[294] WELD_SPEED FINE
    :  Arc End[6]    ;
 922:  Weave End ;
 923:  Track End ;
 924:   ;
 925:   ;
 926:   ;
 927:L P[240] 800mm/sec CNT2    ;
 928:   ;
 929:L P[241] 800mm/sec CNT25    ;
 930:   ;
 931:  !********POSITIONER MOVE******** ;
 932:J P[242] 75% CNT5    ;
 933:   ;
 934:L P[243] 1000mm/sec CNT25    ;
 935:   ;
 936:   ;
 937:  !FR50L1390 ;
 938:  IF R[15:TECH HOLD]=1392,CALL TECH_HOLD ;
 939:   ;
 940:   ;
 941:   ;
 942:L P[297] 1000mm/sec FINE
    :  Arc Start[6]    ;
 943:  Weave Sine[6] ;
 944:L P[298] WELD_SPEED CNT100    ;
 945:L P[304] WELD_SPEED CNT100    ;
 946:L P[305] WELD_SPEED FINE
    :  Arc End[6]    ;
 947:  Weave End ;
 948:   ;
 949:   ;
 950:   ;
 951:L P[248] 1000mm/sec CNT25    ;
 952:   ;
 953:L P[249] 1000mm/sec CNT25    ;
 954:   ;
 955:   ;
 956:  !FR50L1400 ;
 957:  IF R[15:TECH HOLD]=1402,CALL TECH_HOLD ;
 958:   ;
 959:   ;
 960:   ;
 961:   ;
 962:L P[306] 1000mm/sec FINE
    :  Arc Start[6]    ;
 963:  Weave Sine[6] ;
 964:  Track TAST[6] ;
 965:L P[310] WELD_SPEED FINE
    :  Arc End[6]    ;
 966:  Weave End ;
 967:  Track End ;
 968:   ;
 969:   ;
 970:   ;
 971:L P[252] 1000mm/sec CNT25    ;
 972:   ;
 973:   ;
 974:  !FR50L1410 ;
 975:  IF R[15:TECH HOLD]=1412,CALL TECH_HOLD ;
 976:   ;
 977:   ;
 978:   ;
 979:   ;
 980:L P[311] 1000mm/sec FINE
    :  Arc Start[6]    ;
 981:  Weave Sine[6] ;
 982:  Track TAST[6] ;
 983:L P[312] WELD_SPEED CNT100    ;
 984:L P[313] WELD_SPEED FINE
    :  Arc End[6]    ;
 985:  Weave End ;
 986:  Track End ;
 987:   ;
 988:   ;
 989:   ;
 990:L P[256] 1000mm/sec CNT25    ;
 991:   ;
 992:   ;
 993:  !FR50L1420 ;
 994:  IF R[15:TECH HOLD]=1422,CALL TECH_HOLD ;
 995:   ;
 996:   ;
 997:   ;
 998:   ;
 999:L P[314] 1000mm/sec FINE
    :  Arc Start[6]    ;
1000:  Weave Sine[6] ;
1001:  Track TAST[6] ;
1002:L P[315] WELD_SPEED CNT100    ;
1003:L P[316] WELD_SPEED FINE
    :  Arc End[6]    ;
1004:  Weave End ;
1005:  Track End ;
1006:   ;
1007:   ;
1008:   ;
1009:L P[260] 1000mm/sec CNT25    ;
1010:   ;
1011:L P[261] 1000mm/sec CNT25    ;
1012:   ;
1013:   ;
1014:  !FR50L1430 ;
1015:  IF R[15:TECH HOLD]=1432,CALL TECH_HOLD ;
1016:   ;
1017:   ;
1018:   ;
1019:   ;
1020:L P[317] 1000mm/sec FINE
    :  Arc Start[6]    ;
1021:  Weave Sine[6] ;
1022:L P[318] WELD_SPEED CNT100    ;
1023:  Weave End ;
1024:L P[319] WELD_SPEED FINE
    :  Arc End[6]    ;
1025:   ;
1026:   ;
1027:   ;
1028:L P[265] 1000mm/sec CNT25    ;
1029:   ;
1030:   ;
1031:  !FR50L1431 ;
1032:  IF R[15:TECH HOLD]=1433,CALL TECH_HOLD ;
1033:   ;
1034:   ;
1035:   ;
1036:   ;
1037:L P[320] 1000mm/sec FINE
    :  Arc Start[6]    ;
1038:  Weave Sine[6] ;
1039:L P[330] WELD_SPEED CNT100    ;
1040:L P[333] WELD_SPEED FINE
    :  Arc End[6]    ;
1041:  Weave End ;
1042:   ;
1043:   ;
1044:   ;
1045:L P[269] 1000mm/sec CNT25    ;
1046:   ;
1047:L P[270] 1000mm/sec CNT25    ;
1048:   ;
1049:L P[271] 1000mm/sec CNT50 Wjnt    ;
1050:   ;
1051:J P[272] 50% CNT25    ;
1052:   ;
1053:L P[273] 1000mm/sec CNT25    ;
1054:   ;
1055:   ;
1056:  !FR50L1440 ;
1057:  IF R[15:TECH HOLD]=1442,CALL TECH_HOLD ;
1058:   ;
1059:   ;
1060:   ;
1061:   ;
1062:L P[334] 1000mm/sec FINE
    :  Arc Start[6]    ;
1063:  Weave Sine[6] ;
1064:  Track TAST[6] ;
1065:L P[338] WELD_SPEED FINE
    :  Arc End[6]    ;
1066:  Weave End ;
1067:  Track End ;
1068:   ;
1069:   ;
1070:   ;
1071:L P[276] 1000mm/sec CNT25    ;
1072:   ;
1073:   ;
1074:  !FR50L1450 ;
1075:  IF R[15:TECH HOLD]=1452,CALL TECH_HOLD ;
1076:   ;
1077:   ;
1078:   ;
1079:   ;
1080:L P[339] 1000mm/sec FINE
    :  Arc Start[6]    ;
1081:  Weave Sine[6] ;
1082:  Track TAST[6] ;
1083:L P[343] WELD_SPEED CNT100    ;
1084:L P[344] WELD_SPEED FINE
    :  Arc End[6]    ;
1085:  Weave End ;
1086:  Track End ;
1087:   ;
1088:   ;
1089:   ;
1090:L P[280] 1000mm/sec CNT25    ;
1091:   ;
1092:L P[281] 1000mm/sec CNT25    ;
1093:   ;
1094:   ;
1095:  !FR50L1460 ;
1096:  IF R[15:TECH HOLD]=1462,CALL TECH_HOLD ;
1097:   ;
1098:   ;
1099:   ;
1100:   ;
1101:L P[345] 1000mm/sec FINE
    :  Arc Start[6]    ;
1102:  Weave Sine[6] ;
1103:  Track TAST[6] ;
1104:L P[352] WELD_SPEED CNT100    ;
1105:L P[353] WELD_SPEED FINE
    :  Arc End[6]    ;
1106:  Weave End ;
1107:  Track End ;
1108:   ;
1109:   ;
1110:   ;
1111:L P[285] 1000mm/sec CNT25    ;
1112:   ;
1113:  !********POSITIONER MOVE******** ;
1114:J P[286] 75% CNT15    ;
1115:   ;
1116:L P[287] 1000mm/sec CNT25    ;
1117:   ;
1118:   ;
1119:  !FR50L1470 ;
1120:  IF R[15:TECH HOLD]=1472,CALL TECH_HOLD ;
1121:   ;
1122:   ;
1123:   ;
1124:   ;
1125:L P[354] 1000mm/sec FINE
    :  Arc Start[6]    ;
1126:  Weave Sine[6] ;
1127:  Track TAST[6] ;
1128:L P[355] WELD_SPEED FINE
    :  Arc End[6]    ;
1129:  Weave End ;
1130:  Track End ;
1131:   ;
1132:   ;
1133:   ;
1134:L P[290] 1000mm/sec CNT25    ;
1135:   ;
1136:  !********POSITIONER MOVE******** ;
1137:J P[291] 85% CNT2    ;
1138:   ;
1139:L P[292] 1000mm/sec CNT25    ;
1140:   ;
1141:   ;
1142:  !FR50L1480 ;
1143:  IF R[15:TECH HOLD]=1482,CALL TECH_HOLD ;
1144:   ;
1145:   ;
1146:   ;
1147:   ;
1148:L P[356] 1000mm/sec FINE
    :  Arc Start[8]    ;
1149:  Weave Sine[8] ;
1150:L P[357] WELD_SPEED FINE
    :  Arc End[8]    ;
1151:  Weave End ;
1152:   ;
1153:   ;
1154:   ;
1155:L P[295] 1000mm/sec CNT25    ;
1156:   ;
1157:L P[296] 1000mm/sec CNT25    ;
1158:   ;
1159:   ;
1160:  !FR50L1490 ;
1161:  IF R[15:TECH HOLD]=1492,CALL TECH_HOLD ;
1162:   ;
1163:   ;
1164:   ;
1165:   ;
1166:L P[358] 1000mm/sec FINE
    :  Arc Start[6]    ;
1167:  Weave Sine[6] ;
1168:  Track TAST[6] ;
1169:L P[359] WELD_SPEED FINE
    :  Arc End[6]    ;
1170:  Weave End ;
1171:  Track End ;
1172:   ;
1173:   ;
1174:   ;
1175:L P[299] 1000mm/sec CNT25    ;
1176:   ;
1177:L P[300] 1000mm/sec CNT25    ;
1178:   ;
1179:L P[301] 1000mm/sec CNT25    ;
1180:   ;
1181:  !********POSITIONER MOVE******** ;
1182:J P[302] 85% FINE    ;
1183:   ;
1184:L P[303] 1000mm/sec CNT25    ;
1185:   ;
1186:   ;
1187:  !FR50L1500 ;
1188:  IF R[15:TECH HOLD]=1502,CALL TECH_HOLD ;
1189:   ;
1190:   ;
1191:   ;
1192:   ;
1193:L P[362] 1000mm/sec FINE
    :  Arc Start[6]    ;
1194:  Weave Sine[6] ;
1195:L P[363] WELD_SPEED CNT100    ;
1196:L P[364] WELD_SPEED FINE
    :  Arc End[6]    ;
1197:  Weave End ;
1198:   ;
1199:   ;
1200:   ;
1201:L P[307] 1000mm/sec CNT25    ;
1202:   ;
1203:J P[308] 50% CNT25    ;
1204:   ;
1205:L P[309] 1000mm/sec CNT25    ;
1206:   ;
1207:   ;
1208:  !FR50L1510 ;
1209:  IF R[15:TECH HOLD]=1512,CALL TECH_HOLD ;
1210:   ;
1211:   ;
1212:   ;
1213:   ;
1214:L P[366] 1000mm/sec FINE
    :  Arc Start[6]    ;
1215:  Weave Sine[6] ;
1216:  Track TAST[6] ;
1217:L P[369] WELD_SPEED CNT100    ;
1218:C P[370]    
    :  P[374] WELD_SPEED CNT100    ;
1219:L P[375] WELD_SPEED CNT100    ;
1220:C P[382]    
    :  P[383] WELD_SPEED CNT100    ;
1221:L P[384] WELD_SPEED CNT100    ;
1222:C P[385]    
    :  P[386] WELD_SPEED CNT100    ;
1223:L P[387] WELD_SPEED FINE
    :  Arc End[6]    ;
1224:  Weave End ;
1225:  Track End ;
1226:   ;
1227:   ;
1228:L P[321] 1000mm/sec CNT80    ;
1229:   ;
1230:J P[322] 40% CNT80    ;
1231:   ;
1232:  --eg:Insert g2j2 @90 Loadstop!!! ;
1233:   ;
1234:  !********POSITIONER MOVE******** ;
1235:J P[114] 85% CNT40    ;
1236:   ;
1237:J P[115] 50% CNT25    ;
1238:   ;
1239:  CALL ARC_DISABLE_RH_LS(0) ;
1240:   ;
1241:   ;
1242:  !FR50L2040 ;
1243:  IF R[15:TECH HOLD]=2042,CALL TECH_HOLD ;
1244:   ;
1245:   ;
1246:L P[473] 1000mm/sec CNT25    ;
1247:   ;
1248:   ;
1249:   ;
1250:L P[770] 1000mm/sec FINE
    :  Arc Start[8]    ;
1251:  Weave Sine[8] ;
1252:L P[771] WELD_SPEED CNT100    ;
1253:C P[772]    
    :  P[773] WELD_SPEED CNT100    ;
1254:L P[774] WELD_SPEED CNT100    ;
1255:L P[775] WELD_SPEED CNT100    ;
1256:L P[776] WELD_SPEED CNT100    ;
1257:L P[777] WELD_SPEED FINE
    :  Arc End[8]    ;
1258:  Weave End ;
1259:   ;
1260:  CALL ARC_DISABLE_RH_LS(1) ;
1261:   ;
1262:L P[494] 1000mm/sec CNT25    ;
1263:   ;
1264:J P[497] 50% CNT75    ;
1265:   ;
1266:  --eg:Insert g2j2 @90 Loadstop!!! ;
1267:   ;
1268:   ;
1269:   ;
1270:  !********POSITIONER MOVE******** ;
1271:J P[502] 40% CNT40    ;
1272:   ;
1273:J P[323] 40% CNT25    ;
1274:   ;
1275:  !CELL ID: D - ;
1276:   ;
1277:L P[390] 1000mm/sec FINE
    :  Arc Start[1]    ;
1278:L P[391] WELD_SPEED FINE
    :  Arc End[1]    ;
1279:   ;
1280:J P[324] 50% CNT30    ;
1281:   ;
1282:L P[328] 800mm/sec CNT60    ;
1283:   ;
1284:J P[224] 40% CNT100    ;
1285:   ;
1286:J P[329] 40% CNT90    ;
1287:   ;
1288:J P[331] 50% CNT50    ;
1289:   ;
1290:L P[332] 1000mm/sec CNT25    ;
1291:   ;
1292:   ;
1293:  !FR50L1520 ;
1294:  IF R[15:TECH HOLD]=1522,CALL TECH_HOLD ;
1295:   ;
1296:   ;
1297:   ;
1298:   ;
1299:L P[399] 1000mm/sec FINE
    :  Arc Start[6]    ;
1300:  Weave Sine[6] ;
1301:  Track TAST[6] ;
1302:L P[400] WELD_SPEED FINE
    :  Arc End[6]    ;
1303:  Weave End ;
1304:  Track End ;
1305:   ;
1306:   ;
1307:   ;
1308:L P[335] 1000mm/sec CNT25    ;
1309:   ;
1310:J P[336] 50% CNT25    ;
1311:   ;
1312:L P[337] 1000mm/sec CNT25    ;
1313:   ;
1314:   ;
1315:  !FR50L1530 ;
1316:  IF R[15:TECH HOLD]=1532,CALL TECH_HOLD ;
1317:   ;
1318:   ;
1319:   ;
1320:   ;
1321:L P[401] 1000mm/sec FINE
    :  Arc Start[6]    ;
1322:  Weave Sine[6] ;
1323:  Track TAST[6] ;
1324:L P[402] WELD_SPEED FINE
    :  Arc End[6]    ;
1325:  Weave End ;
1326:  Track End ;
1327:   ;
1328:   ;
1329:   ;
1330:L P[340] 1000mm/sec CNT25    ;
1331:   ;
1332:L P[341] 1000mm/sec CNT25    ;
1333:   ;
1334:L P[342] 1000mm/sec CNT25    ;
1335:   ;
1336:  !FR50L1540 ;
1337:  IF R[15:TECH HOLD]=1542,CALL TECH_HOLD ;
1338:   ;
1339:   ;
1340:   ;
1341:L P[403] 1000mm/sec FINE
    :  Arc Start[6]    ;
1342:  Weave Sine[6] ;
1343:  Track TAST[6] ;
1344:L P[404] WELD_SPEED CNT100    ;
1345:L P[405] WELD_SPEED FINE
    :  Arc End[6]    ;
1346:  Weave End ;
1347:  Track End ;
1348:   ;
1349:   ;
1350:L P[346] 1000mm/sec CNT40    ;
1351:   ;
1352:L P[347] 1100mm/sec CNT50 Wjnt    ;
1353:   ;
1354:J P[348] 50% CNT35    ;
1355:   ;
1356:  --eg:Insert g2j2 @90 content ;
1357:   ;
1358:J P[88] 50% CNT90    ;
1359:   ;
1360:L P[96] 1000mm/sec CNT25    ;
1361:   ;
1362:   ;
1363:  !FR50L1590 ;
1364:  IF R[15:TECH HOLD]=1592,CALL TECH_HOLD ;
1365:   ;
1366:   ;
1367:   ;
1368:   ;
1369:L P[439] 1000mm/sec FINE
    :  Arc Start[6]    ;
1370:  Weave Sine[6] ;
1371:  Track TAST[6] ;
1372:L P[440] WELD_SPEED FINE
    :  Arc End[6]    ;
1373:  Weave End ;
1374:  Track End ;
1375:   ;
1376:   ;
1377:   ;
1378:L P[120] 1000mm/sec CNT25    ;
1379:   ;
1380:J P[123] 50% CNT25    ;
1381:   ;
1382:   ;
1383:  !FR50L1600 ;
1384:  IF R[15:TECH HOLD]=1602,CALL TECH_HOLD ;
1385:   ;
1386:   ;
1387:   ;
1388:   ;
1389:L P[441] 1000mm/sec FINE
    :  Arc Start[6]    ;
1390:  Weave Sine[6] ;
1391:  Track TAST[6] ;
1392:L P[442] WELD_SPEED FINE
    :  Arc End[6]    ;
1393:  Weave End ;
1394:  Track End ;
1395:   ;
1396:   ;
1397:   ;
1398:L P[126] 1000mm/sec CNT25    ;
1399:   ;
1400:J P[129] 50% CNT25    ;
1401:   ;
1402:   ;
1403:  !FR50L1601 ;
1404:  IF R[15:TECH HOLD]=1603,CALL TECH_HOLD ;
1405:   ;
1406:   ;
1407:   ;
1408:   ;
1409:L P[443] 1000mm/sec FINE
    :  Arc Start[6]    ;
1410:  Weave Sine[6] ;
1411:  Track TAST[6] ;
1412:L P[444] WELD_SPEED FINE
    :  Arc End[6]    ;
1413:  Weave End ;
1414:  Track End ;
1415:   ;
1416:   ;
1417:   ;
1418:L P[132] 1000mm/sec CNT25    ;
1419:   ;
1420:L P[137] 1200mm/sec CNT40 Wjnt    ;
1421:   ;
1422:  !********POSITIONER MOVE******** ;
1423:J P[138] 90% CNT30    ;
1424:   ;
1425:L P[141] 1000mm/sec CNT25    ;
1426:   ;
1427:L P[142] 1000mm/sec CNT25    ;
1428:   ;
1429:   ;
1430:  !FR50L1610 ;
1431:  IF R[15:TECH HOLD]=1612,CALL TECH_HOLD ;
1432:   ;
1433:   ;
1434:   ;
1435:   ;
1436:L P[445] 1000mm/sec FINE
    :  Arc Start[6]    ;
1437:  Weave Sine[6] ;
1438:  Track TAST[6] ;
1439:L P[446] WELD_SPEED CNT100    ;
1440:L P[447] WELD_SPEED FINE
    :  Arc End[6]    ;
1441:  Weave End ;
1442:  Track End ;
1443:   ;
1444:   ;
1445:   ;
1446:L P[151] 1000mm/sec CNT25    ;
1447:   ;
1448:L P[156] 1000mm/sec CNT25    ;
1449:   ;
1450:   ;
1451:   ;
1452:  !FR50L1620 ;
1453:  IF R[15:TECH HOLD]=1622,CALL TECH_HOLD ;
1454:   ;
1455:   ;
1456:   ;
1457:   ;
1458:L P[448] 1000mm/sec FINE
    :  Arc Start[6]    ;
1459:  Weave Sine[6] ;
1460:  Track TAST[6] ;
1461:L P[449] WELD_SPEED CNT100    ;
1462:L P[450] WELD_SPEED FINE
    :  Arc End[6]    ;
1463:  Weave End ;
1464:  Track End ;
1465:   ;
1466:   ;
1467:   ;
1468:L P[365] 1000mm/sec CNT75    ;
1469:   ;
1470:L P[376] 1000mm/sec CNT25    ;
1471:   ;
1472:J P[380] 50% CNT40    ;
1473:   ;
1474:  !********POSITIONER MOVE******** ;
1475:J P[504] 85% CNT30    ;
1476:   ;
1477:  CALL HOME    ;
1478:  CALL T_CLEAN    ;
1479:   ;
1480:J P[381] 90% CNT30    ;
1481:   ;
1482:J P[397] 50% CNT25    ;
1483:   ;
1484:   ;
1485:  !FR50L1630 ;
1486:  IF R[15:TECH HOLD]=1632,CALL TECH_HOLD ;
1487:   ;
1488:   ;
1489:   ;
1490:   ;
1491:L P[453] 1000mm/sec FINE
    :  Arc Start[6]    ;
1492:  Weave Sine[6] ;
1493:  Track TAST[6] ;
1494:L P[454] WELD_SPEED CNT100    ;
1495:C P[455]    
    :  P[456] WELD_SPEED CNT100    ;
1496:L P[457] WELD_SPEED CNT100    ;
1497:C P[458]    
    :  P[462] WELD_SPEED CNT100    ;
1498:L P[463] WELD_SPEED FINE
    :  Arc End[6]    ;
1499:  Weave End ;
1500:  Track End ;
1501:   ;
1502:   ;
1503:   ;
1504:L P[412] 1000mm/sec CNT40    ;
1505:   ;
1506:J P[413] 50% CNT35    ;
1507:   ;
1508:   ;
1509:  !FR50L1640 ;
1510:  IF R[15:TECH HOLD]=1642,CALL TECH_HOLD ;
1511:   ;
1512:   ;
1513:   ;
1514:   ;
1515:L P[464] 1000mm/sec FINE
    :  Arc Start[6]    ;
1516:  Weave Sine[6] ;
1517:  Track TAST[6] ;
1518:L P[465] WELD_SPEED CNT100    ;
1519:C P[466]    
    :  P[467] WELD_SPEED CNT100    ;
1520:L P[468] WELD_SPEED CNT100    ;
1521:L P[474] WELD_SPEED CNT100    ;
1522:L P[475] WELD_SPEED CNT100    ;
1523:L P[476] WELD_SPEED CNT100    ;
1524:L P[481] WELD_SPEED FINE
    :  Arc End[6]    ;
1525:  Weave End ;
1526:  Track End ;
1527:   ;
1528:   ;
1529:   ;
1530:L P[432] 1000mm/sec CNT100    ;
1531:   ;
1532:J P[433] 50% CNT35    ;
1533:   ;
1534:  !********POSITIONER MOVE******** ;
1535:J P[434] 85% CNT30    ;
1536:   ;
1537:L P[435] 1000mm/sec CNT25    ;
1538:   ;
1539:J P[436] 50% CNT25    ;
1540:   ;
1541:   ;
1542:  !FR50L1650 ;
1543:  IF R[15:TECH HOLD]=1652,CALL TECH_HOLD ;
1544:   ;
1545:   ;
1546:   ;
1547:   ;
1548:L P[482] 1000mm/sec FINE
    :  Arc Start[6]    ;
1549:  Weave Sine[6] ;
1550:L P[486] WELD_SPEED CNT100    ;
1551:L P[487] WELD_SPEED CNT100    ;
1552:L P[493] WELD_SPEED CNT100    ;
1553:  Track TAST[6] ;
1554:L P[509] WELD_SPEED CNT100    ;
1555:L P[510] WELD_SPEED CNT100    ;
1556:L P[511] WELD_SPEED CNT100    ;
1557:L P[512] WELD_SPEED CNT100    ;
1558:C P[513]    
    :  P[514] WELD_SPEED CNT100    ;
1559:L P[515] WELD_SPEED CNT100    ;
1560:C P[516]    
    :  P[517] WELD_SPEED CNT100    ;
1561:L P[518] WELD_SPEED FINE
    :  Arc End[6]    ;
1562:  Weave End ;
1563:  Track End ;
1564:   ;
1565:   ;
1566:   ;
1567:L P[451] 1000mm/sec CNT100    ;
1568:   ;
1569:L P[452] 1000mm/sec CNT80    ;
1570:   ;
1571:   ;
1572:  !FR50L1651 ;
1573:  IF R[15:TECH HOLD]=1653,CALL TECH_HOLD ;
1574:   ;
1575:   ;
1576:   ;
1577:   ;
1578:L P[522] 1000mm/sec FINE
    :  Arc Start[6]    ;
1579:  Weave Sine[6] ;
1580:  Track TAST[6] ;
1581:L P[523] WELD_SPEED CNT100    ;
1582:C P[524]    
    :  P[530] WELD_SPEED CNT100    ;
1583:C P[531]    
    :  P[532] WELD_SPEED FINE
    :  Arc End[6]    ;
1584:  Weave End ;
1585:  Track End ;
1586:   ;
1587:   ;
1588:   ;
1589:L P[459] 1000mm/sec CNT60    ;
1590:   ;
1591:L P[460] 1000mm/sec CNT100    ;
1592:   ;
1593:J P[461] 50% CNT40    ;
1594:   ;
1595:J P[498] 50% CNT40    ;
1596:  --eg:Insert g2j2 @90 content ;
1597:   ;
1598:  !********POSITIONER MOVE******** ;
1599:J P[350] 90% CNT40    ;
1600:   ;
1601:J P[349] 50% CNT25    ;
1602:   ;
1603:L P[351] 1000mm/sec CNT25    ;
1604:   ;
1605:   ;
1606:  !FR50L1540 ;
1607:  IF R[15:TECH HOLD]=1542,CALL TECH_HOLD ;
1608:   ;
1609:   ;
1610:   ;
1611:   ;
1612:L P[778] 1000mm/sec FINE
    :  Arc Start[6]    ;
1613:  Weave Sine[6] ;
1614:  Track TAST[6] ;
1615:L P[779] WELD_SPEED CNT100    ;
1616:L P[780] WELD_SPEED CNT100    ;
1617:L P[781] WELD_SPEED CNT100    ;
1618:L P[782] WELD_SPEED CNT100    ;
1619:L P[783] WELD_SPEED CNT100    ;
1620:L P[784] WELD_SPEED CNT100    ;
1621:L P[785] WELD_SPEED FINE
    :  Arc End[6]    ;
1622:  Weave End ;
1623:  Track End ;
1624:   ;
1625:   ;
1626:   ;
1627:L P[360] 1000mm/sec CNT60    ;
1628:   ;
1629:L P[361] 1000mm/sec CNT25    ;
1630:   ;
1631:   ;
1632:  !FR50L1550 ;
1633:  IF R[15:TECH HOLD]=1552,CALL TECH_HOLD ;
1634:   ;
1635:   ;
1636:   ;
1637:   ;
1638:L P[416] 1000mm/sec FINE
    :  Arc Start[6]    ;
1639:  Weave Sine[6] ;
1640:  Track TAST[6] ;
1641:L P[417] WELD_SPEED CNT100    ;
1642:L P[418] WELD_SPEED CNT100    ;
1643:L P[419] WELD_SPEED CNT100    ;
1644:L P[420] WELD_SPEED FINE
    :  Arc End[6]    ;
1645:  Weave End ;
1646:  Track End ;
1647:   ;
1648:   ;
1649:   ;
1650:L P[367] 1000mm/sec CNT25    ;
1651:   ;
1652:L P[368] 1000mm/sec CNT40    ;
1653:   ;
1654:J P[183] 50% CNT40    ;
1655:   ;
1656:  !********POSITIONER MOVE******** ;
1657:J P[377] 90% CNT30    ;
1658:   ;
1659:J P[378] 50% CNT40    ;
1660:   ;
1661:J P[379] 50% CNT40    ;
1662:   ;
1663:   ;
1664:  !FR50L1570 ;
1665:  IF R[15:TECH HOLD]=1572,CALL TECH_HOLD ;
1666:   ;
1667:   ;
1668:   ;
1669:   ;
1670:L P[421] 1000mm/sec FINE
    :  Arc Start[6]    ;
1671:  Weave Sine[6] ;
1672:  Track TAST[6] ;
1673:L P[422] WELD_SPEED CNT100    ;
1674:L P[423] WELD_SPEED CNT100    ;
1675:L P[424] WELD_SPEED CNT100    ;
1676:L P[425] WELD_SPEED CNT100    ;
1677:L P[426] WELD_SPEED CNT100    ;
1678:L P[427] WELD_SPEED CNT100    ;
1679:L P[428] WELD_SPEED FINE
    :  Arc End[6]    ;
1680:  Weave End ;
1681:  Track End ;
1682:   ;
1683:   ;
1684:   ;
1685:L P[388] 1000mm/sec CNT100    ;
1686:   ;
1687:L P[389] 1000mm/sec CNT25    ;
1688:   ;
1689:   ;
1690:  !FR50L1580 ;
1691:  IF R[15:TECH HOLD]=1582,CALL TECH_HOLD ;
1692:   ;
1693:   ;
1694:   ;
1695:   ;
1696:L P[429] 1000mm/sec FINE
    :  Arc Start[6]    ;
1697:  Weave Sine[6] ;
1698:  Track TAST[6] ;
1699:L P[430] WELD_SPEED CNT100    ;
1700:L P[431] WELD_SPEED CNT100    ;
1701:L P[437] WELD_SPEED CNT100    ;
1702:L P[438] WELD_SPEED FINE
    :  Arc End[6]    ;
1703:  Weave End ;
1704:  Track End ;
1705:   ;
1706:   ;
1707:   ;
1708:L P[395] 600mm/sec CNT25    ;
1709:   ;
1710:L P[396] 1000mm/sec CNT100    ;
1711:   ;
1712:J P[326] 60% CNT25    ;
1713:   ;
1714:J P[325] 70% CNT30    ;
1715:   ;
1716:  !********POSITIONER MOVE******** ;
1717:J P[503] 90% CNT30    ;
1718:   ;
1719:J P[477] 50% CNT40    ;
1720:   ;
1721:J P[478] 50% CNT80    ;
1722:   ;
1723:J P[479] 50% CNT60    ;
1724:   ;
1725:J P[480] 50% CNT30    ;
1726:   ;
1727:   ;
1728:  !FR50L1660 ;
1729:  IF R[15:TECH HOLD]=1662,CALL TECH_HOLD ;
1730:   ;
1731:   ;
1732:   ;
1733:   ;
1734:L P[533] 1000mm/sec FINE
    :  Arc Start[6]    ;
1735:  Weave Sine[6] ;
1736:  Track TAST[6] ;
1737:L P[538] WELD_SPEED FINE
    :  Arc End[6]    ;
1738:  Weave End ;
1739:  Track End ;
1740:   ;
1741:   ;
1742:   ;
1743:J P[483] 20% CNT100    ;
1744:   ;
1745:J P[484] 60% CNT25    ;
1746:   ;
1747:L P[485] 600mm/sec CNT25    ;
1748:   ;
1749:   ;
1750:  !FR50L1661 ;
1751:  IF R[15:TECH HOLD]=1663,CALL TECH_HOLD ;
1752:   ;
1753:   ;
1754:   ;
1755:   ;
1756:L P[539] 1000mm/sec FINE
    :  Arc Start[6]    ;
1757:  Weave Sine[6] ;
1758:  Track TAST[6] ;
1759:L P[540] WELD_SPEED FINE
    :  Arc End[6]    ;
1760:  Weave End ;
1761:  Track End ;
1762:   ;
1763:   ;
1764:   ;
1765:L P[488] 500mm/sec CNT25    ;
1766:   ;
1767:L P[489] 500mm/sec CNT35    ;
1768:   ;
1769:L P[490] 1000mm/sec CNT25    ;
1770:   ;
1771:  !********POSITIONER MOVE******** ;
1772:J P[491] 90% CNT25    ;
1773:   ;
1774:L P[492] 1000mm/sec CNT25    ;
1775:   ;
1776:   ;
1777:  !FR50L1670 ;
1778:  IF R[15:TECH HOLD]=1672,CALL TECH_HOLD ;
1779:   ;
1780:   ;
1781:   ;
1782:   ;
1783:L P[541] 1000mm/sec FINE
    :  Arc Start[8]    ;
1784:  Weave Sine[8] ;
1785:L P[545] WELD_SPEED FINE
    :  Arc End[8]    ;
1786:  Weave End ;
1787:   ;
1788:   ;
1789:   ;
1790:L P[495] 800mm/sec CNT25    ;
1791:   ;
1792:L P[496] 1000mm/sec CNT25    ;
1793:   ;
1794:   ;
1795:  !FR50L1680 ;
1796:  IF R[15:TECH HOLD]=1682,CALL TECH_HOLD ;
1797:   ;
1798:   ;
1799:   ;
1800:   ;
1801:L P[546] 1000mm/sec FINE
    :  Arc Start[6]    ;
1802:  Weave Sine[6] ;
1803:  Track TAST[6] ;
1804:L P[550] WELD_SPEED FINE
    :  Arc End[6]    ;
1805:  Weave End ;
1806:  Track End ;
1807:   ;
1808:   ;
1809:   ;
1810:L P[499] 1000mm/sec CNT25    ;
1811:   ;
1812:  !********POSITIONER MOVE******** ;
1813:J P[500] 75% CNT20    ;
1814:   ;
1815:L P[501] 1000mm/sec CNT25    ;
1816:   ;
1817:   ;
1818:  !FR50L1690 ;
1819:  IF R[15:TECH HOLD]=1692,CALL TECH_HOLD ;
1820:   ;
1821:   ;
1822:   ;
1823:   ;
1824:L P[551] 1000mm/sec FINE
    :  Arc Start[6]    ;
1825:  Weave Sine[6] ;
1826:  Track TAST[6] ;
1827:L P[552] WELD_SPEED CNT100    ;
1828:L P[557] WELD_SPEED FINE
    :  Arc End[6]    ;
1829:  Weave End ;
1830:  Track End ;
1831:   ;
1832:   ;
1833:   ;
1834:L P[505] 300mm/sec CNT40    ;
1835:   ;
1836:L P[506] 1000mm/sec CNT40    ;
1837:   ;
1838:L P[507] 1000mm/sec CNT40    ;
1839:   ;
1840:   ;
1841:  !FR50L1700 ;
1842:  IF R[15:TECH HOLD]=1702,CALL TECH_HOLD ;
1843:   ;
1844:   ;
1845:   ;
1846:   ;
1847:L P[558] 1000mm/sec FINE
    :  Arc Start[6]    ;
1848:  Weave Sine[6] ;
1849:  Track TAST[6] ;
1850:L P[561] WELD_SPEED CNT100    ;
1851:C P[562]    
    :  P[566] WELD_SPEED CNT100    ;
1852:L P[567] WELD_SPEED CNT100    ;
1853:C P[570]    
    :  P[574] WELD_SPEED CNT100    ;
1854:L P[575] WELD_SPEED CNT100    ;
1855:C P[579]    
    :  P[580] WELD_SPEED CNT100    ;
1856:L P[582] WELD_SPEED FINE
    :  Arc End[6]    ;
1857:  Weave End ;
1858:  Track End ;
1859:   ;
1860:   ;
1861:   ;
1862:L P[519] 1000mm/sec CNT100    ;
1863:   ;
1864:L P[520] 1000mm/sec CNT40    ;
1865:   ;
1866:L P[521] 500mm/sec CNT30    ;
1867:   ;
1868:   ;
1869:  !FR50L1710 ;
1870:  IF R[15:TECH HOLD]=1712,CALL TECH_HOLD ;
1871:   ;
1872:   ;
1873:   ;
1874:   ;
1875:L P[583] 1000mm/sec FINE
    :  Arc Start[6]    ;
1876:  Weave Sine[6] ;
1877:  Track TAST[6] ;
1878:L P[584] WELD_SPEED CNT100    ;
1879:L P[586] WELD_SPEED FINE
    :  Arc End[6]    ;
1880:  Weave End ;
1881:  Track End ;
1882:   ;
1883:   ;
1884:   ;
1885:L P[525] 500mm/sec CNT25    ;
1886:   ;
1887:L P[526] 800mm/sec CNT50 Wjnt    ;
1888:   ;
1889:L P[527] 1400mm/sec CNT100 Wjnt    ;
1890:   ;
1891:J P[528] 50% CNT100    ;
1892:   ;
1893:L P[529] 1000mm/sec CNT25    ;
1894:   ;
1895:   ;
1896:  !FR50L1720 ;
1897:  IF R[15:TECH HOLD]=1722,CALL TECH_HOLD ;
1898:   ;
1899:   ;
1900:   ;
1901:   ;
1902:L P[587] 1000mm/sec FINE
    :  Arc Start[6]    ;
1903:  Weave Sine[6] ;
1904:L P[588] WELD_SPEED CNT100    ;
1905:L P[592] WELD_SPEED CNT100    ;
1906:L P[593] WELD_SPEED FINE
    :  Arc End[6]    ;
1907:  Weave End ;
1908:   ;
1909:   ;
1910:   ;
1911:J P[534] 50% CNT10    ;
1912:   ;
1913:  !********POSITIONER MOVE******** ;
1914:J P[535] 40% CNT10    ;
1915:   ;
1916:J P[536] 20% CNT5    ;
1917:   ;
1918:L P[537] 1000mm/sec CNT25    ;
1919:   ;
1920:   ;
1921:  !FR50L1730 ;
1922:  IF R[15:TECH HOLD]=1732,CALL TECH_HOLD ;
1923:   ;
1924:   ;
1925:   ;
1926:   ;
1927:L P[594] 1000mm/sec FINE
    :  Arc Start[6]    ;
1928:  Weave Sine[6] ;
1929:  Track TAST[6] ;
1930:L P[599] WELD_SPEED CNT100    ;
1931:L P[600] WELD_SPEED CNT100    ;
1932:L P[601] WELD_SPEED FINE
    :  Arc End[6]    ;
1933:  Weave End ;
1934:  Track End ;
1935:   ;
1936:   ;
1937:   ;
1938:L P[542] 1000mm/sec CNT25    ;
1939:   ;
1940:J P[543] 50% CNT10    ;
1941:   ;
1942:  !********POSITIONER MOVE******** ;
1943:J P[544] 80% CNT10    ;
1944:   ;
1945:   ;
1946:  !FR50L1740 ;
1947:  IF R[15:TECH HOLD]=1742,CALL TECH_HOLD ;
1948:   ;
1949:   ;
1950:   ;
1951:   ;
1952:L P[602] 1000mm/sec FINE
    :  Arc Start[6]    ;
1953:  Weave Sine[6] ;
1954:  Track TAST[6] ;
1955:L P[603] WELD_SPEED FINE
    :  Arc End[6]    ;
1956:  Weave End ;
1957:  Track End ;
1958:   ;
1959:   ;
1960:   ;
1961:L P[547] 1000mm/sec CNT25    ;
1962:   ;
1963:L P[548] 1000mm/sec CNT25    ;
1964:   ;
1965:L P[549] 1000mm/sec CNT25    ;
1966:   ;
1967:   ;
1968:  !FR50L1750 ;
1969:  IF R[15:TECH HOLD]=1752,CALL TECH_HOLD ;
1970:   ;
1971:   ;
1972:   ;
1973:   ;
1974:L P[604] 1000mm/sec FINE
    :  Arc Start[6]    ;
1975:  Weave Sine[6] ;
1976:  Track TAST[6] ;
1977:L P[605] WELD_SPEED CNT100    ;
1978:L P[606] WELD_SPEED FINE
    :  Arc End[6]    ;
1979:  Weave End ;
1980:  Track End ;
1981:   ;
1982:   ;
1983:   ;
1984:L P[553] 1000mm/sec CNT25    ;
1985:   ;
1986:L P[554] 1000mm/sec CNT100    ;
1987:   ;
1988:L P[555] 1000mm/sec CNT100    ;
1989:   ;
1990:J P[508] 50% CNT40    ;
1991:   ;
1992:  CALL HOME    ;
1993:  CALL T_CLEAN    ;
1994:   ;
1995:J P[556] 50% CNT30    ;
1996:   ;
1997:   ;
1998:  !FR50L1770 ;
1999:  IF R[15:TECH HOLD]=1772,CALL TECH_HOLD ;
2000:   ;
2001:   ;
2002:   ;
2003:   ;
2004:L P[609] 1000mm/sec FINE
    :  Arc Start[6]    ;
2005:  Weave Sine[6] ;
2006:  Track TAST[6] ;
2007:L P[610] WELD_SPEED FINE
    :  Arc End[6]    ;
2008:  Weave End ;
2009:  Track End ;
2010:   ;
2011:   ;
2012:   ;
2013:L P[559] 1000mm/sec CNT100    ;
2014:   ;
2015:J P[560] 50% CNT25    ;
2016:   ;
2017:L P[611] 1000mm/sec FINE
    :  Arc Start[6]    ;
2018:  Weave Sine[6] ;
2019:L P[612] WELD_SPEED FINE
    :  Arc End[6]    ;
2020:  Weave End ;
2021:   ;
2022:   ;
2023:L P[563] 1200mm/sec CNT100    ;
2024:   ;
2025:L P[89] 800mm/sec CNT100    ;
2026:   ;
2027:L P[565] 1000mm/sec CNT20    ;
2028:   ;
2029:L P[613] 960mm/sec FINE
    :  Arc Start[6]    ;
2030:  Weave Sine[6] ;
2031:L P[614] WELD_SPEED FINE
    :  Arc End[6]    ;
2032:  Weave End ;
2033:   ;
2034:L P[568] 1000mm/sec CNT25    ;
2035:   ;
2036:J P[569] 50% CNT40    ;
2037:   ;
2038:  !********POSITIONER MOVE******** ;
2039:J P[371] 90% CNT40    ;
2040:   ;
2041:L P[572] 1000mm/sec CNT25    ;
2042:   ;
2043:L P[573] 1000mm/sec CNT25    ;
2044:   ;
2045:   ;
2046:  !FR50L1780 ;
2047:  IF R[15:TECH HOLD]=1782,CALL TECH_HOLD ;
2048:   ;
2049:   ;
2050:   ;
2051:   ;
2052:L P[615] 500mm/sec FINE
    :  Arc Start[6]    ;
2053:  Weave Sine[6] ;
2054:  Track TAST[6] ;
2055:L P[616] WELD_SPEED FINE
    :  Arc End[6]    ;
2056:  Weave End ;
2057:  Track End ;
2058:   ;
2059:   ;
2060:   ;
2061:L P[576] 500mm/sec CNT25    ;
2062:   ;
2063:L P[577] 1000mm/sec CNT25    ;
2064:   ;
2065:  !********POSITIONER MOVE******** ;
2066:J P[578] 90% CNT25    ;
2067:   ;
2068:   ;
2069:  !FR50L1790 ;
2070:  IF R[15:TECH HOLD]=1792,CALL TECH_HOLD ;
2071:   ;
2072:   ;
2073:   ;
2074:   ;
2075:L P[617] 1000mm/sec FINE
    :  Arc Start[6]    ;
2076:  Weave Sine[6] ;
2077:  Track TAST[6] ;
2078:L P[622] WELD_SPEED FINE
    :  Arc End[6]    ;
2079:  Weave End ;
2080:  Track End ;
2081:   ;
2082:   ;
2083:   ;
2084:L P[581] 1000mm/sec CNT100    ;
2085:   ;
2086:   ;
2087:  !FR50L1800 ;
2088:  IF R[15:TECH HOLD]=1802,CALL TECH_HOLD ;
2089:   ;
2090:   ;
2091:   ;
2092:   ;
2093:L P[623] 1000mm/sec FINE
    :  Arc Start[6]    ;
2094:  Weave Sine[6] ;
2095:  Track TAST[6] ;
2096:L P[624] WELD_SPEED CNT100    ;
2097:L P[625] WELD_SPEED FINE
    :  Arc End[6]    ;
2098:  Weave End ;
2099:  Track End ;
2100:   ;
2101:   ;
2102:   ;
2103:L P[585] 1000mm/sec CNT40    ;
2104:   ;
2105:   ;
2106:  !FR50L1810 ;
2107:  IF R[15:TECH HOLD]=1812,CALL TECH_HOLD ;
2108:   ;
2109:   ;
2110:   ;
2111:   ;
2112:L P[628] 1000mm/sec FINE
    :  Arc Start[6]    ;
2113:  Weave Sine[6] ;
2114:  Track TAST[6] ;
2115:L P[629] WELD_SPEED CNT100    ;
2116:L P[631] WELD_SPEED FINE
    :  Arc End[6]    ;
2117:  Weave End ;
2118:  Track End ;
2119:   ;
2120:   ;
2121:   ;
2122:L P[589] 1000mm/sec CNT35    ;
2123:   ;
2124:J P[590] 50% CNT25    ;
2125:   ;
2126:L P[591] 1000mm/sec CNT40    ;
2127:   ;
2128:   ;
2129:  !FR50L1820 ;
2130:  IF R[15:TECH HOLD]=1822,CALL TECH_HOLD ;
2131:   ;
2132:   ;
2133:   ;
2134:   ;
2135:L P[632] 1000mm/sec FINE
    :  Arc Start[6]    ;
2136:  Weave Sine[6] ;
2137:L P[633] WELD_SPEED CNT100    ;
2138:L P[635] WELD_SPEED FINE
    :  Arc End[6]    ;
2139:  Weave End ;
2140:   ;
2141:   ;
2142:   ;
2143:L P[595] 1000mm/sec CNT50    ;
2144:   ;
2145:J P[596] 50% CNT60    ;
2146:   ;
2147:J P[597] 50% CNT40    ;
2148:   ;
2149:L P[598] 1000mm/sec CNT25    ;
2150:   ;
2151:   ;
2152:   ;
2153:  !FR50L1830 ;
2154:  IF R[15:TECH HOLD]=1832,CALL TECH_HOLD ;
2155:   ;
2156:   ;
2157:   ;
2158:   ;
2159:L P[636] 1000mm/sec FINE
    :  Arc Start[6]    ;
2160:  Weave Sine[6] ;
2161:  Track TAST[6] ;
2162:L P[637] WELD_SPEED CNT100    ;
2163:C P[642]    
    :  P[643] WELD_SPEED CNT100    ;
2164:L P[644] WELD_SPEED CNT100    ;
2165:C P[649]    
    :  P[650] WELD_SPEED CNT100    ;
2166:L P[651] WELD_SPEED FINE
    :  Arc End[6]    ;
2167:  Weave End ;
2168:  Track End ;
2169:   ;
2170:   ;
2171:   ;
2172:L P[607] 1000mm/sec CNT60    ;
2173:   ;
2174:J P[608] 50% CNT50    ;
2175:   ;
2176:   ;
2177:  !FR50L1840 ;
2178:  IF R[15:TECH HOLD]=1842,CALL TECH_HOLD ;
2179:   ;
2180:   ;
2181:   ;
2182:   ;
2183:L P[652] 1000mm/sec FINE
    :  Arc Start[6]    ;
2184:  Weave Sine[6] ;
2185:  Track TAST[6] ;
2186:L P[653] WELD_SPEED CNT100    ;
2187:C P[654]    
    :  P[655] WELD_SPEED CNT100    ;
2188:L P[656] WELD_SPEED CNT100    ;
2189:L P[657] WELD_SPEED CNT100    ;
2190:L P[658] WELD_SPEED CNT100    ;
2191:L P[659] WELD_SPEED CNT100    ;
2192:L P[660] WELD_SPEED FINE
    :  Arc End[6]    ;
2193:  Weave End ;
2194:  Track End ;
2195:   ;
2196:   ;
2197:   ;
2198:L P[618] 1000mm/sec CNT25    ;
2199:   ;
2200:J P[619] 50% CNT75    ;
2201:   ;
2202:J P[620] 50% CNT75    ;
2203:   ;
2204:J P[372] 50% CNT80    ;
2205:   ;
2206:L P[621] 1000mm/sec CNT40    ;
2207:   ;
2208:   ;
2209:  !FR50L1850 ;
2210:  IF R[15:TECH HOLD]=1852,CALL TECH_HOLD ;
2211:   ;
2212:   ;
2213:   ;
2214:L P[661] 1000mm/sec FINE
    :  Arc Start[6]    ;
2215:  Weave Sine[6] ;
2216:L P[662] WELD_SPEED CNT100    ;
2217:L P[663] WELD_SPEED CNT100    ;
2218:L P[664] WELD_SPEED FINE
    :  Arc End[6]    ;
2219:  Weave End ;
2220:   ;
2221:   ;
2222:   ;
2223:L P[626] 1000mm/sec CNT90    ;
2224:   ;
2225:L P[627] 1000mm/sec CNT100    ;
2226:   ;
2227:   ;
2228:  !FR50L1860 ;
2229:  IF R[15:TECH HOLD]=1862,CALL TECH_HOLD ;
2230:   ;
2231:   ;
2232:   ;
2233:   ;
2234:L P[665] 1000mm/sec FINE
    :  Arc Start[6]    ;
2235:  Weave Sine[6] ;
2236:  Track TAST[6] ;
2237:L P[666] WELD_SPEED FINE
    :  Arc End[6]    ;
2238:  Weave End ;
2239:  Track End ;
2240:   ;
2241:   ;
2242:   ;
2243:L P[630] 1000mm/sec CNT50    ;
2244:   ;
2245:   ;
2246:  !FR50L1870 ;
2247:  IF R[15:TECH HOLD]=1872,CALL TECH_HOLD ;
2248:   ;
2249:   ;
2250:   ;
2251:   ;
2252:L P[667] 1000mm/sec FINE
    :  Arc Start[6]    ;
2253:  Weave Sine[6] ;
2254:  Track TAST[6] ;
2255:L P[668] WELD_SPEED CNT100    ;
2256:L P[669] WELD_SPEED FINE
    :  Arc End[6]    ;
2257:  Weave End ;
2258:  Track End ;
2259:   ;
2260:   ;
2261:   ;
2262:L P[634] 1000mm/sec CNT60    ;
2263:   ;
2264:   ;
2265:  !FR50L1880 ;
2266:  IF R[15:TECH HOLD]=1882,CALL TECH_HOLD ;
2267:   ;
2268:   ;
2269:   ;
2270:   ;
2271:L P[672] 1000mm/sec FINE
    :  Arc Start[6]    ;
2272:  Weave Sine[6] ;
2273:  Track TAST[6] ;
2274:L P[673] WELD_SPEED CNT100    ;
2275:L P[674] WELD_SPEED FINE
    :  Arc End[6]    ;
2276:  Weave End ;
2277:  Track End ;
2278:   ;
2279:   ;
2280:   ;
2281:L P[373] 1000mm/sec CNT25    ;
2282:   ;
2283:J P[638] 50% CNT25    ;
2284:   ;
2285:J P[641] 50% CNT25    ;
2286:   ;
2287:   ;
2288:  !FR50L1900 ;
2289:  IF R[15:TECH HOLD]=1902,CALL TECH_HOLD ;
2290:   ;
2291:   ;
2292:   ;
2293:   ;
2294:L P[675] 1000mm/sec FINE
    :  Arc Start[6]    ;
2295:  Weave Sine[6] ;
2296:  Track TAST[6] ;
2297:L P[676] WELD_SPEED CNT100    ;
2298:L P[677] WELD_SPEED FINE
    :  Arc End[6]    ;
2299:  Weave End ;
2300:  Track End ;
2301:   ;
2302:   ;
2303:   ;
2304:L P[645] 1000mm/sec CNT40    ;
2305:   ;
2306:J P[87] 50% CNT35    ;
2307:  --eg:Insert g2j2 @-90 Loadstop!!! ;
2308:   ;
2309:  !********POSITIONER MOVE******** ;
2310:J P[106] 85% CNT40    ;
2311:   ;
2312:J P[107] 50% CNT80    ;
2313:   ;
2314:   ;
2315:  !FR50L2010 ;
2316:  IF R[15:TECH HOLD]=2012,CALL TECH_HOLD ;
2317:   ;
2318:L P[108] 1000mm/sec CNT25    ;
2319:   ;
2320:   ;
2321:   ;
2322:L P[761] 1000mm/sec FINE
    :  Arc Start[8]    ;
2323:  Weave Sine[8] ;
2324:L P[762] WELD_SPEED CNT100    ;
2325:C P[763]    
    :  P[764] WELD_SPEED CNT100    ;
2326:L P[765] WELD_SPEED CNT100    ;
2327:L P[766] WELD_SPEED CNT100    ;
2328:L P[767] WELD_SPEED CNT100    ;
2329:L P[769] WELD_SPEED FINE
    :  Arc End[8]    ;
2330:  Weave End ;
2331:   ;
2332:   ;
2333:   ;
2334:  CALL ARC_LH_DISABLE_LS(1) ;
2335:   ;
2336:L P[469] 1000mm/sec CNT50    ;
2337:   ;
2338:J P[470] 50% CNT100    ;
2339:   ;
2340:J P[471] 50% CNT70    ;
2341:   ;
2342:J P[472] 50% CNT40    ;
2343:   ;
2344:  --eg:Insert g2j2 @-90 Loadstop!!! ;
2345:   ;
2346:  !********POSITIONER MOVE******** ;
2347:J P[118] 85% CNT40    ;
2348:   ;
2349:J P[646] 90% CNT50    ;
2350:   ;
2351:L P[647] 1000mm/sec CNT40    ;
2352:   ;
2353:L P[648] 1000mm/sec CNT25    ;
2354:   ;
2355:   ;
2356:  !FR50L1910 ;
2357:  IF R[15:TECH HOLD]=1912,CALL TECH_HOLD ;
2358:   ;
2359:   ;
2360:   ;
2361:   ;
2362:L P[678] 1000mm/sec FINE
    :  Arc Start[6]    ;
2363:  Weave Sine[6] ;
2364:  Track TAST[6] ;
2365:L P[686] WELD_SPEED CNT100    ;
2366:C P[687]    
    :  P[691] WELD_SPEED CNT100    ;
2367:L P[692] WELD_SPEED CNT100    ;
2368:L P[693] WELD_SPEED CNT100    ;
2369:L P[696] WELD_SPEED CNT100    ;
2370:L P[697] WELD_SPEED CNT100    ;
2371:C P[703]    
    :  P[704] WELD_SPEED CNT100    ;
2372:L P[705] WELD_SPEED CNT100    ;
2373:C P[706]    
    :  P[707] WELD_SPEED CNT100    ;
2374:L P[709] WELD_SPEED CNT100    ;
2375:C P[715]    
    :  P[716] WELD_SPEED CNT100    ;
2376:L P[717] WELD_SPEED CNT100    ;
2377:L P[718] WELD_SPEED CNT100    ;
2378:L P[719] WELD_SPEED CNT100    ;
2379:C P[722]    
    :  P[723] WELD_SPEED FINE
    :  Arc End[6]    ;
2380:  Weave End ;
2381:  Track End ;
2382:   ;
2383:   ;
2384:L P[670] 1000mm/sec CNT25    ;
2385:   ;
2386:L P[671] 500mm/sec CNT25    ;
2387:   ;
2388:   ;
2389:  !FR50L1911 ;
2390:  IF R[15:TECH HOLD]=1913,CALL TECH_HOLD ;
2391:   ;
2392:   ;
2393:L P[786] 500mm/sec FINE
    :  Arc Start[6]    ;
2394:  Weave Sine[6] ;
2395:  Track TAST[6] ;
2396:L P[787] WELD_SPEED CNT100    ;
2397:C P[788]    
    :  P[789] WELD_SPEED CNT100    ;
2398:L P[790] WELD_SPEED CNT100    ;
2399:C P[791]    
    :  P[792] WELD_SPEED FINE
    :  Arc End[6]    ;
2400:  Weave End ;
2401:  Track End ;
2402:   ;
2403:L P[679] 1000mm/sec CNT80    ;
2404:   ;
2405:L P[680] 900mm/sec CNT30 Wjnt    ;
2406:   ;
2407:J P[95] 50% CNT90    ;
2408:   ;
2409:J P[681] 50% CNT40    ;
2410:   ;
2411:  !HOME ;
2412:J P[94] 80% CNT40    ;
2413:   ;
2414:  !********POSITIONER MOVE******** ;
2415:J P[682] 90% CNT30    ;
2416:   ;
2417:J P[683] 50% CNT85    ;
2418:   ;
2419:J P[684] 50% CNT30    ;
2420:   ;
2421:L P[685] 1000mm/sec CNT25    ;
2422:   ;
2423:  !TO SKIP FRONT BUMPER WELDS ;
2424:  CALL ARC_DISABLE_FRONT_BMPR_LRG(0) ;
2425:   ;
2426:  !FR50L1920 ;
2427:  IF R[15:TECH HOLD]=1922,CALL TECH_HOLD ;
2428:   ;
2429:  UALM[20] ;
2430:  --eg:CHECK NEXT 3 WELDS ;
2431:   ;
2432:   ;
2433:   ;
2434:L P[731] 1000mm/sec FINE
    :  Arc Start[6]    ;
2435:  Weave Sine[6] ;
2436:  Track TAST[6] ;
2437:L P[734] WELD_SPEED FINE
    :  Arc End[6]    ;
2438:  Weave End ;
2439:  Track End ;
2440:   ;
2441:   ;
2442:   ;
2443:L P[688] 1000mm/sec CNT100    ;
2444:   ;
2445:J P[689] 50% CNT25    ;
2446:   ;
2447:L P[690] 1000mm/sec CNT25    ;
2448:   ;
2449:   ;
2450:  !FR50L1930 ;
2451:  IF R[15:TECH HOLD]=1932,CALL TECH_HOLD ;
2452:   ;
2453:   ;
2454:L P[735] 1000mm/sec FINE
    :  Arc Start[6]    ;
2455:  Weave Sine[6] ;
2456:  Track TAST[6] ;
2457:L P[736] WELD_SPEED CNT100    ;
2458:L P[737] WELD_SPEED FINE
    :  Arc End[6]    ;
2459:  Weave End ;
2460:  Track End ;
2461:   ;
2462:   ;
2463:   ;
2464:L P[694] 1000mm/sec CNT90    ;
2465:   ;
2466:J P[695] 50% CNT40    ;
2467:   ;
2468:   ;
2469:  !FR50L1940 ;
2470:  IF R[15:TECH HOLD]=1942,CALL TECH_HOLD ;
2471:   ;
2472:   ;
2473:   ;
2474:   ;
2475:L P[741] 1000mm/sec FINE
    :  Arc Start[6]    ;
2476:  Weave Sine[6] ;
2477:  Track TAST[6] ;
2478:L P[742] WELD_SPEED FINE
    :  Arc End[6]    ;
2479:  Weave End ;
2480:  Track End ;
2481:   ;
2482:   ;
2483:   ;
2484:  CALL ARC_DISABLE_FRONT_BMPR_LRG(1) ;
2485:   ;
2486:L P[698] 1000mm/sec CNT25    ;
2487:   ;
2488:J P[699] 50% CNT40    ;
2489:   ;
2490:  !********POSITIONER MOVE******** ;
2491:J P[700] 90% CNT30    ;
2492:   ;
2493:J P[701] 50% CNT30    ;
2494:   ;
2495:   ;
2496:  CALL ARC_LH_DISABLE_LS(0) ;
2497:   ;
2498:  !FR50L1950 ;
2499:  IF R[15:TECH HOLD]=1952,CALL TECH_HOLD ;
2500:   ;
2501:   ;
2502:L P[702] 1000mm/sec CNT25    ;
2503:   ;
2504:   ;
2505:   ;
2506:L P[743] 1000mm/sec FINE
    :  Arc Start[6]    ;
2507:  Weave Sine[6] ;
2508:  Track TAST[6] ;
2509:L P[744] WELD_SPEED CNT100    ;
2510:L P[745] WELD_SPEED CNT100    ;
2511:C P[746]    
    :  P[747] WELD_SPEED FINE
    :  Arc End[6]    ;
2512:  Weave End ;
2513:  Track End ;
2514:   ;
2515:   ;
2516:   ;
2517:  CALL ARC_LH_DISABLE_LS(1) ;
2518:   ;
2519:L P[708] 1000mm/sec CNT50    ;
2520:   ;
2521:J P[97] 50% CNT25    ;
2522:   ;
2523:J P[710] 50% CNT25    ;
2524:   ;
2525:  !********POSITIONER MOVE******** ;
2526:J P[2] 85% CNT40    ;
2527:   ;
2528:J P[105] 50% CNT25    ;
2529:   ;
2530:L P[113] 1000mm/sec CNT25    ;
2531:   ;
2532:  CALL ARC_DISABLE_RH_LS(0) ;
2533:   ;
2534:  !FR50L1970 ;
2535:  IF R[15:TECH HOLD]=1972,CALL TECH_HOLD ;
2536:   ;
2537:   ;
2538:   ;
2539:   ;
2540:L P[753] 800mm/sec FINE
    :  Arc Start[6]    ;
2541:  Weave Sine[6] ;
2542:  Track TAST[6] ;
2543:L P[754] WELD_SPEED CNT100    ;
2544:C P[755]    
    :  P[756] WELD_SPEED FINE
    :  Arc End[6]    ;
2545:  Track End ;
2546:  Weave End ;
2547:   ;
2548:   ;
2549:   ;
2550:L P[564] 800mm/sec CNT5    ;
2551:   ;
2552:J P[571] 20% CNT40    ;
2553:   ;
2554:J P[639] 40% CNT25    ;
2555:   ;
2556:J P[640] 75% CNT50    ;
2557:   ;
2558:  !********POSITIONER MOVE******** ;
2559:J P[711] 85% CNT30    ;
2560:   ;
2561:J P[712] 50% CNT80    ;
2562:   ;
2563:L P[713] 1000mm/sec CNT40    ;
2564:   ;
2565:   ;
2566:  !FR50L1960 ;
2567:  IF R[15:TECH HOLD]=1962,CALL TECH_HOLD ;
2568:   ;
2569:   ;
2570:L P[714] 500mm/sec CNT25    ;
2571:   ;
2572:   ;
2573:   ;
2574:L P[748] 1000mm/sec FINE
    :  Arc Start[6]    ;
2575:  Weave Sine[6] ;
2576:  Track TAST[6] ;
2577:L P[749] WELD_SPEED CNT100    ;
2578:L P[750] WELD_SPEED CNT100    ;
2579:C P[751]    
    :  P[752] WELD_SPEED FINE
    :  Arc End[6]    ;
2580:  Weave End ;
2581:  Track End ;
2582:   ;
2583:   ;
2584:   ;
2585:  CALL ARC_DISABLE_RH_LS(1) ;
2586:   ;
2587:L P[720] 500mm/sec CNT35    ;
2588:   ;
2589:L P[721] 1000mm/sec CNT100    ;
2590:   ;
2591:J P[99] 100% CNT30    ;
2592:   ;
2593:  !******** POSITIONER MOVE ******* ;
2594:J P[793] 85% CNT30    ;
2595:   ;
2596:J P[732] 75% CNT25    ;
2597:   ;
2598:L P[733] 1000mm/sec CNT100    ;
2599:   ;
2600:   ;
2601:  CALL ARC_LH_DISABLE_LS(0) ;
2602:   ;
2603:  !FR50L1980 ;
2604:  IF R[15:TECH HOLD]=1982,CALL TECH_HOLD ;
2605:   ;
2606:   ;
2607:   ;
2608:   ;
2609:L P[757] 800mm/sec FINE
    :  Arc Start[6]    ;
2610:  Weave Sine[6] ;
2611:  Track TAST[6] ;
2612:L P[758] WELD_SPEED CNT100    ;
2613:C P[759]    
    :  P[760] WELD_SPEED FINE
    :  Arc End[6]    ;
2614:  Weave End ;
2615:  Track End ;
2616:   ;
2617:   ;
2618:   ;
2619:L P[738] 800mm/sec CNT20    ;
2620:   ;
2621:L P[739] 1000mm/sec CNT100    ;
2622:   ;
2623:J P[740] 100% CNT100    ;
2624:   ;
2625:  !HOME ;
2626:J P[104] 100% CNT30    ;
2627:   ;
2628:  CALL HOME    ;
2629:   ;
2630:  !********POSITIONER MOVE******** ;
2631:  CALL LOAD_POS    ;
2632:   ;
2633:  R[79:TEST LRG WELDDIT]=($AWEPRODSTAT[1].$WELD_DIST) ;
2634:  !11111111111111111111111111111111 ;
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
	X =  1171.584  mm,	Y = -1326.619  mm,	Z =  1560.411  mm,
	W =   -31.995 deg,	P =   -11.977 deg,	R =    17.020 deg
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
	X =  1252.058  mm,	Y = -1261.378  mm,	Z =    72.461  mm,
	W =    -1.699 deg,	P =    44.143 deg,	R =  -145.630 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1307.345  mm,	Y = -1320.375  mm,	Z =    70.982  mm,
	W =     1.500 deg,	P =    44.727 deg,	R =  -177.468 deg
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
	X =   902.346  mm,	Y =  -835.521  mm,	Z =    69.924  mm,
	W =      .907 deg,	P =    42.840 deg,	R =  -137.766 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1236.294  mm,	Y = -1234.316  mm,	Z =    69.654  mm,
	W =      .456 deg,	P =    44.458 deg,	R =  -141.251 deg
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
	X =   872.611  mm,	Y =  -807.728  mm,	Z =    71.519  mm,
	W =    -2.028 deg,	P =    42.190 deg,	R =  -140.469 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   825.707  mm,	Y =  -749.978  mm,	Z =    70.668  mm,
	W =    -1.995 deg,	P =    42.640 deg,	R =  -109.079 deg
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
	X =  2508.188  mm,	Y =   408.450  mm,	Z =   487.642  mm,
	W =    44.781 deg,	P =     5.019 deg,	R =    -1.188 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2466.409  mm,	Y =   408.572  mm,	Z =   487.702  mm,
	W =    44.791 deg,	P =     5.023 deg,	R =    -1.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2443.024  mm,	Y =   407.813  mm,	Z =   489.461  mm,
	W =    44.788 deg,	P =     5.020 deg,	R =    30.075 deg
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
	X =  2524.947  mm,	Y =  -411.523  mm,	Z =   487.782  mm,
	W =   -44.055 deg,	P =    10.311 deg,	R =     9.166 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2481.308  mm,	Y =  -411.463  mm,	Z =   487.996  mm,
	W =   -44.053 deg,	P =    10.307 deg,	R =     9.166 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2449.567  mm,	Y =  -411.710  mm,	Z =   486.469  mm,
	W =   -44.056 deg,	P =    10.309 deg,	R =   -21.686 deg
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
	X =  2009.910  mm,	Y =   392.326  mm,	Z =   357.903  mm,
	W =    43.297 deg,	P =    13.770 deg,	R =    75.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.910  mm,	Y =   312.166  mm,	Z =   357.903  mm,
	W =    43.297 deg,	P =    13.770 deg,	R =    75.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
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
	X =  2009.490  mm,	Y =  -404.811  mm,	Z =   359.074  mm,
	W =   -41.229 deg,	P =    19.917 deg,	R =   -68.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.489  mm,	Y =  -322.731  mm,	Z =   359.074  mm,
	W =   -41.229 deg,	P =    19.917 deg,	R =   -68.757 deg
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
	X =  2736.558  mm,	Y =   -56.451  mm,	Z =  -598.484  mm,
	W =      .970 deg,	P =    44.992 deg,	R =   -88.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2767.036  mm,	Y =   -56.451  mm,	Z =  -598.486  mm,
	W =      .970 deg,	P =    44.992 deg,	R =   -88.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
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
	X =  2737.214  mm,	Y =    52.045  mm,	Z =  -596.220  mm,
	W =      .898 deg,	P =    44.994 deg,	R =    91.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2765.224  mm,	Y =    53.223  mm,	Z =  -596.928  mm,
	W =      .899 deg,	P =    44.991 deg,	R =    91.266 deg
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
	X =  2771.547  mm,	Y =    44.594  mm,	Z =  -599.203  mm,
	W =     -.289 deg,	P =    37.601 deg,	R =      .738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2771.146  mm,	Y =   -56.494  mm,	Z =  -598.357  mm,
	W =     -.293 deg,	P =    37.601 deg,	R =      .748 deg
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
	X =  2751.342  mm,	Y =   410.859  mm,	Z =   451.447  mm,
	W =    44.538 deg,	P =    -7.208 deg,	R =     7.272 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2710.782  mm,	Y =   408.789  mm,	Z =   452.225  mm,
	W =    44.541 deg,	P =    -7.214 deg,	R =     7.272 deg
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
	X =  2754.725  mm,	Y =  -417.352  mm,	Z =   456.544  mm,
	W =   -44.517 deg,	P =     7.212 deg,	R =     7.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2716.537  mm,	Y =  -417.597  mm,	Z =   455.165  mm,
	W =   -44.526 deg,	P =     7.207 deg,	R =     7.276 deg
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
	X =  2896.112  mm,	Y =   278.436  mm,	Z =   463.899  mm,
	W =   -14.926 deg,	P =   -42.904 deg,	R =    33.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2897.490  mm,	Y =   360.733  mm,	Z =   463.056  mm,
	W =    -8.441 deg,	P =   -43.927 deg,	R =    33.763 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2898.388  mm,	Y =   393.767  mm,	Z =   462.045  mm,
	W =    -2.983 deg,	P =   -44.252 deg,	R =    40.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2895.619  mm,	Y =   404.047  mm,	Z =   461.557  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    53.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2888.819  mm,	Y =   407.185  mm,	Z =   461.271  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2877.562  mm,	Y =   409.105  mm,	Z =   461.271  mm,
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
	X =  2897.917  mm,	Y =  -285.431  mm,	Z =   459.923  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2898.423  mm,	Y =  -384.351  mm,	Z =   461.415  mm,
	W =     7.397 deg,	P =   -43.869 deg,	R =   -27.794 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2897.209  mm,	Y =  -399.220  mm,	Z =   461.618  mm,
	W =     7.397 deg,	P =   -43.869 deg,	R =   -33.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2894.455  mm,	Y =  -407.278  mm,	Z =   461.615  mm,
	W =    -1.104 deg,	P =   -44.451 deg,	R =   -50.597 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.997 deg,	J2=     0.000 deg
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2890.602  mm,	Y =  -413.663  mm,	Z =   458.117  mm,
	W =    -1.090 deg,	P =   -44.448 deg,	R =   -71.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2876.877  mm,	Y =  -417.188  mm,	Z =   456.595  mm,
	W =    -1.104 deg,	P =   -44.451 deg,	R =   -71.047 deg
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
	X =  1142.160  mm,	Y =  -217.183  mm,	Z =   141.822  mm,
	W =    36.993 deg,	P =    27.706 deg,	R =  -162.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1987.244  mm,	Y =     -.972  mm,	Z =  1525.322  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1457.610  mm,	Y =    -5.074  mm,	Z =    -1.334  mm,
	W =      .944 deg,	P =    42.924 deg,	R =   177.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
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
	X =  2368.673  mm,	Y =    45.599  mm,	Z =  1002.320  mm,
	W =     -.010 deg,	P =    44.998 deg,	R =    66.715 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1456.823  mm,	Y =  -333.215  mm,	Z =     -.642  mm,
	W =    -1.375 deg,	P =    43.930 deg,	R =   175.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
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
	X =  1457.144  mm,	Y =  -389.993  mm,	Z =      .340  mm,
	W =     5.164 deg,	P =    43.292 deg,	R =  -179.576 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
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
	UF : 1, UT : 1,	
	J1=   -55.000 deg,	J2=   -30.678 deg,	J3=    10.000 deg,
	J4=   -84.542 deg,	J5=   -72.333 deg,	J6=   125.863 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.765  mm,	Y = -1447.908  mm,	Z =  1189.179  mm,
	W =   -45.668 deg,	P =   -29.178 deg,	R =    61.340 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2500.465  mm,	Y = -1499.903  mm,	Z =  1059.350  mm,
	W =   -50.284 deg,	P =   -30.325 deg,	R =    67.097 deg
   GP2:
	UF : 0, UT : 1,	
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1851.900  mm,	Y =  1480.079  mm,	Z =  1370.284  mm,
	W =   -15.089 deg,	P =   -28.874 deg,	R =    15.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    93.119 deg,	J2=    90.000 deg
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2526.820  mm,	Y =  1556.392  mm,	Z =  1079.609  mm,
	W =    21.780 deg,	P =   -40.404 deg,	R =   -29.962 deg
   GP2:
	UF : 0, UT : 1,	
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1214.806  mm,	Y =   169.341  mm,	Z =   386.823  mm,
	W =    23.939 deg,	P =    39.314 deg,	R =  -177.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
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
	X =  2420.268  mm,	Y =   -62.420  mm,	Z =   888.262  mm,
	W =     4.742 deg,	P =    44.802 deg,	R =    66.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
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
	X =  2434.487  mm,	Y =  -113.503  mm,	Z =   886.043  mm,
	W =   -16.311 deg,	P =    44.679 deg,	R =   -47.493 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.624  mm,	Y =  -138.635  mm,	Z =   886.232  mm,
	W =   -16.306 deg,	P =    44.680 deg,	R =   -47.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2781.845  mm,	Y =  -368.449  mm,	Z =   566.925  mm,
	W =    32.749 deg,	P =    20.905 deg,	R =  -102.080 deg
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
	X =  2284.980  mm,	Y =  -119.488  mm,	Z =   927.926  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2364.441  mm,	Y =  -140.196  mm,	Z =   874.079  mm,
	W =    33.535 deg,	P =    29.220 deg,	R =   -67.391 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	X =  1110.996  mm,	Y =   547.835  mm,	Z =  1204.956  mm,
	W =    30.412 deg,	P =    23.153 deg,	R =   -68.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1746.082  mm,	Y =   249.573  mm,	Z =   569.263  mm,
	W =   -35.537 deg,	P =   -12.977 deg,	R =   -27.038 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
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
	X =  2157.996  mm,	Y =    56.121  mm,	Z =   156.955  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.996  mm,	Y =    56.121  mm,	Z =   156.955  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
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
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2550.156  mm,	Y =    45.835  mm,	Z =   135.483  mm,
	W =   -31.566 deg,	P =   -16.651 deg,	R =   -48.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
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
	X =  2346.710  mm,	Y =    66.661  mm,	Z =   156.955  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1058.698  mm,	Y =   195.065  mm,	Z =  1283.367  mm,
	W =    73.635 deg,	P =    26.735 deg,	R =   -73.196 deg
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
	X =  2732.660  mm,	Y =  -291.498  mm,	Z =   459.463  mm,
	W =    29.147 deg,	P =    30.453 deg,	R =  -132.266 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[186]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2737.828  mm,	Y =  -335.614  mm,	Z =   459.309  mm,
	W =    29.459 deg,	P =    30.697 deg,	R =  -132.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[187]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2748.682  mm,	Y =  -359.447  mm,	Z =   458.247  mm,
	W =    32.708 deg,	P =    26.756 deg,	R =  -103.211 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[188]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2782.788  mm,	Y =  -368.053  mm,	Z =   461.277  mm,
	W =    32.871 deg,	P =    19.630 deg,	R =   -83.146 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
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
	X =  2740.807  mm,	Y =   282.456  mm,	Z =   454.339  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[193]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2740.471  mm,	Y =   330.671  mm,	Z =   455.272  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[194]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2760.137  mm,	Y =   356.906  mm,	Z =   456.179  mm,
	W =   -32.204 deg,	P =    27.169 deg,	R =   100.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
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
	X =  2776.222  mm,	Y =   360.760  mm,	Z =   461.623  mm,
	W =   -28.646 deg,	P =    22.121 deg,	R =    94.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[198]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1666.073  mm,	Y =   232.940  mm,	Z =   357.763  mm,
	W =    31.327 deg,	P =    33.496 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[199]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.367  mm,	Y =   161.118  mm,	Z =   359.810  mm,
	W =    31.331 deg,	P =    33.498 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
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
	X =  1672.296  mm,	Y =  -245.157  mm,	Z =   359.474  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[204]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1674.067  mm,	Y =  -171.272  mm,	Z =   358.368  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[205]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1806.951  mm,	Y =  -401.301  mm,	Z =   820.124  mm,
	W =     -.611 deg,	P =      .925 deg,	R =   -33.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
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
	X =  1811.177  mm,	Y =  -171.928  mm,	Z =   822.372  mm,
	W =     -.615 deg,	P =      .929 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[209]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.900  mm,	Y =   392.843  mm,	Z =   821.281  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
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
	X =  1805.706  mm,	Y =   162.058  mm,	Z =   821.772  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[213]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.485  mm,	Y =   641.712  mm,	Z =  1313.269  mm,
	W =     -.150 deg,	P =     3.186 deg,	R =     -.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
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
	X =  2180.448  mm,	Y =   484.330  mm,	Z =  1313.381  mm,
	W =      .050 deg,	P =     3.285 deg,	R =     -.057 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.995 deg,	J2=     0.000 deg
};
P[217]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2180.629  mm,	Y =   441.870  mm,	Z =  1314.110  mm,
	W =   -10.967 deg,	P =     3.763 deg,	R =     -.257 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.999 deg,	J2=     0.000 deg
};
P[218]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.448  mm,	Y =     9.539  mm,	Z =  1331.644  mm,
	W =     -.712 deg,	P =     8.094 deg,	R =     -.112 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
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
	X =  2166.019  mm,	Y =  -184.522  mm,	Z =  1332.900  mm,
	W =     -.016 deg,	P =    10.106 deg,	R =      .980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[222]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.456  mm,	Y =  -407.129  mm,	Z =  1331.643  mm,
	W =     -.927 deg,	P =     7.509 deg,	R =     -.098 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[223]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2167.632  mm,	Y =   399.347  mm,	Z =  1331.502  mm,
	W =      .164 deg,	P =     6.215 deg,	R =      .006 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
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
	X =  2166.862  mm,	Y =   175.690  mm,	Z =  1332.608  mm,
	W =      .990 deg,	P =     7.423 deg,	R =      .117 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[227]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.171  mm,	Y =     8.099  mm,	Z =  1332.684  mm,
	W =    -1.725 deg,	P =     7.606 deg,	R =     2.359 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[228]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.486  mm,	Y =  -651.866  mm,	Z =  1318.869  mm,
	W =      .005 deg,	P =     8.099 deg,	R =      .006 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[229]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.374  mm,	Y =  -454.527  mm,	Z =  1315.208  mm,
	W =      .023 deg,	P =     7.896 deg,	R =     -.019 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
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
	X =  2179.713  mm,	Y =  -448.929  mm,	Z =  1315.415  mm,
	W =     8.588 deg,	P =     5.688 deg,	R =      .847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[232]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.306  mm,	Y =   407.443  mm,	Z =   274.579  mm,
	W =    39.266 deg,	P =    23.844 deg,	R =     9.200 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[233]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2171.990  mm,	Y =   -24.925  mm,	Z =  -336.558  mm,
	W =    -4.854 deg,	P =     4.648 deg,	R =    10.738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   182.246 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2156.848  mm,	Y =   408.546  mm,	Z =   273.021  mm,
	W =    39.276 deg,	P =    23.852 deg,	R =   -24.752 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[237]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.264  mm,	Y =   408.269  mm,	Z =   272.683  mm,
	W =    39.348 deg,	P =    23.574 deg,	R =   -24.954 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[238]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2195.713  mm,	Y =   409.133  mm,	Z =   275.050  mm,
	W =    41.358 deg,	P =    16.787 deg,	R =   -30.152 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[239]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.308  mm,	Y =  -414.633  mm,	Z =   275.688  mm,
	W =   -42.902 deg,	P =    -2.083 deg,	R =   -37.986 deg
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
	X =  2148.323  mm,	Y =  -414.723  mm,	Z =   274.084  mm,
	W =   -42.900 deg,	P =    -2.086 deg,	R =    -3.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[245]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2197.502  mm,	Y =  -415.369  mm,	Z =   273.507  mm,
	W =   -42.900 deg,	P =    -2.086 deg,	R =    -3.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[246]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.828  mm,	Y =  -413.909  mm,	Z =   275.461  mm,
	W =   -37.675 deg,	P =   -22.312 deg,	R =     8.930 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[247]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2230.692  mm,	Y =  -244.712  mm,	Z =  -195.164  mm,
	W =    34.818 deg,	P =    27.072 deg,	R =  -123.443 deg
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
	X =  2231.573  mm,	Y =   -26.230  mm,	Z =  -195.203  mm,
	W =    34.826 deg,	P =    27.077 deg,	R =  -123.454 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[251]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2228.732  mm,	Y =    -5.925  mm,	Z =  -190.893  mm,
	W =    33.017 deg,	P =    26.717 deg,	R =   -93.421 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.608  mm,	Y =   237.638  mm,	Z =  -198.866  mm,
	W =   -26.756 deg,	P =    37.336 deg,	R =   139.554 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[254]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.167  mm,	Y =    15.957  mm,	Z =  -196.509  mm,
	W =   -26.754 deg,	P =    37.334 deg,	R =   139.553 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[255]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.296  mm,	Y =    -3.861  mm,	Z =  -195.798  mm,
	W =   -20.120 deg,	P =    35.519 deg,	R =   111.508 deg
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
	X =  1481.773  mm,	Y =  -649.516  mm,	Z =     4.672  mm,
	W =    42.305 deg,	P =    16.820 deg,	R =  -100.938 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[258]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1483.359  mm,	Y =  -463.806  mm,	Z =     3.440  mm,
	W =    42.353 deg,	P =    16.915 deg,	R =  -100.930 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[259]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1480.083  mm,	Y =  -453.844  mm,	Z =     3.901  mm,
	W =    42.350 deg,	P =    16.901 deg,	R =   -86.937 deg
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
	X =  1457.610  mm,	Y =    -5.074  mm,	Z =    -1.334  mm,
	W =      .944 deg,	P =    42.924 deg,	R =   177.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[263]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1456.823  mm,	Y =  -333.215  mm,	Z =     -.642  mm,
	W =    -1.375 deg,	P =    43.930 deg,	R =   175.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[264]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1457.144  mm,	Y =  -389.993  mm,	Z =      .340  mm,
	W =     5.164 deg,	P =    43.292 deg,	R =  -179.576 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1452.091  mm,	Y =   380.184  mm,	Z =     1.132  mm,
	W =    -1.242 deg,	P =    44.316 deg,	R =   179.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[267]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1459.905  mm,	Y =    -8.182  mm,	Z =     -.258  mm,
	W =     -.052 deg,	P =    43.981 deg,	R =  -179.147 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[268]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1478.049  mm,	Y =   642.654  mm,	Z =     4.653  mm,
	W =    29.663 deg,	P =    31.501 deg,	R =  -136.780 deg
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
	X =  1475.653  mm,	Y =   450.274  mm,	Z =     6.255  mm,
	W =    35.513 deg,	P =    24.469 deg,	R =  -124.378 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[275]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1474.914  mm,	Y =   441.895  mm,	Z =     5.846  mm,
	W =    35.513 deg,	P =    24.469 deg,	R =  -129.749 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
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
	X =  2186.980  mm,	Y =   -83.076  mm,	Z =  -438.565  mm,
	W =     -.956 deg,	P =    22.926 deg,	R =     1.001 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[278]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2186.499  mm,	Y =  -161.647  mm,	Z =  -438.565  mm,
	W =     -.956 deg,	P =    22.926 deg,	R =    22.592 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[279]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1524.716  mm,	Y =   -79.047  mm,	Z =   -64.180  mm,
	W =     1.172 deg,	P =   -23.208 deg,	R =    -8.280 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
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
	X =  1525.494  mm,	Y =  -112.165  mm,	Z =   -64.782  mm,
	W =     1.185 deg,	P =   -23.204 deg,	R =    -8.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[283]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1525.388  mm,	Y =  -160.517  mm,	Z =   -66.135  mm,
	W =     1.184 deg,	P =   -23.205 deg,	R =    -8.289 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[284]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1526.724  mm,	Y =  -137.443  mm,	Z =   -67.899  mm,
	W =     1.184 deg,	P =   -23.205 deg,	R =    -8.289 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
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
	X =  2372.493  mm,	Y =   -85.125  mm,	Z =   -28.442  mm,
	W =    40.515 deg,	P =    40.131 deg,	R =    23.483 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[289]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2370.298  mm,	Y =  -109.505  mm,	Z =   -29.922  mm,
	W =    40.520 deg,	P =    40.127 deg,	R =    54.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
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
	X =  2373.512  mm,	Y =  -147.571  mm,	Z =   -28.085  mm,
	W =    40.521 deg,	P =    40.128 deg,	R =    54.929 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[294]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2373.382  mm,	Y =  -159.792  mm,	Z =   -26.936  mm,
	W =    39.996 deg,	P =    39.207 deg,	R =    81.747 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.998 deg,	J2=    90.000 deg
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
	X =  1674.558  mm,	Y =  -197.902  mm,	Z =   -15.747  mm,
	W =    38.571 deg,	P =    15.643 deg,	R =    22.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[298]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1706.028  mm,	Y =  -198.510  mm,	Z =   -16.685  mm,
	W =    38.571 deg,	P =    15.644 deg,	R =   -27.579 deg
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
	X =  1973.574  mm,	Y =  -202.749  mm,	Z =   -17.434  mm,
	W =    38.571 deg,	P =    15.644 deg,	R =   -27.579 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[305]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1991.550  mm,	Y =  -201.914  mm,	Z =   -14.547  mm,
	W =    38.530 deg,	P =    15.652 deg,	R =   -66.405 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[306]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2220.122  mm,	Y =    37.299  mm,	Z =    -4.302  mm,
	W =    44.923 deg,	P =     3.028 deg,	R =    -3.033 deg
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
	X =  2261.501  mm,	Y =    37.528  mm,	Z =    -6.118  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[311]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.641  mm,	Y =    39.627  mm,	Z =   -15.239  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[312]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2213.357  mm,	Y =    37.987  mm,	Z =   -14.278  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[313]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.573  mm,	Y =    36.787  mm,	Z =   -11.639  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =   -14.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[314]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.497  mm,	Y =    36.666  mm,	Z =   -20.463  mm,
	W =    44.934 deg,	P =     3.042 deg,	R =     5.570 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[315]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2025.978  mm,	Y =    40.194  mm,	Z =   -20.755  mm,
	W =    44.928 deg,	P =     3.034 deg,	R =     5.584 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[316]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2016.978  mm,	Y =    40.597  mm,	Z =   -22.240  mm,
	W =    44.927 deg,	P =     3.029 deg,	R =    34.553 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[317]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1799.412  mm,	Y =    41.133  mm,	Z =    49.790  mm,
	W =    50.318 deg,	P =     2.533 deg,	R =    12.052 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[318]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.959  mm,	Y =    40.113  mm,	Z =    51.381  mm,
	W =    50.325 deg,	P =     2.535 deg,	R =    12.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[319]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.091  mm,	Y =    39.397  mm,	Z =    51.498  mm,
	W =    55.797 deg,	P =      .895 deg,	R =    26.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[320]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.553  mm,	Y =    44.041  mm,	Z =    47.838  mm,
	W =    52.757 deg,	P =    -4.415 deg,	R =     3.518 deg
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
	X =  1287.575  mm,	Y =   726.729  mm,	Z =   436.468  mm,
	W =   -45.215 deg,	P =    11.103 deg,	R =    59.860 deg
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
	X =  1969.022  mm,	Y =    41.636  mm,	Z =    48.426  mm,
	W =    53.726 deg,	P =    -4.474 deg,	R =     3.443 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	X =  1991.252  mm,	Y =    40.726  mm,	Z =    49.738  mm,
	W =    52.869 deg,	P =   -12.269 deg,	R =   -23.050 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[334]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.442  mm,	Y =    51.853  mm,	Z =    -5.922  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
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
	X =  2264.485  mm,	Y =    52.336  mm,	Z =    -5.439  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[339]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2141.462  mm,	Y =    52.670  mm,	Z =   -13.878  mm,
	W =   -44.606 deg,	P =    -6.681 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	X =  2208.711  mm,	Y =    51.845  mm,	Z =   -13.000  mm,
	W =   -44.606 deg,	P =    -6.681 deg,	R =    -6.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[344]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.514  mm,	Y =    56.035  mm,	Z =   -11.445  mm,
	W =   -44.606 deg,	P =    -6.681 deg,	R =     6.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[345]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1992.263  mm,	Y =    56.122  mm,	Z =   -19.968  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -3.024 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	W =    53.137 deg,	P =    27.952 deg,	R =    15.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[348]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1062.033  mm,	Y =   -72.059  mm,	Z =  1104.020  mm,
	W =     1.209 deg,	P =    20.107 deg,	R =    63.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[349]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1214.600  mm,	Y =   479.028  mm,	Z =   916.465  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -38.695 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[350]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   713.970  mm,	Y =   812.888  mm,	Z =  1598.123  mm,
	W =    60.754 deg,	P =   -26.996 deg,	R =   -17.604 deg
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
	X =  2107.423  mm,	Y =    54.740  mm,	Z =   -20.388  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -3.024 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[353]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.262  mm,	Y =    57.036  mm,	Z =   -16.902  mm,
	W =   -42.118 deg,	P =   -17.568 deg,	R =    21.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[354]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.717  mm,	Y =    84.636  mm,	Z =    -8.736  mm,
	W =   -45.251 deg,	P =    -8.450 deg,	R =  -108.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[355]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.359  mm,	Y =  -137.141  mm,	Z =   -45.703  mm,
	W =   -45.251 deg,	P =    -8.450 deg,	R =   -86.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[356]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2753.412  mm,	Y =   160.459  mm,	Z =   180.671  mm,
	W =     2.791 deg,	P =    -7.674 deg,	R =   -18.462 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[357]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2867.805  mm,	Y =   160.634  mm,	Z =   182.471  mm,
	W =     9.502 deg,	P =   -26.582 deg,	R =   -20.495 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   135.000 deg
};
P[358]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.956  mm,	Y =   265.120  mm,	Z =    86.366  mm,
	W =     1.850 deg,	P =     -.182 deg,	R =      .942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[359]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.391  mm,	Y =   263.612  mm,	Z =    86.366  mm,
	W =     1.733 deg,	P =    -7.250 deg,	R =      .949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
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
	X =  2068.312  mm,	Y =   107.394  mm,	Z =   -18.582  mm,
	W =    37.933 deg,	P =    17.387 deg,	R =   -97.672 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[363]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2109.723  mm,	Y =    72.505  mm,	Z =   -21.222  mm,
	W =    37.933 deg,	P =    17.387 deg,	R =  -104.287 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[364]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2115.592  mm,	Y =    62.473  mm,	Z =   -16.026  mm,
	W =    44.181 deg,	P =    21.261 deg,	R =  -126.963 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[365]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2357.041  mm,	Y =   -23.041  mm,	Z =    82.290  mm,
	W =   -26.718 deg,	P =   -22.770 deg,	R =   -10.639 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[366]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.743  mm,	Y =    59.810  mm,	Z =   -17.917  mm,
	W =   -42.807 deg,	P =    15.441 deg,	R =    16.037 deg
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
	X =  1291.698  mm,	Y =   195.066  mm,	Z =   960.367  mm,
	W =    58.350 deg,	P =   -26.173 deg,	R =   -73.280 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[369]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.429  mm,	Y =    58.946  mm,	Z =   -19.364  mm,
	W =   -42.810 deg,	P =    15.442 deg,	R =    16.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[370]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1640.987  mm,	Y =    56.683  mm,	Z =   -21.519  mm,
	W =   -42.181 deg,	P =    15.522 deg,	R =    -8.109 deg
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
	X =  1637.701  mm,	Y =    59.485  mm,	Z =   -19.665  mm,
	W =   -38.593 deg,	P =    25.218 deg,	R =   -16.905 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[375]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.736  mm,	Y =    83.348  mm,	Z =   -24.399  mm,
	W =   -38.593 deg,	P =    25.219 deg,	R =   -16.905 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[376]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.353  mm,	Y =   209.744  mm,	Z =   328.977  mm,
	W =   -44.718 deg,	P =   -17.447 deg,	R =    -6.431 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[377]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1074.532  mm,	Y =  -506.968  mm,	Z =  1238.459  mm,
	W =     -.673 deg,	P =   -46.105 deg,	R =     9.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[378]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1359.532  mm,	Y =  -506.968  mm,	Z =   962.459  mm,
	W =     -.673 deg,	P =   -46.105 deg,	R =     9.949 deg
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
	X =  1214.623  mm,	Y =   483.357  mm,	Z =   914.016  mm,
	W =   -25.369 deg,	P =    11.963 deg,	R =   -19.314 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[381]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1626.194  mm,	Y =   455.887  mm,	Z =  1153.200  mm,
	W =     5.544 deg,	P =    60.170 deg,	R =  -166.026 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[382]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1585.662  mm,	Y =   101.135  mm,	Z =   -21.859  mm,
	W =   -45.000 deg,	P =    -3.170 deg,	R =      .426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[383]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1556.810  mm,	Y =    69.060  mm,	Z =   -21.622  mm,
	W =   -45.449 deg,	P =    19.944 deg,	R =    98.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[384]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.240  mm,	Y =    28.811  mm,	Z =   -19.922  mm,
	W =   -45.337 deg,	P =    20.062 deg,	R =    97.887 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[385]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.443  mm,	Y =    22.198  mm,	Z =   -20.367  mm,
	W =   -45.343 deg,	P =    20.068 deg,	R =    97.646 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[386]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1549.407  mm,	Y =    21.768  mm,	Z =   -17.950  mm,
	W =   -41.210 deg,	P =    19.947 deg,	R =    34.862 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[387]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1540.684  mm,	Y =    20.490  mm,	Z =   -17.846  mm,
	W =   -41.215 deg,	P =    19.945 deg,	R =    34.866 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	X =  2866.453  mm,	Y =  1420.346  mm,	Z =   -11.619  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[391]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2866.454  mm,	Y =  1403.775  mm,	Z =   -11.619  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2103.205  mm,	Y =   181.792  mm,	Z =  1015.411  mm,
	W =     -.647 deg,	P =    55.219 deg,	R =   156.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[399]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1651.536  mm,	Y =  -219.100  mm,	Z =   -19.888  mm,
	W =   -32.939 deg,	P =    29.350 deg,	R =   129.300 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[400]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1652.465  mm,	Y =    20.682  mm,	Z =   -20.854  mm,
	W =   -34.233 deg,	P =    30.069 deg,	R =   141.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[401]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2351.061  mm,	Y =  -179.371  mm,	Z =   -13.077  mm,
	W =    44.587 deg,	P =     6.899 deg,	R =    -6.951 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[402]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2518.615  mm,	Y =  -178.195  mm,	Z =   -13.758  mm,
	W =    44.582 deg,	P =     6.892 deg,	R =    -6.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[403]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.052  mm,	Y =   -90.042  mm,	Z =   -15.707  mm,
	W =    43.242 deg,	P =    13.891 deg,	R =   -18.605 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[404]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.409  mm,	Y =   -89.953  mm,	Z =   -14.975  mm,
	W =    43.244 deg,	P =    13.890 deg,	R =   -18.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[405]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2423.248  mm,	Y =   -92.540  mm,	Z =    -8.646  mm,
	W =    42.728 deg,	P =    13.810 deg,	R =   -51.889 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[406]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.563  mm,	Y =   458.656  mm,	Z =   830.406  mm,
	W =    39.866 deg,	P =   -22.888 deg,	R =   -65.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[407]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.493  mm,	Y =   473.679  mm,	Z =   828.230  mm,
	W =    39.866 deg,	P =   -22.887 deg,	R =   -65.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[408]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.563  mm,	Y =   480.822  mm,	Z =   829.093  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -69.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[409]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1687.491  mm,	Y =   484.680  mm,	Z =   827.711  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -70.971 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[410]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.839  mm,	Y =   554.633  mm,	Z =   827.423  mm,
	W =    39.871 deg,	P =   -22.884 deg,	R =   -70.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[411]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1711.676  mm,	Y =   557.080  mm,	Z =   826.531  mm,
	W =    39.870 deg,	P =   -22.884 deg,	R =   -74.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[412]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.302  mm,	Y =   204.441  mm,	Z =   988.994  mm,
	W =      .815 deg,	P =    36.667 deg,	R =   159.784 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[413]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2128.801  mm,	Y =   250.942  mm,	Z =   983.493  mm,
	W =    -8.588 deg,	P =    43.492 deg,	R =    86.611 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[414]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.809  mm,	Y =   560.962  mm,	Z =   826.801  mm,
	W =    39.866 deg,	P =   -22.883 deg,	R =   -82.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[415]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1845.680  mm,	Y =   825.086  mm,	Z =   832.601  mm,
	W =    14.309 deg,	P =   -43.038 deg,	R =   -40.623 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -89.991 deg,	J2=   -89.999 deg
};
P[416]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1698.333  mm,	Y =   426.907  mm,	Z =   830.357  mm,
	W =    43.050 deg,	P =   -14.373 deg,	R =   -45.079 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[417]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1839.303  mm,	Y =   266.347  mm,	Z =   829.243  mm,
	W =    43.053 deg,	P =   -14.369 deg,	R =   -45.082 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[418]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.539  mm,	Y =   258.366  mm,	Z =   830.212  mm,
	W =    43.049 deg,	P =   -14.375 deg,	R =   -42.871 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[419]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1859.538  mm,	Y =   247.937  mm,	Z =   830.256  mm,
	W =    43.049 deg,	P =   -14.375 deg,	R =   -40.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[420]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1923.179  mm,	Y =   200.865  mm,	Z =   829.012  mm,
	W =    43.049 deg,	P =   -14.374 deg,	R =   -40.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[421]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.881  mm,	Y =  -469.975  mm,	Z =   829.150  mm,
	W =   -28.314 deg,	P =   -37.469 deg,	R =    36.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[422]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.926  mm,	Y =  -487.189  mm,	Z =   826.659  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    36.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[423]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.542  mm,	Y =  -491.734  mm,	Z =   828.424  mm,
	W =   -28.334 deg,	P =   -37.464 deg,	R =    39.731 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[424]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.217  mm,	Y =  -494.546  mm,	Z =   827.297  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    41.171 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[425]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.638  mm,	Y =  -565.332  mm,	Z =   825.835  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    41.171 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[426]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.098  mm,	Y =  -569.548  mm,	Z =   825.685  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    48.505 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[427]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1713.633  mm,	Y =  -574.840  mm,	Z =   824.222  mm,
	W =   -28.328 deg,	P =   -37.465 deg,	R =    55.403 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[428]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1842.146  mm,	Y =  -829.157  mm,	Z =   829.639  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    50.636 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[429]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1690.304  mm,	Y =  -437.670  mm,	Z =   830.884  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    42.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[430]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1836.271  mm,	Y =  -275.564  mm,	Z =   827.815  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    42.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[431]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1848.380  mm,	Y =  -264.272  mm,	Z =   828.029  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    38.620 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[432]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2643.424  mm,	Y =  -135.910  mm,	Z =   990.550  mm,
	W =   -36.400 deg,	P =    28.534 deg,	R =    31.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[433]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   983.140  mm,	Y =    19.420  mm,	Z =   990.550  mm,
	W =   -36.400 deg,	P =    28.534 deg,	R =    23.998 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[434]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   983.140  mm,	Y =  -212.416  mm,	Z =   990.550  mm,
	W =   -43.636 deg,	P =   -12.296 deg,	R =    70.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[435]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1995.140  mm,	Y =  -212.416  mm,	Z =   320.550  mm,
	W =   -43.636 deg,	P =   -12.296 deg,	R =    70.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[436]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2018.730  mm,	Y =   -25.769  mm,	Z =   130.343  mm,
	W =   -38.665 deg,	P =    -2.420 deg,	R =   142.728 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[437]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1862.737  mm,	Y =  -253.785  mm,	Z =   829.403  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    41.372 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[438]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1935.611  mm,	Y =  -199.637  mm,	Z =   827.419  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    45.243 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[439]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2344.158  mm,	Y =   -61.498  mm,	Z =   837.144  mm,
	W =     4.733 deg,	P =    44.799 deg,	R =    66.706 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[440]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.770  mm,	Y =   -93.993  mm,	Z =   837.387  mm,
	W =     4.736 deg,	P =    44.803 deg,	R =    66.702 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[441]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2400.549  mm,	Y =  -120.824  mm,	Z =   838.185  mm,
	W =   -19.419 deg,	P =    41.428 deg,	R =   -56.052 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[442]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.665  mm,	Y =  -100.428  mm,	Z =   838.269  mm,
	W =   -19.426 deg,	P =    41.428 deg,	R =   -56.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[443]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2329.816  mm,	Y =   -87.227  mm,	Z =   839.756  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[444]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2393.327  mm,	Y =  -122.227  mm,	Z =   840.237  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[445]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2519.938  mm,	Y =   -81.372  mm,	Z =   -32.158  mm,
	W =   -31.368 deg,	P =   -16.422 deg,	R =   -28.761 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[446]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.458  mm,	Y =   -80.069  mm,	Z =   -28.898  mm,
	W =   -25.037 deg,	P =   -25.315 deg,	R =   -46.367 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[447]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2453.629  mm,	Y =   -82.007  mm,	Z =   -26.243  mm,
	W =   -25.039 deg,	P =   -25.325 deg,	R =   -79.891 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[448]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2351.765  mm,	Y =   -85.833  mm,	Z =   -33.800  mm,
	W =   -31.948 deg,	P =   -15.141 deg,	R =   -17.031 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[449]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.846  mm,	Y =   -83.445  mm,	Z =   -32.390  mm,
	W =   -31.930 deg,	P =   -15.141 deg,	R =   -17.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[450]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.835  mm,	Y =   -83.306  mm,	Z =   -29.423  mm,
	W =   -24.232 deg,	P =   -24.716 deg,	R =   -17.035 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[451]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2562.114  mm,	Y =  -708.403  mm,	Z =     7.893  mm,
	W =   -27.687 deg,	P =   -22.321 deg,	R =    54.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[452]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2517.838  mm,	Y =  -811.403  mm,	Z =     7.893  mm,
	W =   -27.687 deg,	P =   -22.321 deg,	R =    54.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[453]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2129.658  mm,	Y =   151.797  mm,	Z =   832.903  mm,
	W =     2.981 deg,	P =    35.499 deg,	R =   160.128 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[454]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2137.350  mm,	Y =   177.465  mm,	Z =   833.508  mm,
	W =     2.985 deg,	P =    35.513 deg,	R =   160.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[455]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2130.020  mm,	Y =   199.847  mm,	Z =   830.984  mm,
	W =     2.986 deg,	P =    35.518 deg,	R =  -100.169 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[456]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2102.832  mm,	Y =   191.069  mm,	Z =   829.130  mm,
	W =     2.988 deg,	P =    35.514 deg,	R =   -13.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[457]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2088.170  mm,	Y =   149.785  mm,	Z =   828.888  mm,
	W =     2.984 deg,	P =    35.513 deg,	R =   -13.072 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[458]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2102.574  mm,	Y =   126.514  mm,	Z =   830.669  mm,
	W =     2.985 deg,	P =    35.513 deg,	R =    80.476 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[459]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2551.662  mm,	Y =  -712.821  mm,	Z =   124.119  mm,
	W =   -35.203 deg,	P =   -31.584 deg,	R =    53.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[460]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1870.645  mm,	Y =  -712.821  mm,	Z =   348.203  mm,
	W =   -35.203 deg,	P =   -31.584 deg,	R =    53.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[461]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   472.370  mm,	Y = -1534.903  mm,	Z =   492.380  mm,
	W =    50.539 deg,	P =     3.993 deg,	R =   -65.902 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[462]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2126.850  mm,	Y =   136.271  mm,	Z =   831.455  mm,
	W =     2.984 deg,	P =    35.513 deg,	R =   159.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[463]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.899  mm,	Y =   151.648  mm,	Z =   831.455  mm,
	W =     2.984 deg,	P =    35.513 deg,	R =   159.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[464]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.924  mm,	Y =   226.875  mm,	Z =   829.785  mm,
	W =    -2.360 deg,	P =    42.843 deg,	R =    86.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[465]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2202.613  mm,	Y =   227.153  mm,	Z =   829.824  mm,
	W =    -2.356 deg,	P =    42.846 deg,	R =    86.538 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[466]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.661  mm,	Y =   222.377  mm,	Z =   830.815  mm,
	W =    -2.493 deg,	P =    44.293 deg,	R =    56.655 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[467]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2222.874  mm,	Y =   213.385  mm,	Z =   828.313  mm,
	W =      .032 deg,	P =    44.143 deg,	R =    40.390 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[468]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2449.009  mm,	Y =   -44.468  mm,	Z =   827.867  mm,
	W =     -.128 deg,	P =    43.814 deg,	R =    45.335 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[469]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2612.111  mm,	Y = -1537.301  mm,	Z =  1175.202  mm,
	W =   -45.531 deg,	P =     6.252 deg,	R =    32.963 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[470]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.007  mm,	Y = -1554.081  mm,	Z =  1677.384  mm,
	W =   -46.027 deg,	P =   -17.509 deg,	R =    23.991 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[471]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1642.115  mm,	Y = -1225.593  mm,	Z =  1744.283  mm,
	W =   -30.785 deg,	P =   -19.925 deg,	R =    38.701 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[472]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1044.179  mm,	Y =  -508.261  mm,	Z =   989.448  mm,
	W =    -7.948 deg,	P =   -16.175 deg,	R =    52.319 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[473]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2659.725  mm,	Y =  1505.803  mm,	Z =  1079.609  mm,
	W =    15.908 deg,	P =   -31.536 deg,	R =   -26.500 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[474]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2454.781  mm,	Y =   -47.719  mm,	Z =   829.593  mm,
	W =      .165 deg,	P =    43.853 deg,	R =    54.355 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[475]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2459.541  mm,	Y =   -51.626  mm,	Z =   829.104  mm,
	W =    -1.320 deg,	P =    42.586 deg,	R =    55.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[476]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.978  mm,	Y =  -198.403  mm,	Z =   829.994  mm,
	W =   -30.974 deg,	P =    27.490 deg,	R =    12.667 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[477]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1225.021  mm,	Y = -1373.581  mm,	Z =   228.769  mm,
	W =   -54.518 deg,	P =     8.477 deg,	R =    24.180 deg
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
	X =  2672.856  mm,	Y =  -207.422  mm,	Z =   831.831  mm,
	W =   -30.972 deg,	P =    27.486 deg,	R =    12.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[482]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2073.851  mm,	Y =    35.924  mm,	Z =    12.285  mm,
	W =   -30.951 deg,	P =    -2.135 deg,	R =   142.491 deg
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
	X =  2117.748  mm,	Y =    -4.566  mm,	Z =     3.630  mm,
	W =   -28.504 deg,	P =     6.349 deg,	R =   142.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[487]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2124.001  mm,	Y =   -12.191  mm,	Z =     2.432  mm,
	W =   -27.562 deg,	P =     5.114 deg,	R =   139.578 deg
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
	X =  2130.131  mm,	Y =   -20.247  mm,	Z =     1.791  mm,
	W =   -27.580 deg,	P =     5.122 deg,	R =   136.990 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[494]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2586.641  mm,	Y =  1526.023  mm,	Z =  1082.786  mm,
	W =    42.689 deg,	P =    16.599 deg,	R =   -42.374 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
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
	X =  1536.098  mm,	Y =  1365.318  mm,	Z =  1433.705  mm,
	W =    42.689 deg,	P =    16.599 deg,	R =   -30.305 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[498]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   498.430  mm,	Y =  -249.509  mm,	Z =  2387.961  mm,
	W =     2.736 deg,	P =   -33.821 deg,	R =   -22.668 deg
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
	X =  1773.758  mm,	Y =  1132.590  mm,	Z =   293.935  mm,
	W =   -17.776 deg,	P =    15.458 deg,	R =    47.254 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[503]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1391.376  mm,	Y = -1411.270  mm,	Z =  1335.234  mm,
	W =   -82.179 deg,	P =     1.788 deg,	R =    24.906 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[504]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.030  mm,	Y =     -.134  mm,	Z =  2422.493  mm,
	W =     -.020 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.030  mm,	Y =     -.134  mm,	Z =  2422.493  mm,
	W =     -.020 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[509]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2251.754  mm,	Y =  -187.747  mm,	Z =   -18.626  mm,
	W =   -36.464 deg,	P =    -8.806 deg,	R =   122.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[510]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2260.659  mm,	Y =  -197.463  mm,	Z =   -20.538  mm,
	W =   -36.554 deg,	P =   -11.684 deg,	R =   125.973 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[511]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.185  mm,	Y =  -206.886  mm,	Z =   -21.960  mm,
	W =   -36.304 deg,	P =   -14.510 deg,	R =   128.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[512]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2511.863  mm,	Y =  -435.567  mm,	Z =   -65.547  mm,
	W =   -23.381 deg,	P =   -31.779 deg,	R =    95.136 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[513]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2535.927  mm,	Y =  -449.078  mm,	Z =   -69.737  mm,
	W =   -18.431 deg,	P =   -37.735 deg,	R =   100.755 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[514]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2558.091  mm,	Y =  -453.543  mm,	Z =   -73.418  mm,
	W =   -18.771 deg,	P =   -39.987 deg,	R =   104.546 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[515]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2574.982  mm,	Y =  -457.797  mm,	Z =   -77.599  mm,
	W =   -22.267 deg,	P =   -37.927 deg,	R =   106.779 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[516]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2621.992  mm,	Y =  -529.847  mm,	Z =   -85.920  mm,
	W =   -33.012 deg,	P =   -16.164 deg,	R =    66.999 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[517]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2621.958  mm,	Y =  -548.775  mm,	Z =   -86.023  mm,
	W =   -33.009 deg,	P =   -16.162 deg,	R =    66.994 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[518]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2620.833  mm,	Y =  -724.953  mm,	Z =   -86.008  mm,
	W =   -27.674 deg,	P =   -22.322 deg,	R =    54.091 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
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
	X =  2550.739  mm,	Y =  -832.902  mm,	Z =   -76.728  mm,
	W =   -27.690 deg,	P =   -22.316 deg,	R =    54.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[523]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2551.660  mm,	Y =  -813.166  mm,	Z =   -76.438  mm,
	W =   -27.682 deg,	P =   -22.308 deg,	R =    54.092 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[524]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2565.317  mm,	Y =  -801.232  mm,	Z =   -77.060  mm,
	W =   -27.686 deg,	P =   -22.321 deg,	R =    23.348 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
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
	W =    14.633 deg,	P =    39.206 deg,	R =   -59.040 deg
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
	X =  2576.762  mm,	Y =  -796.353  mm,	Z =   -82.224  mm,
	W =   -33.350 deg,	P =   -11.305 deg,	R =    17.629 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[531]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2611.385  mm,	Y =  -766.607  mm,	Z =   -84.979  mm,
	W =   -30.071 deg,	P =    -4.704 deg,	R =    42.986 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[532]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2624.754  mm,	Y =  -718.507  mm,	Z =   -86.108  mm,
	W =   -25.591 deg,	P =   -24.735 deg,	R =    48.858 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[533]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2494.854  mm,	Y =  -857.680  mm,	Z =    -8.806  mm,
	W =   -44.580 deg,	P =    -6.907 deg,	R =    84.735 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2494.926  mm,	Y =  -777.781  mm,	Z =    -9.320  mm,
	W =   -44.580 deg,	P =    -6.907 deg,	R =    84.735 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[539]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2518.619  mm,	Y =  -755.627  mm,	Z =    -6.486  mm,
	W =   -39.981 deg,	P =    14.824 deg,	R =    17.712 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[540]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.877  mm,	Y =  -756.992  mm,	Z =    -7.047  mm,
	W =   -39.981 deg,	P =    14.824 deg,	R =    17.712 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[541]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2752.964  mm,	Y =  -168.876  mm,	Z =   176.244  mm,
	W =    -1.647 deg,	P =    -7.143 deg,	R =    13.032 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
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
	X =  2865.942  mm,	Y =  -168.094  mm,	Z =   177.218  mm,
	W =    -5.450 deg,	P =   -22.504 deg,	R =    14.017 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[546]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2379.984  mm,	Y =  -271.988  mm,	Z =    87.998  mm,
	W =      .003 deg,	P =      .001 deg,	R =    -2.945 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
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
	X =  2755.499  mm,	Y =  -271.313  mm,	Z =    89.477  mm,
	W =      .076 deg,	P =    -1.495 deg,	R =    -2.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[551]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2504.732  mm,	Y =   163.801  mm,	Z =    -7.840  mm,
	W =    37.870 deg,	P =   -26.386 deg,	R =    31.563 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[552]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2464.249  mm,	Y =   164.384  mm,	Z =    -7.847  mm,
	W =    37.874 deg,	P =   -26.389 deg,	R =    31.563 deg
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
	W =   -29.046 deg,	P =    29.449 deg,	R =    29.350 deg
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
	X =  2444.114  mm,	Y =   163.873  mm,	Z =    -8.034  mm,
	W =    40.554 deg,	P =   -21.460 deg,	R =    53.231 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[558]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.665  mm,	Y =   -64.872  mm,	Z =   -18.365  mm,
	W =    41.394 deg,	P =    19.519 deg,	R =   -17.046 deg
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
	X =  2432.823  mm,	Y =   104.215  mm,	Z =   863.805  mm,
	W =     4.851 deg,	P =    34.958 deg,	R =    24.131 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[561]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1655.518  mm,	Y =   -66.180  mm,	Z =   -18.364  mm,
	W =    41.393 deg,	P =    19.514 deg,	R =   -16.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[562]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1644.071  mm,	Y =   -64.443  mm,	Z =   -18.488  mm,
	W =    41.392 deg,	P =    19.514 deg,	R =     3.473 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2301.523  mm,	Y =   100.306  mm,	Z =   896.809  mm,
	W =   -38.032 deg,	P =    -5.730 deg,	R =    38.955 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[566]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.702  mm,	Y =   -66.864  mm,	Z =   -17.244  mm,
	W =    41.392 deg,	P =    19.514 deg,	R =    24.112 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[567]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.120  mm,	Y =   -97.236  mm,	Z =   -17.308  mm,
	W =    37.029 deg,	P =    27.659 deg,	R =    15.298 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[568]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2343.829  mm,	Y =   125.019  mm,	Z =   873.736  mm,
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
	X =  1588.118  mm,	Y =  -108.567  mm,	Z =   -16.888  mm,
	W =    38.940 deg,	P =    23.604 deg,	R =   -29.723 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
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
	X =  1562.037  mm,	Y =   -85.294  mm,	Z =   -16.902  mm,
	W =    36.730 deg,	P =    28.082 deg,	R =  -109.081 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[575]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1556.914  mm,	Y =   -40.647  mm,	Z =   -16.118  mm,
	W =    36.727 deg,	P =    28.082 deg,	R =  -114.509 deg
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
	X =  1556.835  mm,	Y =   -36.070  mm,	Z =   -15.557  mm,
	W =    39.289 deg,	P =    28.081 deg,	R =   -80.638 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[580]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1548.450  mm,	Y =   -29.796  mm,	Z =   -15.951  mm,
	W =    36.729 deg,	P =    28.085 deg,	R =   -43.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
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
	X =  1541.843  mm,	Y =   -26.526  mm,	Z =   -17.050  mm,
	W =    36.730 deg,	P =    28.085 deg,	R =   -43.977 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[583]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2359.776  mm,	Y =   167.003  mm,	Z =    -8.816  mm,
	W =    38.121 deg,	P =   -25.966 deg,	R =    27.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[584]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.274  mm,	Y =   166.697  mm,	Z =    -9.876  mm,
	W =    38.121 deg,	P =   -25.966 deg,	R =    27.297 deg
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
	X =  2420.811  mm,	Y =   162.873  mm,	Z =    -7.347  mm,
	W =     9.855 deg,	P =   -38.956 deg,	R =    41.531 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.988 deg,	J2=   -90.001 deg
};
P[587]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.414  mm,	Y =   189.046  mm,	Z =   -15.712  mm,
	W =   -36.940 deg,	P =    22.774 deg,	R =   -15.979 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[588]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.592  mm,	Y =   193.463  mm,	Z =   -14.287  mm,
	W =   -36.936 deg,	P =    22.774 deg,	R =    39.322 deg
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
	X =  1976.573  mm,	Y =   191.971  mm,	Z =   -16.183  mm,
	W =   -36.940 deg,	P =    22.774 deg,	R =    39.323 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[593]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1990.474  mm,	Y =   191.565  mm,	Z =   -18.105  mm,
	W =   -40.749 deg,	P =    13.396 deg,	R =    62.815 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[594]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.053  mm,	Y =    84.549  mm,	Z =   -21.907  mm,
	W =   -47.015 deg,	P =     6.660 deg,	R =   -51.412 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
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
	W =    -9.281 deg,	P =    48.130 deg,	R =  -175.012 deg
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
	X =  2391.109  mm,	Y =   106.727  mm,	Z =   -21.577  mm,
	W =   -47.008 deg,	P =     6.653 deg,	R =   -83.994 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[600]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2390.648  mm,	Y =   140.871  mm,	Z =   -20.910  mm,
	W =   -47.989 deg,	P =     7.881 deg,	R =   -87.078 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[601]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2393.525  mm,	Y =   163.570  mm,	Z =   -20.785  mm,
	W =   -47.988 deg,	P =     7.880 deg,	R =  -106.126 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[602]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.142  mm,	Y =   180.100  mm,	Z =    -9.199  mm,
	W =   -44.813 deg,	P =    -4.559 deg,	R =    -2.484 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[603]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2505.035  mm,	Y =   180.287  mm,	Z =    -9.109  mm,
	W =   -44.818 deg,	P =    -4.562 deg,	R =    -2.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[604]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2363.074  mm,	Y =    82.607  mm,	Z =    -8.621  mm,
	W =   -44.379 deg,	P =     8.160 deg,	R =    14.035 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[605]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2414.311  mm,	Y =    81.629  mm,	Z =    -8.521  mm,
	W =   -44.393 deg,	P =     8.163 deg,	R =    14.043 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[606]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.856  mm,	Y =    84.559  mm,	Z =    -6.348  mm,
	W =   -44.535 deg,	P =    -7.128 deg,	R =    33.228 deg
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
	X =  2347.090  mm,	Y =    54.696  mm,	Z =   840.157  mm,
	W =    45.388 deg,	P =    17.262 deg,	R =    -1.525 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[610]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2407.727  mm,	Y =    84.771  mm,	Z =   840.157  mm,
	W =    45.388 deg,	P =    17.262 deg,	R =    -1.525 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[611]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.910  mm,	Y =    90.376  mm,	Z =   839.563  mm,
	W =     1.454 deg,	P =    40.369 deg,	R =    26.792 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[612]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2400.458  mm,	Y =   114.292  mm,	Z =   839.623  mm,
	W =     1.448 deg,	P =    40.366 deg,	R =    26.776 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[613]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2330.795  mm,	Y =    79.737  mm,	Z =   841.199  mm,
	W =   -50.335 deg,	P =   -10.786 deg,	R =    47.268 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[614]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.366  mm,	Y =   112.525  mm,	Z =   840.958  mm,
	W =   -50.044 deg,	P =   -12.807 deg,	R =    45.682 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[615]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.656  mm,	Y =   -98.489  mm,	Z =    -6.723  mm,
	W =    40.376 deg,	P =    23.931 deg,	R =    74.346 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[616]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.129  mm,	Y =   124.302  mm,	Z =   -44.627  mm,
	W =    45.687 deg,	P =     4.511 deg,	R =    78.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[617]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.271  mm,	Y =   -64.539  mm,	Z =    -1.822  mm,
	W =    44.892 deg,	P =    -3.427 deg,	R =     3.436 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2260.320  mm,	Y =   -63.687  mm,	Z =    -1.783  mm,
	W =    44.897 deg,	P =    -3.424 deg,	R =     3.430 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[623]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2134.875  mm,	Y =   -62.293  mm,	Z =   -12.089  mm,
	W =    44.886 deg,	P =     3.630 deg,	R =    -4.912 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[624]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.171  mm,	Y =   -64.816  mm,	Z =   -10.170  mm,
	W =    44.886 deg,	P =     3.630 deg,	R =    -4.912 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[625]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.120  mm,	Y =   -62.897  mm,	Z =   -10.890  mm,
	W =    44.886 deg,	P =     3.630 deg,	R =   -11.550 deg
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
	X =  1984.534  mm,	Y =   -65.727  mm,	Z =   -17.955  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -8.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[629]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2097.268  mm,	Y =   -65.065  mm,	Z =   -17.473  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -8.844 deg
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
	X =  2112.828  mm,	Y =   -64.584  mm,	Z =   -16.753  mm,
	W =    41.205 deg,	P =   -19.972 deg,	R =    -8.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[632]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.831  mm,	Y =  -111.826  mm,	Z =   -18.286  mm,
	W =   -37.503 deg,	P =      .971 deg,	R =    76.661 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[633]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2101.801  mm,	Y =   -84.456  mm,	Z =   -18.286  mm,
	W =   -37.503 deg,	P =      .971 deg,	R =    85.242 deg
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
	X =  2119.303  mm,	Y =   -69.097  mm,	Z =   -17.436  mm,
	W =   -37.503 deg,	P =      .971 deg,	R =   107.030 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[636]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2129.923  mm,	Y =  -163.109  mm,	Z =   831.039  mm,
	W =     3.597 deg,	P =    39.858 deg,	R =  -158.843 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[637]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2137.809  mm,	Y =  -186.248  mm,	Z =   831.044  mm,
	W =     2.770 deg,	P =    38.184 deg,	R =  -159.358 deg
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
	X =  2125.992  mm,	Y =  -204.644  mm,	Z =   830.285  mm,
	W =     7.244 deg,	P =    45.395 deg,	R =   112.852 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[643]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2100.015  mm,	Y =  -196.039  mm,	Z =   828.573  mm,
	W =     5.322 deg,	P =    47.573 deg,	R =    22.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[644]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.616  mm,	Y =  -152.754  mm,	Z =   828.880  mm,
	W =      .306 deg,	P =    46.787 deg,	R =    19.130 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[645]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1450.805  mm,	Y =    56.341  mm,	Z =   141.822  mm,
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
	X =  2100.504  mm,	Y =  -134.531  mm,	Z =   832.401  mm,
	W =    -1.751 deg,	P =    45.025 deg,	R =   -76.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[650]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.547  mm,	Y =  -142.237  mm,	Z =   829.698  mm,
	W =      .707 deg,	P =    41.168 deg,	R =  -163.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[651]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.397  mm,	Y =  -162.602  mm,	Z =   829.829  mm,
	W =      .078 deg,	P =    40.942 deg,	R =  -164.204 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[652]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2108.961  mm,	Y =  -235.302  mm,	Z =   830.555  mm,
	W =     -.443 deg,	P =    39.555 deg,	R =   -90.699 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[653]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2201.336  mm,	Y =  -235.279  mm,	Z =   830.597  mm,
	W =     -.447 deg,	P =    39.555 deg,	R =   -90.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[654]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.980  mm,	Y =  -233.048  mm,	Z =   831.869  mm,
	W =     -.447 deg,	P =    39.555 deg,	R =   -57.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[655]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2222.918  mm,	Y =  -224.326  mm,	Z =   830.599  mm,
	W =     -.447 deg,	P =    39.555 deg,	R =   -44.058 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[656]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.178  mm,	Y =   -28.001  mm,	Z =   831.741  mm,
	W =     -.034 deg,	P =    41.997 deg,	R =   -43.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[657]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2450.792  mm,	Y =    35.777  mm,	Z =   832.312  mm,
	W =      .115 deg,	P =    42.764 deg,	R =   -49.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[658]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2457.628  mm,	Y =    40.947  mm,	Z =   832.314  mm,
	W =      .115 deg,	P =    42.764 deg,	R =   -56.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[659]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2521.514  mm,	Y =    87.672  mm,	Z =   832.133  mm,
	W =    11.971 deg,	P =    40.663 deg,	R =   -38.122 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[660]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2650.676  mm,	Y =   184.582  mm,	Z =   832.304  mm,
	W =    27.597 deg,	P =    31.501 deg,	R =   -10.869 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[661]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1959.340  mm,	Y =   -50.107  mm,	Z =    51.552  mm,
	W =   -51.898 deg,	P =     9.370 deg,	R =    14.305 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[662]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1948.268  mm,	Y =   -49.653  mm,	Z =    51.537  mm,
	W =   -51.894 deg,	P =     9.366 deg,	R =     5.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[663]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1696.243  mm,	Y =   -50.530  mm,	Z =    52.257  mm,
	W =   -51.894 deg,	P =     9.366 deg,	R =     5.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[664]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.714  mm,	Y =   -48.833  mm,	Z =    54.913  mm,
	W =   -51.894 deg,	P =     9.366 deg,	R =   -32.596 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[665]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2224.519  mm,	Y =   -44.534  mm,	Z =    -1.819  mm,
	W =   -45.065 deg,	P =    -5.943 deg,	R =    -3.250 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[666]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2262.967  mm,	Y =   -46.459  mm,	Z =    -2.708  mm,
	W =   -45.063 deg,	P =    -5.948 deg,	R =    -3.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[667]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2141.111  mm,	Y =   -46.149  mm,	Z =    -9.294  mm,
	W =   -44.730 deg,	P =    -5.491 deg,	R =    -5.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[668]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.054  mm,	Y =   -46.149  mm,	Z =    -9.294  mm,
	W =   -44.730 deg,	P =    -5.491 deg,	R =    -5.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[669]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.135  mm,	Y =   -45.578  mm,	Z =    -9.294  mm,
	W =   -44.730 deg,	P =    -5.491 deg,	R =    10.504 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
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
	W =   -38.452 deg,	P =    19.595 deg,	R =   124.425 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[672]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.729  mm,	Y =   -45.526  mm,	Z =   -17.679  mm,
	W =   -44.735 deg,	P =    -5.490 deg,	R =    -5.517 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[673]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2032.308  mm,	Y =   -46.092  mm,	Z =   -17.679  mm,
	W =   -44.735 deg,	P =    -5.490 deg,	R =    -5.517 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[674]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.263  mm,	Y =   -47.292  mm,	Z =   -17.680  mm,
	W =   -44.735 deg,	P =    -5.490 deg,	R =   -41.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[675]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.956  mm,	Y =   215.868  mm,	Z =   -13.936  mm,
	W =    34.857 deg,	P =    26.466 deg,	R =  -126.842 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[676]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1654.227  mm,	Y =    -6.870  mm,	Z =   -18.681  mm,
	W =    36.965 deg,	P =    27.690 deg,	R =  -122.601 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[677]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1654.396  mm,	Y =   -25.585  mm,	Z =   -18.765  mm,
	W =    37.080 deg,	P =    27.790 deg,	R =  -137.819 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[678]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2063.360  mm,	Y =   -46.552  mm,	Z =    14.408  mm,
	W =    27.118 deg,	P =    24.034 deg,	R =  -162.974 deg
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
	W =   -19.454 deg,	P =    45.370 deg,	R =   135.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[682]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   586.370  mm,	Y =  -785.188  mm,	Z =  2292.509  mm,
	W =   -20.678 deg,	P =   -36.657 deg,	R =     1.573 deg
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
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2070.201  mm,	Y =    -5.697  mm,	Z =    13.112  mm,
	W =    26.540 deg,	P =    23.909 deg,	R =  -139.397 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[687]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2069.499  mm,	Y =    -1.522  mm,	Z =    13.452  mm,
	W =    26.543 deg,	P =    23.908 deg,	R =  -163.851 deg
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
	X =  2079.957  mm,	Y =    14.618  mm,	Z =    14.062  mm,
	W =    17.949 deg,	P =    33.023 deg,	R =   153.341 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[692]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2257.638  mm,	Y =   188.605  mm,	Z =   -17.721  mm,
	W =      .048 deg,	P =    36.127 deg,	R =   125.240 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[693]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.957  mm,	Y =   197.647  mm,	Z =   -19.138  mm,
	W =     3.307 deg,	P =    33.871 deg,	R =   124.431 deg
   GP2:
	UF : 0, UT : 1,	
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
	X =  2281.172  mm,	Y =   204.541  mm,	Z =   -20.943  mm,
	W =     6.003 deg,	P =    35.927 deg,	R =   123.386 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[697]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2386.760  mm,	Y =   271.261  mm,	Z =   -38.436  mm,
	W =     8.791 deg,	P =    37.202 deg,	R =   129.076 deg
   GP2:
	UF : 0, UT : 1,	
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
	X =   366.532  mm,	Y =  -833.172  mm,	Z =  1480.397  mm,
	W =    13.558 deg,	P =     8.679 deg,	R =   -55.514 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[700]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1532.562  mm,	Y = -1156.369  mm,	Z =  1523.814  mm,
	W =   -53.323 deg,	P =    -7.912 deg,	R =   -20.862 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[701]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1863.519  mm,	Y = -1304.565  mm,	Z =  1265.460  mm,
	W =   -45.547 deg,	P =    -6.107 deg,	R =    -5.943 deg
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
	X =  2402.059  mm,	Y =   281.172  mm,	Z =   -42.884  mm,
	W =    -2.502 deg,	P =    34.195 deg,	R =   123.652 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[704]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2416.336  mm,	Y =   299.753  mm,	Z =   -44.208  mm,
	W =      .578 deg,	P =    31.078 deg,	R =   135.858 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[705]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2499.975  mm,	Y =   418.494  mm,	Z =   -59.863  mm,
	W =   -18.687 deg,	P =    29.860 deg,	R =   100.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[706]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2522.749  mm,	Y =   437.814  mm,	Z =   -61.500  mm,
	W =   -18.823 deg,	P =    32.557 deg,	R =    79.853 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[707]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2555.836  mm,	Y =   446.395  mm,	Z =   -68.337  mm,
	W =   -16.509 deg,	P =    33.836 deg,	R =    74.966 deg
   GP2:
	UF : 0, UT : 1,	
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
	X =  2568.335  mm,	Y =   451.071  mm,	Z =   -68.337  mm,
	W =   -16.509 deg,	P =    33.836 deg,	R =    74.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[710]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1822.564  mm,	Y = -1057.861  mm,	Z =  1463.123  mm,
	W =   -36.308 deg,	P =    -6.286 deg,	R =   -23.397 deg
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
	X =  2604.215  mm,	Y =   477.246  mm,	Z =   -76.736  mm,
	W =   -17.687 deg,	P =    33.474 deg,	R =   110.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[716]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2618.697  mm,	Y =   518.470  mm,	Z =   -81.888  mm,
	W =   -28.179 deg,	P =    11.270 deg,	R =   110.042 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[717]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2619.516  mm,	Y =   709.528  mm,	Z =   -82.638  mm,
	W =   -28.920 deg,	P =    12.962 deg,	R =   109.018 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[718]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2621.157  mm,	Y =   717.292  mm,	Z =   -84.163  mm,
	W =   -28.920 deg,	P =    12.962 deg,	R =    86.656 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[719]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2623.715  mm,	Y =   724.341  mm,	Z =   -84.162  mm,
	W =   -28.920 deg,	P =    12.962 deg,	R =    81.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
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
	X =  2631.075  mm,	Y =   754.747  mm,	Z =   -85.027  mm,
	W =   -29.833 deg,	P =     9.276 deg,	R =    88.853 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[723]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2630.091  mm,	Y =   766.127  mm,	Z =   -86.552  mm,
	W =   -33.769 deg,	P =      .741 deg,	R =   112.878 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[731]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1053.046  mm,	Y = -1056.747  mm,	Z =   769.543  mm,
	W =    24.542 deg,	P =   -38.984 deg,	R =    -6.156 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
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
	X =  1094.890  mm,	Y = -1127.769  mm,	Z =   768.463  mm,
	W =    24.536 deg,	P =   -38.987 deg,	R =    -6.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[735]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   776.756  mm,	Y =  -578.766  mm,	Z =   774.376  mm,
	W =    32.518 deg,	P =   -31.098 deg,	R =   -20.599 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[736]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   923.650  mm,	Y =  -831.496  mm,	Z =   772.822  mm,
	W =    41.898 deg,	P =   -14.128 deg,	R =   -49.385 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[737]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1037.419  mm,	Y = -1025.988  mm,	Z =   770.961  mm,
	W =    43.034 deg,	P =    -8.862 deg,	R =   -55.276 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
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
	X =   758.466  mm,	Y =  -545.960  mm,	Z =   772.606  mm,
	W =    33.386 deg,	P =   -31.996 deg,	R =   -21.225 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[742]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   710.278  mm,	Y =  -477.960  mm,	Z =   772.606  mm,
	W =    33.386 deg,	P =   -31.996 deg,	R =    -8.428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[743]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1905.343  mm,	Y = -1477.017  mm,	Z =  1025.975  mm,
	W =   -39.881 deg,	P =    23.853 deg,	R =    23.904 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[744]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1932.126  mm,	Y = -1480.053  mm,	Z =  1024.380  mm,
	W =   -43.541 deg,	P =    14.557 deg,	R =    14.831 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[745]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.611  mm,	Y = -1478.561  mm,	Z =  1026.042  mm,
	W =   -43.535 deg,	P =    14.558 deg,	R =    14.822 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[746]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2000.593  mm,	Y = -1497.735  mm,	Z =  1025.630  mm,
	W =   -43.543 deg,	P =    14.556 deg,	R =   -14.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[747]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.768  mm,	Y = -1507.923  mm,	Z =  1025.740  mm,
	W =   -44.808 deg,	P =     8.520 deg,	R =   -27.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[748]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1901.875  mm,	Y =  1465.160  mm,	Z =  1036.238  mm,
	W =    41.263 deg,	P =    19.805 deg,	R =   -17.225 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[749]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1934.116  mm,	Y =  1464.614  mm,	Z =  1037.732  mm,
	W =    41.277 deg,	P =    19.801 deg,	R =   -17.230 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[750]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1965.909  mm,	Y =  1468.963  mm,	Z =  1032.171  mm,
	W =    41.272 deg,	P =    19.803 deg,	R =   -17.223 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[751]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.605  mm,	Y =  1480.121  mm,	Z =  1030.618  mm,
	W =    41.277 deg,	P =    19.801 deg,	R =     6.735 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[752]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1999.792  mm,	Y =  1488.994  mm,	Z =  1027.439  mm,
	W =    43.863 deg,	P =    11.272 deg,	R =    16.919 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[753]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.861  mm,	Y = -1415.325  mm,	Z =  1029.238  mm,
	W =   -42.847 deg,	P =   -15.300 deg,	R =    39.122 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[754]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1647.655  mm,	Y = -1408.291  mm,	Z =  1027.027  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    40.474 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[755]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1660.943  mm,	Y = -1400.277  mm,	Z =  1026.065  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    43.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[756]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1662.852  mm,	Y = -1393.480  mm,	Z =  1032.390  mm,
	W =   -44.235 deg,	P =   -18.485 deg,	R =    48.309 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[757]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1104.853  mm,	Y =  1006.203  mm,	Z =  1025.639  mm,
	W =    44.130 deg,	P =    -6.203 deg,	R =   -51.549 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[758]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1114.844  mm,	Y =  1000.704  mm,	Z =  1027.080  mm,
	W =    43.014 deg,	P =    -7.268 deg,	R =   -34.946 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[759]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1125.597  mm,	Y =   997.219  mm,	Z =  1027.206  mm,
	W =    42.651 deg,	P =   -14.126 deg,	R =   -20.722 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[760]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1138.321  mm,	Y =   996.177  mm,	Z =  1027.210  mm,
	W =    42.651 deg,	P =   -14.126 deg,	R =   -27.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[761]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2788.736  mm,	Y = -1483.274  mm,	Z =   933.541  mm,
	W =   -37.771 deg,	P =   -31.405 deg,	R =    42.828 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[762]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2790.127  mm,	Y = -1512.097  mm,	Z =   933.343  mm,
	W =   -37.782 deg,	P =   -31.394 deg,	R =    42.842 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[763]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2777.828  mm,	Y = -1541.019  mm,	Z =   932.405  mm,
	W =   -42.870 deg,	P =   -22.985 deg,	R =    39.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[764]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2762.396  mm,	Y = -1555.396  mm,	Z =   929.477  mm,
	W =   -45.718 deg,	P =   -14.892 deg,	R =    35.274 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[765]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2731.844  mm,	Y = -1574.335  mm,	Z =   920.084  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =    30.406 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[766]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2725.103  mm,	Y = -1575.819  mm,	Z =   919.847  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =    18.309 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[767]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2712.522  mm,	Y = -1579.347  mm,	Z =   916.110  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =     6.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[768]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1082.860  mm,	Y =     -.638  mm,	Z =   529.898  mm,
	W =    48.292 deg,	P =    28.213 deg,	R =    20.411 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[769]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2684.760  mm,	Y = -1581.022  mm,	Z =   910.051  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =     6.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[770]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2833.414  mm,	Y =  1483.559  mm,	Z =   885.495  mm,
	W =     1.862 deg,	P =   -42.072 deg,	R =    -2.894 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[771]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2833.081  mm,	Y =  1508.177  mm,	Z =   884.362  mm,
	W =     1.851 deg,	P =   -42.070 deg,	R =    -2.890 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[772]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2826.705  mm,	Y =  1541.371  mm,	Z =   879.685  mm,
	W =    47.457 deg,	P =    -2.512 deg,	R =   -28.093 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[773]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2808.617  mm,	Y =  1556.143  mm,	Z =   878.386  mm,
	W =    47.469 deg,	P =    -2.511 deg,	R =   -28.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[774]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2772.622  mm,	Y =  1570.522  mm,	Z =   877.279  mm,
	W =    47.469 deg,	P =    -2.511 deg,	R =   -28.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[775]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2766.040  mm,	Y =  1572.698  mm,	Z =   875.804  mm,
	W =    46.964 deg,	P =     8.281 deg,	R =   -26.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[776]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.734  mm,	Y =  1575.818  mm,	Z =   872.094  mm,
	W =    47.296 deg,	P =    13.421 deg,	R =   -20.078 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.995 deg,	J2=    90.000 deg
};
P[777]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2725.010  mm,	Y =  1574.875  mm,	Z =   871.699  mm,
	W =    46.312 deg,	P =    12.118 deg,	R =   -20.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[778]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.563  mm,	Y =   458.656  mm,	Z =   830.406  mm,
	W =    39.866 deg,	P =   -22.888 deg,	R =   -65.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[779]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.493  mm,	Y =   473.679  mm,	Z =   828.230  mm,
	W =    39.866 deg,	P =   -22.887 deg,	R =   -65.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[780]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.563  mm,	Y =   480.822  mm,	Z =   829.093  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -69.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[781]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1687.491  mm,	Y =   484.680  mm,	Z =   827.711  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -70.971 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[782]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.839  mm,	Y =   554.633  mm,	Z =   827.423  mm,
	W =    39.871 deg,	P =   -22.884 deg,	R =   -70.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[783]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1711.676  mm,	Y =   557.080  mm,	Z =   826.531  mm,
	W =    39.870 deg,	P =   -22.884 deg,	R =   -74.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[784]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.809  mm,	Y =   560.962  mm,	Z =   826.801  mm,
	W =    39.866 deg,	P =   -22.883 deg,	R =   -82.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[785]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1845.680  mm,	Y =   825.086  mm,	Z =   832.601  mm,
	W =    14.309 deg,	P =   -43.038 deg,	R =   -40.623 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -89.991 deg,	J2=   -89.999 deg
};
P[786]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2547.891  mm,	Y =   822.808  mm,	Z =   -72.485  mm,
	W =   -31.199 deg,	P =     9.620 deg,	R =   105.426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[787]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2549.025  mm,	Y =   813.653  mm,	Z =   -72.568  mm,
	W =   -32.484 deg,	P =     1.246 deg,	R =    91.954 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[788]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.443  mm,	Y =   796.316  mm,	Z =   -71.740  mm,
	W =   -29.311 deg,	P =   -14.722 deg,	R =   104.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[789]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2576.844  mm,	Y =   790.013  mm,	Z =   -76.345  mm,
	W =    -3.324 deg,	P =   -34.459 deg,	R =   105.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[790]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.397  mm,	Y =   789.960  mm,	Z =   -81.033  mm,
	W =    -3.272 deg,	P =   -34.453 deg,	R =   105.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[791]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2617.219  mm,	Y =   781.118  mm,	Z =   -82.622  mm,
	W =     3.036 deg,	P =   -34.484 deg,	R =    65.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[792]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2627.491  mm,	Y =   762.062  mm,	Z =   -83.870  mm,
	W =   -15.099 deg,	P =   -26.030 deg,	R =    67.737 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
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
/END
