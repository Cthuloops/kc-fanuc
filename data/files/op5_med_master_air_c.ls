/PROG  OP5_MED_MASTER_AIR_C
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Medium Main Air";
PROG_SIZE	= 94128;
CREATE		= DATE 25-08-22  TIME 11:43:26;
MODIFIED	= DATE 26-02-10  TIME 12:20:08;
FILE_NAME	= OP5_MED_;
VERSION		= 0;
LINE_COUNT	= 2444;
MEMORY_SIZE	= 94772;
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
   2:  !*------- FRAME MEIDIUM --------* ;
   3:  !*------- FR500 CELL: C --------* ;
   4:  !******************************** ;
   5:   ;
   6:  CALL HOME    ;
   7:  UFRAME_NUM=1 ;
   8:   ;
   9:  !********POSITIONER MOVE******** ;
  10:J P[1] 85% CNT70    ;
  11:   ;
  12:J P[2] 50% CNT50    ;
  13:   ;
  14:L P[3] 1000mm/sec CNT90    ;
  15:   ;
  16:   ;
  17:  CALL ARC_DISABLE_FRONT_BMPR_MED(0) ;
  18:   ;
  19:  !FR50M1000 ;
  20:  IF R[15]=1001,CALL TECH_HOLD ;
  21:   ;
  22:L P[4] 1000mm/sec FINE
    :  Arc Start[6]    ;
  23:  Weave Sine[6] ;
  24:  Track TAST[6] ;
  25:L P[688] WELD_SPEED CNT100    ;
  26:L P[5] WELD_SPEED FINE
    :  Arc End[6]    ;
  27:  Weave End ;
  28:  Track End ;
  29:   ;
  30:   ;
  31:L P[6] 1000mm/sec CNT100    ;
  32:   ;
  33:L P[7] 1000mm/sec CNT100    ;
  34:   ;
  35:   ;
  36:  !FR50M1001 ;
  37:  IF R[15]=1002,CALL TECH_HOLD ;
  38:   ;
  39:   ;
  40:   ;
  41:L P[8] 1000mm/sec FINE
    :  Arc Start[6]    ;
  42:  Weave Sine[6] ;
  43:  Track TAST[6] ;
  44:L P[9] WELD_SPEED CNT100    ;
  45:L P[12] WELD_SPEED FINE
    :  Arc End[6]    ;
  46:  Weave End ;
  47:  Track End ;
  48:   ;
  49:   ;
  50:L P[10] 1000mm/sec CNT100    ;
  51:   ;
  52:L P[11] 1000mm/sec CNT100    ;
  53:   ;
  54:   ;
  55:  !FR50M1002 ;
  56:  IF R[15]=1003,CALL TECH_HOLD ;
  57:   ;
  58:   ;
  59:   ;
  60:L P[13] 1000mm/sec FINE
    :  Arc Start[6]    ;
  61:  Weave Sine[6] ;
  62:  Track TAST[6] ;
  63:L P[19] WELD_SPEED FINE
    :  Arc End[6]    ;
  64:  Weave End ;
  65:  Track End ;
  66:   ;
  67:   ;
  68:  CALL ARC_DISABLE_FRONT_BMPR_MED(1) ;
  69:   ;
  70:   ;
  71:L P[14] 1000mm/sec CNT80    ;
  72:   ;
  73:  !HOME ;
  74:J P[643] 80% CNT75    ;
  75:   ;
  76:  !********POSITIONER MOVE******** ;
  77:J P[15] 90% CNT40    ;
  78:   ;
  79:J P[16] 70% CNT40    ;
  80:   ;
  81:J P[17] 50% CNT50    ;
  82:   ;
  83:L P[18] 1000mm/sec CNT30    ;
  84:   ;
  85:   ;
  86:  !FR50M1003 ;
  87:  IF R[15]=1004,CALL TECH_HOLD ;
  88:   ;
  89:   ;
  90:   ;
  91:L P[20] 1000mm/sec FINE
    :  Arc Start[6]    ;
  92:  Weave Sine[6] ;
  93:  Track TAST[6] ;
  94:L P[23] WELD_SPEED CNT100    ;
  95:L P[24] WELD_SPEED FINE
    :  Arc End[6]    ;
  96:  Weave End ;
  97:  Track End ;
  98:   ;
  99:   ;
 100:L P[21] 1000mm/sec CNT25    ;
 101:   ;
 102:J P[22] 50% CNT25    ;
 103:   ;
 104:   ;
 105:  !FR50M1010 ;
 106:  IF R[15]=1011,CALL TECH_HOLD ;
 107:   ;
 108:   ;
 109:   ;
 110:L P[27] 1000mm/sec FINE
    :  Arc Start[6]    ;
 111:  Weave Sine[6] ;
 112:  Track TAST[6] ;
 113:L P[28] WELD_SPEED FINE
    :  Arc End[6]    ;
 114:  Weave End ;
 115:  Track End ;
 116:   ;
 117:   ;
 118:L P[25] 1000mm/sec CNT80    ;
 119:   ;
 120:L P[26] 1000mm/sec CNT90    ;
 121:   ;
 122:   ;
 123:  !FR50M1020 ;
 124:  IF R[15]=1021,CALL TECH_HOLD ;
 125:   ;
 126:   ;
 127:   ;
 128:L P[33] 1000mm/sec FINE
    :  Arc Start[6]    ;
 129:  Weave Sine[6] ;
 130:  Track TAST[6] ;
 131:L P[34] WELD_SPEED FINE
    :  Arc End[6]    ;
 132:  Weave End ;
 133:  Track End ;
 134:   ;
 135:   ;
 136:L P[29] 1000mm/sec CNT100    ;
 137:   ;
 138:J P[30] 50% CNT45    ;
 139:   ;
 140:L P[31] 1000mm/sec CNT100    ;
 141:   ;
 142:L P[32] 1000mm/sec CNT30    ;
 143:   ;
 144:   ;
 145:  !FR50M1030 ;
 146:  IF R[15]=1031,CALL TECH_HOLD ;
 147:   ;
 148:   ;
 149:   ;
 150:L P[37] 1000mm/sec FINE
    :  Arc Start[6]    ;
 151:L P[38] WELD_SPEED FINE
    :  Arc End[6]    ;
 152:   ;
 153:   ;
 154:L P[35] 1000mm/sec CNT30    ;
 155:   ;
 156:J P[36] 60% CNT25    ;
 157:   ;
 158:   ;
 159:  !FR50M1040 ;
 160:  IF R[15]=1041,CALL TECH_HOLD ;
 161:   ;
 162:L P[41] 1000mm/sec FINE
    :  Arc Start[6]    ;
 163:L P[42] WELD_SPEED FINE
    :  Arc End[6]    ;
 164:  //L P[47] 1000mm/sec FINE
    :  Arc Start[6]    ;
 165:  //L P[48] WELD_SPEED FINE
    :  Arc End[6]    ;
 166:   ;
 167:   ;
 168:L P[39] 1000mm/sec CNT25    ;
 169:   ;
 170:J P[40] 40% CNT25    ;
 171:   ;
 172:   ;
 173:  !FR50M1050 ;
 174:  IF R[15]=1051,CALL TECH_HOLD ;
 175:   ;
 176:L P[47] 1000mm/sec FINE
    :  Arc Start[6]    ;
 177:L P[687] WELD_SPEED FINE
    :  Arc End[6]    ;
 178:   ;
 179:   ;
 180:  !FR50M1050 ;
 181:  IF R[15]=1051,CALL TECH_HOLD ;
 182:   ;
 183:   ;
 184:L P[43] 500mm/sec CNT75    ;
 185:   ;
 186:L P[44] 1400mm/sec CNT75    ;
 187:   ;
 188:J P[45] 50% CNT25    ;
 189:   ;
 190:L P[46] 1000mm/sec CNT80    ;
 191:   ;
 192:   ;
 193:  !FR50M1060 ;
 194:  IF R[15]=1061,CALL TECH_HOLD ;
 195:   ;
 196:  !50MM ;
 197:   ;
 198:   ;
 199:L P[51] 1000mm/sec FINE
    :  Arc Start[6]    ;
 200:  Weave Sine[6] ;
 201:  Track TAST[6] ;
 202:L P[52] WELD_SPEED FINE
    :  Arc End[6]    ;
 203:  Weave End ;
 204:  Track End ;
 205:   ;
 206:   ;
 207:L P[49] 1000mm/sec CNT90    ;
 208:   ;
 209:L P[50] 1000mm/sec CNT90 Wjnt    ;
 210:   ;
 211:   ;
 212:  !FR50M1070 ;
 213:  IF R[15]=1071,CALL TECH_HOLD ;
 214:   ;
 215:  !50MM ;
 216:   ;
 217:   ;
 218:L P[56] 1000mm/sec FINE
    :  Arc Start[6]    ;
 219:  Weave Sine[6] ;
 220:  Track TAST[6] ;
 221:L P[57] WELD_SPEED FINE
    :  Arc End[6]    ;
 222:  Weave End ;
 223:  Track End ;
 224:   ;
 225:   ;
 226:J P[53] 20% CNT30    ;
 227:   ;
 228:J P[54] 50% CNT25    ;
 229:   ;
 230:L P[55] 1000mm/sec CNT60    ;
 231:   ;
 232:   ;
 233:  !FR50M1080 ;
 234:  IF R[15]=1081,CALL TECH_HOLD ;
 235:   ;
 236:  !10MM PASS ;
 237:   ;
 238:   ;
 239:L P[58] 1000mm/sec FINE
    :  Arc Start[6]    ;
 240:  Weave Sine[6] ;
 241:  Track TAST[6] RPM[1] ;
 242:L P[60] WELD_SPEED CNT100    ;
 243:L P[62] WELD_SPEED CNT100    ;
 244:C P[65]    
    :  P[66] WELD_SPEED FINE
    :  Arc End[6]    ;
 245:  Track End ;
 246:  Weave End ;
 247:   ;
 248:   ;
 249:L P[61] 1000mm/sec CNT60    ;
 250:   ;
 251:L P[59] 1000mm/sec CNT100    ;
 252:   ;
 253:J P[63] 50% CNT40    ;
 254:   ;
 255:L P[64] 1000mm/sec CNT50    ;
 256:   ;
 257:  !FR50M1090 ;
 258:  IF R[15]=1091,CALL TECH_HOLD ;
 259:   ;
 260:  !10MM PASS ;
 261:   ;
 262:   ;
 263:L P[67] 1000mm/sec FINE
    :  Arc Start[6]    ;
 264:  Weave Sine[6] ;
 265:  Track TAST[6] RPM[2] ;
 266:L P[69] WELD_SPEED CNT100    ;
 267:L P[72] WELD_SPEED CNT100    ;
 268:C P[75]    
    :  P[77] WELD_SPEED FINE
    :  Arc End[6]    ;
 269:  Track End ;
 270:  Weave End ;
 271:   ;
 272:   ;
 273:L P[70] 500mm/sec CNT50    ;
 274:   ;
 275:J P[68] 50% CNT35    ;
 276:   ;
 277:J P[71] 50% CNT25    ;
 278:   ;
 279:   ;
 280:  !FR50M1081 ;
 281:  IF R[15]=1082,CALL TECH_HOLD ;
 282:   ;
 283:   ;
 284:L P[74] 1000mm/sec CNT40    ;
 285:   ;
 286:  MP Offset  PR[3] RPM[1] ;
 287:   ;
 288:L P[58] 1000mm/sec FINE
    :  Arc Start[6]    ;
 289:  Weave Sine[6] ;
 290:L P[60] WELD_SPEED CNT100    ;
 291:L P[62] WELD_SPEED CNT100    ;
 292:C P[65]    
    :  P[66] WELD_SPEED FINE
    :  Arc End[6]    ;
 293:  Weave End ;
 294:   ;
 295:  MP Offset End ;
 296:   ;
 297:L P[80] 1000mm/sec CNT40    ;
 298:   ;
 299:L P[685] 500mm/sec CNT100    ;
 300:   ;
 301:   ;
 302:  !FR50M1082 ;
 303:  IF R[15]=1083,CALL TECH_HOLD ;
 304:   ;
 305:   ;
 306:J P[81] 50% CNT30    ;
 307:   ;
 308:L P[82] 1000mm/sec CNT30    ;
 309:   ;
 310:  MP Offset  PR[4] RPM[1] ;
 311:   ;
 312:L P[58] 1000mm/sec FINE
    :  Arc Start[6]    ;
 313:  Weave Sine[6] ;
 314:L P[60] WELD_SPEED CNT100    ;
 315:L P[62] WELD_SPEED CNT100    ;
 316:C P[65]    
    :  P[66] WELD_SPEED FINE
    :  Arc End[6]    ;
 317:  Weave End ;
 318:   ;
 319:  MP Offset End ;
 320:   ;
 321:L P[83] 1000mm/sec CNT25    ;
 322:   ;
 323:L P[84] 500mm/sec CNT100    ;
 324:   ;
 325:   ;
 326:  !FR50M1091 ;
 327:  IF R[15]=1092,CALL TECH_HOLD ;
 328:   ;
 329:   ;
 330:J P[85] 50% CNT25    ;
 331:   ;
 332:L P[86] 1000mm/sec CNT50    ;
 333:   ;
 334:  MP Offset  PR[1] RPM[2] ;
 335:   ;
 336:L P[67] 1000mm/sec FINE
    :  Arc Start[6]    ;
 337:  Weave Sine[6] ;
 338:L P[69] WELD_SPEED CNT100    ;
 339:L P[72] WELD_SPEED CNT100    ;
 340:C P[75]    
    :  P[77] WELD_SPEED FINE
    :  Arc End[6]    ;
 341:  Weave End ;
 342:   ;
 343:  MP Offset End ;
 344:   ;
 345:L P[87] 500mm/sec CNT30    ;
 346:   ;
 347:J P[88] 50% CNT25    ;
 348:   ;
 349:   ;
 350:  !FR50M1092 ;
 351:  IF R[15]=1093,CALL TECH_HOLD ;
 352:   ;
 353:   ;
 354:L P[89] 1000mm/sec CNT50    ;
 355:   ;
 356:  MP Offset  PR[2] RPM[2] ;
 357:   ;
 358:L P[67] 1000mm/sec FINE
    :  Arc Start[6]    ;
 359:  Weave Sine[6] ;
 360:L P[69] WELD_SPEED CNT100    ;
 361:L P[72] WELD_SPEED CNT100    ;
 362:C P[75]    
    :  P[77] WELD_SPEED FINE
    :  Arc End[6]    ;
 363:  Weave End ;
 364:   ;
 365:  MP Offset End ;
 366:   ;
 367:L P[90] 500mm/sec CNT50    ;
 368:   ;
 369:J P[102] 50% CNT25    ;
 370:   ;
 371:L P[103] 1000mm/sec CNT80    ;
 372:   ;
 373:   ;
 374:  !FR50M1100 ;
 375:  IF R[15]=1101,CALL TECH_HOLD ;
 376:   ;
 377:   ;
 378:   ;
 379:L P[124] 1000mm/sec FINE
    :  Arc Start[8]    ;
 380:  Weave Sine[8] ;
 381:L P[128] WELD_SPEED CNT100    ;
 382:C P[129]    
    :  P[132] WELD_SPEED FINE
    :  Arc End[8]    ;
 383:  Weave End ;
 384:   ;
 385:   ;
 386:L P[108] 1000mm/sec CNT40    ;
 387:   ;
 388:L P[109] 1000mm/sec CNT30    ;
 389:   ;
 390:J P[110] 50% CNT30    ;
 391:   ;
 392:L P[111] 1000mm/sec CNT80    ;
 393:   ;
 394:   ;
 395:  !FR50M1110 ;
 396:  IF R[15]=1111,CALL TECH_HOLD ;
 397:   ;
 398:   ;
 399:   ;
 400:L P[133] 1000mm/sec FINE
    :  Arc Start[8]    ;
 401:  Weave Sine[8] ;
 402:L P[138] WELD_SPEED CNT100    ;
 403:C P[139]    
    :  P[142] WELD_SPEED FINE
    :  Arc End[8]    ;
 404:  Weave End ;
 405:   ;
 406:   ;
 407:L P[116] 1000mm/sec CNT40    ;
 408:   ;
 409:J P[117] 50% CNT40    ;
 410:   ;
 411:L P[118] 1000mm/sec CNT80    ;
 412:   ;
 413:   ;
 414:  !FR50M1120 ;
 415:  !75mm ;
 416:  IF R[15]=1121,CALL TECH_HOLD ;
 417:   ;
 418:   ;
 419:   ;
 420:L P[143] 1000mm/sec FINE
    :  Arc Start[6]    ;
 421:  Weave Sine[6] ;
 422:  Track TAST[6] ;
 423:L P[145] WELD_SPEED FINE
    :  Arc End[6]    ;
 424:  Weave End ;
 425:  Track End ;
 426:   ;
 427:   ;
 428:L P[121] 1000mm/sec CNT90    ;
 429:   ;
 430:L P[122] 1000mm/sec CNT80    ;
 431:   ;
 432:   ;
 433:  !FR50M1130 ;
 434:  IF R[15]=1131,CALL TECH_HOLD ;
 435:   ;
 436:  !75mm ;
 437:   ;
 438:   ;
 439:L P[146] 1000mm/sec FINE
    :  Arc Start[6]    ;
 440:  Weave Sine[6] ;
 441:  Track TAST[6] ;
 442:L P[149] WELD_SPEED FINE
    :  Arc End[6]    ;
 443:  Weave End ;
 444:  Track End ;
 445:   ;
 446:   ;
 447:L P[125] 1000mm/sec CNT100    ;
 448:   ;
 449:L P[126] 1000mm/sec CNT100    ;
 450:   ;
 451:  !********POSITIONER MOVE******** ;
 452:J P[127] 75% CNT30    ;
 453:   ;
 454:   ;
 455:   ;
 456:  !FR50M1140 ;
 457:  IF R[15]=1141,CALL TECH_HOLD ;
 458:   ;
 459:L P[150] 1000mm/sec FINE
    :  Arc Start[6]    ;
 460:  Weave Sine[6] ;
 461:  Track TAST[6] ;
 462:L P[156] WELD_SPEED FINE
    :  Arc End[6]    ;
 463:  Weave End ;
 464:  Track End ;
 465:   ;
 466:   ;
 467:L P[130] 1000mm/sec CNT90    ;
 468:   ;
 469:L P[131] 1000mm/sec CNT60    ;
 470:   ;
 471:   ;
 472:  !FR50M1150 ;
 473:  IF R[15]=1151,CALL TECH_HOLD ;
 474:   ;
 475:   ;
 476:   ;
 477:L P[157] 1000mm/sec FINE
    :  Arc Start[6]    ;
 478:  Weave Sine[6] ;
 479:  Track TAST[6] ;
 480:L P[158] WELD_SPEED FINE
    :  Arc End[6]    ;
 481:  Weave End ;
 482:  Track End ;
 483:   ;
 484:   ;
 485:L P[134] 1000mm/sec CNT90    ;
 486:   ;
 487:  !HOME ;
 488:J P[756] 100% CNT90    ;
 489:   ;
 490:  !********POSITIONER MOVE******** ;
 491:J P[135] 85% CNT50    ;
 492:   ;
 493:J P[136] 50% CNT40    ;
 494:   ;
 495:L P[137] 1000mm/sec CNT30    ;
 496:   ;
 497:   ;
 498:  !FR50M1160 ;
 499:  IF R[15]=1161,CALL TECH_HOLD ;
 500:   ;
 501:   ;
 502:   ;
 503:L P[162] 350mm/sec FINE
    :  Arc Start[6]    ;
 504:  Weave Sine[6] ;
 505:  Track TAST[6] ;
 506:L P[163] WELD_SPEED CNT100    ;
 507:L P[164] WELD_SPEED FINE
    :  Arc End[6]    ;
 508:  Weave End ;
 509:  Track End ;
 510:   ;
 511:   ;
 512:L P[140] 800mm/sec CNT30    ;
 513:   ;
 514:L P[141] 1000mm/sec CNT30    ;
 515:   ;
 516:   ;
 517:  !FR50M1170 ;
 518:  IF R[15]=1171,CALL TECH_HOLD ;
 519:   ;
 520:   ;
 521:   ;
 522:L P[78] 400mm/sec FINE
    :  Arc Start[6]    ;
 523:  Weave Sine[6] ;
 524:  Track TAST[6] ;
 525:L P[79] WELD_SPEED FINE
    :  Arc End[6]    ;
 526:  Weave End ;
 527:  Track End ;
 528:   ;
 529:   ;
 530:L P[144] 700mm/sec CNT50    ;
 531:   ;
 532:L P[73] 1000mm/sec CNT50    ;
 533:   ;
 534:   ;
 535:  !FR50M1180 ;
 536:  IF R[15]=1181,CALL TECH_HOLD ;
 537:   ;
 538:   ;
 539:   ;
 540:L P[172] 500mm/sec FINE
    :  Arc Start[6]    ;
 541:  Weave Sine[6] ;
 542:  Track TAST[6] ;
 543:L P[173] WELD_SPEED FINE
    :  Arc End[6]    ;
 544:  Weave End ;
 545:  Track End ;
 546:   ;
 547:   ;
 548:L P[147] 600mm/sec CNT60    ;
 549:   ;
 550:L P[148] 1200mm/sec CNT35    ;
 551:   ;
 552:   ;
 553:  !FR50M1190 ;
 554:  IF R[15]=1191,CALL TECH_HOLD ;
 555:   ;
 556:   ;
 557:   ;
 558:L P[176] 100mm/sec FINE
    :  Arc Start[6]    ;
 559:  Weave Sine[6] ;
 560:  Track TAST[6] ;
 561:L P[177] WELD_SPEED CNT100    ;
 562:L P[180] WELD_SPEED FINE
    :  Arc End[6]    ;
 563:  Weave End ;
 564:  Track End ;
 565:   ;
 566:   ;
 567:L P[151] 500mm/sec CNT50    ;
 568:   ;
 569:L P[152] 1000mm/sec CNT90    ;
 570:   ;
 571:J P[757] 100% CNT40    ;
 572:   ;
 573:  !********POSITIONER MOVE******** ;
 574:J P[153] 85% CNT25    ;
 575:   ;
 576:  CALL HOME    ;
 577:  CALL T_CLEAN    ;
 578:   ;
 579:J P[154] 50% CNT45    ;
 580:   ;
 581:L P[155] 1000mm/sec CNT35    ;
 582:   ;
 583:L P[76] 800mm/sec CNT25    ;
 584:   ;
 585:   ;
 586:  !FR50M1200 ;
 587:  IF R[15]=1201,CALL TECH_HOLD ;
 588:   ;
 589:   ;
 590:L P[181] 1000mm/sec FINE
    :  Arc Start[6]    ;
 591:  Weave Sine[6] ;
 592:  Track TAST[6] ;
 593:L P[184] WELD_SPEED CNT100    ;
 594:L P[185] WELD_SPEED CNT100    ;
 595:L P[190] WELD_SPEED FINE
    :  Arc End[6]    ;
 596:  Weave End ;
 597:  Track End ;
 598:   ;
 599:   ;
 600:L P[159] 1000mm/sec CNT25    ;
 601:   ;
 602:J P[160] 50% CNT35    ;
 603:   ;
 604:L P[161] 1000mm/sec CNT45    ;
 605:   ;
 606:   ;
 607:  !FR50M1210 ;
 608:  IF R[15]=1211,CALL TECH_HOLD ;
 609:   ;
 610:   ;
 611:   ;
 612:L P[191] 1000mm/sec FINE
    :  Arc Start[6]    ;
 613:  Weave Sine[6] ;
 614:  Track TAST[6] ;
 615:L P[194] WELD_SPEED CNT100    ;
 616:L P[195] WELD_SPEED CNT100    ;
 617:L P[197] WELD_SPEED FINE
    :  Arc End[6]    ;
 618:  Weave End ;
 619:  Track End ;
 620:   ;
 621:   ;
 622:L P[165] 500mm/sec CNT50    ;
 623:   ;
 624:J P[166] 50% CNT35    ;
 625:   ;
 626:L P[167] 1000mm/sec CNT50    ;
 627:   ;
 628:   ;
 629:  !FR50M1220 ;
 630:  IF R[15]=1221,CALL TECH_HOLD ;
 631:   ;
 632:  //UALM[20] ;
 633:   ;
 634:L P[198] 1000mm/sec FINE
    :  Arc Start[6]    ;
 635:  Weave Sine[6] ;
 636:  Track TAST[6] ;
 637:L P[205] WELD_SPEED CNT100    ;
 638:L P[206] WELD_SPEED FINE
    :  Arc End[6]    ;
 639:  Weave End ;
 640:  Track End ;
 641:   ;
 642:   ;
 643:L P[92] 1000mm/sec CNT100    ;
 644:   ;
 645:L P[170] 1400mm/sec CNT80    ;
 646:   ;
 647:L P[171] 1000mm/sec CNT50    ;
 648:   ;
 649:   ;
 650:  !FR50M1230 ;
 651:  IF R[15]=1231,CALL TECH_HOLD ;
 652:   ;
 653:   ;
 654:   ;
 655:L P[209] 1000mm/sec FINE
    :  Arc Start[6]    ;
 656:  Weave Sine[6] ;
 657:  Track TAST[6] ;
 658:L P[210] WELD_SPEED CNT100    ;
 659:L P[215] WELD_SPEED FINE
    :  Arc End[6]    ;
 660:  Weave End ;
 661:  Track End ;
 662:   ;
 663:   ;
 664:L P[174] 1000mm/sec CNT80    ;
 665:   ;
 666:L P[175] 1000mm/sec CNT90    ;
 667:   ;
 668:   ;
 669:  !FR50M1240 ;
 670:  IF R[15]=1241,CALL TECH_HOLD ;
 671:   ;
 672:   ;
 673:   ;
 674:L P[216] 1000mm/sec FINE
    :  Arc Start[6]    ;
 675:  Weave Sine[6] ;
 676:  Track TAST[6] ;
 677:L P[217] WELD_SPEED FINE
    :  Arc End[6]    ;
 678:  Weave End ;
 679:  Track End ;
 680:   ;
 681:   ;
 682:L P[178] 1000mm/sec CNT80    ;
 683:   ;
 684:L P[179] 1000mm/sec CNT90    ;
 685:   ;
 686:   ;
 687:  !FR50M1250 ;
 688:  IF R[15]=1251,CALL TECH_HOLD ;
 689:   ;
 690:   ;
 691:   ;
 692:L P[218] 1000mm/sec FINE
    :  Arc Start[6]    ;
 693:  Weave Sine[6] ;
 694:  Track TAST[6] ;
 695:L P[221] WELD_SPEED FINE
    :  Arc End[6]    ;
 696:  Weave End ;
 697:  Track End ;
 698:   ;
 699:   ;
 700:L P[182] 1000mm/sec CNT90    ;
 701:   ;
 702:L P[183] 1300mm/sec CNT80    ;
 703:   ;
 704:   ;
 705:  !FR50M1260 ;
 706:  IF R[15]=1261,CALL TECH_HOLD ;
 707:   ;
 708:   ;
 709:   ;
 710:L P[222] 1000mm/sec FINE
    :  Arc Start[6]    ;
 711:  Weave Sine[6] ;
 712:  Track TAST[6] ;
 713:L P[224] WELD_SPEED CNT100    ;
 714:L P[225] WELD_SPEED FINE
    :  Arc End[6]    ;
 715:  Weave End ;
 716:  Track End ;
 717:   ;
 718:   ;
 719:L P[186] 1000mm/sec CNT80    ;
 720:   ;
 721:J P[187] 50% CNT30    ;
 722:   ;
 723:  !********POSITIONER MOVE******** ;
 724:J P[188] 80% CNT30    ;
 725:   ;
 726:L P[189] 1000mm/sec CNT35    ;
 727:   ;
 728:   ;
 729:  !FR50M1270 ;
 730:  IF R[15]=1271,CALL TECH_HOLD ;
 731:   ;
 732:   ;
 733:L P[228] 1000mm/sec FINE
    :  Arc Start[8]    ;
 734:  Weave Sine[8] ;
 735:L P[229] WELD_SPEED FINE
    :  Arc End[8]    ;
 736:  Weave End ;
 737:   ;
 738:   ;
 739:L P[192] 1000mm/sec CNT40    ;
 740:   ;
 741:J P[759] 100% CNT30    ;
 742:   ;
 743:  !********POSITIONER MOVE******** ;
 744:J P[193] 85% CNT30    ;
 745:   ;
 746:   ;
 747:  !FR50M1280 ;
 748:  IF R[15]=1281,CALL TECH_HOLD ;
 749:   ;
 750:   ;
 751:   ;
 752:L P[232] 1000mm/sec FINE
    :  Arc Start[6]    ;
 753:  Weave Sine[6] ;
 754:L P[233] WELD_SPEED FINE
    :  Arc End[6]    ;
 755:  Weave End ;
 756:   ;
 757:   ;
 758:   ;
 759:  !FR50M1290 ;
 760:  IF R[15]=1291,CALL TECH_HOLD ;
 761:   ;
 762:   ;
 763:L P[196] 1000mm/sec CNT100    ;
 764:   ;
 765:   ;
 766:L P[236] 1000mm/sec FINE
    :  Arc Start[6]    ;
 767:  Weave Sine[6] ;
 768:L P[238] WELD_SPEED FINE
    :  Arc End[6]    ;
 769:  Weave End ;
 770:   ;
 771:   ;
 772:L P[199] 1000mm/sec CNT75    ;
 773:   ;
 774:J P[94] 50% CNT100    ;
 775:   ;
 776:J P[200] 50% CNT100    ;
 777:   ;
 778:  !HOME ;
 779:J P[760] 60% CNT30    ;
 780:   ;
 781:  !********POSITIONER MOVE******** ;
 782:J P[201] 85% CNT25    ;
 783:   ;
 784:L P[203] 1200mm/sec CNT25    ;
 785:   ;
 786:L P[204] 1000mm/sec CNT25    ;
 787:   ;
 788:   ;
 789:  !FR50M1300 ;
 790:  IF R[15]=1301,CALL TECH_HOLD ;
 791:   ;
 792:   ;
 793:   ;
 794:L P[239] 1000mm/sec FINE
    :  Arc Start[6]    ;
 795:  Weave Sine[6] ;
 796:  Track TAST[6] ;
 797:L P[240] WELD_SPEED CNT100    ;
 798:L P[241] WELD_SPEED FINE
    :  Arc End[6]    ;
 799:  Weave End ;
 800:  Track End ;
 801:   ;
 802:   ;
 803:L P[207] 1000mm/sec CNT25    ;
 804:   ;
 805:J P[208] 50% CNT25    ;
 806:   ;
 807:   ;
 808:  !FR50M1310 ;
 809:  IF R[15]=1311,CALL TECH_HOLD ;
 810:   ;
 811:   ;
 812:L P[246] 1000mm/sec FINE
    :  Arc Start[6]    ;
 813:  Weave Sine[6] ;
 814:  Track TAST[6] ;
 815:L P[247] WELD_SPEED CNT100    ;
 816:L P[249] WELD_SPEED CNT100    ;
 817:L P[250] WELD_SPEED FINE
    :  Arc End[6]    ;
 818:  Weave End ;
 819:  Track End ;
 820:   ;
 821:   ;
 822:L P[211] 1000mm/sec CNT25    ;
 823:   ;
 824:L P[212] 1000mm/sec CNT25    ;
 825:   ;
 826:L P[213] 1000mm/sec CNT25    ;
 827:   ;
 828:  !********POSITIONER MOVE******** ;
 829:J P[214] 75% CNT10    ;
 830:   ;
 831:   ;
 832:  !FR50M1320 ;
 833:  IF R[15]=1321,CALL TECH_HOLD ;
 834:   ;
 835:   ;
 836:   ;
 837:L P[253] 1000mm/sec FINE
    :  Arc Start[6]    ;
 838:  Weave Sine[6] ;
 839:L P[254] WELD_SPEED CNT100    ;
 840:L P[255] WELD_SPEED CNT100    ;
 841:L P[258] WELD_SPEED FINE
    :  Arc End[6]    ;
 842:  Weave End ;
 843:   ;
 844:   ;
 845:L P[219] 1000mm/sec CNT40    ;
 846:   ;
 847:L P[220] 1000mm/sec CNT40    ;
 848:   ;
 849:   ;
 850:  !FR50M1330 ;
 851:  IF R[15]=1331,CALL TECH_HOLD ;
 852:   ;
 853:   ;
 854:   ;
 855:L P[259] 1000mm/sec FINE
    :  Arc Start[6]    ;
 856:  Weave Sine[6] ;
 857:  Track TAST[6] ;
 858:L P[264] WELD_SPEED FINE
    :  Arc End[6]    ;
 859:  Weave End ;
 860:  Track End ;
 861:   ;
 862:   ;
 863:L P[223] 1000mm/sec CNT30    ;
 864:   ;
 865:   ;
 866:  !FR50M1340 ;
 867:  IF R[15]=1341,CALL TECH_HOLD ;
 868:   ;
 869:   ;
 870:   ;
 871:L P[265] 1000mm/sec FINE
    :  Arc Start[6]    ;
 872:  Weave Sine[6] ;
 873:  Track TAST[6] ;
 874:L P[269] WELD_SPEED CNT100    ;
 875:L P[270] WELD_SPEED FINE
    :  Arc End[6]    ;
 876:  Weave End ;
 877:  Track End ;
 878:   ;
 879:   ;
 880:L P[226] 1000mm/sec CNT30    ;
 881:   ;
 882:L P[227] 1000mm/sec CNT25    ;
 883:   ;
 884:L P[99] 1000mm/sec CNT40    ;
 885:   ;
 886:   ;
 887:  !FR50M1350 ;
 888:  IF R[15]=1351,CALL TECH_HOLD ;
 889:   ;
 890:   ;
 891:   ;
 892:L P[273] 1000mm/sec FINE
    :  Arc Start[6]    ;
 893:  Weave Sine[6] ;
 894:  Track TAST[6] ;
 895:L P[274] WELD_SPEED CNT100    ;
 896:L P[279] WELD_SPEED CNT100    ;
 897:L P[280] WELD_SPEED FINE
    :  Arc End[6]    ;
 898:  Weave End ;
 899:  Track End ;
 900:   ;
 901:   ;
 902:L P[230] 1000mm/sec CNT40    ;
 903:   ;
 904:J P[231] 50% CNT25    ;
 905:   ;
 906:   ;
 907:  !FR50M1360 ;
 908:  IF R[15]=1361,CALL TECH_HOLD ;
 909:   ;
 910:   ;
 911:   ;
 912:L P[281] 1000mm/sec FINE
    :  Arc Start[6]    ;
 913:  Weave Sine[6] ;
 914:  Track TAST[6] ;
 915:L P[282] WELD_SPEED CNT100    ;
 916:L P[283] WELD_SPEED FINE
    :  Arc End[6]    ;
 917:  Weave End ;
 918:  Track End ;
 919:   ;
 920:   ;
 921:L P[234] 1000mm/sec CNT25    ;
 922:   ;
 923:J P[235] 50% CNT25    ;
 924:   ;
 925:   ;
 926:  !FR50M1370 ;
 927:  IF R[15]=1371,CALL TECH_HOLD ;
 928:   ;
 929:   ;
 930:   ;
 931:L P[284] 1000mm/sec FINE
    :  Arc Start[6]    ;
 932:  Weave Sine[6] ;
 933:L P[285] WELD_SPEED CNT100    ;
 934:L P[286] WELD_SPEED FINE
    :  Arc End[6]    ;
 935:   ;
 936:   ;
 937:L P[237] 1000mm/sec CNT25    ;
 938:   ;
 939:   ;
 940:  !FR50M1380 ;
 941:  IF R[15]=1381,CALL TECH_HOLD ;
 942:   ;
 943:   ;
 944:   ;
 945:L P[287] 1000mm/sec FINE
    :  Arc Start[6]    ;
 946:  Weave Sine[6] ;
 947:L P[288] WELD_SPEED CNT100    ;
 948:  Weave End ;
 949:L P[289] WELD_SPEED FINE
    :  Arc End[6]    ;
 950:   ;
 951:   ;
 952:L P[242] 1000mm/sec CNT100    ;
 953:   ;
 954:L P[243] 1000mm/sec CNT100    ;
 955:   ;
 956:J P[244] 50% CNT40    ;
 957:   ;
 958:L P[245] 1000mm/sec CNT25    ;
 959:   ;
 960:   ;
 961:  !FR50M1390 ;
 962:  IF R[15]=1391,CALL TECH_HOLD ;
 963:   ;
 964:   ;
 965:   ;
 966:L P[293] 1000mm/sec FINE
    :  Arc Start[6]    ;
 967:  Weave Sine[6] ;
 968:  Track TAST[6] ;
 969:L P[294] WELD_SPEED FINE
    :  Arc End[6]    ;
 970:  Weave End ;
 971:  Track End ;
 972:   ;
 973:   ;
 974:L P[248] 1000mm/sec CNT25    ;
 975:   ;
 976:   ;
 977:  !FR50M1400 ;
 978:  IF R[15]=1401,CALL TECH_HOLD ;
 979:   ;
 980:   ;
 981:   ;
 982:L P[298] 1000mm/sec FINE
    :  Arc Start[6]    ;
 983:  Weave Sine[6] ;
 984:  Track TAST[6] ;
 985:L P[299] WELD_SPEED CNT100    ;
 986:L P[301] WELD_SPEED FINE
    :  Arc End[6]    ;
 987:  Weave End ;
 988:  Track End ;
 989:   ;
 990:   ;
 991:L P[251] 1000mm/sec CNT100    ;
 992:   ;
 993:L P[252] 1000mm/sec CNT25    ;
 994:   ;
 995:   ;
 996:  !FR50M1410 ;
 997:  IF R[15]=1411,CALL TECH_HOLD ;
 998:   ;
 999:   ;
1000:   ;
1001:L P[302] 1000mm/sec FINE
    :  Arc Start[6]    ;
1002:  Weave Sine[6] ;
1003:  Track TAST[6] ;
1004:L P[309] WELD_SPEED CNT100    ;
1005:L P[310] WELD_SPEED FINE
    :  Arc End[6]    ;
1006:  Weave End ;
1007:  Track End ;
1008:   ;
1009:   ;
1010:L P[256] 1000mm/sec CNT25    ;
1011:   ;
1012:  !********POSITIONER MOVE******** ;
1013:J P[257] 75% FINE    ;
1014:   ;
1015:   ;
1016:  !FR50M1420 ;
1017:  IF R[15]=1421,CALL TECH_HOLD ;
1018:   ;
1019:   ;
1020:   ;
1021:L P[311] 1000mm/sec FINE
    :  Arc Start[6]    ;
1022:  Weave Sine[6] ;
1023:  Track TAST[6] ;
1024:L P[312] WELD_SPEED FINE
    :  Arc End[6]    ;
1025:  Weave End ;
1026:  Track End ;
1027:   ;
1028:   ;
1029:L P[260] 1000mm/sec CNT25    ;
1030:   ;
1031:L P[261] 500mm/sec FINE    ;
1032:   ;
1033:  !********POSITIONER MOVE******** ;
1034:J P[262] 50% CNT25    ;
1035:   ;
1036:L P[263] 1000mm/sec CNT25    ;
1037:   ;
1038:   ;
1039:  !FR50M1430 ;
1040:  IF R[15]=1431,CALL TECH_HOLD ;
1041:   ;
1042:   ;
1043:   ;
1044:L P[313] 1000mm/sec FINE
    :  Arc Start[6]    ;
1045:  Weave Sine[6] ;
1046:L P[314] WELD_SPEED CNT100    ;
1047:L P[315] WELD_SPEED FINE
    :  Arc End[6]    ;
1048:  Weave End ;
1049:   ;
1050:   ;
1051:L P[266] 1000mm/sec CNT25    ;
1052:   ;
1053:L P[690] 1000mm/sec CNT25    ;
1054:   ;
1055:  !********POSITIONER MOVE******** ;
1056:J P[267] 75% CNT25    ;
1057:   ;
1058:L P[268] 1000mm/sec CNT25    ;
1059:   ;
1060:   ;
1061:  !FR50M1440 ;
1062:  IF R[15]=1441,CALL TECH_HOLD ;
1063:   ;
1064:   ;
1065:   ;
1066:L P[316] 1000mm/sec FINE
    :  Arc Start[8]    ;
1067:  Weave Sine[8] ;
1068:L P[322] WELD_SPEED FINE
    :  Arc End[8]    ;
1069:  Weave End ;
1070:   ;
1071:   ;
1072:L P[271] 1000mm/sec CNT25    ;
1073:   ;
1074:L P[272] 500mm/sec CNT25    ;
1075:   ;
1076:  !FR50M1450 ;
1077:  IF R[15]=1451,CALL TECH_HOLD ;
1078:   ;
1079:   ;
1080:L P[323] 1000mm/sec FINE
    :  Arc Start[6]    ;
1081:  Weave Sine[6] ;
1082:  Track TAST[6] ;
1083:L P[324] WELD_SPEED FINE
    :  Arc End[6]    ;
1084:  Weave End ;
1085:  Track End ;
1086:   ;
1087:   ;
1088:L P[275] 1000mm/sec CNT25    ;
1089:   ;
1090:L P[276] 1300mm/sec CNT100    ;
1091:   ;
1092:J P[761] 60% CNT25    ;
1093:   ;
1094:  !********POSITIONER MOVE******** ;
1095:J P[277] 75% CNT25    ;
1096:   ;
1097:L P[278] 1000mm/sec CNT40    ;
1098:   ;
1099:   ;
1100:  !FR50M1460 ;
1101:  IF R[15]=1461,CALL TECH_HOLD ;
1102:   ;
1103:   ;
1104:   ;
1105:L P[325] 1000mm/sec FINE
    :  Arc Start[6]    ;
1106:  Weave Sine[6] ;
1107:  Track TAST[6] ;
1108:L P[326] WELD_SPEED CNT100    ;
1109:C P[327]    
    :  P[330] WELD_SPEED CNT100    ;
1110:L P[331] WELD_SPEED CNT100    ;
1111:C P[332]    
    :  P[333] WELD_SPEED CNT100    ;
1112:L P[339] WELD_SPEED CNT100    ;
1113:C P[340]    
    :  P[341] WELD_SPEED CNT100    ;
1114:L P[342] WELD_SPEED FINE
    :  Arc End[6]    ;
1115:  Weave End ;
1116:  Track End ;
1117:   ;
1118:   ;
1119:L P[290] 1000mm/sec CNT100    ;
1120:   ;
1121:J P[777] 50% CNT50    ;
1122:   ;
1123:J P[291] 50% CNT50    ;
1124:   ;
1125:L P[292] 1000mm/sec CNT25    ;
1126:   ;
1127:   ;
1128:  !FR50M1470 ;
1129:  IF R[15]=1471,CALL TECH_HOLD ;
1130:   ;
1131:   ;
1132:   ;
1133:L P[356] 1000mm/sec FINE
    :  Arc Start[6]    ;
1134:  Weave Sine[6] ;
1135:  Track TAST[6] ;
1136:L P[359] WELD_SPEED FINE
    :  Arc End[6]    ;
1137:  Weave End ;
1138:  Track End ;
1139:   ;
1140:   ;
1141:L P[691] 1000mm/sec CNT25    ;
1142:   ;
1143:L P[295] 1000mm/sec CNT100    ;
1144:   ;
1145:J P[296] 100% CNT25    ;
1146:   ;
1147:L P[297] 1000mm/sec CNT25    ;
1148:   ;
1149:   ;
1150:  !FR50M1480 ;
1151:  IF R[15]=1481,CALL TECH_HOLD ;
1152:   ;
1153:   ;
1154:   ;
1155:L P[360] 1000mm/sec FINE
    :  Arc Start[6]    ;
1156:  Weave Sine[6] ;
1157:  Track TAST[6] ;
1158:L P[368] WELD_SPEED FINE
    :  Arc End[6]    ;
1159:  Weave End ;
1160:  Track End ;
1161:   ;
1162:   ;
1163:L P[300] 1000mm/sec CNT25    ;
1164:   ;
1165:L P[692] 1000mm/sec CNT25    ;
1166:   ;
1167:   ;
1168:  !FR50M1490 ;
1169:  IF R[15]=1491,CALL TECH_HOLD ;
1170:   ;
1171:   ;
1172:   ;
1173:L P[369] 1000mm/sec FINE
    :  Arc Start[6]    ;
1174:  Weave Sine[6] ;
1175:  Track TAST[6] ;
1176:L P[370] WELD_SPEED CNT100    ;
1177:L P[375] WELD_SPEED FINE
    :  Arc End[6]    ;
1178:  Weave End ;
1179:  Track End ;
1180:   ;
1181:   ;
1182:L P[303] 1000mm/sec CNT25    ;
1183:   ;
1184:L P[304] 1000mm/sec CNT100    ;
1185:   ;
1186:J P[305] 50% CNT25    ;
1187:   ;
1188:  !********POSITIONER MOVE******** ;
1189:J P[306] 50% CNT25    ;
1190:   ;
1191:J P[307] 60% CNT25    ;
1192:   ;
1193:  CALL ARC_DISABLE_RH_LS(0) ;
1194:   ;
1195:   ;
1196:  !FR50M1500 ;
1197:  IF R[15]=1501,CALL TECH_HOLD ;
1198:   ;
1199:   ;
1200:L P[308] 1000mm/sec CNT30    ;
1201:   ;
1202:   ;
1203:L P[376] 1000mm/sec FINE
    :  Arc Start[8]    ;
1204:  Weave Sine[8] ;
1205:L P[382] WELD_SPEED CNT100    ;
1206:C P[383]    
    :  P[384] WELD_SPEED CNT100    ;
1207:L P[385] WELD_SPEED CNT100    ;
1208:L P[386] WELD_SPEED CNT100    ;
1209:L P[387] WELD_SPEED CNT100    ;
1210:L P[388] WELD_SPEED FINE
    :  Arc End[8]    ;
1211:  Weave End ;
1212:   ;
1213:   ;
1214:  CALL ARC_DISABLE_RH_LS(1) ;
1215:   ;
1216:L P[317] 1000mm/sec CNT40    ;
1217:   ;
1218:J P[318] 45% CNT95    ;
1219:   ;
1220:J P[631] 50% CNT25    ;
1221:   ;
1222:L P[632] 3000mm/sec CNT25    ;
1223:   ;
1224:  !CELL ID: C ... ;
1225:   ;
1226:L P[363] 1000mm/sec CNT100    ;
1227:   ;
1228:L P[93] 800mm/sec FINE
    :  Arc Start[1]    ;
1229:  WAIT    .20(sec) ;
1230:L P[93] WELD_SPEED FINE
    :  Arc End[1]    ;
1231:   ;
1232:L P[96] 800mm/sec FINE
    :  Arc Start[1]    ;
1233:  WAIT    .20(sec) ;
1234:L P[96] WELD_SPEED FINE
    :  Arc End[1]    ;
1235:   ;
1236:L P[98] 800mm/sec FINE
    :  Arc Start[1]    ;
1237:  WAIT    .20(sec) ;
1238:L P[98] WELD_SPEED FINE
    :  Arc End[1]    ;
1239:   ;
1240:L P[634] 1000mm/sec CNT100    ;
1241:   ;
1242:L P[635] 1000mm/sec CNT25    ;
1243:   ;
1244:J P[636] 50% CNT100    ;
1245:   ;
1246:J P[425] 50% CNT70    ;
1247:   ;
1248:  !HOME ;
1249:J P[762] 100% CNT40    ;
1250:   ;
1251:  !********POSITIONER MOVE******** ;
1252:J P[319] 85% CNT30    ;
1253:   ;
1254:J P[320] 50% CNT25    ;
1255:   ;
1256:L P[321] 1000mm/sec CNT60    ;
1257:   ;
1258:   ;
1259:  !FR50M1510 ;
1260:  IF R[15]=1511,CALL TECH_HOLD ;
1261:   ;
1262:   ;
1263:   ;
1264:L P[389] 1000mm/sec FINE
    :  Arc Start[6]    ;
1265:  Weave Sine[6] ;
1266:  Track TAST[6] ;
1267:L P[392] WELD_SPEED CNT100    ;
1268:L P[393] WELD_SPEED CNT100    ;
1269:L P[394] WELD_SPEED CNT100    ;
1270:L P[395] WELD_SPEED CNT100    ;
1271:L P[396] WELD_SPEED CNT100    ;
1272:L P[397] WELD_SPEED CNT100    ;
1273:L P[398] WELD_SPEED FINE
    :  Arc End[6]    ;
1274:  Weave End ;
1275:  Track End ;
1276:   ;
1277:   ;
1278:L P[328] 1000mm/sec CNT90    ;
1279:   ;
1280:L P[329] 1000mm/sec CNT30    ;
1281:   ;
1282:   ;
1283:  !FR50M1520 ;
1284:  IF R[15]=1521,CALL TECH_HOLD ;
1285:   ;
1286:   ;
1287:   ;
1288:L P[403] 1000mm/sec FINE
    :  Arc Start[6]    ;
1289:  Weave Sine[6] ;
1290:  Track TAST[6] ;
1291:L P[404] WELD_SPEED CNT100    ;
1292:L P[405] WELD_SPEED CNT100    ;
1293:L P[406] WELD_SPEED FINE
    :  Arc End[6]    ;
1294:  Weave End ;
1295:  Track End ;
1296:   ;
1297:   ;
1298:L P[334] 1000mm/sec CNT50    ;
1299:   ;
1300:L P[335] 1400mm/sec CNT90    ;
1301:   ;
1302:J P[763] 50% CNT60    ;
1303:   ;
1304:  !********POSITIONER MOVE******** ;
1305:J P[336] 85% CNT40    ;
1306:   ;
1307:J P[337] 50% CNT25    ;
1308:   ;
1309:L P[338] 1000mm/sec CNT25    ;
1310:   ;
1311:   ;
1312:  !FR50M1530 ;
1313:  IF R[15]=1531,CALL TECH_HOLD ;
1314:   ;
1315:   ;
1316:   ;
1317:L P[407] 1000mm/sec FINE
    :  Arc Start[6]    ;
1318:  Weave Sine[6] ;
1319:  Track TAST[6] ;
1320:L P[408] WELD_SPEED CNT100    ;
1321:L P[409] WELD_SPEED CNT100    ;
1322:L P[410] WELD_SPEED CNT100    ;
1323:L P[411] WELD_SPEED CNT100    ;
1324:L P[412] WELD_SPEED CNT100    ;
1325:L P[415] WELD_SPEED CNT100    ;
1326:L P[416] WELD_SPEED FINE
    :  Arc End[6]    ;
1327:  Weave End ;
1328:  Track End ;
1329:   ;
1330:   ;
1331:L P[344] 1000mm/sec CNT60    ;
1332:   ;
1333:L P[345] 1000mm/sec CNT80    ;
1334:   ;
1335:   ;
1336:  !FR50M1540 ;
1337:  IF R[15]=1541,CALL TECH_HOLD ;
1338:   ;
1339:   ;
1340:   ;
1341:L P[417] 1000mm/sec FINE
    :  Arc Start[6]    ;
1342:  Weave Sine[6] ;
1343:  Track TAST[6] ;
1344:L P[418] WELD_SPEED CNT100    ;
1345:L P[419] WELD_SPEED CNT100    ;
1346:L P[420] WELD_SPEED FINE
    :  Arc End[6]    ;
1347:  Weave End ;
1348:  Track End ;
1349:   ;
1350:   ;
1351:L P[350] 1000mm/sec CNT40    ;
1352:   ;
1353:L P[351] 1000mm/sec CNT25    ;
1354:   ;
1355:  !HOME ;
1356:J P[764] 100% CNT50    ;
1357:   ;
1358:  !********POSITIONER MOVE******** ;
1359:J P[352] 85% CNT70    ;
1360:   ;
1361:  CALL HOME    ;
1362:  CALL T_CLEAN    ;
1363:   ;
1364:J P[353] 50% CNT35    ;
1365:   ;
1366:L P[354] 1000mm/sec CNT40    ;
1367:   ;
1368:  !FR50M1550 ;
1369:  IF R[15]=1551,CALL TECH_HOLD ;
1370:   ;
1371:   ;
1372:   ;
1373:L P[427] 1000mm/sec FINE
    :  Arc Start[6]    ;
1374:  Weave Sine[6] ;
1375:  Track TAST[6] ;
1376:L P[428] WELD_SPEED FINE
    :  Arc End[6]    ;
1377:  Weave End ;
1378:  Track End ;
1379:   ;
1380:   ;
1381:L P[357] 1000mm/sec CNT25    ;
1382:   ;
1383:J P[358] 50% CNT25    ;
1384:   ;
1385:   ;
1386:  !FR50M1560 ;
1387:  IF R[15]=1561,CALL TECH_HOLD ;
1388:   ;
1389:   ;
1390:   ;
1391:L P[433] 1000mm/sec FINE
    :  Arc Start[6]    ;
1392:  Weave Sine[6] ;
1393:  Track TAST[6] ;
1394:L P[434] WELD_SPEED FINE
    :  Arc End[6]    ;
1395:  Weave End ;
1396:  Track End ;
1397:   ;
1398:   ;
1399:L P[361] 1000mm/sec CNT25    ;
1400:   ;
1401:L P[362] 960mm/sec CNT100    ;
1402:   ;
1403:L P[364] 1500mm/sec CNT25    ;
1404:   ;
1405:  !********POSITIONER MOVE******** ;
1406:J P[365] 85% CNT20    ;
1407:   ;
1408:L P[366] 1000mm/sec CNT25    ;
1409:   ;
1410:L P[367] 1000mm/sec CNT35    ;
1411:   ;
1412:L P[699] 1000mm/sec CNT25    ;
1413:   ;
1414:   ;
1415:  !FR50M1570 ;
1416:  IF R[15]=1571,CALL TECH_HOLD ;
1417:   ;
1418:   ;
1419:   ;
1420:L P[441] 1000mm/sec FINE
    :  Arc Start[6]    ;
1421:  Weave Sine[6] ;
1422:  Track TAST[6] ;
1423:L P[442] WELD_SPEED CNT100    ;
1424:L P[445] WELD_SPEED FINE
    :  Arc End[6]    ;
1425:  Weave End ;
1426:  Track End ;
1427:   ;
1428:   ;
1429:L P[371] 1000mm/sec CNT25    ;
1430:   ;
1431:L P[372] 1000mm/sec CNT100    ;
1432:   ;
1433:L P[373] 1000mm/sec CNT100    ;
1434:   ;
1435:L P[374] 1000mm/sec CNT100    ;
1436:   ;
1437:   ;
1438:  !FR50M1580 ;
1439:  IF R[15]=1581,CALL TECH_HOLD ;
1440:   ;
1441:   ;
1442:   ;
1443:L P[446] 1000mm/sec FINE
    :  Arc Start[6]    ;
1444:  Weave Sine[6] ;
1445:  Track TAST[6] ;
1446:L P[450] WELD_SPEED CNT100    ;
1447:L P[451] WELD_SPEED FINE
    :  Arc End[6]    ;
1448:  Weave End ;
1449:  Track End ;
1450:   ;
1451:   ;
1452:L P[377] 1000mm/sec CNT25    ;
1453:   ;
1454:L P[378] 1400mm/sec CNT100    ;
1455:   ;
1456:J P[766] 50% CNT35    ;
1457:   ;
1458:  !********POSITIONER MOVE******** ;
1459:J P[379] 90% CNT30    ;
1460:   ;
1461:L P[380] 1000mm/sec CNT30    ;
1462:   ;
1463:L P[381] 1000mm/sec CNT60    ;
1464:   ;
1465:   ;
1466:  !FR50M1590 ;
1467:  IF R[15]=1591,CALL TECH_HOLD ;
1468:   ;
1469:   ;
1470:   ;
1471:L P[452] 1000mm/sec FINE
    :  Arc Start[6]    ;
1472:  Weave Sine[6] ;
1473:  Track TAST[6] ;
1474:L P[453] WELD_SPEED CNT100    ;
1475:C P[454]    
    :  P[455] WELD_SPEED CNT100    ;
1476:L P[456] WELD_SPEED CNT100    ;
1477:L P[457] WELD_SPEED CNT100    ;
1478:L P[458] WELD_SPEED CNT100    ;
1479:L P[459] WELD_SPEED FINE
    :  Arc End[6]    ;
1480:  Weave End ;
1481:  Track End ;
1482:   ;
1483:   ;
1484:L P[390] 1000mm/sec CNT25    ;
1485:   ;
1486:J P[391] 50% CNT25    ;
1487:   ;
1488:  !FR50M1600 ;
1489:  IF R[15]=1601,CALL TECH_HOLD ;
1490:   ;
1491:L P[462] 1000mm/sec FINE
    :  Arc Start[6]    ;
1492:  Weave Sine[6] ;
1493:  Track TAST[6] ;
1494:L P[463] WELD_SPEED CNT100    ;
1495:C P[467]    
    :  P[468] WELD_SPEED CNT100    ;
1496:L P[471] WELD_SPEED CNT100    ;
1497:C P[472]    
    :  P[477] WELD_SPEED CNT100    ;
1498:L P[478] WELD_SPEED FINE
    :  Arc End[6]    ;
1499:  Weave End ;
1500:  Track End ;
1501:   ;
1502:   ;
1503:L P[399] 1000mm/sec CNT35    ;
1504:   ;
1505:  !********POSITIONER MOVE******** ;
1506:J P[400] 85% CNT30    ;
1507:   ;
1508:J P[401] 50% CNT35    ;
1509:   ;
1510:L P[402] 1000mm/sec CNT40    ;
1511:   ;
1512:L P[702] 1000mm/sec CNT30    ;
1513:   ;
1514:   ;
1515:  !FR50M1610 ;
1516:  IF R[15]=1611,CALL TECH_HOLD ;
1517:   ;
1518:   ;
1519:   ;
1520:L P[95] 1000mm/sec FINE
    :  Arc Start[6]    ;
1521:  Weave Sine[6] ;
1522:  Track TAST[6] ;
1523:L P[97] WELD_SPEED CNT100    ;
1524:C P[100]    
    :  P[101] WELD_SPEED CNT100    ;
1525:L P[104] WELD_SPEED CNT100    ;
1526:L P[105] WELD_SPEED FINE
    :  Arc End[6]    ;
1527:  Track End ;
1528:  Weave End ;
1529:   ;
1530:L P[704] 800mm/sec CNT25    ;
1531:   ;
1532:L P[705] 800mm/sec CNT10    ;
1533:   ;
1534:L P[706] 800mm/sec CNT10    ;
1535:   ;
1536:   ;
1537:  !FR50M1610 continued ;
1538:  IF R[15]=1611,CALL TECH_HOLD ;
1539:   ;
1540:   ;
1541:L P[106] 800mm/sec FINE
    :  Arc Start[6]    ;
1542:  Weave Sine[6] ;
1543:  Track TAST[6] ;
1544:L P[107] WELD_SPEED CNT100    ;
1545:L P[112] WELD_SPEED CNT100    ;
1546:C P[113]    
    :  P[114] WELD_SPEED CNT100    ;
1547:C P[115]    
    :  P[119] WELD_SPEED CNT100    ;
1548:L P[120] WELD_SPEED FINE
    :  Arc End[6]    ;
1549:  Weave End ;
1550:  Track End ;
1551:   ;
1552:L P[413] 1000mm/sec CNT100    ;
1553:   ;
1554:L P[414] 1000mm/sec CNT100    ;
1555:   ;
1556:   ;
1557:  !FR50M1611 CONTINUED ;
1558:  IF R[15]=1612,CALL TECH_HOLD ;
1559:   ;
1560:   ;
1561:   ;
1562:L P[514] 1000mm/sec FINE
    :  Arc Start[6]    ;
1563:  Weave Sine[6] ;
1564:  Track TAST[6] ;
1565:L P[515] WELD_SPEED CNT100    ;
1566:C P[517]    
    :  P[518] WELD_SPEED CNT100    ;
1567:C P[520]    
    :  P[521] WELD_SPEED FINE
    :  Arc End[6]    ;
1568:  Weave End ;
1569:  Track End ;
1570:   ;
1571:   ;
1572:L P[421] 1000mm/sec CNT80    ;
1573:   ;
1574:L P[422] 1400mm/sec CNT50    ;
1575:   ;
1576:J P[668] 50% CNT30    ;
1577:   ;
1578:  !********POSITIONER MOVE******** ;
1579:J P[424] 85% CNT30    ;
1580:   ;
1581:J P[669] 50% CNT70    ;
1582:   ;
1583:J P[426] 40% CNT25    ;
1584:   ;
1585:   ;
1586:  !FR50M1630 ;
1587:  IF R[15]=1631,CALL TECH_HOLD ;
1588:   ;
1589:   ;
1590:   ;
1591:L P[522] 1000mm/sec FINE
    :  Arc Start[6]    ;
1592:  Weave Sine[6] ;
1593:  Track TAST[6] ;
1594:L P[526] WELD_SPEED FINE
    :  Arc End[6]    ;
1595:  Weave End ;
1596:  Track End ;
1597:   ;
1598:   ;
1599:L P[429] 1000mm/sec CNT25    ;
1600:   ;
1601:J P[430] 50% CNT25    ;
1602:   ;
1603:L P[431] 1000mm/sec CNT25    ;
1604:   ;
1605:L P[432] 1000mm/sec CNT25    ;
1606:   ;
1607:   ;
1608:  !FR50M1640 ;
1609:  IF R[15]=1641,CALL TECH_HOLD ;
1610:   ;
1611:   ;
1612:   ;
1613:L P[527] 500mm/sec FINE
    :  Arc Start[6]    ;
1614:  Weave Sine[6] ;
1615:  Track TAST[6] ;
1616:L P[532] WELD_SPEED FINE
    :  Arc End[6]    ;
1617:  Weave End ;
1618:  Track End ;
1619:   ;
1620:   ;
1621:L P[435] 1000mm/sec CNT25    ;
1622:   ;
1623:L P[436] 1000mm/sec CNT25    ;
1624:   ;
1625:L P[437] 1000mm/sec CNT30    ;
1626:   ;
1627:  !********POSITIONER MOVE******** ;
1628:J P[438] 70% CNT30    ;
1629:   ;
1630:L P[712] 1000mm/sec CNT30    ;
1631:   ;
1632:L P[439] 1000mm/sec CNT25    ;
1633:   ;
1634:L P[440] 1000mm/sec CNT25    ;
1635:   ;
1636:   ;
1637:  !FR50M1650 ;
1638:  IF R[15]=1651,CALL TECH_HOLD ;
1639:   ;
1640:   ;
1641:   ;
1642:L P[533] 1000mm/sec FINE
    :  Arc Start[6]    ;
1643:  Weave Sine[6] ;
1644:  Track TAST[6] ;
1645:L P[534] WELD_SPEED CNT100    ;
1646:L P[535] WELD_SPEED CNT100    ;
1647:L P[536] WELD_SPEED FINE
    :  Arc End[6]    ;
1648:  Weave End ;
1649:  Track End ;
1650:   ;
1651:   ;
1652:L P[443] 300mm/sec CNT25    ;
1653:   ;
1654:L P[713] 300mm/sec CNT5    ;
1655:   ;
1656:L P[714] 800mm/sec CNT5    ;
1657:   ;
1658:  !********POSITIONER MOVE******** ;
1659:J P[444] 80% CNT10    ;
1660:   ;
1661:   ;
1662:  !FR50M1660 ;
1663:  IF R[15]=1661,CALL TECH_HOLD ;
1664:   ;
1665:   ;
1666:   ;
1667:L P[537] 100mm/sec FINE
    :  Arc Start[6]    ;
1668:  Weave Sine[6] ;
1669:  Track TAST[6] ;
1670:L P[540] WELD_SPEED CNT100    ;
1671:L P[541] WELD_SPEED FINE
    :  Arc End[6]    ;
1672:  Weave End ;
1673:  Track End ;
1674:   ;
1675:   ;
1676:L P[447] 300mm/sec CNT25    ;
1677:   ;
1678:L P[448] 500mm/sec CNT30    ;
1679:   ;
1680:L P[449] 1000mm/sec CNT40    ;
1681:   ;
1682:   ;
1683:  !FR50M1670 ;
1684:  IF R[15]=1671,CALL TECH_HOLD ;
1685:   ;
1686:   ;
1687:   ;
1688:L P[542] 1000mm/sec FINE
    :  Arc Start[6]    ;
1689:  Weave Sine[6] ;
1690:  Track TAST[6] ;
1691:L P[543] WELD_SPEED CNT100    ;
1692:C P[544]    
    :  P[545] WELD_SPEED CNT100    ;
1693:L P[546] WELD_SPEED CNT100    ;
1694:C P[550]    
    :  P[551] 16.0inch/min CNT100    ;
1695:L P[552] WELD_SPEED CNT100    ;
1696:C P[555]    
    :  P[556] WELD_SPEED FINE
    :  Arc End[6]    ;
1697:  Weave End ;
1698:  Track End ;
1699:   ;
1700:   ;
1701:L P[460] 1000mm/sec CNT30    ;
1702:   ;
1703:L P[461] 1000mm/sec CNT40    ;
1704:   ;
1705:   ;
1706:  !FR50M1680 ;
1707:  IF R[15]=1681,CALL TECH_HOLD ;
1708:   ;
1709:   ;
1710:   ;
1711:L P[558] 1000mm/sec FINE
    :  Arc Start[6]    ;
1712:  Weave Sine[6] ;
1713:  Track TAST[6] ;
1714:L P[559] WELD_SPEED CNT100    ;
1715:L P[561] WELD_SPEED FINE
    :  Arc End[6]    ;
1716:  Weave End ;
1717:  Track End ;
1718:   ;
1719:   ;
1720:L P[464] 1000mm/sec CNT25    ;
1721:   ;
1722:  !********POSITIONER MOVE******** ;
1723:J P[465] 75% CNT10    ;
1724:   ;
1725:L P[466] 1000mm/sec CNT25    ;
1726:   ;
1727:   ;
1728:  !FR50M1690 ;
1729:  IF R[15]=1691,CALL TECH_HOLD ;
1730:   ;
1731:   ;
1732:   ;
1733:L P[562] 1000mm/sec FINE
    :  Arc Start[8]    ;
1734:  Weave Sine[8] ;
1735:L P[564] WELD_SPEED FINE
    :  Arc End[8]    ;
1736:  Weave End ;
1737:   ;
1738:   ;
1739:L P[469] 1000mm/sec CNT40    ;
1740:   ;
1741:L P[470] 1000mm/sec CNT40    ;
1742:   ;
1743:   ;
1744:  !FR50M11700 ;
1745:  IF R[15]=1171,CALL TECH_HOLD ;
1746:   ;
1747:   ;
1748:L P[123] 1000mm/sec FINE
    :  Arc Start[6]    ;
1749:  Weave Sine[6] ;
1750:  Track TAST[6] ;
1751:L P[343] WELD_SPEED FINE
    :  Arc End[6]    ;
1752:  Weave End ;
1753:  Track End ;
1754:   ;
1755:L P[473] 1000mm/sec CNT50    ;
1756:   ;
1757:L P[673] 1000mm/sec CNT70    ;
1758:   ;
1759:J P[474] 50% CNT25    ;
1760:   ;
1761:  !********POSITIONER MOVE******** ;
1762:J P[475] 85% CNT15    ;
1763:   ;
1764:L P[476] 1000mm/sec CNT25    ;
1765:   ;
1766:   ;
1767:  !FR50M1710 ;
1768:  IF R[15]=1711,CALL TECH_HOLD ;
1769:   ;
1770:   ;
1771:   ;
1772:L P[572] 1000mm/sec FINE
    :  Arc Start[6]    ;
1773:  Weave Sine[6] ;
1774:  Track TAST[6] ;
1775:L P[573] WELD_SPEED CNT100    ;
1776:L P[574] WELD_SPEED FINE
    :  Arc End[6]    ;
1777:  Weave End ;
1778:  Track End ;
1779:   ;
1780:   ;
1781:L P[479] 1000mm/sec CNT35    ;
1782:   ;
1783:   ;
1784:  !FR50M1720 ;
1785:  IF R[15]=1721,CALL TECH_HOLD ;
1786:   ;
1787:   ;
1788:L P[575] 1000mm/sec FINE
    :  Arc Start[6]    ;
1789:  Weave Sine[6] ;
1790:L P[577] WELD_SPEED CNT100    ;
1791:L P[578] WELD_SPEED CNT100    ;
1792:L P[579] WELD_SPEED FINE
    :  Arc End[6]    ;
1793:  Weave End ;
1794:   ;
1795:   ;
1796:L P[484] 1000mm/sec CNT35    ;
1797:   ;
1798:L P[485] 1000mm/sec CNT50    ;
1799:   ;
1800:   ;
1801:  !FR50M1730 ;
1802:  IF R[15]=1731,CALL TECH_HOLD ;
1803:   ;
1804:   ;
1805:   ;
1806:L P[580] 1000mm/sec FINE
    :  Arc Start[6]    ;
1807:  Weave Sine[6] ;
1808:  Track TAST[6] ;
1809:L P[581] WELD_SPEED FINE
    :  Arc End[6]    ;
1810:  Weave End ;
1811:  Track End ;
1812:   ;
1813:   ;
1814:L P[488] 1000mm/sec CNT25    ;
1815:   ;
1816:L P[489] 1000mm/sec CNT25    ;
1817:   ;
1818:   ;
1819:  !FR50M1740 ;
1820:  IF R[15]=1741,CALL TECH_HOLD ;
1821:   ;
1822:   ;
1823:   ;
1824:L P[582] 1000mm/sec FINE
    :  Arc Start[6]    ;
1825:  Weave Sine[6] ;
1826:  Track TAST[6] ;
1827:L P[583] WELD_SPEED CNT100    ;
1828:L P[584] WELD_SPEED FINE
    :  Arc End[6]    ;
1829:  Weave End ;
1830:  Track End ;
1831:   ;
1832:   ;
1833:L P[492] 1000mm/sec CNT25    ;
1834:   ;
1835:L P[493] 1000mm/sec CNT50    ;
1836:   ;
1837:L P[494] 1000mm/sec CNT25    ;
1838:   ;
1839:L P[495] 1500mm/sec CNT70    ;
1840:   ;
1841:J P[496] 50% CNT30    ;
1842:   ;
1843:   ;
1844:  !FR50M1750 ;
1845:  IF R[15]=1751,CALL TECH_HOLD ;
1846:   ;
1847:   ;
1848:L P[497] 1000mm/sec CNT60    ;
1849:   ;
1850:   ;
1851:L P[585] 1000mm/sec FINE
    :  Arc Start[6]    ;
1852:  Weave Sine[6] ;
1853:  Track TAST[6] ;
1854:L P[586] WELD_SPEED FINE
    :  Arc End[6]    ;
1855:  Weave End ;
1856:  Track End ;
1857:   ;
1858:   ;
1859:L P[500] 1000mm/sec CNT25    ;
1860:   ;
1861:   ;
1862:  !FR50M1760 ;
1863:  IF R[15]=1761,CALL TECH_HOLD ;
1864:   ;
1865:   ;
1866:J P[501] 50% CNT25    ;
1867:   ;
1868:   ;
1869:L P[587] 1000mm/sec FINE
    :  Arc Start[6]    ;
1870:  Weave Sine[6] ;
1871:  Track TAST[6] ;
1872:L P[588] WELD_SPEED FINE
    :  Arc End[6]    ;
1873:  Weave End ;
1874:  Track End ;
1875:   ;
1876:   ;
1877:L P[504] 1000mm/sec CNT30    ;
1878:   ;
1879:L P[505] 1500mm/sec CNT80    ;
1880:   ;
1881:  !********POSITIONER MOVE******** ;
1882:J P[506] 85% CNT50    ;
1883:   ;
1884:J P[507] 50% CNT25    ;
1885:   ;
1886:L P[508] 1000mm/sec CNT25    ;
1887:   ;
1888:L P[509] 1000mm/sec CNT25    ;
1889:   ;
1890:   ;
1891:  !FR50M1770 ;
1892:  IF R[15]=1771,CALL TECH_HOLD ;
1893:   ;
1894:   ;
1895:   ;
1896:L P[590] 1000mm/sec FINE
    :  Arc Start[6]    ;
1897:  Weave Sine[6] ;
1898:  Track TAST[6] ;
1899:L P[591] WELD_SPEED FINE
    :  Arc End[6]    ;
1900:  Weave End ;
1901:  Track End ;
1902:   ;
1903:   ;
1904:L P[512] 1000mm/sec CNT25    ;
1905:   ;
1906:  !********POSITIONER MOVE******** ;
1907:J P[513] 75% CNT20    ;
1908:   ;
1909:   ;
1910:  !FR50M1780 ;
1911:  IF R[15]=1781,CALL TECH_HOLD ;
1912:   ;
1913:   ;
1914:   ;
1915:L P[592] 1000mm/sec FINE
    :  Arc Start[6]    ;
1916:  Weave Sine[6] ;
1917:  Track TAST[6] ;
1918:L P[593] WELD_SPEED FINE
    :  Arc End[6]    ;
1919:  Weave End ;
1920:  Track End ;
1921:   ;
1922:   ;
1923:L P[516] 500mm/sec CNT25    ;
1924:   ;
1925:   ;
1926:  !FR50M1790 ;
1927:  IF R[15]=1791,CALL TECH_HOLD ;
1928:   ;
1929:   ;
1930:   ;
1931:L P[594] 1000mm/sec FINE
    :  Arc Start[6]    ;
1932:  Weave Sine[6] ;
1933:  Track TAST[6] ;
1934:L P[595] WELD_SPEED CNT100    ;
1935:L P[596] WELD_SPEED FINE
    :  Arc End[6]    ;
1936:  Weave End ;
1937:  Track End ;
1938:   ;
1939:   ;
1940:L P[519] 1000mm/sec CNT25    ;
1941:   ;
1942:   ;
1943:  !FR50M1800 ;
1944:  IF R[15]=1801,CALL TECH_HOLD ;
1945:   ;
1946:   ;
1947:   ;
1948:L P[597] 1000mm/sec FINE
    :  Arc Start[6]    ;
1949:  Weave Sine[6] ;
1950:  Track TAST[6] ;
1951:L P[598] WELD_SPEED CNT100    ;
1952:L P[605] WELD_SPEED FINE
    :  Arc End[6]    ;
1953:  Weave End ;
1954:  Track End ;
1955:   ;
1956:   ;
1957:L P[523] 1000mm/sec CNT40    ;
1958:   ;
1959:J P[524] 50% CNT25    ;
1960:   ;
1961:L P[525] 1000mm/sec CNT25    ;
1962:   ;
1963:   ;
1964:  !FR50M1810 ;
1965:  IF R[15]=1811,CALL TECH_HOLD ;
1966:   ;
1967:L P[606] 1000mm/sec FINE
    :  Arc Start[6]    ;
1968:  Weave Sine[6] ;
1969:  Track TAST[6] ;
1970:L P[607] WELD_SPEED CNT100    ;
1971:L P[608] WELD_SPEED FINE
    :  Arc End[6]    ;
1972:  Weave End ;
1973:  Track End ;
1974:   ;
1975:   ;
1976:L P[528] 1000mm/sec CNT25    ;
1977:   ;
1978:J P[529] 60% CNT35    ;
1979:   ;
1980:L P[530] 1500mm/sec CNT60    ;
1981:   ;
1982:L P[531] 1500mm/sec CNT25    ;
1983:   ;
1984:   ;
1985:  !FR50M1820 ;
1986:  IF R[15]=1821,CALL TECH_HOLD ;
1987:   ;
1988:   ;
1989:   ;
1990:L P[609] 1000mm/sec FINE
    :  Arc Start[6]    ;
1991:  Weave Sine[6] ;
1992:  Track TAST[6] ;
1993:L P[610] WELD_SPEED CNT100    ;
1994:C P[611]    
    :  P[612] WELD_SPEED CNT100    ;
1995:L P[618] WELD_SPEED CNT100    ;
1996:L P[619] WELD_SPEED FINE
    :  Arc End[6]    ;
1997:  Weave End ;
1998:  Track End ;
1999:   ;
2000:   ;
2001:L P[538] 1000mm/sec CNT30    ;
2002:   ;
2003:J P[539] 50% CNT25    ;
2004:   ;
2005:   ;
2006:  !FR50M1830 ;
2007:  IF R[15]=1831,CALL TECH_HOLD ;
2008:   ;
2009:   ;
2010:   ;
2011:L P[622] 1000mm/sec FINE
    :  Arc Start[6]    ;
2012:  Weave Sine[6] ;
2013:  Track TAST[6] ;
2014:L P[623] WELD_SPEED CNT100    ;
2015:C P[626]    
    :  P[627] WELD_SPEED CNT100    ;
2016:L P[629] WELD_SPEED CNT100    ;
2017:C P[630]    
    :  P[633] WELD_SPEED CNT100    ;
2018:L P[637] WELD_SPEED FINE
    :  Arc End[6]    ;
2019:  Weave End ;
2020:  Track End ;
2021:   ;
2022:   ;
2023:L P[722] 1000mm/sec CNT60    ;
2024:   ;
2025:L P[547] 1000mm/sec CNT40    ;
2026:   ;
2027:J P[670] 100% CNT50    ;
2028:   ;
2029:J P[548] 60% CNT40    ;
2030:   ;
2031:L P[549] 1000mm/sec CNT30    ;
2032:   ;
2033:L P[723] 1000mm/sec CNT40    ;
2034:   ;
2035:   ;
2036:  !FR50M1840 ;
2037:  IF R[15]=1841,CALL TECH_HOLD ;
2038:   ;
2039:   ;
2040:   ;
2041:L P[638] 1000mm/sec FINE
    :  Arc Start[6]    ;
2042:  Weave Sine[6] ;
2043:L P[639] WELD_SPEED CNT100    ;
2044:L P[640] WELD_SPEED CNT100    ;
2045:L P[641] WELD_SPEED FINE
    :  Arc End[6]    ;
2046:  Weave End ;
2047:   ;
2048:   ;
2049:L P[553] 1000mm/sec CNT25    ;
2050:   ;
2051:L P[554] 1000mm/sec CNT50    ;
2052:   ;
2053:   ;
2054:  !FR50M1850 ;
2055:  IF R[15]=1851,CALL TECH_HOLD ;
2056:   ;
2057:   ;
2058:   ;
2059:L P[642] 1000mm/sec FINE
    :  Arc Start[6]    ;
2060:  Weave Sine[6] ;
2061:  Track TAST[6] ;
2062:L P[647] WELD_SPEED FINE
    :  Arc End[6]    ;
2063:  Weave End ;
2064:  Track End ;
2065:   ;
2066:   ;
2067:L P[557] 1000mm/sec CNT25    ;
2068:   ;
2069:   ;
2070:  !FR50M1860 ;
2071:  IF R[15]=1861,CALL TECH_HOLD ;
2072:   ;
2073:   ;
2074:L P[648] 1000mm/sec FINE
    :  Arc Start[6]    ;
2075:  Weave Sine[6] ;
2076:  Track TAST[6] ;
2077:L P[649] WELD_SPEED CNT100    ;
2078:L P[650] WELD_SPEED FINE
    :  Arc End[6]    ;
2079:  Weave End ;
2080:  Track End ;
2081:   ;
2082:   ;
2083:L P[560] 1000mm/sec CNT25    ;
2084:   ;
2085:   ;
2086:  !FR50M1870 ;
2087:  IF R[15]=1871,CALL TECH_HOLD ;
2088:   ;
2089:   ;
2090:   ;
2091:L P[658] 1000mm/sec FINE
    :  Arc Start[6]    ;
2092:  Weave Sine[6] ;
2093:  Track TAST[6] ;
2094:L P[659] WELD_SPEED CNT100    ;
2095:L P[660] WELD_SPEED FINE
    :  Arc End[6]    ;
2096:  Weave End ;
2097:  Track End ;
2098:   ;
2099:   ;
2100:J P[563] 75% CNT10    ;
2101:   ;
2102:J P[566] 75% CNT10    ;
2103:   ;
2104:   ;
2105:  !FR50M1880 ;
2106:  IF R[15]=1881,CALL TECH_HOLD ;
2107:   ;
2108:   ;
2109:   ;
2110:L P[661] 1000mm/sec FINE
    :  Arc Start[6]    ;
2111:  Weave Sine[6] ;
2112:  Track TAST[6] ;
2113:L P[674] WELD_SPEED FINE
    :  Arc End[6]    ;
2114:  Weave End ;
2115:  Track End ;
2116:   ;
2117:   ;
2118:L P[569] 1000mm/sec CNT25    ;
2119:   ;
2120:  !********POSITIONER MOVE******** ;
2121:J P[570] 75% CNT15    ;
2122:   ;
2123:   ;
2124:  !FR50M1890 ;
2125:  IF R[15]=1891,CALL TECH_HOLD ;
2126:   ;
2127:   ;
2128:L P[571] 1000mm/sec CNT35    ;
2129:   ;
2130:L P[346] 1000mm/sec FINE
    :  Arc Start[6]    ;
2131:  Weave Sine[6] ;
2132:  Track TAST[6] ;
2133:L P[347] WELD_SPEED CNT100    ;
2134:C P[348]    
    :  P[349] WELD_SPEED CNT100    ;
2135:L P[355] WELD_SPEED CNT100    ;
2136:L P[490] WELD_SPEED CNT100    ;
2137:L P[491] WELD_SPEED FINE
    :  Arc End[6]    ;
2138:  Track End ;
2139:  Weave End ;
2140:   ;
2141:   ;
2142:L P[730] 800mm/sec CNT30    ;
2143:   ;
2144:L P[731] 800mm/sec CNT25    ;
2145:   ;
2146:L P[732] 800mm/sec CNT30    ;
2147:   ;
2148:   ;
2149:  !FR50M1890 continued ;
2150:  IF R[15]=1891,CALL TECH_HOLD ;
2151:   ;
2152:   ;
2153:L P[498] 800mm/sec FINE
    :  Arc Start[6]    ;
2154:  Weave Sine[6] ;
2155:  Track TAST[6] ;
2156:L P[499] WELD_SPEED CNT100    ;
2157:L P[502] WELD_SPEED CNT100    ;
2158:L P[503] WELD_SPEED CNT100    ;
2159:C P[510]    
    :  P[511] WELD_SPEED CNT100    ;
2160:L P[567] WELD_SPEED CNT100    ;
2161:C P[568]    
    :  P[682] WELD_SPEED CNT100    ;
2162:C P[683]    
    :  P[684] WELD_SPEED CNT100    ;
2163:L P[686] WELD_SPEED FINE
    :  Arc End[6]    ;
2164:  Weave End ;
2165:  Track End ;
2166:   ;
2167:L P[589] 1000mm/sec CNT90    ;
2168:   ;
2169:   ;
2170:  !FR50M1891 ;
2171:  IF R[15]=1892,CALL TECH_HOLD ;
2172:   ;
2173:   ;
2174:   ;
2175:L P[698] 1000mm/sec FINE
    :  Arc Start[6]    ;
2176:  Weave Sine[6] ;
2177:  Track TAST[6] ;
2178:L P[700] WELD_SPEED CNT100    ;
2179:C P[701]    
    :  P[703] WELD_SPEED CNT100    ;
2180:L P[707] WELD_SPEED CNT100    ;
2181:C P[708]    
    :  P[709] WELD_SPEED CNT100    ;
2182:L P[710] WELD_SPEED CNT100    ;
2183:L P[711] WELD_SPEED FINE
    :  Arc End[6]    ;
2184:  Weave End ;
2185:  Track End ;
2186:   ;
2187:   ;
2188:L P[599] 1000mm/sec CNT25    ;
2189:   ;
2190:L P[600] 1000mm/sec CNT100    ;
2191:   ;
2192:L P[601] 1200mm/sec CNT25    ;
2193:   ;
2194:J P[671] 50% CNT40    ;
2195:   ;
2196:J P[602] 55% CNT25    ;
2197:   ;
2198:  !********POSITIONER MOVE******** ;
2199:J P[603] 85% CNT25    ;
2200:   ;
2201:   ;
2202:  !FR50M1900 ;
2203:  IF R[15]=1901,CALL TECH_HOLD ;
2204:   ;
2205:  CALL ARC_LH_DISABLE_LS(0) ;
2206:   ;
2207:L P[604] 1500mm/sec CNT40    ;
2208:   ;
2209:   ;
2210:L P[715] 1000mm/sec FINE
    :  Arc Start[8]    ;
2211:  Weave Sine[8] ;
2212:L P[716] WELD_SPEED CNT100    ;
2213:C P[717]    
    :  P[718] WELD_SPEED CNT100    ;
2214:L P[719] WELD_SPEED CNT100    ;
2215:L P[720] WELD_SPEED CNT100    ;
2216:L P[721] WELD_SPEED CNT100    ;
2217:L P[724] WELD_SPEED FINE
    :  Arc End[8]    ;
2218:  Weave End ;
2219:   ;
2220:   ;
2221:  CALL ARC_LH_DISABLE_LS(1) ;
2222:   ;
2223:L P[613] 1000mm/sec CNT25    ;
2224:   ;
2225:J P[614] 50% CNT50    ;
2226:   ;
2227:J P[672] 100% CNT65    ;
2228:   ;
2229:  !HOME ;
2230:J P[769] 100% CNT25    ;
2231:   ;
2232:  CALL HOME    ;
2233:  CALL T_CLEAN    ;
2234:   ;
2235:  !********POSITIONER MOVE******** ;
2236:J P[615] 85% CNT30    ;
2237:   ;
2238:J P[616] 55% CNT40    ;
2239:   ;
2240:L P[617] 1000mm/sec CNT25    ;
2241:   ;
2242:  CALL ARC_DISABLE_FRONT_BMPR_MED(0) ;
2243:   ;
2244:  //UALM[20] ;
2245:  //!REWORK REQUEST ;
2246:   ;
2247:   ;
2248:  !FR50M1910 ;
2249:  IF R[15]=1911,CALL TECH_HOLD ;
2250:   ;
2251:   ;
2252:   ;
2253:L P[725] 1000mm/sec FINE
    :  Arc Start[6]    ;
2254:  Weave Sine[6] ;
2255:  Track TAST[6] ;
2256:L P[726] WELD_SPEED FINE
    :  Arc End[6]    ;
2257:  Weave End ;
2258:  Track End ;
2259:   ;
2260:   ;
2261:L P[620] 1000mm/sec CNT100    ;
2262:   ;
2263:L P[621] 1000mm/sec CNT100    ;
2264:   ;
2265:   ;
2266:  !FR50M1920 ;
2267:  IF R[15]=1921,CALL TECH_HOLD ;
2268:   ;
2269:   ;
2270:   ;
2271:L P[727] 1000mm/sec FINE
    :  Arc Start[6]    ;
2272:  Weave Sine[6] ;
2273:  Track TAST[6] ;
2274:L P[728] WELD_SPEED FINE
    :  Arc End[6]    ;
2275:  Weave End ;
2276:  Track End ;
2277:   ;
2278:   ;
2279:L P[624] 1000mm/sec CNT100    ;
2280:   ;
2281:L P[625] 1000mm/sec CNT100    ;
2282:   ;
2283:   ;
2284:  !FR50M1930 ;
2285:  IF R[15]=1931,CALL TECH_HOLD ;
2286:   ;
2287:   ;
2288:   ;
2289:L P[729] 1000mm/sec FINE
    :  Arc Start[6]    ;
2290:  Weave Sine[6] ;
2291:  Track TAST[6] ;
2292:L P[733] WELD_SPEED FINE
    :  Arc End[6]    ;
2293:  Weave End ;
2294:  Track End ;
2295:   ;
2296:   ;
2297:  CALL ARC_DISABLE_FRONT_BMPR_MED(1) ;
2298:   ;
2299:   ;
2300:L P[628] 1000mm/sec CNT100    ;
2301:   ;
2302:J P[771] 70% CNT30    ;
2303:   ;
2304:  !********POSITIONER MOVE******** ;
2305:J P[644] 85% CNT30    ;
2306:   ;
2307:L P[645] 1000mm/sec CNT25    ;
2308:   ;
2309:  CALL ARC_LH_DISABLE_LS(0) ;
2310:   ;
2311:   ;
2312:  !FR50M1960 ;
2313:  IF R[15]=1961,CALL TECH_HOLD ;
2314:   ;
2315:L P[646] 300mm/sec CNT25    ;
2316:   ;
2317:L P[734] 1000mm/sec FINE
    :  Arc Start[6]    ;
2318:  Weave Sine[6] ;
2319:  Track TAST[6] ;
2320:L P[735] WELD_SPEED CNT100    ;
2321:L P[736] WELD_SPEED CNT100    ;
2322:C P[737]    
    :  P[738] WELD_SPEED FINE
    :  Arc End[6]    ;
2323:  Weave End ;
2324:  Track End ;
2325:   ;
2326:   ;
2327:L P[651] 1000mm/sec CNT25    ;
2328:   ;
2329:  CALL ARC_LH_DISABLE_LS(1) ;
2330:   ;
2331:L P[652] 1000mm/sec CNT100    ;
2332:   ;
2333:L P[653] 1000mm/sec CNT25    ;
2334:   ;
2335:J P[202] 50% CNT30    ;
2336:   ;
2337:  !********POSITIONER MOVE******** ;
2338:J P[91] 85% CNT40    ;
2339:   ;
2340:J P[423] 75% CNT40    ;
2341:   ;
2342:L P[576] 1000mm/sec CNT80    ;
2343:   ;
2344:  CALL ARC_DISABLE_RH_LS(0) ;
2345:   ;
2346:   ;
2347:  !FR50M1971 ;
2348:  IF R[15]=1972,CALL TECH_HOLD ;
2349:   ;
2350:   ;
2351:   ;
2352:L P[746] 800mm/sec FINE
    :  Arc Start[6]    ;
2353:  Weave Sine[6] ;
2354:  Track TAST[6] ;
2355:L P[747] WELD_SPEED CNT100    ;
2356:C P[751]    
    :  P[752] WELD_SPEED FINE
    :  Arc End[6]    ;
2357:  Track End ;
2358:  Weave End ;
2359:   ;
2360:   ;
2361:L P[654] 800mm/sec CNT5    ;
2362:   ;
2363:J P[664] 25% CNT40    ;
2364:   ;
2365:J P[665] 50% CNT25    ;
2366:   ;
2367:J P[666] 75% CNT40    ;
2368:   ;
2369:J P[667] 50% CNT50    ;
2370:   ;
2371:  !********POSITIONER MOVE******** ;
2372:J P[655] 85% CNT30    ;
2373:   ;
2374:J P[656] 55% CNT25    ;
2375:   ;
2376:   ;
2377:  !FR50M1970 ;
2378:  IF R[15]=1971,CALL TECH_HOLD ;
2379:   ;
2380:   ;
2381:L P[657] 1000mm/sec CNT25    ;
2382:   ;
2383:L P[565] 800mm/sec CNT100    ;
2384:   ;
2385:   ;
2386:L P[739] 1000mm/sec FINE
    :  Arc Start[6]    ;
2387:  Weave Sine[6] ;
2388:  Track TAST[6] ;
2389:L P[740] WELD_SPEED CNT100    ;
2390:L P[741] WELD_SPEED CNT100    ;
2391:C P[744]    
    :  P[745] WELD_SPEED FINE
    :  Arc End[6]    ;
2392:  Weave End ;
2393:  Track End ;
2394:   ;
2395:   ;
2396:  CALL ARC_DISABLE_RH_LS(1) ;
2397:   ;
2398:L P[662] 500mm/sec CNT25    ;
2399:   ;
2400:L P[663] 1000mm/sec CNT25    ;
2401:   ;
2402:J P[773] 70% CNT40    ;
2403:   ;
2404:  !******** POSITIONER MOVE ******* ;
2405:J P[783] 100% CNT40    ;
2406:   ;
2407:J P[742] 75% CNT35    ;
2408:   ;
2409:L P[743] 1000mm/sec CNT35    ;
2410:   ;
2411:  CALL ARC_LH_DISABLE_LS(0) ;
2412:   ;
2413:   ;
2414:  !FR50M1961 ;
2415:  IF R[15]=1962,CALL TECH_HOLD ;
2416:   ;
2417:   ;
2418:   ;
2419:L P[753] 800mm/sec FINE
    :  Arc Start[6]    ;
2420:  Weave Sine[6] ;
2421:  Track TAST[6] ;
2422:L P[754] WELD_SPEED CNT100    ;
2423:C P[755]    
    :  P[758] WELD_SPEED FINE
    :  Arc End[6]    ;
2424:  Track End ;
2425:  Weave End ;
2426:   ;
2427:   ;
2428:  CALL ARC_LH_DISABLE_LS(1) ;
2429:   ;
2430:L P[748] 800mm/sec CNT25    ;
2431:   ;
2432:L P[749] 1000mm/sec CNT100    ;
2433:   ;
2434:L P[750] 1000mm/sec CNT70    ;
2435:   ;
2436:  !HOME ;
2437:J P[774] 100% FINE    ;
2438:   ;
2439:  !********POSITIONER MOVE******** ;
2440:  !LOAD POSITION ;
2441:  CALL HOME    ;
2442:  CALL LOAD_POS    ;
2443:  TIMER[12]=STOP ;
2444:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1183.912  mm,	Y = -1389.570  mm,	Z =   968.895  mm,
	W =    19.924 deg,	P =    44.168 deg,	R =  -125.816 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.641  mm,	Y = -1312.769  mm,	Z =   506.026  mm,
	W =     -.010 deg,	P =    46.626 deg,	R =  -140.083 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1237.616  mm,	Y = -1312.769  mm,	Z =   231.881  mm,
	W =     -.010 deg,	P =    46.626 deg,	R =  -140.083 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1253.715  mm,	Y = -1258.752  mm,	Z =    71.686  mm,
	W =     -.013 deg,	P =    46.636 deg,	R =  -142.462 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1297.402  mm,	Y = -1311.211  mm,	Z =    76.271  mm,
	W =     -.716 deg,	P =    46.671 deg,	R =  -171.143 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     -.000 deg,	J2=   -40.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1235.617  mm,	Y = -1318.769  mm,	Z =   246.881  mm,
	W =     -.010 deg,	P =    46.625 deg,	R =  -163.368 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   831.467  mm,	Y =  -918.769  mm,	Z =   246.881  mm,
	W =     -.010 deg,	P =    46.625 deg,	R =  -137.059 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   897.240  mm,	Y =  -831.059  mm,	Z =    70.995  mm,
	W =     1.854 deg,	P =    45.123 deg,	R =  -141.040 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1066.495  mm,	Y = -1033.818  mm,	Z =    71.044  mm,
	W =     1.854 deg,	P =    45.124 deg,	R =  -141.040 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1165.677  mm,	Y = -1317.151  mm,	Z =   195.424  mm,
	W =     2.049 deg,	P =    44.964 deg,	R =  -137.101 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   788.632  mm,	Y =  -909.151  mm,	Z =   195.424  mm,
	W =     2.049 deg,	P =    44.964 deg,	R =  -137.101 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1231.082  mm,	Y = -1228.554  mm,	Z =    70.371  mm,
	W =     1.854 deg,	P =    45.124 deg,	R =  -141.040 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   871.790  mm,	Y =  -803.766  mm,	Z =    72.955  mm,
	W =     2.049 deg,	P =    44.963 deg,	R =  -137.102 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   724.617  mm,	Y =  -938.147  mm,	Z =   287.454  mm,
	W =     2.255 deg,	P =    44.853 deg,	R =  -120.173 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   918.616  mm,	Y =    -7.769  mm,	Z =  2170.023  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2031.616  mm,	Y =    -7.769  mm,	Z =  1188.167  mm,
	W =     -.010 deg,	P =    38.462 deg,	R =   -90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2496.616  mm,	Y =   140.231  mm,	Z =   484.166  mm,
	W =    29.850 deg,	P =    25.473 deg,	R =   -36.833 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2496.616  mm,	Y =   299.231  mm,	Z =   410.165  mm,
	W =    38.288 deg,	P =     3.975 deg,	R =    -5.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   827.497  mm,	Y =  -749.395  mm,	Z =    73.174  mm,
	W =     2.121 deg,	P =    44.922 deg,	R =  -125.436 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2508.544  mm,	Y =   411.773  mm,	Z =   343.204  mm,
	W =    44.831 deg,	P =     4.520 deg,	R =     -.858 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2563.389  mm,	Y =   199.190  mm,	Z =   572.868  mm,
	W =    44.821 deg,	P =     4.511 deg,	R =    23.598 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2120.246  mm,	Y =   303.348  mm,	Z =   455.868  mm,
	W =    32.270 deg,	P =    33.247 deg,	R =    37.053 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2463.469  mm,	Y =   413.974  mm,	Z =   341.292  mm,
	W =    44.821 deg,	P =     4.515 deg,	R =     -.858 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2444.293  mm,	Y =   409.807  mm,	Z =   345.410  mm,
	W =    45.505 deg,	P =     6.009 deg,	R =    24.416 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2090.182  mm,	Y =   379.464  mm,	Z =   444.395  mm,
	W =    34.216 deg,	P =    31.228 deg,	R =    42.244 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2090.182  mm,	Y =  -337.536  mm,	Z =   444.395  mm,
	W =   -39.673 deg,	P =    23.265 deg,	R =   -63.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2007.570  mm,	Y =   317.185  mm,	Z =   365.466  mm,
	W =    34.218 deg,	P =    31.223 deg,	R =    49.930 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.438  mm,	Y =   396.115  mm,	Z =   365.090  mm,
	W =    34.212 deg,	P =    31.231 deg,	R =    41.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2310.394  mm,	Y =  -277.057  mm,	Z =   689.128  mm,
	W =   -43.030 deg,	P =    14.686 deg,	R =   -51.218 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2310.394  mm,	Y =     5.943  mm,	Z =   689.127  mm,
	W =     8.920 deg,	P =    44.293 deg,	R =   -85.311 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2746.395  mm,	Y =     1.943  mm,	Z =  -441.873  mm,
	W =    22.103 deg,	P =    42.731 deg,	R =   -76.212 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2746.395  mm,	Y =   -73.057  mm,	Z =  -441.873  mm,
	W =    22.103 deg,	P =    42.731 deg,	R =   -76.212 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2007.015  mm,	Y =  -320.227  mm,	Z =   361.609  mm,
	W =   -39.317 deg,	P =    23.931 deg,	R =   -60.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2007.893  mm,	Y =  -399.787  mm,	Z =   362.621  mm,
	W =   -42.995 deg,	P =    14.795 deg,	R =   -72.419 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2744.395  mm,	Y =   -87.057  mm,	Z =  -441.873  mm,
	W =    22.103 deg,	P =    42.731 deg,	R =   -76.212 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2744.394  mm,	Y =    65.467  mm,	Z =  -441.873  mm,
	W =   -23.734 deg,	P =    41.974 deg,	R =    68.142 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2745.381  mm,	Y =   -55.185  mm,	Z =  -587.693  mm,
	W =    10.080 deg,	P =    44.098 deg,	R =   -75.679 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2770.065  mm,	Y =   -56.181  mm,	Z =  -586.428  mm,
	W =    10.085 deg,	P =    44.113 deg,	R =   -75.686 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2744.395  mm,	Y =    65.467  mm,	Z =  -441.873  mm,
	W =   -23.734 deg,	P =    41.974 deg,	R =    68.142 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.566  mm,	Y =    28.292  mm,	Z =  -509.873  mm,
	W =   -17.996 deg,	P =    21.209 deg,	R =   -11.797 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2745.338  mm,	Y =    53.845  mm,	Z =  -584.045  mm,
	W =   -14.670 deg,	P =    41.217 deg,	R =    68.267 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     -.000 deg
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2771.051  mm,	Y =    52.392  mm,	Z =  -583.085  mm,
	W =   -14.706 deg,	P =    41.251 deg,	R =    68.262 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     -.000 deg
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2773.300  mm,	Y =   -46.177  mm,	Z =  -424.688  mm,
	W =    -3.866 deg,	P =    15.387 deg,	R =   -14.287 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2388.156  mm,	Y =   -46.177  mm,	Z =   494.312  mm,
	W =    -3.866 deg,	P =    15.387 deg,	R =   -14.287 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2665.300  mm,	Y =   191.823  mm,	Z =   494.312  mm,
	W =    34.617 deg,	P =    32.086 deg,	R =   -37.579 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2746.301  mm,	Y =   359.823  mm,	Z =   372.313  mm,
	W =    44.065 deg,	P =    13.982 deg,	R =   -14.016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.572  mm,	Y =    45.614  mm,	Z =  -584.321  mm,
	W =    -7.893 deg,	P =    29.549 deg,	R =   -15.873 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     -.000 deg
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.432  mm,	Y =   -50.618  mm,	Z =  -585.269  mm,
	W =    -7.969 deg,	P =    29.524 deg,	R =   -15.865 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     -.000 deg
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2711.142  mm,	Y =   208.547  mm,	Z =   521.702  mm,
	W =    43.274 deg,	P =    13.788 deg,	R =   -14.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2711.142  mm,	Y =  -358.128  mm,	Z =   441.702  mm,
	W =   -43.273 deg,	P =   -13.788 deg,	R =   -14.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.975  mm,	Y =   412.754  mm,	Z =   328.449  mm,
	W =    43.280 deg,	P =    13.791 deg,	R =   -11.854 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2709.583  mm,	Y =   412.578  mm,	Z =   327.552  mm,
	W =    43.277 deg,	P =    13.792 deg,	R =   -10.715 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2711.772  mm,	Y =  -257.488  mm,	Z =   482.569  mm,
	W =   -43.274 deg,	P =   -13.788 deg,	R =   -14.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2682.821  mm,	Y =   109.226  mm,	Z =   556.209  mm,
	W =     6.709 deg,	P =   -51.514 deg,	R =    -2.307 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2878.931  mm,	Y =   284.681  mm,	Z =   359.593  mm,
	W =    -2.366 deg,	P =   -44.781 deg,	R =    15.348 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2755.648  mm,	Y =  -419.671  mm,	Z =   324.655  mm,
	W =   -43.273 deg,	P =   -13.781 deg,	R =   -15.654 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2707.716  mm,	Y =  -419.404  mm,	Z =   324.423  mm,
	W =   -43.229 deg,	P =   -13.780 deg,	R =   -15.681 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2900.602  mm,	Y =   280.855  mm,	Z =   330.798  mm,
	W =    -2.362 deg,	P =   -44.780 deg,	R =    15.343 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2688.926  mm,	Y =   145.792  mm,	Z =   479.238  mm,
	W =    11.537 deg,	P =   -44.440 deg,	R =    16.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2901.607  mm,	Y =   353.529  mm,	Z =   330.605  mm,
	W =    -2.363 deg,	P =   -44.778 deg,	R =    21.461 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2822.856  mm,	Y =   307.220  mm,	Z =   422.096  mm,
	W =    11.538 deg,	P =   -44.441 deg,	R =    36.427 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2901.149  mm,	Y =   394.270  mm,	Z =   330.773  mm,
	W =     3.865 deg,	P =   -44.777 deg,	R =    31.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2506.771  mm,	Y =    -3.468  mm,	Z =   625.975  mm,
	W =   -10.413 deg,	P =   -54.310 deg,	R =     6.585 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2876.416  mm,	Y =  -294.248  mm,	Z =   360.831  mm,
	W =    12.831 deg,	P =   -43.281 deg,	R =   -27.682 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2896.882  mm,	Y =   404.532  mm,	Z =   330.811  mm,
	W =     3.880 deg,	P =   -44.778 deg,	R =    44.019 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2875.458  mm,	Y =   411.451  mm,	Z =   330.775  mm,
	W =    11.523 deg,	P =   -44.430 deg,	R =    62.752 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2901.594  mm,	Y =  -286.321  mm,	Z =   331.051  mm,
	W =    12.831 deg,	P =   -43.281 deg,	R =   -27.681 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2657.003  mm,	Y =   -63.546  mm,	Z =   568.894  mm,
	W =     -.758 deg,	P =   -43.272 deg,	R =    -9.466 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2901.299  mm,	Y =  -359.339  mm,	Z =   331.905  mm,
	W =    12.831 deg,	P =   -43.281 deg,	R =   -27.681 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2795.455  mm,	Y =  -317.713  mm,	Z =   407.823  mm,
	W =     -.758 deg,	P =   -43.273 deg,	R =   -36.153 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2626.454  mm,	Y =    58.795  mm,	Z =   612.721  mm,
	W =    10.455 deg,	P =   -53.174 deg,	R =    -8.186 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2902.274  mm,	Y =  -399.677  mm,	Z =   330.687  mm,
	W =     3.818 deg,	P =   -42.738 deg,	R =   -27.631 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.950  mm,	Y =   371.014  mm,	Z =  1254.690  mm,
	W =     3.998 deg,	P =    -8.968 deg,	R =   -24.204 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2878.931  mm,	Y =   284.681  mm,	Z =   359.593  mm,
	W =    -2.366 deg,	P =   -44.781 deg,	R =    15.348 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2894.061  mm,	Y =  -412.034  mm,	Z =   330.685  mm,
	W =    -2.363 deg,	P =   -42.893 deg,	R =   -45.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2348.894  mm,	Y =   386.121  mm,	Z =   308.013  mm,
	W =    44.432 deg,	P =     8.082 deg,	R =   -31.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2878.275  mm,	Y =  -416.748  mm,	Z =   330.172  mm,
	W =     -.758 deg,	P =   -43.274 deg,	R =   -72.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.886  mm,	Y =     7.673  mm,	Z =  1193.435  mm,
	W =    -1.732 deg,	P =    -2.297 deg,	R =   -23.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.696  mm,	Y =  -402.392  mm,	Z =  1193.417  mm,
	W =    -1.735 deg,	P =    -2.297 deg,	R =   -23.794 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2822.856  mm,	Y =   307.220  mm,	Z =   422.096  mm,
	W =    11.538 deg,	P =   -44.441 deg,	R =    36.427 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2626.454  mm,	Y =    58.795  mm,	Z =   612.721  mm,
	W =    10.455 deg,	P =   -53.174 deg,	R =    -8.186 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2878.931  mm,	Y =   284.681  mm,	Z =   359.593  mm,
	W =    -2.366 deg,	P =   -44.781 deg,	R =    15.348 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2822.856  mm,	Y =   307.220  mm,	Z =   422.096  mm,
	W =    11.538 deg,	P =   -44.441 deg,	R =    36.427 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2688.926  mm,	Y =   145.792  mm,	Z =   479.238  mm,
	W =    11.537 deg,	P =   -44.440 deg,	R =    16.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2506.771  mm,	Y =    -3.468  mm,	Z =   625.975  mm,
	W =   -10.413 deg,	P =   -54.310 deg,	R =     6.585 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2876.416  mm,	Y =  -294.248  mm,	Z =   360.831  mm,
	W =    12.831 deg,	P =   -43.281 deg,	R =   -27.682 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2795.455  mm,	Y =  -317.713  mm,	Z =   407.823  mm,
	W =     -.758 deg,	P =   -43.273 deg,	R =   -36.153 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2774.022  mm,	Y =  -241.428  mm,	Z =   477.421  mm,
	W =      .369 deg,	P =   -45.174 deg,	R =   -28.340 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2876.416  mm,	Y =  -294.248  mm,	Z =   360.831  mm,
	W =    12.831 deg,	P =   -43.281 deg,	R =   -27.682 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2795.455  mm,	Y =  -317.713  mm,	Z =   431.916  mm,
	W =    16.615 deg,	P =   -40.558 deg,	R =   -61.910 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1233.935  mm,	Y = -1549.119  mm,	Z =  1652.621  mm,
	W =   -59.729 deg,	P =   -13.841 deg,	R =    34.854 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2284.571  mm,	Y =   224.723  mm,	Z =  -103.907  mm,
	W =    -1.824 deg,	P =    43.273 deg,	R =  -177.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2865.354  mm,	Y =  1371.120  mm,	Z =    50.536  mm,
	W =    -1.528 deg,	P =    -1.642 deg,	R =     2.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.999 deg,	J2=    90.000 deg
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1724.172  mm,	Y =   -99.215  mm,	Z =   441.840  mm,
	W =    -3.538 deg,	P =   -37.455 deg,	R =   -26.472 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2094.232  mm,	Y =    19.822  mm,	Z =    16.623  mm,
	W =   -33.555 deg,	P =   -20.475 deg,	R =   113.896 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2865.354  mm,	Y =  1351.052  mm,	Z =    50.536  mm,
	W =    -1.528 deg,	P =    -1.642 deg,	R =     2.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.999 deg,	J2=    90.000 deg
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2206.375  mm,	Y =   -84.206  mm,	Z =    -4.653  mm,
	W =   -33.592 deg,	P =   -20.528 deg,	R =   117.916 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2849.008  mm,	Y =  1361.478  mm,	Z =    50.536  mm,
	W =    -1.528 deg,	P =    -1.642 deg,	R =     2.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.999 deg,	J2=    90.000 deg
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2031.518  mm,	Y =    20.497  mm,	Z =     8.683  mm,
	W =    38.911 deg,	P =    24.670 deg,	R =    12.953 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2255.454  mm,	Y =  -121.848  mm,	Z =   -10.027  mm,
	W =   -17.164 deg,	P =   -39.269 deg,	R =    90.811 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2303.774  mm,	Y =  -139.202  mm,	Z =   -19.217  mm,
	W =   -17.185 deg,	P =   -39.290 deg,	R =    99.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2624.706  mm,	Y =  -150.826  mm,	Z =   504.595  mm,
	W =    29.842 deg,	P =    35.744 deg,	R =  -141.857 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2683.383  mm,	Y =  -300.218  mm,	Z =   394.001  mm,
	W =    31.985 deg,	P =    33.748 deg,	R =  -135.954 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2319.749  mm,	Y =  -144.824  mm,	Z =   -20.315  mm,
	W =   -25.651 deg,	P =   -34.890 deg,	R =    98.088 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2336.580  mm,	Y =  -147.632  mm,	Z =   -22.463  mm,
	W =   -25.652 deg,	P =   -34.890 deg,	R =    87.210 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2333.007  mm,	Y =  -148.653  mm,	Z =   -24.467  mm,
	W =    -6.859 deg,	P =   -41.860 deg,	R =   116.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.906  mm,	Y =  -150.954  mm,	Z =   -27.328  mm,
	W =   -13.723 deg,	P =   -38.566 deg,	R =   105.555 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2780.517  mm,	Y =  -372.561  mm,	Z =   464.471  mm,
	W =    32.643 deg,	P =     1.822 deg,	R =   -93.819 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2543.169  mm,	Y =  -170.233  mm,	Z =   459.679  mm,
	W =    15.320 deg,	P =    20.551 deg,	R =  -109.367 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2564.790  mm,	Y =   179.821  mm,	Z =   472.963  mm,
	W =   -33.661 deg,	P =    20.429 deg,	R =   124.430 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.463  mm,	Y =   284.548  mm,	Z =   472.963  mm,
	W =   -37.578 deg,	P =    10.941 deg,	R =   104.868 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2588.366  mm,	Y =  -191.938  mm,	Z =   -64.016  mm,
	W =    39.677 deg,	P =   -13.111 deg,	R =    10.485 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2634.096  mm,	Y =  -220.389  mm,	Z =   -70.040  mm,
	W =    17.668 deg,	P =   -27.967 deg,	R =      .790 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2635.327  mm,	Y =  -279.131  mm,	Z =   -74.721  mm,
	W =   -36.832 deg,	P =     1.847 deg,	R =    73.287 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2628.236  mm,	Y =  -300.399  mm,	Z =   -74.071  mm,
	W =   -38.135 deg,	P =     7.631 deg,	R =    72.017 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2727.478  mm,	Y =   349.696  mm,	Z =   477.126  mm,
	W =   -21.853 deg,	P =    13.056 deg,	R =    95.740 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1988.908  mm,	Y =   131.267  mm,	Z =   609.126  mm,
	W =    17.833 deg,	P =    51.565 deg,	R =    17.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.576  mm,	Y =   131.267  mm,	Z =   438.126  mm,
	W =    17.833 deg,	P =    51.565 deg,	R =    17.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2625.099  mm,	Y =  -317.058  mm,	Z =   -72.888  mm,
	W =   -38.026 deg,	P =     5.892 deg,	R =    87.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2625.646  mm,	Y =  -569.480  mm,	Z =   -73.369  mm,
	W =   -38.231 deg,	P =   -10.585 deg,	R =    66.882 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1813.192  mm,	Y =   169.381  mm,	Z =   514.495  mm,
	W =    10.023 deg,	P =    44.106 deg,	R =    14.249 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1731.370  mm,	Y =  -138.313  mm,	Z =   432.673  mm,
	W =   -27.009 deg,	P =    37.471 deg,	R =   -39.958 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2381.736  mm,	Y =  -370.018  mm,	Z =   191.729  mm,
	W =    -3.680 deg,	P =     -.881 deg,	R =   -13.566 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2741.800  mm,	Y =  -291.447  mm,	Z =   327.230  mm,
	W =    29.206 deg,	P =    34.602 deg,	R =  -135.393 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1763.068  mm,	Y =  -201.487  mm,	Z =   455.614  mm,
	W =   -27.009 deg,	P =    37.471 deg,	R =   -39.958 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1763.068  mm,	Y =    25.303  mm,	Z =   455.614  mm,
	W =     5.616 deg,	P =    44.724 deg,	R =     7.956 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1813.067  mm,	Y =  -148.698  mm,	Z =   975.615  mm,
	W =     0.000 deg,	P =      .001 deg,	R =     5.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2742.971  mm,	Y =  -340.891  mm,	Z =   327.062  mm,
	W =    30.065 deg,	P =    35.210 deg,	R =  -134.887 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2759.544  mm,	Y =  -364.993  mm,	Z =   329.461  mm,
	W =    28.607 deg,	P =    30.691 deg,	R =  -111.066 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1813.067  mm,	Y =  -143.179  mm,	Z =  1084.186  mm,
	W =     0.000 deg,	P =      .001 deg,	R =     5.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1813.067  mm,	Y =   375.821  mm,	Z =   983.186  mm,
	W =     0.000 deg,	P =      .001 deg,	R =     5.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2774.975  mm,	Y =  -367.824  mm,	Z =   328.645  mm,
	W =    30.303 deg,	P =    27.056 deg,	R =   -98.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2741.560  mm,	Y =   284.208  mm,	Z =   324.647  mm,
	W =   -43.506 deg,	P =    12.857 deg,	R =   103.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1817.884  mm,	Y =   125.453  mm,	Z =  1218.185  mm,
	W =     0.000 deg,	P =      .001 deg,	R =     5.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.650  mm,	Y =   428.778  mm,	Z =  1743.265  mm,
	W =    20.739 deg,	P =   -18.803 deg,	R =   -28.768 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1379.547  mm,	Y =   574.325  mm,	Z =  1305.023  mm,
	W =     8.340 deg,	P =   -18.155 deg,	R =   -25.224 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2100.617  mm,	Y =   614.231  mm,	Z =  1305.022  mm,
	W =    13.075 deg,	P =   -27.074 deg,	R =   -27.053 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2741.909  mm,	Y =   330.818  mm,	Z =   325.255  mm,
	W =   -43.506 deg,	P =    12.857 deg,	R =   103.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2752.167  mm,	Y =   352.560  mm,	Z =   324.676  mm,
	W =   -20.735 deg,	P =    23.320 deg,	R =    96.090 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.450  mm,	Y =   441.871  mm,	Z =  1254.690  mm,
	W =     8.283 deg,	P =   -18.038 deg,	R =   -25.208 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.450  mm,	Y =    13.871  mm,	Z =  1254.689  mm,
	W =     8.283 deg,	P =   -18.038 deg,	R =   -25.208 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2775.352  mm,	Y =   359.865  mm,	Z =   325.883  mm,
	W =   -20.826 deg,	P =    22.531 deg,	R =    96.055 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1667.717  mm,	Y =   126.533  mm,	Z =   361.142  mm,
	W =    10.041 deg,	P =    44.100 deg,	R =    14.263 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.450  mm,	Y =    13.871  mm,	Z =  1254.689  mm,
	W =     8.283 deg,	P =   -18.038 deg,	R =   -25.208 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.645  mm,	Y =   204.657  mm,	Z =   362.223  mm,
	W =    10.027 deg,	P =    44.103 deg,	R =    14.252 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.187  mm,	Y =  -130.227  mm,	Z =   362.347  mm,
	W =   -27.010 deg,	P =    37.473 deg,	R =   -36.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.819  mm,	Y =    16.776  mm,	Z =  1272.537  mm,
	W =     8.096 deg,	P =   -17.638 deg,	R =   -25.149 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.819  mm,	Y =  -605.300  mm,	Z =  1272.537  mm,
	W =     8.096 deg,	P =   -17.638 deg,	R =   -25.149 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.606  mm,	Y =  -203.809  mm,	Z =   363.549  mm,
	W =   -27.010 deg,	P =    37.473 deg,	R =   -36.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1806.002  mm,	Y =  -392.231  mm,	Z =   828.384  mm,
	W =      .002 deg,	P =      .001 deg,	R =     5.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.208  mm,	Y =  -654.090  mm,	Z =  1313.833  mm,
	W =    10.028 deg,	P =   -21.460 deg,	R =   -25.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1423.602  mm,	Y =  -633.435  mm,	Z =  1512.519  mm,
	W =    10.028 deg,	P =   -21.460 deg,	R =   -25.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.030  mm,	Y =     -.134  mm,	Z =  2422.493  mm,
	W =     -.020 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2120.617  mm,	Y =   114.231  mm,	Z =   454.022  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =   -90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2322.538  mm,	Y =   282.923  mm,	Z =   407.108  mm,
	W =    44.356 deg,	P =     8.527 deg,	R =    -8.608 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.388  mm,	Y =  -132.355  mm,	Z =   830.745  mm,
	W =      .017 deg,	P =      .003 deg,	R =     5.640 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1805.255  mm,	Y =   387.768  mm,	Z =   830.985  mm,
	W =     -.593 deg,	P =    -5.980 deg,	R =     5.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.100  mm,	Y =   128.882  mm,	Z =   831.212  mm,
	W =     -.593 deg,	P =    -5.980 deg,	R =     5.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.926  mm,	Y =   299.816  mm,	Z =   380.534  mm,
	W =    43.107 deg,	P =    14.444 deg,	R =    14.426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2369.612  mm,	Y =  -152.146  mm,	Z =   450.842  mm,
	W =   -35.390 deg,	P =     -.015 deg,	R =    11.717 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2324.098  mm,	Y =  -366.142  mm,	Z =   356.893  mm,
	W =   -26.270 deg,	P =   -24.616 deg,	R =   -28.424 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.842  mm,	Y =   644.021  mm,	Z =  1177.221  mm,
	W =     1.340 deg,	P =     1.267 deg,	R =   -23.862 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2126.827  mm,	Y =   449.706  mm,	Z =  1179.015  mm,
	W =      .101 deg,	P =     -.251 deg,	R =   -23.878 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2126.970  mm,	Y =   444.920  mm,	Z =  1178.159  mm,
	W =    -7.000 deg,	P =    -3.382 deg,	R =   -23.652 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2347.623  mm,	Y =  -252.998  mm,	Z =   505.500  mm,
	W =   -41.361 deg,	P =   -19.588 deg,	R =    -2.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2072.623  mm,	Y =  -178.998  mm,	Z =   505.500  mm,
	W =    32.971 deg,	P =    25.781 deg,	R =  -125.417 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2278.079  mm,	Y =  -225.854  mm,	Z =   -19.500  mm,
	W =    32.971 deg,	P =    25.781 deg,	R =  -125.417 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.886  mm,	Y =     7.673  mm,	Z =  1193.435  mm,
	W =    -1.732 deg,	P =    -2.297 deg,	R =   -23.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[169]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.696  mm,	Y =  -402.392  mm,	Z =  1193.417  mm,
	W =    -1.735 deg,	P =    -2.297 deg,	R =   -23.794 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[170]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1460.901  mm,	Y =  -124.727  mm,	Z =   173.177  mm,
	W =   -18.859 deg,	P =    44.384 deg,	R =   163.367 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[171]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1549.299  mm,	Y =  -552.174  mm,	Z =   106.967  mm,
	W =   -29.293 deg,	P =    36.031 deg,	R =   140.482 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[172]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.025  mm,	Y =   402.590  mm,	Z =  1192.449  mm,
	W =      .016 deg,	P =     -.045 deg,	R =   -23.885 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[173]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.810  mm,	Y =    14.647  mm,	Z =  1192.450  mm,
	W =      .016 deg,	P =     -.045 deg,	R =   -23.885 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[174]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1543.269  mm,	Y =  -478.741  mm,	Z =    98.416  mm,
	W =   -16.138 deg,	P =    42.751 deg,	R =   168.873 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[175]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1494.684  mm,	Y =    -9.285  mm,	Z =   211.201  mm,
	W =    -1.993 deg,	P =    44.965 deg,	R =   177.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[176]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2128.997  mm,	Y =  -645.877  mm,	Z =  1179.040  mm,
	W =     -.110 deg,	P =     -.657 deg,	R =   -23.879 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[177]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2128.776  mm,	Y =  -455.457  mm,	Z =  1177.054  mm,
	W =     -.064 deg,	P =    -1.106 deg,	R =   -23.872 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[178]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1534.968  mm,	Y =  -398.034  mm,	Z =    84.062  mm,
	W =     -.043 deg,	P =    44.368 deg,	R =   176.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[179]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1493.431  mm,	Y =   363.490  mm,	Z =   189.000  mm,
	W =   -16.664 deg,	P =    42.430 deg,	R =   156.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[180]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2129.638  mm,	Y =  -446.131  mm,	Z =  1180.944  mm,
	W =     3.415 deg,	P =     -.816 deg,	R =   -23.974 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[181]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2353.698  mm,	Y =   399.991  mm,	Z =   291.072  mm,
	W =    43.149 deg,	P =    14.488 deg,	R =   -37.828 deg
   GP2:
	UF : 1, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[182]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1481.802  mm,	Y =    -4.268  mm,	Z =   197.574  mm,
	W =    -1.993 deg,	P =    44.965 deg,	R =   177.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[183]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1481.802  mm,	Y =   612.875  mm,	Z =   197.574  mm,
	W =   -40.373 deg,	P =    21.850 deg,	R =   111.598 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[184]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2345.067  mm,	Y =   409.224  mm,	Z =   281.500  mm,
	W =    43.108 deg,	P =    14.444 deg,	R =   -17.326 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[185]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2306.742  mm,	Y =   406.911  mm,	Z =   281.490  mm,
	W =    43.110 deg,	P =    14.442 deg,	R =   -17.330 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[186]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1406.501  mm,	Y =   510.995  mm,	Z =   296.764  mm,
	W =   -40.802 deg,	P =    20.911 deg,	R =   112.463 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[187]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1226.008  mm,	Y =   -21.205  mm,	Z =   297.416  mm,
	W =      .340 deg,	P =    45.409 deg,	R =    12.184 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[188]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2197.405  mm,	Y =   -25.809  mm,	Z =  -200.004  mm,
	W =     -.223 deg,	P =     -.454 deg,	R =     -.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.206 deg,	J2=   180.000 deg
};
P[189]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2305.896  mm,	Y =   -25.032  mm,	Z =  -270.188  mm,
	W =      .477 deg,	P =    12.556 deg,	R =     -.810 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.206 deg,	J2=   180.000 deg
};
P[190]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2290.712  mm,	Y =   409.911  mm,	Z =   281.500  mm,
	W =    43.107 deg,	P =    14.443 deg,	R =    14.426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[191]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2361.728  mm,	Y =  -412.684  mm,	Z =   283.675  mm,
	W =   -31.226 deg,	P =   -24.163 deg,	R =    -2.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[192]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2327.653  mm,	Y =   -25.077  mm,	Z =  -148.093  mm,
	W =      .476 deg,	P =    12.559 deg,	R =     -.810 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.206 deg,	J2=   180.000 deg
};
P[193]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1727.799  mm,	Y =   -46.845  mm,	Z =   458.542  mm,
	W =     2.935 deg,	P =   -34.514 deg,	R =   -11.373 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[194]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2344.238  mm,	Y =  -414.136  mm,	Z =   281.331  mm,
	W =   -33.506 deg,	P =   -24.171 deg,	R =   -30.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[195]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2303.808  mm,	Y =  -413.308  mm,	Z =   281.330  mm,
	W =   -33.506 deg,	P =   -24.171 deg,	R =   -30.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[196]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.118  mm,	Y =  -166.484  mm,	Z =   -15.328  mm,
	W =     1.674 deg,	P =   -29.607 deg,	R =   -12.085 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[197]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2284.901  mm,	Y =  -412.985  mm,	Z =   282.798  mm,
	W =   -33.505 deg,	P =   -24.171 deg,	R =   -60.790 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[198]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2368.954  mm,	Y =  -246.180  mm,	Z =  -185.021  mm,
	W =    35.524 deg,	P =    28.328 deg,	R =  -122.465 deg
   GP2:
	UF : 1, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[199]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1667.363  mm,	Y =  -120.483  mm,	Z =     2.410  mm,
	W =     6.134 deg,	P =   -28.692 deg,	R =   -14.256 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[200]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1526.901  mm,	Y =   -72.453  mm,	Z =   656.445  mm,
	W =   -14.352 deg,	P =    -5.632 deg,	R =   -30.177 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[201]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   918.616  mm,	Y =  -238.769  mm,	Z =   572.023  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =    -7.219 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[202]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1548.492  mm,	Y = -1079.480  mm,	Z =  1677.351  mm,
	W =   -38.101 deg,	P =   -29.846 deg,	R =   -22.090 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[203]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2472.617  mm,	Y =   -96.769  mm,	Z =    57.023  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =    -7.219 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[204]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2434.636  mm,	Y =    22.422  mm,	Z =     9.532  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =     8.203 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[205]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2368.508  mm,	Y =  -153.263  mm,	Z =  -185.665  mm,
	W =    29.649 deg,	P =    34.164 deg,	R =  -132.677 deg
   GP2:
	UF : 1, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[206]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2368.281  mm,	Y =   236.535  mm,	Z =  -188.580  mm,
	W =    -9.595 deg,	P =    42.288 deg,	R =   171.259 deg
   GP2:
	UF : 1, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[207]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2432.636  mm,	Y =    17.422  mm,	Z =     9.532  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =     8.203 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[208]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2480.777  mm,	Y =    17.423  mm,	Z =     9.532  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =    58.110 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[209]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.388  mm,	Y =  -650.992  mm,	Z =     9.397  mm,
	W =   -29.288 deg,	P =    36.027 deg,	R =   140.467 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[210]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1636.073  mm,	Y =  -463.277  mm,	Z =     9.397  mm,
	W =   -29.288 deg,	P =    36.027 deg,	R =   140.467 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[211]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.777  mm,	Y =    35.280  mm,	Z =     9.532  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =    63.931 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[212]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.776  mm,	Y =  -110.577  mm,	Z =     9.532  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =    58.110 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[213]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1737.776  mm,	Y =  -110.577  mm,	Z =   268.532  mm,
	W =    44.545 deg,	P =     7.177 deg,	R =   -14.147 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[214]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1737.776  mm,	Y =  -154.258  mm,	Z =    41.532  mm,
	W =     6.301 deg,	P =    44.648 deg,	R =   -72.376 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[215]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1633.816  mm,	Y =  -450.420  mm,	Z =     9.396  mm,
	W =   -29.288 deg,	P =    36.027 deg,	R =   154.755 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[216]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1613.596  mm,	Y =    -4.272  mm,	Z =     8.234  mm,
	W =     -.047 deg,	P =    44.367 deg,	R =   176.045 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[217]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1612.710  mm,	Y =  -390.605  mm,	Z =     8.243  mm,
	W =     -.043 deg,	P =    44.368 deg,	R =   176.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[218]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1614.350  mm,	Y =   382.409  mm,	Z =     8.443  mm,
	W =   -16.664 deg,	P =    42.430 deg,	R =   156.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[219]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1948.457  mm,	Y =  -171.292  mm,	Z =    74.447  mm,
	W =    25.119 deg,	P =    38.698 deg,	R =   -79.648 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[220]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2211.458  mm,	Y =   -28.292  mm,	Z =    74.447  mm,
	W =    40.079 deg,	P =    22.554 deg,	R =   -29.245 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[221]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1613.608  mm,	Y =    -1.137  mm,	Z =     8.022  mm,
	W =      .311 deg,	P =    44.999 deg,	R =   176.092 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[222]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1639.839  mm,	Y =   639.136  mm,	Z =     5.114  mm,
	W =   -40.728 deg,	P =    21.070 deg,	R =   110.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[223]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2211.458  mm,	Y =   -28.292  mm,	Z =    74.447  mm,
	W =    40.079 deg,	P =    22.554 deg,	R =   -29.245 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[224]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1639.963  mm,	Y =   451.620  mm,	Z =     4.298  mm,
	W =   -40.729 deg,	P =    21.083 deg,	R =   110.640 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[225]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1635.945  mm,	Y =   445.191  mm,	Z =     7.824  mm,
	W =   -40.728 deg,	P =    21.070 deg,	R =    97.581 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[226]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.310  mm,	Y =   -25.576  mm,	Z =    66.898  mm,
	W =    38.911 deg,	P =    24.669 deg,	R =   -27.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[227]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2091.876  mm,	Y =   -25.576  mm,	Z =    66.898  mm,
	W =    38.911 deg,	P =    24.669 deg,	R =   -27.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[228]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2293.114  mm,	Y =   -80.867  mm,	Z =  -319.665  mm,
	W =     -.121 deg,	P =    25.433 deg,	R =      .191 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[229]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2294.205  mm,	Y =  -160.262  mm,	Z =  -320.161  mm,
	W =    -3.243 deg,	P =    25.371 deg,	R =    16.072 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[230]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2037.608  mm,	Y =   -74.366  mm,	Z =   106.547  mm,
	W =    38.909 deg,	P =    24.669 deg,	R =   -38.380 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[231]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.547  mm,	Y =  -153.366  mm,	Z =    49.547  mm,
	W =    38.909 deg,	P =    24.669 deg,	R =    46.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[232]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.626  mm,	Y =   -81.655  mm,	Z =   -53.149  mm,
	W =    10.416 deg,	P =   -27.285 deg,	R =   -21.847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[233]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.155  mm,	Y =  -106.369  mm,	Z =   -53.149  mm,
	W =    10.416 deg,	P =   -27.285 deg,	R =   -21.847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[234]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1744.400  mm,	Y =  -130.049  mm,	Z =    76.607  mm,
	W =    33.797 deg,	P =    31.690 deg,	R =    32.974 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[235]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1890.431  mm,	Y =   -61.192  mm,	Z =   115.273  mm,
	W =    39.113 deg,	P =    33.534 deg,	R =   -57.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[236]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.182  mm,	Y =  -159.370  mm,	Z =   -53.149  mm,
	W =    12.300 deg,	P =   -26.597 deg,	R =   -22.701 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[237]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.520  mm,	Y =      .488  mm,	Z =    92.358  mm,
	W =    44.280 deg,	P =    22.416 deg,	R =   -25.152 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.996 deg,	J2=    90.000 deg
};
P[238]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.208  mm,	Y =  -131.065  mm,	Z =   -53.167  mm,
	W =    12.285 deg,	P =   -26.598 deg,	R =   -22.689 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[239]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2450.528  mm,	Y =    67.264  mm,	Z =   -29.881  mm,
	W =    43.929 deg,	P =   -14.757 deg,	R =    26.953 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[240]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2391.317  mm,	Y =    67.003  mm,	Z =   -18.123  mm,
	W =    47.953 deg,	P =      .226 deg,	R =    27.045 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[241]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.694  mm,	Y =    65.889  mm,	Z =   -21.684  mm,
	W =    47.614 deg,	P =     2.717 deg,	R =    43.711 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[242]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1722.530  mm,	Y =   -86.452  mm,	Z =   134.799  mm,
	W =    51.320 deg,	P =    22.528 deg,	R =    10.143 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[243]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1245.855  mm,	Y =  -163.909  mm,	Z =   181.900  mm,
	W =     8.587 deg,	P =    44.350 deg,	R =   -94.561 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[244]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1175.771  mm,	Y =   480.202  mm,	Z =   147.755  mm,
	W =     5.148 deg,	P =    45.783 deg,	R =    38.993 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[245]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2149.855  mm,	Y =   157.091  mm,	Z =   181.900  mm,
	W =   -44.543 deg,	P =     7.216 deg,	R =     5.945 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[246]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2375.455  mm,	Y =    62.722  mm,	Z =   -19.359  mm,
	W =    52.026 deg,	P =    21.224 deg,	R =    45.474 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[247]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2372.087  mm,	Y =    46.546  mm,	Z =   -20.713  mm,
	W =    52.025 deg,	P =    21.226 deg,	R =    71.331 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[248]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2142.216  mm,	Y =   113.042  mm,	Z =    61.147  mm,
	W =   -44.622 deg,	P =     6.557 deg,	R =     6.600 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[249]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2373.771  mm,	Y =     9.115  mm,	Z =   -18.796  mm,
	W =    52.027 deg,	P =    21.227 deg,	R =    74.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[250]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2372.598  mm,	Y =    -5.392  mm,	Z =   -19.166  mm,
	W =    52.021 deg,	P =    21.222 deg,	R =    96.043 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[251]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2213.194  mm,	Y =   163.254  mm,	Z =   103.953  mm,
	W =   -44.622 deg,	P =     6.557 deg,	R =     6.600 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[252]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1974.194  mm,	Y =   163.254  mm,	Z =   103.953  mm,
	W =   -44.622 deg,	P =     6.557 deg,	R =     6.600 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[253]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.125  mm,	Y =   -94.766  mm,	Z =   -11.860  mm,
	W =      .944 deg,	P =    45.049 deg,	R =   -47.839 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[254]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1703.433  mm,	Y =   -94.616  mm,	Z =   -13.144  mm,
	W =      .965 deg,	P =    44.871 deg,	R =   -92.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[255]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1982.874  mm,	Y =   -97.216  mm,	Z =   -12.026  mm,
	W =      .937 deg,	P =    45.000 deg,	R =   -93.403 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[256]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2011.831  mm,	Y =   189.641  mm,	Z =   186.534  mm,
	W =   -48.207 deg,	P =    -3.724 deg,	R =    27.867 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[257]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.758  mm,	Y =    17.641  mm,	Z =    61.534  mm,
	W =   -48.207 deg,	P =    -3.724 deg,	R =   -86.423 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[258]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.444  mm,	Y =   -96.787  mm,	Z =   -12.026  mm,
	W =      .937 deg,	P =    45.000 deg,	R =  -125.609 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[259]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2228.536  mm,	Y =    43.219  mm,	Z =     3.885  mm,
	W =    38.936 deg,	P =    24.695 deg,	R =   -29.101 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[260]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.758  mm,	Y =    17.641  mm,	Z =   102.048  mm,
	W =   -48.207 deg,	P =    -3.724 deg,	R =   -86.423 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[261]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2233.490  mm,	Y =   120.495  mm,	Z =   200.684  mm,
	W =   -48.207 deg,	P =    -3.724 deg,	R =   -26.585 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[262]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.669  mm,	Y =   238.423  mm,	Z =   211.646  mm,
	W =    32.273 deg,	P =    -6.861 deg,	R =   -73.357 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[263]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1949.669  mm,	Y =   136.423  mm,	Z =    63.646  mm,
	W =    40.686 deg,	P =    -9.263 deg,	R =   -65.467 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[264]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.821  mm,	Y =    42.790  mm,	Z =     3.885  mm,
	W =    38.936 deg,	P =    24.695 deg,	R =   -29.101 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[265]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.589  mm,	Y =    41.367  mm,	Z =    -1.757  mm,
	W =    40.759 deg,	P =    25.526 deg,	R =   -26.560 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[266]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2025.245  mm,	Y =    81.350  mm,	Z =    71.561  mm,
	W =    44.528 deg,	P =     7.306 deg,	R =  -107.368 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[267]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2568.141  mm,	Y =   334.529  mm,	Z =   374.903  mm,
	W =   -11.234 deg,	P =    -5.395 deg,	R =    -6.810 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[268]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2726.458  mm,	Y =   283.351  mm,	Z =   364.849  mm,
	W =    -5.482 deg,	P =   -11.711 deg,	R =   -26.938 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[269]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.896  mm,	Y =    40.624  mm,	Z =    -1.591  mm,
	W =    40.756 deg,	P =    25.520 deg,	R =   -26.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[270]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2218.896  mm,	Y =    41.480  mm,	Z =    -1.591  mm,
	W =    40.756 deg,	P =    25.520 deg,	R =   -34.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[271]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2639.410  mm,	Y =   254.475  mm,	Z =   423.440  mm,
	W =    21.122 deg,	P =   -34.692 deg,	R =   -34.166 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[272]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.772  mm,	Y =   359.307  mm,	Z =   369.010  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     7.124 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[273]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2014.799  mm,	Y =    44.262  mm,	Z =   -12.003  mm,
	W =    38.907 deg,	P =    24.670 deg,	R =     7.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[274]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2041.487  mm,	Y =    43.237  mm,	Z =   -11.618  mm,
	W =    38.906 deg,	P =    24.669 deg,	R =   -20.914 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[275]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2649.319  mm,	Y =   360.965  mm,	Z =   454.435  mm,
	W =     3.160 deg,	P =   -22.165 deg,	R =   -20.317 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[276]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1814.352  mm,	Y =   347.003  mm,	Z =   560.474  mm,
	W =     3.159 deg,	P =   -22.164 deg,	R =   -20.317 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[277]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1666.319  mm,	Y =   360.964  mm,	Z =   227.632  mm,
	W =   -32.996 deg,	P =    -3.828 deg,	R =    -3.143 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[278]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1666.319  mm,	Y =   145.964  mm,	Z =    68.632  mm,
	W =   -41.776 deg,	P =    -4.262 deg,	R =    -2.522 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[279]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2098.131  mm,	Y =    40.950  mm,	Z =   -10.062  mm,
	W =    38.906 deg,	P =    24.670 deg,	R =   -27.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[280]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.487  mm,	Y =    41.450  mm,	Z =   -10.347  mm,
	W =    42.498 deg,	P =    16.438 deg,	R =   -37.568 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[281]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.368  mm,	Y =  -149.009  mm,	Z =   -14.846  mm,
	W =    33.806 deg,	P =    31.687 deg,	R =    49.165 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[282]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.978  mm,	Y =  -105.338  mm,	Z =   -13.496  mm,
	W =    33.800 deg,	P =    31.688 deg,	R =    49.167 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[283]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.394  mm,	Y =   -95.493  mm,	Z =   -11.426  mm,
	W =    33.800 deg,	P =    31.687 deg,	R =     5.016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[284]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1998.286  mm,	Y =    41.338  mm,	Z =    60.142  mm,
	W =    48.322 deg,	P =    22.567 deg,	R =   -50.008 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=    90.000 deg
};
P[285]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1974.603  mm,	Y =    45.573  mm,	Z =    57.345  mm,
	W =    44.953 deg,	P =    23.885 deg,	R =   -17.360 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[286]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.781  mm,	Y =    45.132  mm,	Z =    58.416  mm,
	W =    44.971 deg,	P =    23.892 deg,	R =   -17.364 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[287]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1800.282  mm,	Y =    43.343  mm,	Z =    59.173  mm,
	W =    35.371 deg,	P =    21.388 deg,	R =   -19.727 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[288]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1694.138  mm,	Y =    44.082  mm,	Z =    60.326  mm,
	W =    36.317 deg,	P =    20.984 deg,	R =   -19.292 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[289]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1673.588  mm,	Y =    40.107  mm,	Z =    62.206  mm,
	W =    53.998 deg,	P =    25.339 deg,	R =    13.494 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[290]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1479.942  mm,	Y =    29.744  mm,	Z =    13.601  mm,
	W =    32.121 deg,	P =   -33.901 deg,	R =  -105.164 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[291]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1147.489  mm,	Y =  -189.741  mm,	Z =   168.329  mm,
	W =     1.315 deg,	P =    44.984 deg,	R =  -175.427 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[292]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1576.307  mm,	Y =  -183.607  mm,	Z =    68.328  mm,
	W =   -35.870 deg,	P =    29.236 deg,	R =   126.749 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[293]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.772  mm,	Y =    54.551  mm,	Z =     4.695  mm,
	W =   -44.618 deg,	P =     6.555 deg,	R =     6.600 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[294]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.914  mm,	Y =    53.909  mm,	Z =     4.695  mm,
	W =   -44.618 deg,	P =     6.555 deg,	R =     6.600 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[295]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1545.339  mm,	Y =  -110.843  mm,	Z =    97.938  mm,
	W =   -34.315 deg,	P =    31.113 deg,	R =   142.478 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[296]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1872.782  mm,	Y =  -184.571  mm,	Z =   109.509  mm,
	W =    45.016 deg,	P =     4.170 deg,	R =   -10.886 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[297]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2359.287  mm,	Y =   -66.519  mm,	Z =    63.978  mm,
	W =    44.857 deg,	P =     4.010 deg,	R =    -7.659 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[298]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.163  mm,	Y =    55.259  mm,	Z =    -2.456  mm,
	W =   -44.622 deg,	P =     6.557 deg,	R =     9.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[299]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2208.724  mm,	Y =    55.260  mm,	Z =    -1.608  mm,
	W =   -44.622 deg,	P =     6.557 deg,	R =     9.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[300]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2359.287  mm,	Y =   -66.519  mm,	Z =    63.978  mm,
	W =    44.857 deg,	P =     4.010 deg,	R =    -7.659 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[301]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2218.750  mm,	Y =    54.701  mm,	Z =    -1.257  mm,
	W =   -44.621 deg,	P =     6.557 deg,	R =    19.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[302]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1993.725  mm,	Y =    57.037  mm,	Z =   -12.551  mm,
	W =   -44.622 deg,	P =     6.557 deg,	R =    12.164 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[303]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2365.670  mm,	Y =   -13.848  mm,	Z =    70.171  mm,
	W =    46.444 deg,	P =   -12.090 deg,	R =   -13.381 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[304]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1259.286  mm,	Y =   -92.719  mm,	Z =   151.978  mm,
	W =    44.857 deg,	P =     4.010 deg,	R =    -7.659 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[305]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   805.000  mm,	Y =   -92.719  mm,	Z =   623.407  mm,
	W =     2.372 deg,	P =    44.949 deg,	R =   -90.282 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[306]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1594.999  mm,	Y =  1487.710  mm,	Z =  1080.406  mm,
	W =    44.983 deg,	P =     1.340 deg,	R =    -4.979 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[307]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2536.112  mm,	Y =  1559.710  mm,	Z =  1068.235  mm,
	W =    21.780 deg,	P =   -40.404 deg,	R =   -29.962 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[308]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2669.017  mm,	Y =  1509.121  mm,	Z =  1068.235  mm,
	W =    15.908 deg,	P =   -31.536 deg,	R =   -26.500 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[309]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.297  mm,	Y =    56.009  mm,	Z =   -11.480  mm,
	W =   -44.622 deg,	P =     6.557 deg,	R =    12.163 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[310]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2116.377  mm,	Y =    57.272  mm,	Z =    -8.464  mm,
	W =   -44.771 deg,	P =    -5.102 deg,	R =    25.638 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[311]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2011.005  mm,	Y =    90.726  mm,	Z =    -4.431  mm,
	W =   -45.694 deg,	P =     4.659 deg,	R =   -95.347 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[312]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.491  mm,	Y =   -24.156  mm,	Z =   -24.443  mm,
	W =   -45.682 deg,	P =     4.633 deg,	R =   -95.341 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[313]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2074.109  mm,	Y =   104.959  mm,	Z =    -8.616  mm,
	W =    44.535 deg,	P =     7.322 deg,	R =   -84.843 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[314]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.582  mm,	Y =    71.102  mm,	Z =    -8.601  mm,
	W =    44.528 deg,	P =     7.306 deg,	R =   -97.132 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[315]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2124.898  mm,	Y =    57.654  mm,	Z =    -6.336  mm,
	W =    44.499 deg,	P =     7.303 deg,	R =  -123.592 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[316]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.445  mm,	Y =   257.823  mm,	Z =   284.445  mm,
	W =     2.460 deg,	P =     1.293 deg,	R =   -27.478 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[317]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2595.933  mm,	Y =  1529.341  mm,	Z =  1071.413  mm,
	W =    42.689 deg,	P =    16.599 deg,	R =   -42.374 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[318]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1582.432  mm,	Y =  1398.159  mm,	Z =  1444.559  mm,
	W =    11.626 deg,	P =   -25.521 deg,	R =    17.476 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[319]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   918.616  mm,	Y =    -7.769  mm,	Z =  2170.023  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[320]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1206.616  mm,	Y =   429.231  mm,	Z =  1126.817  mm,
	W =    39.016 deg,	P =   -24.484 deg,	R =   -62.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[321]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.790  mm,	Y =   298.510  mm,	Z =   877.535  mm,
	W =     3.496 deg,	P =   -44.892 deg,	R =    -9.391 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[322]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2873.686  mm,	Y =   257.161  mm,	Z =   290.593  mm,
	W =    15.416 deg,	P =   -27.050 deg,	R =   -31.230 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[323]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.956  mm,	Y =   364.175  mm,	Z =   194.044  mm,
	W =     1.770 deg,	P =     -.218 deg,	R =     7.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[324]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.103  mm,	Y =   362.637  mm,	Z =   193.804  mm,
	W =     1.712 deg,	P =    -2.514 deg,	R =     7.127 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[325]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.534  mm,	Y =    58.571  mm,	Z =   -13.480  mm,
	W =   -44.901 deg,	P =    -3.364 deg,	R =    -3.371 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[326]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1649.374  mm,	Y =    58.882  mm,	Z =   -13.998  mm,
	W =   -44.890 deg,	P =    -3.365 deg,	R =    -8.380 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[327]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1642.250  mm,	Y =    60.164  mm,	Z =   -14.447  mm,
	W =   -44.900 deg,	P =    -3.364 deg,	R =   -25.144 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[328]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1773.620  mm,	Y =   686.210  mm,	Z =   890.848  mm,
	W =     3.495 deg,	P =   -44.893 deg,	R =   -32.945 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[329]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1621.076  mm,	Y =   252.669  mm,	Z =   917.633  mm,
	W =    44.253 deg,	P =    -9.164 deg,	R =   -44.759 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[330]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1636.319  mm,	Y =    65.730  mm,	Z =   -14.946  mm,
	W =   -44.390 deg,	P =     8.298 deg,	R =   -38.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[331]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1604.762  mm,	Y =    95.897  mm,	Z =   -15.933  mm,
	W =   -44.391 deg,	P =     8.298 deg,	R =   -36.615 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[332]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.448  mm,	Y =   103.630  mm,	Z =   -15.279  mm,
	W =   -46.365 deg,	P =   -21.592 deg,	R =   -12.091 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[333]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1563.530  mm,	Y =    78.943  mm,	Z =   -13.367  mm,
	W =    32.003 deg,	P =   -33.504 deg,	R =   -53.547 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[334]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1761.847  mm,	Y =   175.594  mm,	Z =   881.529  mm,
	W =    53.651 deg,	P =   -10.142 deg,	R =   -83.497 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[335]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1298.520  mm,	Y =   205.285  mm,	Z =   914.227  mm,
	W =    53.651 deg,	P =   -10.142 deg,	R =   -83.497 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[336]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1138.188  mm,	Y =  -401.770  mm,	Z =  1054.451  mm,
	W =    41.557 deg,	P =   -19.100 deg,	R =   -69.755 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[337]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1293.188  mm,	Y =  -401.770  mm,	Z =  1054.451  mm,
	W =    41.557 deg,	P =   -19.100 deg,	R =   -69.755 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[338]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1645.188  mm,	Y =  -324.770  mm,	Z =   895.451  mm,
	W =    32.845 deg,	P =   -32.685 deg,	R =   -50.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[339]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1558.407  mm,	Y =    32.303  mm,	Z =   -12.858  mm,
	W =    32.003 deg,	P =   -33.504 deg,	R =   -53.546 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[340]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1556.004  mm,	Y =    26.319  mm,	Z =   -12.970  mm,
	W =    32.004 deg,	P =   -33.504 deg,	R =   -81.670 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[341]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1548.265  mm,	Y =    23.382  mm,	Z =   -13.500  mm,
	W =    32.004 deg,	P =   -33.504 deg,	R =  -110.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[342]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1541.836  mm,	Y =    22.683  mm,	Z =   -13.499  mm,
	W =    32.004 deg,	P =   -33.504 deg,	R =  -110.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[343]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2750.935  mm,	Y =  -367.697  mm,	Z =   194.122  mm,
	W =    -4.046 deg,	P =     -.974 deg,	R =   -13.560 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[344]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.928  mm,	Y =  -697.784  mm,	Z =   947.079  mm,
	W =    40.895 deg,	P =   -20.702 deg,	R =   -39.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[345]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1651.323  mm,	Y =  -246.754  mm,	Z =   908.002  mm,
	W =   -48.803 deg,	P =   -10.122 deg,	R =    46.350 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[346]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2067.448  mm,	Y =   -40.115  mm,	Z =    22.547  mm,
	W =    34.294 deg,	P =    -8.375 deg,	R =   -88.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[347]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.895  mm,	Y =    -9.046  mm,	Z =    21.479  mm,
	W =    34.239 deg,	P =    -8.411 deg,	R =   -88.218 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[348]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2076.271  mm,	Y =     4.342  mm,	Z =    21.635  mm,
	W =    30.086 deg,	P =   -21.642 deg,	R =   -96.023 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[349]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.260  mm,	Y =    16.914  mm,	Z =    21.636  mm,
	W =    23.411 deg,	P =   -33.701 deg,	R =  -102.541 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[350]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1747.472  mm,	Y =  -189.520  mm,	Z =   887.139  mm,
	W =   -45.012 deg,	P =   -17.288 deg,	R =    71.040 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[351]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1268.443  mm,	Y =  -269.816  mm,	Z =   903.959  mm,
	W =   -45.005 deg,	P =   -17.287 deg,	R =    72.332 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[352]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.030  mm,	Y =     -.134  mm,	Z =  2422.493  mm,
	W =     -.020 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[353]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1748.616  mm,	Y =   271.230  mm,	Z =  1366.022  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =    57.110 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[354]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2361.616  mm,	Y =    71.231  mm,	Z =   946.022  mm,
	W =   -25.245 deg,	P =    38.577 deg,	R =    56.316 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[355]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.624  mm,	Y =    22.343  mm,	Z =    16.408  mm,
	W =    23.412 deg,	P =   -33.704 deg,	R =  -102.541 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[356]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1652.850  mm,	Y =  -150.757  mm,	Z =   -11.674  mm,
	W =   -35.869 deg,	P =    29.235 deg,	R =   125.842 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[357]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2422.384  mm,	Y =    34.711  mm,	Z =   895.214  mm,
	W =   -26.680 deg,	P =    37.686 deg,	R =    50.517 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[358]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2455.577  mm,	Y =   -29.126  mm,	Z =   895.215  mm,
	W =   -37.503 deg,	P =    26.957 deg,	R =   -56.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[359]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1656.099  mm,	Y =    18.125  mm,	Z =   -14.737  mm,
	W =   -35.780 deg,	P =    29.286 deg,	R =   139.578 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[360]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.497  mm,	Y =   -22.564  mm,	Z =     1.025  mm,
	W =    44.702 deg,	P =     5.823 deg,	R =    -5.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[361]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2456.027  mm,	Y =   -61.584  mm,	Z =   962.417  mm,
	W =   -36.666 deg,	P =    28.172 deg,	R =   -57.618 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[362]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2083.492  mm,	Y =   163.430  mm,	Z =  1073.319  mm,
	W =   -10.584 deg,	P =    13.460 deg,	R =   -52.492 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[363]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2865.354  mm,	Y =  1371.120  mm,	Z =    76.936  mm,
	W =    -1.528 deg,	P =    -1.642 deg,	R =     2.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.999 deg,	J2=    90.000 deg
};
P[364]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1411.479  mm,	Y =   569.332  mm,	Z =  1273.375  mm,
	W =    35.032 deg,	P =    -9.420 deg,	R =   -62.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[365]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1411.479  mm,	Y =   569.333  mm,	Z =   491.080  mm,
	W =   -35.557 deg,	P =    -4.844 deg,	R =      .283 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[366]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2503.479  mm,	Y =   301.762  mm,	Z =   250.437  mm,
	W =   -27.790 deg,	P =   -29.118 deg,	R =   -29.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[367]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2523.555  mm,	Y =   176.173  mm,	Z =   166.469  mm,
	W =   -19.929 deg,	P =   -29.386 deg,	R =   -53.539 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[368]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2525.579  mm,	Y =   -21.476  mm,	Z =     3.467  mm,
	W =    44.791 deg,	P =    -4.849 deg,	R =     4.871 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[369]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.026  mm,	Y =    67.774  mm,	Z =     -.631  mm,
	W =    44.702 deg,	P =     5.823 deg,	R =    -9.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[370]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2401.530  mm,	Y =    69.488  mm,	Z =    -1.003  mm,
	W =    44.700 deg,	P =     5.824 deg,	R =    -9.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[371]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2504.982  mm,	Y =    92.808  mm,	Z =    48.278  mm,
	W =   -29.361 deg,	P =   -19.966 deg,	R =   -47.133 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[372]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2503.480  mm,	Y =   301.761  mm,	Z =   230.080  mm,
	W =   -25.716 deg,	P =   -28.362 deg,	R =   -30.253 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[373]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2353.479  mm,	Y =   301.761  mm,	Z =   230.080  mm,
	W =   -28.643 deg,	P =   -22.532 deg,	R =   -28.032 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[374]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2353.479  mm,	Y =   121.761  mm,	Z =    98.080  mm,
	W =   -35.259 deg,	P =    -6.903 deg,	R =    -2.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[375]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2426.517  mm,	Y =    66.846  mm,	Z =     2.875  mm,
	W =    43.736 deg,	P =   -11.847 deg,	R =   -16.338 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[376]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2835.246  mm,	Y =  1480.319  mm,	Z =   893.361  mm,
	W =     1.884 deg,	P =   -42.060 deg,	R =    -2.906 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[377]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.014  mm,	Y =   141.761  mm,	Z =   162.390  mm,
	W =   -30.293 deg,	P =   -21.076 deg,	R =     2.382 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[378]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1657.674  mm,	Y =   274.797  mm,	Z =   284.639  mm,
	W =   -30.355 deg,	P =    -3.481 deg,	R =     2.192 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[379]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1192.015  mm,	Y =   363.761  mm,	Z =  1100.390  mm,
	W =     1.467 deg,	P =    42.180 deg,	R =    96.897 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[380]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2149.186  mm,	Y =   260.397  mm,	Z =  1100.389  mm,
	W =    -5.363 deg,	P =    30.946 deg,	R =    85.742 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[381]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2149.186  mm,	Y =   260.397  mm,	Z =   900.389  mm,
	W =    -6.655 deg,	P =    43.605 deg,	R =    84.955 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[382]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2834.470  mm,	Y =  1506.572  mm,	Z =   893.930  mm,
	W =      .428 deg,	P =   -42.104 deg,	R =     -.755 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[383]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2826.478  mm,	Y =  1533.650  mm,	Z =   892.309  mm,
	W =    47.771 deg,	P =   -12.839 deg,	R =   -44.177 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[384]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2815.159  mm,	Y =  1553.063  mm,	Z =   888.714  mm,
	W =    47.469 deg,	P =    -2.511 deg,	R =   -28.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[385]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2769.546  mm,	Y =  1573.155  mm,	Z =   887.864  mm,
	W =    47.469 deg,	P =    -2.511 deg,	R =   -28.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[386]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2763.445  mm,	Y =  1576.537  mm,	Z =   885.675  mm,
	W =    46.964 deg,	P =     8.280 deg,	R =   -26.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[387]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2755.656  mm,	Y =  1578.479  mm,	Z =   883.891  mm,
	W =    46.312 deg,	P =    12.118 deg,	R =   -20.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[388]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2718.475  mm,	Y =  1577.296  mm,	Z =   882.326  mm,
	W =    46.312 deg,	P =    12.119 deg,	R =   -20.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[389]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.503  mm,	Y =   305.740  mm,	Z =   839.267  mm,
	W =     3.505 deg,	P =   -44.886 deg,	R =    -9.395 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[390]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2629.170  mm,	Y =    65.409  mm,	Z =   972.111  mm,
	W =   -34.833 deg,	P =    25.325 deg,	R =    61.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[391]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.926  mm,	Y =   140.894  mm,	Z =   972.130  mm,
	W =      .934 deg,	P =    44.201 deg,	R =   163.009 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[392]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.513  mm,	Y =   318.688  mm,	Z =   839.335  mm,
	W =     3.495 deg,	P =   -44.892 deg,	R =    -9.388 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[393]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.114  mm,	Y =   324.974  mm,	Z =   839.334  mm,
	W =     3.495 deg,	P =   -44.893 deg,	R =   -17.009 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[394]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.099  mm,	Y =   331.260  mm,	Z =   839.334  mm,
	W =     3.495 deg,	P =   -44.893 deg,	R =   -22.694 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[395]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.379  mm,	Y =   402.340  mm,	Z =   838.425  mm,
	W =     3.495 deg,	P =   -44.893 deg,	R =   -22.694 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[396]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.479  mm,	Y =   405.840  mm,	Z =   838.426  mm,
	W =     3.495 deg,	P =   -44.893 deg,	R =   -29.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[397]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1710.366  mm,	Y =   410.197  mm,	Z =   838.426  mm,
	W =     3.495 deg,	P =   -44.893 deg,	R =   -32.945 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[398]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1848.308  mm,	Y =   668.682  mm,	Z =   838.425  mm,
	W =     3.495 deg,	P =   -44.893 deg,	R =   -32.945 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[399]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1912.100  mm,	Y =   218.688  mm,	Z =  1134.610  mm,
	W =    29.171 deg,	P =    60.290 deg,	R =  -156.347 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[400]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   967.194  mm,	Y =   236.168  mm,	Z =  1196.476  mm,
	W =   -52.081 deg,	P =    56.220 deg,	R =   149.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[401]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1113.896  mm,	Y =  -312.111  mm,	Z =   774.061  mm,
	W =   -55.009 deg,	P =    11.243 deg,	R =   103.085 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[402]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2001.132  mm,	Y =  -144.328  mm,	Z =   162.948  mm,
	W =   -38.656 deg,	P =   -14.170 deg,	R =   113.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[403]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1716.035  mm,	Y =   257.698  mm,	Z =   837.982  mm,
	W =    44.762 deg,	P =    -3.344 deg,	R =   -39.059 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[404]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.570  mm,	Y =   170.709  mm,	Z =   839.692  mm,
	W =    43.945 deg,	P =    -9.912 deg,	R =   -48.939 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[405]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1848.071  mm,	Y =   149.119  mm,	Z =   839.997  mm,
	W =    42.189 deg,	P =   -16.814 deg,	R =   -52.365 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[406]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1866.284  mm,	Y =   133.819  mm,	Z =   839.998  mm,
	W =    42.189 deg,	P =   -16.814 deg,	R =   -63.440 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[407]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.887  mm,	Y =  -309.053  mm,	Z =   840.871  mm,
	W =    32.859 deg,	P =   -32.671 deg,	R =   -50.113 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[408]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.832  mm,	Y =  -318.985  mm,	Z =   840.951  mm,
	W =    32.845 deg,	P =   -32.685 deg,	R =   -50.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[409]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.832  mm,	Y =  -323.128  mm,	Z =   840.950  mm,
	W =    32.845 deg,	P =   -32.685 deg,	R =   -45.680 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[410]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.484  mm,	Y =  -329.978  mm,	Z =   840.955  mm,
	W =    32.851 deg,	P =   -32.684 deg,	R =   -43.121 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[411]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.241  mm,	Y =  -405.978  mm,	Z =   840.954  mm,
	W =    32.851 deg,	P =   -32.684 deg,	R =   -43.121 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[412]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.270  mm,	Y =  -409.406  mm,	Z =   840.955  mm,
	W =    32.851 deg,	P =   -32.684 deg,	R =   -40.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[413]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2574.769  mm,	Y =  -572.619  mm,	Z =   -35.483  mm,
	W =   -30.992 deg,	P =   -17.135 deg,	R =    63.872 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[414]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2505.964  mm,	Y =  -686.865  mm,	Z =    -4.700  mm,
	W =   -27.895 deg,	P =   -22.051 deg,	R =    54.654 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[415]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.764  mm,	Y =  -412.653  mm,	Z =   840.603  mm,
	W =    37.851 deg,	P =   -26.432 deg,	R =   -42.977 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[416]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.936  mm,	Y =  -669.624  mm,	Z =   840.603  mm,
	W =    37.851 deg,	P =   -26.432 deg,	R =   -42.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[417]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1717.056  mm,	Y =  -256.503  mm,	Z =   837.218  mm,
	W =   -39.799 deg,	P =    -6.282 deg,	R =    41.707 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[418]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1805.891  mm,	Y =  -184.307  mm,	Z =   837.201  mm,
	W =   -40.187 deg,	P =    -1.576 deg,	R =    52.566 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[419]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1840.820  mm,	Y =  -155.377  mm,	Z =   837.200  mm,
	W =   -40.187 deg,	P =    -1.576 deg,	R =    63.074 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[420]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1865.820  mm,	Y =  -134.434  mm,	Z =   837.199  mm,
	W =   -40.187 deg,	P =    -1.576 deg,	R =    78.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[421]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.381  mm,	Y =  -565.789  mm,	Z =   129.772  mm,
	W =   -49.202 deg,	P =    -2.428 deg,	R =    64.376 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[422]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1315.952  mm,	Y =  -565.788  mm,	Z =   468.198  mm,
	W =   -49.202 deg,	P =    -2.428 deg,	R =    64.376 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[423]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1291.369  mm,	Y = -1688.719  mm,	Z =  1275.725  mm,
	W =   -48.540 deg,	P =   -14.944 deg,	R =    31.683 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[424]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1516.478  mm,	Y =  -924.777  mm,	Z =   251.093  mm,
	W =   -43.355 deg,	P =    13.455 deg,	R =    91.500 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[425]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.800  mm,	Y =  1215.643  mm,	Z =  1225.099  mm,
	W =    19.059 deg,	P =    -5.228 deg,	R =    -7.084 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.999 deg,	J2=    90.000 deg
};
P[426]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2379.239  mm,	Y =  -951.992  mm,	Z =   112.055  mm,
	W =   -43.355 deg,	P =    13.455 deg,	R =   104.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[427]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2332.553  mm,	Y =   -45.582  mm,	Z =   845.925  mm,
	W =   -24.408 deg,	P =    42.022 deg,	R =    55.121 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[428]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2408.424  mm,	Y =   -44.749  mm,	Z =   846.748  mm,
	W =   -24.460 deg,	P =    42.071 deg,	R =    55.079 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[429]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2149.602  mm,	Y = -1008.832  mm,	Z =   291.902  mm,
	W =   -43.358 deg,	P =    13.457 deg,	R =   121.686 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[430]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1603.602  mm,	Y =  -724.496  mm,	Z =   291.902  mm,
	W =   -24.164 deg,	P =   -39.192 deg,	R =   -55.648 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[431]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2431.602  mm,	Y =  -724.497  mm,	Z =   291.902  mm,
	W =   -19.487 deg,	P =   -41.401 deg,	R =   -37.471 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[432]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2488.601  mm,	Y =  -724.497  mm,	Z =    58.902  mm,
	W =   -19.487 deg,	P =   -41.401 deg,	R =   -47.828 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[433]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.463  mm,	Y =   -45.092  mm,	Z =   844.000  mm,
	W =   -36.666 deg,	P =    28.172 deg,	R =   -57.618 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[434]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.465  mm,	Y =   -74.992  mm,	Z =   843.998  mm,
	W =   -36.666 deg,	P =    28.172 deg,	R =   -57.618 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[435]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2488.601  mm,	Y =  -724.497  mm,	Z =    58.902  mm,
	W =   -19.487 deg,	P =   -41.401 deg,	R =   -47.828 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[436]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2431.602  mm,	Y =  -724.497  mm,	Z =   291.902  mm,
	W =   -19.487 deg,	P =   -41.401 deg,	R =   -37.471 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[437]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1603.602  mm,	Y =  -724.496  mm,	Z =   291.902  mm,
	W =   -24.164 deg,	P =   -39.192 deg,	R =   -55.648 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[438]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1523.303  mm,	Y =  -411.413  mm,	Z =   309.664  mm,
	W =    30.908 deg,	P =   -20.021 deg,	R =    92.765 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[439]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2524.463  mm,	Y =  -197.098  mm,	Z =   128.768  mm,
	W =    34.356 deg,	P =   -21.215 deg,	R =    72.687 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[440]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2510.751  mm,	Y =   -83.956  mm,	Z =    69.338  mm,
	W =    37.818 deg,	P =   -13.036 deg,	R =    74.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[441]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2526.277  mm,	Y =    63.365  mm,	Z =     6.956  mm,
	W =   -19.934 deg,	P =   -29.387 deg,	R =   -57.880 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[442]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2476.260  mm,	Y =    64.731  mm,	Z =     8.361  mm,
	W =   -19.934 deg,	P =   -29.387 deg,	R =   -63.550 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[443]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2476.548  mm,	Y =  -100.813  mm,	Z =    49.189  mm,
	W =    17.695 deg,	P =    34.286 deg,	R =    43.595 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[444]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2544.628  mm,	Y =   -45.109  mm,	Z =    73.600  mm,
	W =     4.103 deg,	P =   -36.188 deg,	R =    83.315 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[445]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2455.658  mm,	Y =    67.026  mm,	Z =    12.574  mm,
	W =   -19.934 deg,	P =   -29.387 deg,	R =   -80.749 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[446]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.398  mm,	Y =    63.665  mm,	Z =     4.813  mm,
	W =   -34.842 deg,	P =    -3.506 deg,	R =     3.705 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[447]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2497.820  mm,	Y =   -70.192  mm,	Z =   107.198  mm,
	W =    33.062 deg,	P =   -37.223 deg,	R =    56.855 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[448]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2497.820  mm,	Y =  -198.763  mm,	Z =   107.198  mm,
	W =    47.990 deg,	P =    -4.330 deg,	R =    17.845 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[449]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1687.303  mm,	Y =  -198.763  mm,	Z =   107.197  mm,
	W =    47.989 deg,	P =    -4.330 deg,	R =     1.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[450]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2408.228  mm,	Y =    62.808  mm,	Z =     2.884  mm,
	W =   -34.842 deg,	P =    -3.506 deg,	R =     3.705 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[451]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2427.994  mm,	Y =    64.089  mm,	Z =     5.094  mm,
	W =   -26.267 deg,	P =   -23.909 deg,	R =     6.613 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[452]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2105.146  mm,	Y =   229.217  mm,	Z =   836.625  mm,
	W =     -.930 deg,	P =    44.011 deg,	R =    86.734 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[453]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2241.610  mm,	Y =   227.738  mm,	Z =   836.136  mm,
	W =     -.934 deg,	P =    44.019 deg,	R =    86.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[454]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.618  mm,	Y =   220.907  mm,	Z =   836.227  mm,
	W =      .352 deg,	P =    45.176 deg,	R =    68.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[455]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2288.133  mm,	Y =   209.408  mm,	Z =   838.055  mm,
	W =      .352 deg,	P =    45.176 deg,	R =    48.726 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[456]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2639.489  mm,	Y =   -80.581  mm,	Z =   838.835  mm,
	W =   -21.961 deg,	P =    40.322 deg,	R =    22.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[457]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2671.476  mm,	Y =  -107.218  mm,	Z =   838.434  mm,
	W =   -38.802 deg,	P =    24.854 deg,	R =    -1.556 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[458]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2691.547  mm,	Y =  -123.789  mm,	Z =   838.888  mm,
	W =   -41.798 deg,	P =    18.462 deg,	R =     1.086 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[459]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2714.691  mm,	Y =  -143.146  mm,	Z =   839.288  mm,
	W =   -41.797 deg,	P =    18.462 deg,	R =    17.758 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[460]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1451.608  mm,	Y =  -200.987  mm,	Z =   183.132  mm,
	W =     1.722 deg,	P =   -44.974 deg,	R =    59.643 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[461]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2291.608  mm,	Y =  -200.987  mm,	Z =   183.132  mm,
	W =    44.564 deg,	P =    -7.025 deg,	R =   -20.843 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[462]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2127.396  mm,	Y =   155.322  mm,	Z =   839.805  mm,
	W =      .687 deg,	P =    43.701 deg,	R =   155.166 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[463]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2122.679  mm,	Y =   137.192  mm,	Z =   838.754  mm,
	W =      .769 deg,	P =    43.730 deg,	R =   155.231 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[464]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2291.608  mm,	Y =  -200.987  mm,	Z =   183.132  mm,
	W =    44.564 deg,	P =    -7.025 deg,	R =   -20.843 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[465]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2291.607  mm,	Y =  -337.988  mm,	Z =   584.132  mm,
	W =      .177 deg,	P =    -3.948 deg,	R =    26.777 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[466]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2722.663  mm,	Y =  -266.783  mm,	Z =   377.226  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =    36.754 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[467]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2093.063  mm,	Y =   125.013  mm,	Z =   838.824  mm,
	W =      .722 deg,	P =    43.766 deg,	R =    69.804 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[468]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2081.404  mm,	Y =   152.862  mm,	Z =   838.116  mm,
	W =      .593 deg,	P =    43.021 deg,	R =   -18.687 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[469]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2722.662  mm,	Y =  -266.783  mm,	Z =   377.226  mm,
	W =    -5.375 deg,	P =   -10.513 deg,	R =    27.278 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[470]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.844  mm,	Y =  -377.783  mm,	Z =   377.226  mm,
	W =      .500 deg,	P =    -4.204 deg,	R =    -6.802 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[471]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2094.019  mm,	Y =   192.771  mm,	Z =   837.215  mm,
	W =     1.460 deg,	P =    43.967 deg,	R =   -19.119 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[472]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2121.115  mm,	Y =   201.424  mm,	Z =   840.005  mm,
	W =      .553 deg,	P =    43.710 deg,	R =  -116.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[473]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.844  mm,	Y =  -377.783  mm,	Z =   377.226  mm,
	W =      .500 deg,	P =    -4.204 deg,	R =    -6.802 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[474]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   731.273  mm,	Y =  -301.784  mm,	Z =   377.226  mm,
	W =   -10.136 deg,	P =    51.294 deg,	R =   -17.031 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[475]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   897.241  mm,	Y =   265.977  mm,	Z =   328.733  mm,
	W =   -15.049 deg,	P =    18.684 deg,	R =   -44.873 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[476]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1702.715  mm,	Y =   146.217  mm,	Z =    77.226  mm,
	W =   -22.781 deg,	P =    33.614 deg,	R =   -37.184 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[477]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2134.939  mm,	Y =   176.615  mm,	Z =   838.538  mm,
	W =     -.620 deg,	P =    43.564 deg,	R =   157.987 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[478]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2127.811  mm,	Y =   155.635  mm,	Z =   839.031  mm,
	W =    -1.408 deg,	P =    43.339 deg,	R =   157.483 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[479]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1713.805  mm,	Y =   111.978  mm,	Z =    49.291  mm,
	W =   -29.116 deg,	P =    35.962 deg,	R =    22.590 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[480]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2094.232  mm,	Y =    19.822  mm,	Z =    16.623  mm,
	W =   -33.555 deg,	P =   -20.475 deg,	R =   113.896 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[481]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2206.375  mm,	Y =   -84.206  mm,	Z =    -4.653  mm,
	W =   -33.592 deg,	P =   -20.528 deg,	R =   117.916 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[482]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2255.454  mm,	Y =  -121.848  mm,	Z =   -10.027  mm,
	W =   -17.164 deg,	P =   -39.269 deg,	R =    90.811 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[483]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2303.774  mm,	Y =  -139.202  mm,	Z =   -19.217  mm,
	W =   -17.185 deg,	P =   -39.290 deg,	R =    99.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[484]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1968.967  mm,	Y =   144.072  mm,	Z =    81.579  mm,
	W =   -36.943 deg,	P =    -2.644 deg,	R =    15.378 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[485]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2324.967  mm,	Y =    69.072  mm,	Z =    40.981  mm,
	W =   -36.311 deg,	P =    -7.792 deg,	R =     8.435 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[486]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2319.749  mm,	Y =  -144.824  mm,	Z =   -20.315  mm,
	W =   -25.651 deg,	P =   -34.890 deg,	R =    98.088 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[487]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2336.580  mm,	Y =  -147.632  mm,	Z =   -22.463  mm,
	W =   -25.652 deg,	P =   -34.890 deg,	R =    87.210 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[488]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2324.967  mm,	Y =    69.072  mm,	Z =    40.981  mm,
	W =   -36.311 deg,	P =    -7.792 deg,	R =     8.435 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[489]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2351.123  mm,	Y =   -55.973  mm,	Z =    40.981  mm,
	W =   -34.833 deg,	P =   -13.430 deg,	R =      .429 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[490]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.220  mm,	Y =    30.146  mm,	Z =    16.113  mm,
	W =    23.413 deg,	P =   -33.667 deg,	R =   -79.616 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[491]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.747  mm,	Y =    34.877  mm,	Z =    15.620  mm,
	W =    21.330 deg,	P =   -32.904 deg,	R =   -59.466 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[492]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2374.335  mm,	Y =   -24.017  mm,	Z =    48.385  mm,
	W =   -44.695 deg,	P =    -5.891 deg,	R =    15.397 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[493]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2142.335  mm,	Y =   175.983  mm,	Z =   148.385  mm,
	W =   -44.695 deg,	P =    -5.891 deg,	R =    15.397 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[494]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1218.335  mm,	Y =   175.983  mm,	Z =   148.385  mm,
	W =   -44.695 deg,	P =    -5.891 deg,	R =    15.397 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[495]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1218.335  mm,	Y =  -367.017  mm,	Z =  1248.385  mm,
	W =   -44.695 deg,	P =    -5.891 deg,	R =    15.397 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[496]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2165.335  mm,	Y =  -107.803  mm,	Z =  1248.384  mm,
	W =    46.924 deg,	P =   -15.313 deg,	R =    -6.108 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[497]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2340.715  mm,	Y =     7.886  mm,	Z =   987.384  mm,
	W =    41.825 deg,	P =    27.874 deg,	R =   -28.664 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[498]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2116.413  mm,	Y =    35.427  mm,	Z =    15.101  mm,
	W =    12.618 deg,	P =   -40.111 deg,	R =  -122.067 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.999 deg,	J2=   -90.000 deg
};
P[499]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2130.313  mm,	Y =    43.358  mm,	Z =    11.053  mm,
	W =    12.036 deg,	P =   -37.618 deg,	R =  -104.116 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[500]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2410.122  mm,	Y =   -61.241  mm,	Z =   951.399  mm,
	W =    37.791 deg,	P =    26.519 deg,	R =   -29.934 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[501]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2446.428  mm,	Y =    27.759  mm,	Z =   951.399  mm,
	W =    19.638 deg,	P =    41.342 deg,	R =    20.588 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[502]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2149.942  mm,	Y =    55.888  mm,	Z =     9.504  mm,
	W =    12.076 deg,	P =   -37.629 deg,	R =   -82.652 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[503]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2223.889  mm,	Y =   102.740  mm,	Z =    -4.406  mm,
	W =    13.123 deg,	P =   -36.448 deg,	R =   -87.052 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[504]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2446.428  mm,	Y =    27.759  mm,	Z =   951.399  mm,
	W =    19.638 deg,	P =    41.342 deg,	R =    20.588 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[505]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1091.922  mm,	Y =  -116.142  mm,	Z =  1409.503  mm,
	W =    -3.282 deg,	P =    29.924 deg,	R =   -13.595 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[506]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1277.439  mm,	Y =  -574.806  mm,	Z =   798.059  mm,
	W =    19.888 deg,	P =    17.890 deg,	R =    65.874 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[507]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1662.318  mm,	Y =  -290.218  mm,	Z =   298.449  mm,
	W =    46.284 deg,	P =    -3.804 deg,	R =    76.744 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[508]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.473  mm,	Y =  -224.770  mm,	Z =   280.594  mm,
	W =    49.761 deg,	P =   -15.389 deg,	R =    77.321 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[509]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.474  mm,	Y =   -24.769  mm,	Z =   118.594  mm,
	W =    48.014 deg,	P =    21.400 deg,	R =    69.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[510]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2256.562  mm,	Y =   119.443  mm,	Z =    -9.324  mm,
	W =     8.564 deg,	P =   -38.851 deg,	R =   -87.708 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[511]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2298.877  mm,	Y =   133.398  mm,	Z =   -15.964  mm,
	W =   -25.455 deg,	P =   -35.130 deg,	R =   -43.698 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[512]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.474  mm,	Y =   -24.769  mm,	Z =   118.594  mm,
	W =    48.014 deg,	P =    21.400 deg,	R =    69.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[513]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.473  mm,	Y =  -152.769  mm,	Z =   150.477  mm,
	W =    50.237 deg,	P =    13.157 deg,	R =   -13.726 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[514]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2551.972  mm,	Y =  -676.778  mm,	Z =   -60.803  mm,
	W =   -25.914 deg,	P =   -20.730 deg,	R =    53.931 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[515]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.061  mm,	Y =  -660.992  mm,	Z =   -63.273  mm,
	W =   -25.035 deg,	P =   -20.126 deg,	R =    53.624 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[516]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2223.625  mm,	Y =   -98.572  mm,	Z =    36.411  mm,
	W =    43.410 deg,	P =    13.252 deg,	R =   -13.621 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[517]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2555.644  mm,	Y =  -656.185  mm,	Z =   -64.155  mm,
	W =   -33.504 deg,	P =     -.369 deg,	R =    59.795 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[518]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2567.112  mm,	Y =  -646.430  mm,	Z =   -62.505  mm,
	W =   -33.129 deg,	P =   -11.990 deg,	R =    19.464 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[519]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.335  mm,	Y =   -96.402  mm,	Z =    22.227  mm,
	W =    43.411 deg,	P =    13.252 deg,	R =   -13.621 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[520]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2615.881  mm,	Y =  -607.927  mm,	Z =   -73.286  mm,
	W =   -31.218 deg,	P =    -7.950 deg,	R =    48.121 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[521]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2626.109  mm,	Y =  -566.903  mm,	Z =   -73.840  mm,
	W =   -26.872 deg,	P =   -18.421 deg,	R =    63.003 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[522]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2496.861  mm,	Y =  -851.474  mm,	Z =     -.087  mm,
	W =   -43.356 deg,	P =    13.468 deg,	R =   106.076 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[523]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2058.051  mm,	Y =  -175.228  mm,	Z =   206.322  mm,
	W =    46.132 deg,	P =   -12.958 deg,	R =   -13.413 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[524]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1948.050  mm,	Y =  -251.228  mm,	Z =   206.322  mm,
	W =   -42.705 deg,	P =    -6.373 deg,	R =    58.147 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[525]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1948.050  mm,	Y =  -151.228  mm,	Z =    88.322  mm,
	W =   -42.016 deg,	P =    10.583 deg,	R =    76.528 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[526]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2494.766  mm,	Y =  -783.515  mm,	Z =     1.726  mm,
	W =   -43.359 deg,	P =    13.457 deg,	R =   106.066 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[527]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2518.465  mm,	Y =  -758.192  mm,	Z =     -.116  mm,
	W =   -37.799 deg,	P =   -26.510 deg,	R =   -29.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[528]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1919.292  mm,	Y =  -155.329  mm,	Z =    58.531  mm,
	W =   -29.954 deg,	P =    35.300 deg,	R =   158.688 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[529]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1284.066  mm,	Y =  -721.135  mm,	Z =    74.949  mm,
	W =   -12.631 deg,	P =    46.016 deg,	R =    -5.788 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[530]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1387.863  mm,	Y =  -282.758  mm,	Z =  1218.271  mm,
	W =      .355 deg,	P =    36.366 deg,	R =   -97.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[531]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.864  mm,	Y =  -267.378  mm,	Z =   958.286  mm,
	W =      .355 deg,	P =    36.366 deg,	R =   -97.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[532]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2564.966  mm,	Y =  -757.763  mm,	Z =      .954  mm,
	W =   -37.799 deg,	P =   -26.510 deg,	R =   -29.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[533]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2439.719  mm,	Y =   -63.381  mm,	Z =     7.737  mm,
	W =    37.820 deg,	P =   -13.031 deg,	R =    74.753 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[534]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2438.182  mm,	Y =   -87.880  mm,	Z =     8.378  mm,
	W =    36.507 deg,	P =    16.766 deg,	R =    81.655 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[535]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2439.037  mm,	Y =  -126.347  mm,	Z =    16.024  mm,
	W =    36.512 deg,	P =    16.766 deg,	R =    82.316 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[536]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2439.331  mm,	Y =  -141.407  mm,	Z =    20.177  mm,
	W =    33.075 deg,	P =    28.111 deg,	R =    91.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[537]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2504.883  mm,	Y =    10.258  mm,	Z =     4.530  mm,
	W =    15.432 deg,	P =   -38.749 deg,	R =    78.167 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[538]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2682.606  mm,	Y =    41.024  mm,	Z =   922.793  mm,
	W =    34.567 deg,	P =    32.862 deg,	R =   -60.440 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[539]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2091.653  mm,	Y =  -160.976  mm,	Z =   922.793  mm,
	W =    -5.705 deg,	P =    39.927 deg,	R =  -167.749 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[540]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2452.621  mm,	Y =    11.213  mm,	Z =     3.541  mm,
	W =    15.421 deg,	P =   -38.793 deg,	R =    78.144 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[541]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2443.542  mm,	Y =    10.715  mm,	Z =     4.572  mm,
	W =    15.421 deg,	P =   -38.793 deg,	R =    92.357 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[542]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1688.136  mm,	Y =   -62.029  mm,	Z =   -11.830  mm,
	W =    44.899 deg,	P =    -2.949 deg,	R =     6.765 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[543]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1649.697  mm,	Y =   -61.920  mm,	Z =   -11.739  mm,
	W =    44.923 deg,	P =    -2.958 deg,	R =     5.948 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[544]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1638.071  mm,	Y =   -63.852  mm,	Z =   -13.382  mm,
	W =    44.923 deg,	P =    -2.958 deg,	R =    30.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[545]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1631.622  mm,	Y =   -70.088  mm,	Z =   -12.380  mm,
	W =    44.727 deg,	P =     5.577 deg,	R =    39.396 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[546]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1604.527  mm,	Y =   -99.847  mm,	Z =   -10.764  mm,
	W =    44.727 deg,	P =     5.577 deg,	R =    41.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[547]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1865.403  mm,	Y =  -247.947  mm,	Z =  1181.723  mm,
	W =   -12.320 deg,	P =    37.383 deg,	R =  -179.360 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[548]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   732.832  mm,	Y =   236.053  mm,	Z =  1006.723  mm,
	W =   -38.649 deg,	P =     6.276 deg,	R =    12.974 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[549]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1743.832  mm,	Y =   113.053  mm,	Z =   141.722  mm,
	W =   -44.065 deg,	P =    11.483 deg,	R =   -10.762 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[550]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1579.711  mm,	Y =  -108.035  mm,	Z =   -10.500  mm,
	W =    39.341 deg,	P =   -22.846 deg,	R =    22.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[551]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1561.920  mm,	Y =   -83.236  mm,	Z =    -9.721  mm,
	W =   -23.520 deg,	P =   -39.540 deg,	R =    41.279 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[552]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1558.907  mm,	Y =   -36.151  mm,	Z =   -10.999  mm,
	W =   -25.567 deg,	P =   -38.384 deg,	R =    42.613 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[553]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1950.533  mm,	Y =    42.756  mm,	Z =   152.316  mm,
	W =   -44.065 deg,	P =    11.483 deg,	R =    13.279 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[554]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2150.533  mm,	Y =    42.756  mm,	Z =    86.316  mm,
	W =   -44.065 deg,	P =    11.483 deg,	R =    13.279 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[555]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1554.651  mm,	Y =   -28.866  mm,	Z =   -10.539  mm,
	W =   -23.520 deg,	P =   -39.540 deg,	R =    72.199 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[556]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1541.060  mm,	Y =   -26.299  mm,	Z =   -11.935  mm,
	W =   -23.653 deg,	P =   -40.441 deg,	R =   108.581 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[557]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.699  mm,	Y =   -15.223  mm,	Z =    38.789  mm,
	W =   -43.651 deg,	P =    12.243 deg,	R =    12.532 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[558]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2364.471  mm,	Y =    13.944  mm,	Z =     1.114  mm,
	W =    44.968 deg,	P =     1.925 deg,	R =    -1.926 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[559]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2401.563  mm,	Y =    16.505  mm,	Z =      .800  mm,
	W =    44.555 deg,	P =    -6.719 deg,	R =    -4.136 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[560]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2095.142  mm,	Y =    -6.873  mm,	Z =    39.768  mm,
	W =   -46.048 deg,	P =     1.387 deg,	R =    -1.362 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[561]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2427.641  mm,	Y =    15.325  mm,	Z =     3.488  mm,
	W =    36.323 deg,	P =   -28.640 deg,	R =     -.319 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[562]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.905  mm,	Y =  -263.426  mm,	Z =   282.139  mm,
	W =     -.001 deg,	P =      .004 deg,	R =    26.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[563]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2059.854  mm,	Y =   139.575  mm,	Z =   116.497  mm,
	W =   -43.126 deg,	P =    18.070 deg,	R =     3.079 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[564]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2867.649  mm,	Y =  -263.060  mm,	Z =   288.229  mm,
	W =   -12.814 deg,	P =   -19.263 deg,	R =    25.759 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[565]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1914.760  mm,	Y =  1445.095  mm,	Z =  1037.108  mm,
	W =    42.423 deg,	P =    16.662 deg,	R =   -14.263 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[566]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.456  mm,	Y =   176.449  mm,	Z =    24.499  mm,
	W =    17.337 deg,	P =    42.452 deg,	R =  -154.363 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[567]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2588.510  mm,	Y =   186.120  mm,	Z =   -63.295  mm,
	W =   -40.710 deg,	P =   -12.372 deg,	R =      .282 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[568]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2632.018  mm,	Y =   212.269  mm,	Z =   -70.671  mm,
	W =   -16.773 deg,	P =   -29.886 deg,	R =   -20.810 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[569]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1413.425  mm,	Y =    86.564  mm,	Z =   243.315  mm,
	W =    35.973 deg,	P =    30.977 deg,	R =  -149.882 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[570]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1396.163  mm,	Y =    95.442  mm,	Z =   229.882  mm,
	W =    36.884 deg,	P =    -6.321 deg,	R =   -64.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[571]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2035.138  mm,	Y =    95.442  mm,	Z =   116.882  mm,
	W =    36.883 deg,	P =    -6.321 deg,	R =   -86.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[572]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.539  mm,	Y =   147.286  mm,	Z =   -13.746  mm,
	W =   -26.040 deg,	P =    35.756 deg,	R =   -36.092 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[573]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.050  mm,	Y =   100.399  mm,	Z =   -12.949  mm,
	W =   -26.718 deg,	P =    37.664 deg,	R =   -37.273 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[574]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.267  mm,	Y =    88.409  mm,	Z =   -12.292  mm,
	W =   -26.718 deg,	P =    37.664 deg,	R =    -4.100 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[575]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.710  mm,	Y =    89.750  mm,	Z =   -10.623  mm,
	W =   -33.311 deg,	P =    24.086 deg,	R =    -7.323 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[576]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.625  mm,	Y = -1470.562  mm,	Z =  1075.975  mm,
	W =   -42.854 deg,	P =   -15.295 deg,	R =    39.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[577]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1693.242  mm,	Y =    90.339  mm,	Z =   -10.067  mm,
	W =   -31.545 deg,	P =    22.877 deg,	R =    21.402 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[578]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1970.669  mm,	Y =    89.152  mm,	Z =   -12.326  mm,
	W =   -33.410 deg,	P =    24.055 deg,	R =    37.165 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[579]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1998.760  mm,	Y =    90.877  mm,	Z =    -8.459  mm,
	W =   -45.190 deg,	P =    -4.344 deg,	R =    36.475 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[580]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2365.251  mm,	Y =    22.628  mm,	Z =    -2.109  mm,
	W =   -44.993 deg,	P =      .940 deg,	R =     6.369 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[581]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2508.618  mm,	Y =    25.743  mm,	Z =     2.034  mm,
	W =   -44.996 deg,	P =      .946 deg,	R =     6.368 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[582]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2363.154  mm,	Y =   -73.963  mm,	Z =     -.369  mm,
	W =   -41.235 deg,	P =    -5.523 deg,	R =     1.452 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[583]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2405.285  mm,	Y =   -73.535  mm,	Z =     -.369  mm,
	W =   -41.235 deg,	P =    -5.523 deg,	R =     1.452 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[584]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2428.032  mm,	Y =   -72.786  mm,	Z =     1.628  mm,
	W =   -37.657 deg,	P =   -19.014 deg,	R =    15.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[585]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.679  mm,	Y =    42.631  mm,	Z =   847.798  mm,
	W =    36.871 deg,	P =    25.909 deg,	R =   -30.339 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[586]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.124  mm,	Y =    41.236  mm,	Z =   848.781  mm,
	W =    37.791 deg,	P =    26.520 deg,	R =   -29.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[587]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2410.910  mm,	Y =    45.622  mm,	Z =   847.064  mm,
	W =    14.866 deg,	P =    42.980 deg,	R =    21.274 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[588]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2410.910  mm,	Y =    68.050  mm,	Z =   847.063  mm,
	W =    14.866 deg,	P =    42.980 deg,	R =    21.274 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[589]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2465.746  mm,	Y =   547.387  mm,	Z =    91.178  mm,
	W =    16.836 deg,	P =   -31.148 deg,	R =   -30.329 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[590]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.131  mm,	Y =   -94.796  mm,	Z =    -4.171  mm,
	W =    39.951 deg,	P =    24.695 deg,	R =    73.312 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[591]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.984  mm,	Y =    22.770  mm,	Z =   -24.522  mm,
	W =    39.950 deg,	P =    24.717 deg,	R =    73.324 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[592]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2263.191  mm,	Y =   -60.998  mm,	Z =     5.530  mm,
	W =    43.410 deg,	P =    13.252 deg,	R =    -7.762 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[593]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.762  mm,	Y =   -61.641  mm,	Z =     5.530  mm,
	W =    43.410 deg,	P =    13.252 deg,	R =    -7.762 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[594]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.673  mm,	Y =   -58.252  mm,	Z =    -4.687  mm,
	W =    43.401 deg,	P =    13.250 deg,	R =   -15.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[595]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2202.385  mm,	Y =   -59.979  mm,	Z =    -2.526  mm,
	W =    43.410 deg,	P =    13.252 deg,	R =   -15.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[596]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.325  mm,	Y =   -60.465  mm,	Z =    -2.403  mm,
	W =    43.410 deg,	P =    13.252 deg,	R =   -24.946 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[597]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1993.391  mm,	Y =   -60.455  mm,	Z =   -13.196  mm,
	W =    43.411 deg,	P =    13.253 deg,	R =   -13.621 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[598]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2091.686  mm,	Y =   -61.863  mm,	Z =   -12.523  mm,
	W =    43.411 deg,	P =    13.253 deg,	R =   -13.621 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[599]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2578.421  mm,	Y =   578.735  mm,	Z =     1.160  mm,
	W =   -34.514 deg,	P =   -13.805 deg,	R =    35.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[600]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2250.563  mm,	Y =   578.735  mm,	Z =   206.874  mm,
	W =   -34.514 deg,	P =   -13.805 deg,	R =    35.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[601]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1581.308  mm,	Y =   447.592  mm,	Z =   359.920  mm,
	W =   -39.823 deg,	P =   -20.635 deg,	R =    36.563 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[602]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   966.134  mm,	Y =   141.704  mm,	Z =  1243.874  mm,
	W =   -10.927 deg,	P =      .883 deg,	R =    -9.877 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[603]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1460.087  mm,	Y = -1490.374  mm,	Z =  1570.421  mm,
	W =    14.952 deg,	P =   -64.091 deg,	R =   -22.785 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[604]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2509.757  mm,	Y = -1496.585  mm,	Z =  1047.977  mm,
	W =   -50.284 deg,	P =   -30.325 deg,	R =    67.097 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[605]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2114.809  mm,	Y =   -65.234  mm,	Z =    -7.269  mm,
	W =    44.993 deg,	P =     6.743 deg,	R =   -31.685 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[606]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.250  mm,	Y =  -111.352  mm,	Z =   -10.601  mm,
	W =   -38.374 deg,	P =    21.350 deg,	R =    99.173 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[607]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2102.381  mm,	Y =   -81.362  mm,	Z =    -8.878  mm,
	W =   -38.373 deg,	P =    21.370 deg,	R =   110.629 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[608]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.926  mm,	Y =   -68.888  mm,	Z =    -8.351  mm,
	W =   -38.378 deg,	P =    21.372 deg,	R =   123.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[609]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2113.055  mm,	Y =  -234.031  mm,	Z =   836.605  mm,
	W =    -2.879 deg,	P =    40.084 deg,	R =   -96.451 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[610]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2243.434  mm,	Y =  -233.025  mm,	Z =   836.634  mm,
	W =    -2.881 deg,	P =    40.072 deg,	R =   -96.452 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[611]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.378  mm,	Y =  -226.582  mm,	Z =   836.634  mm,
	W =    -2.881 deg,	P =    40.072 deg,	R =   -66.779 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[612]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2287.592  mm,	Y =  -213.439  mm,	Z =   836.634  mm,
	W =    -2.169 deg,	P =    44.406 deg,	R =   -56.318 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[613]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2604.246  mm,	Y = -1559.689  mm,	Z =  1072.916  mm,
	W =   -42.880 deg,	P =   -14.276 deg,	R =     5.349 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[614]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.490  mm,	Y = -1554.283  mm,	Z =  1178.815  mm,
	W =   -45.666 deg,	P =   -14.828 deg,	R =     8.688 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[615]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   310.715  mm,	Y =  -926.292  mm,	Z =  2102.112  mm,
	W =    13.518 deg,	P =   -46.200 deg,	R =   -44.908 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[616]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   411.688  mm,	Y = -1212.483  mm,	Z =  1529.953  mm,
	W =    32.650 deg,	P =   -32.880 deg,	R =   -50.053 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[617]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1022.561  mm,	Y = -1112.994  mm,	Z =   854.309  mm,
	W =    32.649 deg,	P =   -32.880 deg,	R =   -22.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[618]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2627.082  mm,	Y =    66.873  mm,	Z =   839.075  mm,
	W =    20.543 deg,	P =    38.277 deg,	R =   -21.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[619]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2717.203  mm,	Y =   135.284  mm,	Z =   842.434  mm,
	W =    26.176 deg,	P =    38.126 deg,	R =   -54.891 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[620]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1020.561  mm,	Y = -1102.994  mm,	Z =   866.309  mm,
	W =    32.649 deg,	P =   -32.880 deg,	R =   -22.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[621]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   743.145  mm,	Y =  -624.994  mm,	Z =   866.309  mm,
	W =   -10.474 deg,	P =   -44.020 deg,	R =    41.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[622]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2132.094  mm,	Y =  -166.305  mm,	Z =   835.348  mm,
	W =      .273 deg,	P =    41.132 deg,	R =  -157.429 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[623]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2121.423  mm,	Y =  -142.564  mm,	Z =   839.385  mm,
	W =      .273 deg,	P =    41.133 deg,	R =  -157.429 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[624]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   974.924  mm,	Y = -1071.847  mm,	Z =   858.131  mm,
	W =    40.735 deg,	P =   -21.063 deg,	R =   -37.349 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[625]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   535.748  mm,	Y =  -560.848  mm,	Z =   858.131  mm,
	W =     6.193 deg,	P =   -44.662 deg,	R =    21.224 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[626]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2098.795  mm,	Y =  -128.635  mm,	Z =   838.528  mm,
	W =      .273 deg,	P =    41.131 deg,	R =   -73.876 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[627]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2079.936  mm,	Y =  -151.778  mm,	Z =   834.671  mm,
	W =      .273 deg,	P =    41.131 deg,	R =    24.329 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[628]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   501.047  mm,	Y =  -783.398  mm,	Z =  1089.593  mm,
	W =    41.299 deg,	P =   -10.785 deg,	R =   -56.863 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[629]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2093.049  mm,	Y =  -193.635  mm,	Z =   834.242  mm,
	W =      .273 deg,	P =    41.131 deg,	R =    24.329 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[630]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2123.726  mm,	Y =  -207.135  mm,	Z =   835.200  mm,
	W =      .272 deg,	P =    41.130 deg,	R =   113.461 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[631]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2137.679  mm,	Y =  1266.350  mm,	Z =   265.845  mm,
	W =    -1.526 deg,	P =    -1.652 deg,	R =     2.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[632]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2865.444  mm,	Y =  1350.388  mm,	Z =   109.119  mm,
	W =    -1.525 deg,	P =    -1.650 deg,	R =     2.923 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[633]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2135.638  mm,	Y =  -181.420  mm,	Z =   836.815  mm,
	W =      .272 deg,	P =    41.129 deg,	R =  -155.380 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[634]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2860.268  mm,	Y =  1355.846  mm,	Z =    75.220  mm,
	W =    -1.278 deg,	P =    -1.674 deg,	R =     2.900 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.999 deg,	J2=    90.000 deg
};
P[635]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.751  mm,	Y =  1298.143  mm,	Z =   191.223  mm,
	W =    -1.364 deg,	P =    -1.667 deg,	R =     2.909 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.999 deg,	J2=    90.000 deg
};
P[636]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1491.977  mm,	Y =  1529.258  mm,	Z =  1071.362  mm,
	W =    42.682 deg,	P =    16.600 deg,	R =   -42.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[637]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2131.366  mm,	Y =  -167.649  mm,	Z =   836.816  mm,
	W =      .273 deg,	P =    41.129 deg,	R =  -155.380 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[638]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1962.457  mm,	Y =   -45.639  mm,	Z =    58.921  mm,
	W =   -44.047 deg,	P =    11.474 deg,	R =    22.771 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[639]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1938.711  mm,	Y =   -47.041  mm,	Z =    57.874  mm,
	W =   -44.064 deg,	P =    11.483 deg,	R =     9.318 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[640]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.757  mm,	Y =   -46.889  mm,	Z =    59.031  mm,
	W =   -44.062 deg,	P =    11.485 deg,	R =     9.319 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[641]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.272  mm,	Y =   -45.995  mm,	Z =    59.374  mm,
	W =   -42.428 deg,	P =     8.383 deg,	R =   -27.316 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[642]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2227.243  mm,	Y =   -48.667  mm,	Z =     3.919  mm,
	W =   -43.618 deg,	P =    12.240 deg,	R =    12.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[643]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   918.608  mm,	Y =    -7.834  mm,	Z =  2170.036  mm,
	W =     -.013 deg,	P =   -45.002 deg,	R =     -.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[644]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1048.055  mm,	Y = -1040.484  mm,	Z =  1492.639  mm,
	W =   -30.893 deg,	P =    38.446 deg,	R =    21.262 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[645]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1872.811  mm,	Y = -1301.247  mm,	Z =  1254.086  mm,
	W =   -41.810 deg,	P =   -20.894 deg,	R =   -21.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[646]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1938.810  mm,	Y = -1402.247  mm,	Z =  1047.086  mm,
	W =   -42.701 deg,	P =    18.644 deg,	R =    19.122 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[647]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2268.430  mm,	Y =   -49.062  mm,	Z =     3.148  mm,
	W =   -43.638 deg,	P =    12.235 deg,	R =    12.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[648]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2144.289  mm,	Y =   -44.663  mm,	Z =    -3.347  mm,
	W =   -43.586 deg,	P =    12.233 deg,	R =    12.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[649]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2206.737  mm,	Y =   -44.800  mm,	Z =    -4.310  mm,
	W =   -43.648 deg,	P =    12.245 deg,	R =    12.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[650]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.198  mm,	Y =   -41.335  mm,	Z =    -1.874  mm,
	W =   -43.835 deg,	P =    12.332 deg,	R =    22.820 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[651]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2048.302  mm,	Y = -1378.190  mm,	Z =  1060.194  mm,
	W =   -44.862 deg,	P =     3.961 deg,	R =   -20.537 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[652]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1872.811  mm,	Y = -1301.247  mm,	Z =  1254.086  mm,
	W =   -41.810 deg,	P =   -20.894 deg,	R =   -21.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[653]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1690.020  mm,	Y = -1301.247  mm,	Z =  1305.059  mm,
	W =   -41.810 deg,	P =   -20.894 deg,	R =   -21.725 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[654]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1677.457  mm,	Y = -1378.259  mm,	Z =  1040.446  mm,
	W =   -45.888 deg,	P =   -20.593 deg,	R =    49.871 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[655]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1566.667  mm,	Y =  1053.178  mm,	Z =  1535.870  mm,
	W =    48.261 deg,	P =    -8.333 deg,	R =     1.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[656]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.811  mm,	Y =  1224.223  mm,	Z =  1340.087  mm,
	W =    44.958 deg,	P =    -2.212 deg,	R =     2.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[657]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1935.691  mm,	Y =  1358.717  mm,	Z =  1058.831  mm,
	W =    41.277 deg,	P =    19.800 deg,	R =   -21.086 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[658]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.652  mm,	Y =   -48.970  mm,	Z =   -12.273  mm,
	W =   -43.851 deg,	P =     1.342 deg,	R =     1.316 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[659]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2046.175  mm,	Y =   -49.955  mm,	Z =   -12.492  mm,
	W =   -43.835 deg,	P =     1.333 deg,	R =     1.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[660]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2016.609  mm,	Y =   -47.854  mm,	Z =   -12.356  mm,
	W =   -43.890 deg,	P =     1.338 deg,	R =   -18.633 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[661]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1655.760  mm,	Y =   145.124  mm,	Z =   -12.456  mm,
	W =     1.625 deg,	P =    45.218 deg,	R =  -176.807 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[662]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2002.299  mm,	Y =  1434.488  mm,	Z =  1057.303  mm,
	W =    44.305 deg,	P =     8.850 deg,	R =     3.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[663]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.811  mm,	Y =  1224.223  mm,	Z =  1340.087  mm,
	W =    44.958 deg,	P =    -2.212 deg,	R =     2.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[664]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1606.614  mm,	Y = -1413.568  mm,	Z =  1053.901  mm,
	W =   -44.560 deg,	P =   -18.266 deg,	R =    45.822 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[665]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.706  mm,	Y = -1470.455  mm,	Z =  1071.063  mm,
	W =   -42.856 deg,	P =   -15.293 deg,	R =    39.131 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[666]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1128.196  mm,	Y = -1374.012  mm,	Z =  1522.225  mm,
	W =   -32.586 deg,	P =   -12.067 deg,	R =    17.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[667]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1322.021  mm,	Y =   -61.275  mm,	Z =  2053.615  mm,
	W =     5.182 deg,	P =   -69.521 deg,	R =     3.554 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[668]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   160.262  mm,	Y = -1423.433  mm,	Z =   468.198  mm,
	W =   -49.202 deg,	P =    -2.428 deg,	R =     4.065 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[669]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1898.966  mm,	Y = -1114.290  mm,	Z =   250.136  mm,
	W =   -43.355 deg,	P =    13.455 deg,	R =    94.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[670]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1553.976  mm,	Y =  -228.945  mm,	Z =  1213.332  mm,
	W =     5.098 deg,	P =    43.299 deg,	R =   155.065 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[671]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1293.632  mm,	Y =   272.064  mm,	Z =   747.059  mm,
	W =   -29.792 deg,	P =   -24.153 deg,	R =    10.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[672]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1934.301  mm,	Y = -1340.280  mm,	Z =  1676.218  mm,
	W =   -39.185 deg,	P =   -21.096 deg,	R =     2.457 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[673]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1863.859  mm,	Y =  -353.796  mm,	Z =   377.216  mm,
	W =     -.805 deg,	P =    13.426 deg,	R =    -8.574 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -134.989 deg
};
P[674]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1657.899  mm,	Y =   -24.482  mm,	Z =   -13.743  mm,
	W =    35.889 deg,	P =    31.029 deg,	R =  -138.190 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[675]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2067.448  mm,	Y =   -40.115  mm,	Z =    22.547  mm,
	W =    34.294 deg,	P =    -8.375 deg,	R =   -88.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[676]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.895  mm,	Y =    -9.046  mm,	Z =    21.479  mm,
	W =    34.239 deg,	P =    -8.411 deg,	R =   -88.218 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[677]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2076.271  mm,	Y =     4.342  mm,	Z =    21.635  mm,
	W =    30.086 deg,	P =   -21.642 deg,	R =   -96.023 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[678]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.260  mm,	Y =    16.914  mm,	Z =    21.636  mm,
	W =    23.411 deg,	P =   -33.701 deg,	R =  -102.541 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[679]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.624  mm,	Y =    22.343  mm,	Z =    16.408  mm,
	W =    23.412 deg,	P =   -33.704 deg,	R =  -102.541 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[680]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.220  mm,	Y =    30.146  mm,	Z =    16.113  mm,
	W =    23.413 deg,	P =   -33.667 deg,	R =   -79.616 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[681]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.747  mm,	Y =    34.877  mm,	Z =    15.620  mm,
	W =    21.330 deg,	P =   -32.904 deg,	R =   -59.466 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[682]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2637.097  mm,	Y =   276.051  mm,	Z =   -70.874  mm,
	W =    26.007 deg,	P =   -23.136 deg,	R =   -26.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[683]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2631.473  mm,	Y =   295.376  mm,	Z =   -71.289  mm,
	W =    23.061 deg,	P =   -24.098 deg,	R =   -27.768 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[684]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2630.839  mm,	Y =   309.534  mm,	Z =   -72.681  mm,
	W =    13.725 deg,	P =   -26.025 deg,	R =   -27.412 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[685]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2688.926  mm,	Y =   145.792  mm,	Z =   479.238  mm,
	W =    11.537 deg,	P =   -44.440 deg,	R =    16.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[686]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2629.380  mm,	Y =   555.199  mm,	Z =   -71.771  mm,
	W =    16.234 deg,	P =   -30.277 deg,	R =   -30.022 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[687]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2774.631  mm,	Y =   -50.226  mm,	Z =  -585.366  mm,
	W =    -7.964 deg,	P =    29.527 deg,	R =   -15.865 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     -.000 deg
};
P[688]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1299.331  mm,	Y = -1307.282  mm,	Z =    76.272  mm,
	W =     -.716 deg,	P =    46.671 deg,	R =  -161.579 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     -.000 deg,	J2=   -40.000 deg
};
P[690]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2025.246  mm,	Y =   179.636  mm,	Z =    77.704  mm,
	W =    44.528 deg,	P =     7.306 deg,	R =  -107.368 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[691]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1631.701  mm,	Y =   -36.025  mm,	Z =    10.513  mm,
	W =   -35.869 deg,	P =    29.234 deg,	R =   139.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[692]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.388  mm,	Y =    33.975  mm,	Z =    37.420  mm,
	W =    44.702 deg,	P =     5.823 deg,	R =    -5.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[698]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.356  mm,	Y =   671.307  mm,	Z =   -63.224  mm,
	W =    14.773 deg,	P =   -27.994 deg,	R =   -29.313 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[699]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2527.768  mm,	Y =    82.975  mm,	Z =    35.040  mm,
	W =   -19.934 deg,	P =   -29.387 deg,	R =   -57.880 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[700]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2555.963  mm,	Y =   661.878  mm,	Z =   -63.273  mm,
	W =    14.820 deg,	P =   -28.053 deg,	R =   -29.338 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[701]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2563.772  mm,	Y =   648.879  mm,	Z =   -60.031  mm,
	W =    37.349 deg,	P =    -1.493 deg,	R =   -59.573 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.999 deg,	J2=   -90.000 deg
};
P[702]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2069.947  mm,	Y =   -19.018  mm,	Z =    71.892  mm,
	W =   -33.592 deg,	P =   -20.528 deg,	R =   113.872 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[703]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2581.702  mm,	Y =   645.887  mm,	Z =   -65.892  mm,
	W =    40.898 deg,	P =    15.309 deg,	R =   -28.288 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.999 deg,	J2=   -90.000 deg
};
P[704]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2301.493  mm,	Y =  -174.041  mm,	Z =    77.114  mm,
	W =   -18.811 deg,	P =   -35.778 deg,	R =    80.101 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[705]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2391.169  mm,	Y =  -255.392  mm,	Z =    38.246  mm,
	W =   -31.684 deg,	P =   -29.665 deg,	R =   116.915 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[706]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2365.453  mm,	Y =  -173.250  mm,	Z =    -3.469  mm,
	W =   -24.610 deg,	P =   -35.578 deg,	R =   136.285 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[707]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2599.532  mm,	Y =   647.084  mm,	Z =   -71.487  mm,
	W =    36.219 deg,	P =    25.994 deg,	R =   -28.148 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[708]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2639.652  mm,	Y =   617.545  mm,	Z =   -73.525  mm,
	W =    28.739 deg,	P =   -19.543 deg,	R =   -26.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[709]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2633.078  mm,	Y =   565.134  mm,	Z =   -73.033  mm,
	W =   -30.056 deg,	P =   -21.487 deg,	R =    14.835 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[710]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2627.231  mm,	Y =   559.955  mm,	Z =   -68.972  mm,
	W =   -30.241 deg,	P =   -22.146 deg,	R =    24.484 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[711]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  2626.492  mm,	Y =   555.669  mm,	Z =   -68.972  mm,
	W =   -30.241 deg,	P =   -22.146 deg,	R =    34.932 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[712]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2226.536  mm,	Y =  -221.028  mm,	Z =   279.124  mm,
	W =    32.202 deg,	P =   -34.003 deg,	R =    80.899 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[713]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2604.414  mm,	Y =   146.949  mm,	Z =   202.251  mm,
	W =    57.531 deg,	P =    -1.632 deg,	R =    14.147 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[714]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2604.414  mm,	Y =   -97.338  mm,	Z =   134.395  mm,
	W =    11.998 deg,	P =   -34.016 deg,	R =    74.095 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[715]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2786.086  mm,	Y = -1479.912  mm,	Z =   941.700  mm,
	W =   -37.794 deg,	P =   -31.379 deg,	R =    42.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[716]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2786.986  mm,	Y = -1505.928  mm,	Z =   939.959  mm,
	W =   -37.771 deg,	P =   -31.405 deg,	R =    42.828 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[717]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2774.678  mm,	Y = -1541.827  mm,	Z =   940.534  mm,
	W =   -42.873 deg,	P =   -22.986 deg,	R =    43.313 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[718]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2764.543  mm,	Y = -1552.501  mm,	Z =   937.834  mm,
	W =   -45.718 deg,	P =   -14.892 deg,	R =    35.274 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[719]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2726.183  mm,	Y = -1572.833  mm,	Z =   931.213  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =    30.406 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[720]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2715.419  mm,	Y = -1577.423  mm,	Z =   928.201  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =    18.309 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[721]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2708.762  mm,	Y = -1578.705  mm,	Z =   926.876  mm,
	W =   -45.671 deg,	P =   -14.925 deg,	R =     6.059 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[722]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2112.580  mm,	Y =  -162.135  mm,	Z =   871.673  mm,
	W =      .273 deg,	P =    41.129 deg,	R =  -155.380 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[723]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1934.190  mm,	Y =     8.768  mm,	Z =   115.651  mm,
	W =   -44.064 deg,	P =    11.483 deg,	R =    19.176 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[724]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2674.922  mm,	Y = -1580.021  mm,	Z =   920.473  mm,
	W =   -43.507 deg,	P =   -15.103 deg,	R =     5.510 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[725]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1059.676  mm,	Y = -1060.441  mm,	Z =   780.990  mm,
	W =    33.685 deg,	P =   -33.155 deg,	R =   -22.872 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[726]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1100.173  mm,	Y = -1128.611  mm,	Z =   779.932  mm,
	W =    33.801 deg,	P =   -33.260 deg,	R =   -22.966 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[727]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   775.571  mm,	Y =  -578.980  mm,	Z =   775.648  mm,
	W =    -9.238 deg,	P =   -44.139 deg,	R =    41.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[728]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1032.684  mm,	Y = -1029.380  mm,	Z =   776.764  mm,
	W =    -9.289 deg,	P =   -44.218 deg,	R =    42.018 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[729]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   716.770  mm,	Y =  -475.623  mm,	Z =   775.298  mm,
	W =     6.193 deg,	P =   -44.662 deg,	R =    21.224 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[730]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2066.428  mm,	Y =    38.562  mm,	Z =    83.681  mm,
	W =    21.323 deg,	P =   -32.915 deg,	R =   -59.432 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[731]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2170.000  mm,	Y =    97.491  mm,	Z =    83.679  mm,
	W =    21.322 deg,	P =   -32.914 deg,	R =  -104.338 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[732]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2151.501  mm,	Y =    54.276  mm,	Z =    23.680  mm,
	W =    12.359 deg,	P =   -39.979 deg,	R =  -118.608 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[733]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   757.404  mm,	Y =  -544.801  mm,	Z =   775.425  mm,
	W =     6.193 deg,	P =   -44.662 deg,	R =    21.224 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[734]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1897.493  mm,	Y = -1471.823  mm,	Z =  1034.427  mm,
	W =   -41.048 deg,	P =    21.456 deg,	R =    22.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[735]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1926.995  mm,	Y = -1472.868  mm,	Z =  1037.670  mm,
	W =   -43.499 deg,	P =    14.501 deg,	R =    14.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[736]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1961.292  mm,	Y = -1474.240  mm,	Z =  1036.908  mm,
	W =   -43.543 deg,	P =    14.555 deg,	R =    14.822 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[737]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1981.198  mm,	Y = -1482.302  mm,	Z =  1036.170  mm,
	W =   -43.849 deg,	P =    14.842 deg,	R =    -4.649 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[738]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1997.161  mm,	Y = -1496.181  mm,	Z =  1035.858  mm,
	W =   -43.543 deg,	P =    14.555 deg,	R =   -28.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[739]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1898.587  mm,	Y =  1470.493  mm,	Z =  1038.822  mm,
	W =    41.338 deg,	P =    19.894 deg,	R =   -17.217 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[740]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1927.314  mm,	Y =  1470.795  mm,	Z =  1041.672  mm,
	W =    41.283 deg,	P =    19.814 deg,	R =   -17.227 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[741]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1965.969  mm,	Y =  1477.380  mm,	Z =  1035.803  mm,
	W =    41.278 deg,	P =    19.810 deg,	R =   -17.222 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[742]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   813.665  mm,	Y =   984.387  mm,	Z =  1106.553  mm,
	W =    50.730 deg,	P =      .639 deg,	R =   -51.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[743]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1073.308  mm,	Y =  1002.601  mm,	Z =  1061.552  mm,
	W =    50.730 deg,	P =      .639 deg,	R =   -51.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[744]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1986.252  mm,	Y =  1485.948  mm,	Z =  1036.367  mm,
	W =    41.276 deg,	P =    19.802 deg,	R =     6.735 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[745]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1991.631  mm,	Y =  1485.776  mm,	Z =  1039.525  mm,
	W =    41.277 deg,	P =    19.801 deg,	R =    21.629 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[746]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1641.393  mm,	Y = -1413.503  mm,	Z =  1035.805  mm,
	W =   -42.856 deg,	P =   -15.294 deg,	R =    39.130 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[747]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1644.977  mm,	Y = -1406.796  mm,	Z =  1036.157  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    40.474 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[748]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1126.179  mm,	Y =   980.555  mm,	Z =  1056.327  mm,
	W =    50.535 deg,	P =   -23.426 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[749]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   861.179  mm,	Y =   980.555  mm,	Z =  1056.327  mm,
	W =    50.535 deg,	P =   -23.426 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[750]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   761.179  mm,	Y =  1040.555  mm,	Z =  1247.135  mm,
	W =    50.535 deg,	P =   -23.426 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[751]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1659.432  mm,	Y = -1394.615  mm,	Z =  1037.456  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    43.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[752]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.235  mm,	Y = -1387.627  mm,	Z =  1038.136  mm,
	W =   -44.235 deg,	P =   -18.485 deg,	R =    48.309 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[753]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1102.375  mm,	Y =  1006.778  mm,	Z =  1032.261  mm,
	W =    50.724 deg,	P =      .658 deg,	R =   -51.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[754]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1113.834  mm,	Y =   999.761  mm,	Z =  1032.940  mm,
	W =    50.730 deg,	P =      .639 deg,	R =   -51.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[755]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1127.114  mm,	Y =   997.098  mm,	Z =  1032.585  mm,
	W =    50.728 deg,	P =      .638 deg,	R =   -36.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[756]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.008  mm,	Y =    -2.081  mm,	Z =  2424.081  mm,
	W =      .008 deg,	P =   -40.007 deg,	R =     -.004 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[757]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   988.747  mm,	Y =  -208.560  mm,	Z =  2175.643  mm,
	W =     4.196 deg,	P =   -34.982 deg,	R =   -12.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.000 deg,	J2=     0.000 deg
};
P[758]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1139.649  mm,	Y =   996.948  mm,	Z =  1033.938  mm,
	W =    48.461 deg,	P =   -17.355 deg,	R =   -20.268 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[759]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1921.096  mm,	Y =   -30.244  mm,	Z =   155.039  mm,
	W =     -.111 deg,	P =    22.917 deg,	R =     -.285 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.206 deg,	J2=   180.000 deg
};
P[760]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[761]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1435.319  mm,	Y =   360.965  mm,	Z =   608.631  mm,
	W =     3.160 deg,	P =   -22.165 deg,	R =   -20.317 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[762]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.146  mm,	Z =  2424.049  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[763]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   950.520  mm,	Y =   205.285  mm,	Z =  1027.227  mm,
	W =    53.651 deg,	P =   -10.142 deg,	R =   -83.497 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[764]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   918.607  mm,	Y =    -7.726  mm,	Z =  2170.023  mm,
	W =     -.002 deg,	P =   -45.001 deg,	R =     -.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[766]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1192.014  mm,	Y =   363.761  mm,	Z =   366.390  mm,
	W =   -29.115 deg,	P =     8.226 deg,	R =     2.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[769]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   355.995  mm,	Y =    -2.096  mm,	Z =  2424.051  mm,
	W =     -.002 deg,	P =   -40.003 deg,	R =      .002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[771]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   373.078  mm,	Y =  -901.222  mm,	Z =  1248.293  mm,
	W =    40.112 deg,	P =    11.399 deg,	R =   -86.822 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[773]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.878  mm,	Y =   916.398  mm,	Z =  1594.940  mm,
	W =    39.846 deg,	P =    -9.760 deg,	R =     1.478 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[774]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   356.032  mm,	Y =    -2.147  mm,	Z =  2424.050  mm,
	W =      .001 deg,	P =   -40.002 deg,	R =     -.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[777]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1147.490  mm,	Y =   177.260  mm,	Z =   168.328  mm,
	W =    32.004 deg,	P =   -33.504 deg,	R =  -110.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[783]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   419.331  mm,	Y =  1026.789  mm,	Z =  1609.020  mm,
	W =    71.318 deg,	P =     7.769 deg,	R =   -20.454 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
/END
