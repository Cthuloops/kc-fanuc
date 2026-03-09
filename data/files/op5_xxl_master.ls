/PROG  OP5_XXL_MASTER
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "XXL Main Prog";
PROG_SIZE	= 87533;
CREATE		= DATE 25-09-18  TIME 12:32:10;
MODIFIED	= DATE 25-12-16  TIME 16:10:18;
FILE_NAME	= OP5_XXL_;
VERSION		= 0;
LINE_COUNT	= 2008;
MEMORY_SIZE	= 87997;
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
   2:  !-           FRAME XXL          - ;
   3:  !******** FR500 CELL: C ********* ;
   4:   ;
   5:  CALL HOME    ;
   6:  CALL LOAD_POS    ;
   7:   ;
   8:   ;
   9:  !********POSITIONER MOVE******** ;
  10:J P[1] 75% FINE    ;
  11:   ;
  12:L P[2] 1000mm/sec CNT25    ;
  13:   ;
  14:  !FR50Z1000 ;
  15:  IF R[15]=1004,CALL TECH_HOLD ;
  16:   ;
  17:L P[3] 800mm/sec FINE
    :  Arc Start[6]    ;
  18:  Weave Sine[6] ;
  19:  Track TAST[6] ;
  20:L P[4] WELD_SPEED FINE
    :  Arc End[6]    ;
  21:  Weave End ;
  22:  Track End ;
  23:   ;
  24:L P[5] 1000mm/sec CNT100    ;
  25:   ;
  26:L P[6] 1000mm/sec CNT100    ;
  27:   ;
  28:  !FR50Z1010 ;
  29:  IF R[15]=1014,CALL TECH_HOLD ;
  30:   ;
  31:L P[7] 800mm/sec FINE
    :  Arc Start[6]    ;
  32:  Weave Sine[6] ;
  33:  Track TAST[6] ;
  34:L P[8] WELD_SPEED FINE
    :  Arc End[6]    ;
  35:  Weave End ;
  36:  Track End ;
  37:   ;
  38:L P[9] 1000mm/sec CNT25    ;
  39:   ;
  40:  !FR50Z1020 ;
  41:  IF R[15]=1024,CALL TECH_HOLD ;
  42:   ;
  43:L P[10] 800mm/sec FINE
    :  Arc Start[6]    ;
  44:  Weave Sine[6] ;
  45:  Track TAST[6] ;
  46:L P[11] WELD_SPEED FINE
    :  Arc End[6]    ;
  47:  Weave End ;
  48:  Track End ;
  49:   ;
  50:L P[12] 1000mm/sec CNT25    ;
  51:   ;
  52:J P[13] 50% CNT50    ;
  53:   ;
  54:  !********POSITIONER MOVE******** ;
  55:J P[14] 75% FINE    ;
  56:   ;
  57:J P[15] 50% CNT70    ;
  58:   ;
  59:J P[16] 50% CNT40    ;
  60:   ;
  61:  !FR50Z1030 ;
  62:  IF R[15]=1034,CALL TECH_HOLD ;
  63:   ;
  64:L P[17] 800mm/sec FINE
    :  Arc Start[6]    ;
  65:  Weave Sine[6] ;
  66:  Track TAST[6] ;
  67:L P[18] WELD_SPEED FINE
    :  Arc End[6]    ;
  68:  Weave End ;
  69:  Track End ;
  70:   ;
  71:L P[19] 1000mm/sec CNT25    ;
  72:   ;
  73:J P[20] 50% CNT25    ;
  74:   ;
  75:J P[21] 50% CNT25    ;
  76:   ;
  77:L P[22] 1000mm/sec CNT90    ;
  78:   ;
  79:  !FR50Z1040 ;
  80:  IF R[15]=1044,CALL TECH_HOLD ;
  81:   ;
  82:L P[23] 800mm/sec FINE
    :  Arc Start[6]    ;
  83:  Weave Sine[6] ;
  84:  Track TAST[6] ;
  85:L P[24] WELD_SPEED CNT100    ;
  86:L P[25] WELD_SPEED FINE
    :  Arc End[6]    ;
  87:  Weave End ;
  88:  Track End ;
  89:   ;
  90:L P[26] 960mm/sec CNT100    ;
  91:   ;
  92:J P[27] 50% CNT90    ;
  93:   ;
  94:L P[28] 1000mm/sec CNT25    ;
  95:   ;
  96:  !FR50Z1050 ;
  97:  IF R[15]=1054,CALL TECH_HOLD ;
  98:   ;
  99:L P[29] 800mm/sec FINE
    :  Arc Start[6]    ;
 100:  Weave Sine[6] ;
 101:  Track TAST[6] ;
 102:L P[30] WELD_SPEED CNT100    ;
 103:L P[31] WELD_SPEED FINE
    :  Arc End[6]    ;
 104:  Weave End ;
 105:  Track End ;
 106:   ;
 107:L P[32] 1000mm/sec CNT50    ;
 108:   ;
 109:J P[33] 50% CNT75    ;
 110:   ;
 111:L P[34] 1000mm/sec CNT25    ;
 112:   ;
 113:  !FR50Z1060 ;
 114:  IF R[15]=1064,CALL TECH_HOLD ;
 115:   ;
 116:L P[35] 800mm/sec FINE
    :  Arc Start[6]    ;
 117:  Weave Sine[6] ;
 118:  Track TAST[6] ;
 119:L P[36] WELD_SPEED CNT100    ;
 120:L P[37] WELD_SPEED CNT100    ;
 121:L P[38] WELD_SPEED FINE
    :  Arc End[6]    ;
 122:  Weave End ;
 123:  Track End ;
 124:   ;
 125:L P[39] 1000mm/sec CNT25    ;
 126:   ;
 127:L P[40] 1000mm/sec CNT25    ;
 128:   ;
 129:  !FR50Z1070 ;
 130:  IF R[15]=1074,CALL TECH_HOLD ;
 131:   ;
 132:L P[41] 800mm/sec FINE
    :  Arc Start[6]    ;
 133:  Weave Sine[6] ;
 134:  Track TAST[6] ;
 135:L P[42] WELD_SPEED FINE
    :  Arc End[6]    ;
 136:  Weave End ;
 137:  Track End ;
 138:   ;
 139:L P[43] 1000mm/sec CNT25    ;
 140:   ;
 141:L P[44] 960mm/sec CNT50    ;
 142:   ;
 143:J P[45] 50% CNT75    ;
 144:   ;
 145:   ;
 146:L P[426] 1000mm/sec CNT25    ;
 147:   ;
 148:  !FR50Z1080 ;
 149:  IF R[15]=1084,CALL TECH_HOLD ;
 150:   ;
 151:L P[429] 800mm/sec FINE
    :  Arc Start[6]    ;
 152:  Weave Sine[6] ;
 153:  Track TAST[6] ;
 154:L P[432] WELD_SPEED CNT100    ;
 155:L P[761] WELD_SPEED CNT100    ;
 156:L P[762] WELD_SPEED FINE
    :  Arc End[6]    ;
 157:  Weave End ;
 158:  Track End ;
 159:   ;
 160:L P[763] 1000mm/sec CNT25    ;
 161:   ;
 162:L P[764] 1000mm/sec CNT25    ;
 163:   ;
 164:  !FR50Z1090 ;
 165:  IF R[15]=1094,CALL TECH_HOLD ;
 166:   ;
 167:L P[765] 800mm/sec FINE
    :  Arc Start[6]    ;
 168:  Weave Sine[6] ;
 169:  Track TAST[6] ;
 170:L P[766] WELD_SPEED CNT100    ;
 171:L P[767] WELD_SPEED FINE
    :  Arc End[6]    ;
 172:  Weave End ;
 173:  Track End ;
 174:   ;
 175:L P[768] 1000mm/sec CNT50    ;
 176:   ;
 177:J P[769] 50% CNT25    ;
 178:   ;
 179:  !********POSITIONER MOVE******** ;
 180:J P[770] 75% FINE    ;
 181:   ;
 182:  !FR50Z1100 ;
 183:  IF R[15]=1104,CALL TECH_HOLD ;
 184:   ;
 185:L P[771] 1000mm/sec FINE
    :  Arc Start[8]    ;
 186:  Weave Sine[8] ;
 187:L P[772] WELD_SPEED FINE
    :  Arc End[8]    ;
 188:  Weave End ;
 189:   ;
 190:L P[773] 1000mm/sec CNT25    ;
 191:   ;
 192:  !********POSITIONER MOVE******** ;
 193:J P[774] 75% FINE    ;
 194:   ;
 195:L P[775] 1000mm/sec CNT50    ;
 196:   ;
 197:  !FR50Z1110 ;
 198:  IF R[15]=1114,CALL TECH_HOLD ;
 199:   ;
 200:L P[776] 1000mm/sec FINE
    :  Arc Start[8]    ;
 201:  Weave Sine[8] ;
 202:L P[777] WELD_SPEED FINE
    :  Arc End[8]    ;
 203:  Weave End ;
 204:   ;
 205:L P[778] 1000mm/sec CNT100    ;
 206:   ;
 207:J P[779] 50% CNT75    ;
 208:   ;
 209:J P[780] 70% CNT30    ;
 210:   ;
 211:  !******** POSITIONER MOVE ******* ;
 212:J P[781] 60% CNT25    ;
 213:   ;
 214:L P[782] 1000mm/sec CNT25    ;
 215:   ;
 216:L P[783] 500mm/sec CNT25    ;
 217:   ;
 218:  !FR50Z1120 ;
 219:  IF R[15]=1124,CALL TECH_HOLD ;
 220:   ;
 221:L P[784] 400mm/sec FINE
    :  Arc Start[6]    ;
 222:  Weave Sine[6] ;
 223:L P[785] WELD_SPEED FINE
    :  Arc End[6]    ;
 224:  Weave End ;
 225:   ;
 226:L P[786] 400mm/sec CNT25    ;
 227:   ;
 228:L P[787] 1000mm/sec CNT20    ;
 229:   ;
 230:L P[788] 1000mm/sec CNT100    ;
 231:   ;
 232:  !HOME ;
 233:J P[789] 50% CNT25    ;
 234:   ;
 235:  !******** POSITIONER MOVE ******* ;
 236:J P[790] 70% FINE    ;
 237:   ;
 238:J P[791] 50% CNT70    ;
 239:   ;
 240:L P[792] 1000mm/sec CNT20    ;
 241:   ;
 242:L P[793] 400mm/sec CNT25    ;
 243:   ;
 244:  !FR50Z1130 ;
 245:  IF R[15]=1134,CALL TECH_HOLD ;
 246:   ;
 247:L P[794] 400mm/sec FINE
    :  Arc Start[6]    ;
 248:  Weave Sine[6] ;
 249:L P[795] WELD_SPEED FINE
    :  Arc End[6]    ;
 250:  Weave End ;
 251:   ;
 252:L P[796] 400mm/sec CNT25    ;
 253:   ;
 254:L P[797] 1000mm/sec CNT25    ;
 255:   ;
 256:L P[798] 1000mm/sec CNT100    ;
 257:   ;
 258:  !HOME ;
 259:J P[799] 50% CNT25    ;
 260:   ;
 261:  !********POSITIONER MOVE******** ;
 262:J P[800] 75% FINE    ;
 263:   ;
 264:J P[801] 50% CNT75    ;
 265:   ;
 266:L P[802] 1000mm/sec CNT25    ;
 267:   ;
 268:  !FR50Z1140 ;
 269:  IF R[15]=1144,CALL TECH_HOLD ;
 270:   ;
 271:L P[803] 1000mm/sec FINE
    :  Arc Start[6]    ;
 272:  Weave Sine[6] ;
 273:  Track TAST[6] ;
 274:L P[804] WELD_SPEED FINE
    :  Arc End[6]    ;
 275:  Weave End ;
 276:  Track End ;
 277:   ;
 278:L P[805] 1000mm/sec CNT25    ;
 279:   ;
 280:L P[806] 1000mm/sec CNT100    ;
 281:   ;
 282:J P[807] 50% CNT50    ;
 283:   ;
 284:L P[808] 1000mm/sec CNT25    ;
 285:   ;
 286:  !FR50Z1150 ;
 287:  IF R[15]=1154,CALL TECH_HOLD ;
 288:   ;
 289:L P[809] 1000mm/sec FINE
    :  Arc Start[6]    ;
 290:  Weave Sine[6] ;
 291:  Track TAST[6] ;
 292:L P[810] WELD_SPEED FINE
    :  Arc End[6]    ;
 293:  Weave End ;
 294:  Track End ;
 295:   ;
 296:L P[811] 1000mm/sec CNT25    ;
 297:   ;
 298:L P[812] 1000mm/sec CNT25    ;
 299:   ;
 300:  !********POSITIONER MOVE******** ;
 301:J P[813] 75% FINE    ;
 302:   ;
 303:L P[814] 1000mm/sec CNT25    ;
 304:   ;
 305:L P[815] 1000mm/sec CNT25    ;
 306:   ;
 307:   ;
 308:  !FR50Z1160 ;
 309:  IF R[15]=1164,CALL TECH_HOLD ;
 310:   ;
 311:L P[816] 700mm/sec FINE
    :  Arc Start[6]    ;
 312:  Weave Sine[6] ;
 313:  Track TAST[6] ;
 314:L P[817] WELD_SPEED FINE
    :  Arc End[6]    ;
 315:  Weave End ;
 316:  Track End ;
 317:   ;
 318:L P[818] 1000mm/sec CNT25    ;
 319:   ;
 320:  !FR50Z1170 ;
 321:  IF R[15]=1174,CALL TECH_HOLD ;
 322:   ;
 323:L P[819] 1000mm/sec FINE
    :  Arc Start[6]    ;
 324:  Weave Sine[6] ;
 325:  Track TAST[6] ;
 326:L P[820] WELD_SPEED FINE
    :  Arc End[6]    ;
 327:  Weave End ;
 328:  Track End ;
 329:   ;
 330:L P[821] 1000mm/sec CNT25    ;
 331:   ;
 332:L P[822] 1000mm/sec CNT25    ;
 333:   ;
 334:  !FR50Z1180 ;
 335:  IF R[15]=1184,CALL TECH_HOLD ;
 336:   ;
 337:L P[823] 800mm/sec FINE
    :  Arc Start[6]    ;
 338:  Weave Sine[6] ;
 339:  Track TAST[6] ;
 340:L P[824] WELD_SPEED FINE
    :  Arc End[6]    ;
 341:  Weave End ;
 342:  Track End ;
 343:   ;
 344:L P[825] 1000mm/sec CNT25    ;
 345:   ;
 346:L P[826] 1000mm/sec CNT25    ;
 347:   ;
 348:  !FR50Z1190 ;
 349:  IF R[15]=1194,CALL TECH_HOLD ;
 350:   ;
 351:L P[827] 800mm/sec FINE
    :  Arc Start[6]    ;
 352:  Weave Sine[6] ;
 353:  Track TAST[6] ;
 354:L P[828] WELD_SPEED FINE
    :  Arc End[6]    ;
 355:  Weave End ;
 356:  Track End ;
 357:   ;
 358:L P[829] 1000mm/sec CNT25    ;
 359:   ;
 360:L P[830] 1000mm/sec CNT25    ;
 361:   ;
 362:  !FR50Z1200 ;
 363:  IF R[15]=1204,CALL TECH_HOLD ;
 364:   ;
 365:L P[831] 800mm/sec FINE
    :  Arc Start[6]    ;
 366:  Weave Sine[6] ;
 367:  Track TAST[6] ;
 368:L P[832] WELD_SPEED FINE
    :  Arc End[6]    ;
 369:  Weave End ;
 370:  Track End ;
 371:   ;
 372:L P[833] 1000mm/sec CNT25    ;
 373:   ;
 374:L P[834] 1000mm/sec CNT100    ;
 375:   ;
 376:J P[835] 70% CNT25    ;
 377:   ;
 378:  !********POSITIONER MOVE******** ;
 379:J P[836] 75% FINE    ;
 380:   ;
 381:J P[837] 50% CNT25    ;
 382:   ;
 383:L P[838] 1000mm/sec CNT25    ;
 384:   ;
 385:  !FR50Z1210 ;
 386:  IF R[15]=1214,CALL TECH_HOLD ;
 387:   ;
 388:L P[839] 1000mm/sec FINE
    :  Arc Start[6]    ;
 389:  Weave Sine[6] ;
 390:  Track TAST[6] ;
 391:L P[840] WELD_SPEED CNT100    ;
 392:L P[841] WELD_SPEED FINE
    :  Arc End[6]    ;
 393:  Weave End ;
 394:  Track End ;
 395:   ;
 396:L P[842] 500mm/sec CNT25    ;
 397:   ;
 398:L P[843] 1000mm/sec CNT25    ;
 399:   ;
 400:L P[844] 1000mm/sec CNT25    ;
 401:   ;
 402:L P[845] 1000mm/sec CNT25    ;
 403:   ;
 404:  !********POSITIONER MOVE******** ;
 405:J P[846] 75% CNT25    ;
 406:   ;
 407:L P[847] 1000mm/sec CNT25    ;
 408:   ;
 409:L P[848] 1000mm/sec CNT25    ;
 410:   ;
 411:  !FR50Z1220 ;
 412:  IF R[15]=1224,CALL TECH_HOLD ;
 413:   ;
 414:L P[849] 1000mm/sec FINE
    :  Arc Start[6]    ;
 415:  Weave Sine[6] ;
 416:  Track TAST[6] ;
 417:L P[850] WELD_SPEED FINE
    :  Arc End[6]    ;
 418:  Weave End ;
 419:  Track End ;
 420:   ;
 421:L P[851] 500mm/sec CNT25    ;
 422:   ;
 423:L P[852] 500mm/sec CNT25    ;
 424:   ;
 425:L P[853] 1000mm/sec CNT25    ;
 426:   ;
 427:L P[854] 1000mm/sec CNT50    ;
 428:   ;
 429:J P[855] 75% CNT50    ;
 430:   ;
 431:  !********POSITIONER MOVE******** ;
 432:J P[856] 75% CNT25    ;
 433:   ;
 434:  CALL T_CLEAN    ;
 435:   ;
 436:J P[857] 50% CNT50    ;
 437:   ;
 438:L P[858] 960mm/sec CNT25    ;
 439:   ;
 440:  !FR50Z1230 ;
 441:  IF R[15]=1234,CALL TECH_HOLD ;
 442:   ;
 443:L P[859] 800mm/sec FINE
    :  Arc Start[6]    ;
 444:  Weave Sine[6] ;
 445:  Track TAST[6] ;
 446:L P[860] WELD_SPEED FINE
    :  Arc End[6]    ;
 447:  Weave End ;
 448:  Track End ;
 449:   ;
 450:L P[861] 960mm/sec CNT25    ;
 451:   ;
 452:J P[862] 50% CNT25    ;
 453:   ;
 454:   ;
 455:  !FR50Z1240 ;
 456:  IF R[15]=1244,CALL TECH_HOLD ;
 457:   ;
 458:L P[863] 800mm/sec FINE
    :  Arc Start[3]    ;
 459:L P[864] WELD_SPEED CNT100    ;
 460:L P[865] WELD_SPEED FINE
    :  Arc End[3]    ;
 461:   ;
 462:L P[866] 1000mm/sec CNT25    ;
 463:   ;
 464:L P[867] 1000mm/sec CNT100    ;
 465:   ;
 466:L P[868] 1000mm/sec CNT100    ;
 467:   ;
 468:L P[869] 1000mm/sec CNT25    ;
 469:   ;
 470:   ;
 471:  !FR50Z1250 ;
 472:  IF R[15]=1254,CALL TECH_HOLD ;
 473:   ;
 474:L P[870] 800mm/sec FINE
    :  Arc Start[3]    ;
 475:L P[871] WELD_SPEED CNT100    ;
 476:L P[872] WELD_SPEED FINE
    :  Arc End[3]    ;
 477:   ;
 478:L P[873] 1000mm/sec CNT25    ;
 479:   ;
 480:J P[874] 50% CNT100    ;
 481:   ;
 482:J P[875] 50% CNT25    ;
 483:   ;
 484:  !FR50Z1260 ;
 485:  IF R[15]=1264,CALL TECH_HOLD ;
 486:   ;
 487:L P[876] 800mm/sec FINE
    :  Arc Start[6]    ;
 488:  Weave Sine[6] ;
 489:  Track TAST[6] ;
 490:L P[877] WELD_SPEED FINE
    :  Arc End[6]    ;
 491:  Track End ;
 492:  Weave End ;
 493:   ;
 494:L P[878] 1000mm/sec CNT100    ;
 495:   ;
 496:L P[879] 1000mm/sec CNT100    ;
 497:   ;
 498:L P[880] 1000mm/sec CNT25    ;
 499:   ;
 500:  !FR50Z1270 ;
 501:  IF R[15]=1274,CALL TECH_HOLD ;
 502:   ;
 503:L P[881] 800mm/sec FINE
    :  Arc Start[6]    ;
 504:  Weave Sine[6] ;
 505:  Track TAST[6] ;
 506:L P[882] WELD_SPEED FINE
    :  Arc End[6]    ;
 507:  Weave End ;
 508:  Track End ;
 509:   ;
 510:L P[883] 1000mm/sec CNT100    ;
 511:   ;
 512:J P[884] 50% CNT25    ;
 513:   ;
 514:  !********POSITIONER MOVE******** ;
 515:J P[885] 75% FINE    ;
 516:   ;
 517:L P[886] 1000mm/sec CNT25    ;
 518:   ;
 519:  !FR50Z1280 ;
 520:  IF R[15]=1284,CALL TECH_HOLD ;
 521:   ;
 522:L P[887] 1000mm/sec FINE
    :  Arc Start[6]    ;
 523:  Weave Sine[6] ;
 524:  Track TAST[6] ;
 525:L P[888] WELD_SPEED FINE
    :  Arc End[6]    ;
 526:  Weave End ;
 527:  Track End ;
 528:   ;
 529:L P[889] 1000mm/sec CNT25    ;
 530:   ;
 531:J P[890] 50% CNT10    ;
 532:   ;
 533:  !********POSITIONER MOVE******** ;
 534:J P[891] 70% FINE    ;
 535:   ;
 536:J P[892] 50% CNT20    ;
 537:   ;
 538:L P[893] 1000mm/sec CNT25    ;
 539:   ;
 540:   ;
 541:  !FR50Z1290 ;
 542:  IF R[15]=1294,CALL TECH_HOLD ;
 543:   ;
 544:L P[894] 800mm/sec FINE
    :  Arc Start[6]    ;
 545:  Weave Sine[6] ;
 546:  Track TAST[6] ;
 547:L P[895] WELD_SPEED FINE
    :  Arc End[6]    ;
 548:  Weave End ;
 549:  Track End ;
 550:   ;
 551:L P[896] 300mm/sec FINE    ;
 552:   ;
 553:L P[897] 1000mm/sec CNT25    ;
 554:   ;
 555:J P[898] 50% CNT25    ;
 556:   ;
 557:J P[899] 50% CNT50    ;
 558:   ;
 559:  //!********POSITIONER MOVE******** ;
 560:  //J P[900] 75% FINE    ;
 561:  //    ;
 562:  //J P[901] 50% CNT100    ;
 563:  //    ;
 564:  //    ;
 565:  //L P[902] 800mm/sec FINE
    :  Arc Start[8]    ;
 566:  //Weave Sine[8] ;
 567:  //Track TAST[8] ;
 568:  //L P[903] WELD_SPEED FINE
    :  Arc End[6]    ;
 569:  //Weave End ;
 570:  //Track End ;
 571:  //    ;
 572:  //L P[904] 1000mm/sec CNT100    ;
 573:  //    ;
 574:  //    ;
 575:  //J P[905] 50% CNT100    ;
 576:  //    ;
 577:  //!25mm ;
 578:  //L P[906] 800mm/sec FINE
    :  Arc Start[8]    ;
 579:  //Weave Sine[8] ;
 580:  //L P[907] WELD_SPEED FINE
    :  Arc End[8]    ;
 581:  //Weave End ;
 582:  //    ;
 583:  //L P[908] 1000mm/sec CNT100    ;
 584:  //    ;
 585:  //J P[909] 100% CNT100    ;
 586:  //    ;
 587:  //J P[910] 50% CNT100    ;
 588:  //    ;
 589:  //L P[911] 800mm/sec FINE
    :  Arc Start[8]    ;
 590:  //Weave Sine[8] ;
 591:  //Track TAST[8] ;
 592:  //L P[912] WELD_SPEED FINE
    :  Arc End[8]    ;
 593:  //Weave End ;
 594:  //Track End ;
 595:  //    ;
 596:  //L P[913] 1000mm/sec CNT100    ;
 597:  //    ;
 598:  //J P[914] 50% CNT100    ;
 599:  //    ;
 600:  //J P[915] 50% CNT50    ;
 601:  //    ;
 602:  //!25mm ;
 603:  //L P[916] 800mm/sec FINE
    :  Arc Start[8]    ;
 604:  //Weave Sine[8] ;
 605:  //L P[917] WELD_SPEED FINE
    :  Arc End[8]    ;
 606:  //Weave End ;
 607:  //    ;
 608:  //L P[918] 1000mm/sec CNT100    ;
 609:  //    ;
 610:  //    ;
 611:  //    ;
 612:  //J P[919] 50% CNT50    ;
 613:   ;
 614:   ;
 615:   ;
 616:  !********POSITIONER MOVE******** ;
 617:J P[920] 70% FINE    ;
 618:   ;
 619:J P[921] 75% CNT25    ;
 620:   ;
 621:J P[922] 50% CNT25    ;
 622:   ;
 623:  !FR50Z1300 ;
 624:  IF R[15]=1304,CALL TECH_HOLD ;
 625:   ;
 626:L P[923] 800mm/sec FINE
    :  Arc Start[6]    ;
 627:  Weave Sine[6] ;
 628:  Track TAST[6] ;
 629:L P[924] WELD_SPEED FINE
    :  Arc End[6]    ;
 630:  Weave End ;
 631:  Track End ;
 632:   ;
 633:L P[925] 1000mm/sec CNT100    ;
 634:   ;
 635:L P[926] 1000mm/sec CNT25    ;
 636:   ;
 637:  !FR50Z1310 ;
 638:  IF R[15]=1314,CALL TECH_HOLD ;
 639:   ;
 640:L P[927] 800mm/sec FINE
    :  Arc Start[6]    ;
 641:  Weave Sine[6] ;
 642:  Track TAST[6] ;
 643:L P[928] WELD_SPEED FINE
    :  Arc End[6]    ;
 644:  Weave End ;
 645:  Track End ;
 646:   ;
 647:L P[929] 1000mm/sec CNT25    ;
 648:   ;
 649:J P[930] 50% CNT100    ;
 650:   ;
 651:J P[931] 50% CNT70    ;
 652:   ;
 653:  !FR50Z1320 ;
 654:  IF R[15]=1324,CALL TECH_HOLD ;
 655:   ;
 656:L P[932] 800mm/sec FINE
    :  Arc Start[6]    ;
 657:  Weave Sine[6] ;
 658:  Track TAST[6] ;
 659:L P[933] WELD_SPEED FINE
    :  Arc End[6]    ;
 660:  Weave End ;
 661:  Track End ;
 662:   ;
 663:L P[934] 960mm/sec CNT25    ;
 664:   ;
 665:  !********POSITIONER MOVE******** ;
 666:J P[935] 100% FINE    ;
 667:   ;
 668:L P[936] 1000mm/sec CNT25    ;
 669:   ;
 670:  !LENGTH: 104mm ;
 671:   ;
 672:  CALL ARC_DISABLE_RH_LS(0) ;
 673:   ;
 674:  !FR50Z1330 ;
 675:  IF R[15]=1334,CALL TECH_HOLD ;
 676:   ;
 677:L P[937] 800mm/sec FINE
    :  Arc Start[6]    ;
 678:  Weave Sine[6] ;
 679:L P[938] WELD_SPEED FINE
    :  Arc End[6]    ;
 680:  Weave End ;
 681:  Track End ;
 682:   ;
 683:   ;
 684:L P[939] 800mm/sec CNT100    ;
 685:   ;
 686:L P[940] 800mm/sec CNT100    ;
 687:   ;
 688:J P[941] 50% CNT25    ;
 689:   ;
 690:  !FR50Z1340 ;
 691:  IF R[15]=1344,CALL TECH_HOLD ;
 692:   ;
 693:  !LENGTH: 57mm ;
 694:   ;
 695:L P[942] 800mm/sec FINE
    :  Arc Start[8]    ;
 696:  Weave Sine[8] ;
 697:L P[943] WELD_SPEED FINE
    :  Arc End[8]    ;
 698:  Weave End ;
 699:  Track End ;
 700:   ;
 701:  CALL ARC_DISABLE_RH_LS(1) ;
 702:   ;
 703:   ;
 704:L P[944] 1000mm/sec CNT75    ;
 705:   ;
 706:J P[945] 50% CNT50    ;
 707:   ;
 708:J P[946] 100% CNT25    ;
 709:   ;
 710:  !********POSITIONER MOVE******** ;
 711:J P[947] 70% FINE    ;
 712:   ;
 713:J P[948] 35% CNT20    ;
 714:   ;
 715:  CALL ARC_LH_DISABLE_LS(0) ;
 716:   ;
 717:  !FR50Z1350 ;
 718:  IF R[15]=1354,CALL TECH_HOLD ;
 719:   ;
 720:  !LENGTH: 104mm ;
 721:   ;
 722:L P[949] 800mm/sec FINE
    :  Arc Start[6]    ;
 723:  Weave Sine[6] ;
 724:  Track TAST[6] ;
 725:L P[950] WELD_SPEED FINE
    :  Arc End[6]    ;
 726:  Weave End ;
 727:  Track End ;
 728:   ;
 729:L P[951] 1000mm/sec CNT90    ;
 730:   ;
 731:L P[952] 1000mm/sec CNT90    ;
 732:   ;
 733:J P[953] 50% CNT25    ;
 734:   ;
 735:  !FR50Z1360 ;
 736:  IF R[15]=1364,CALL TECH_HOLD ;
 737:   ;
 738:  !LENGTH: 57mm ;
 739:   ;
 740:L P[954] 500mm/sec FINE
    :  Arc Start[8]    ;
 741:  Weave Sine[8] ;
 742:  Track TAST[8] ;
 743:L P[955] WELD_SPEED FINE
    :  Arc End[8]    ;
 744:  Weave End ;
 745:  Track End ;
 746:   ;
 747:  CALL ARC_LH_DISABLE_LS(1) ;
 748:   ;
 749:L P[956] 500mm/sec CNT20    ;
 750:   ;
 751:J P[957] 50% CNT75    ;
 752:   ;
 753:  !HOME ;
 754:J P[958] 50% CNT50    ;
 755:   ;
 756:  !********POSITIONER MOVE******** ;
 757:J P[959] 70% FINE    ;
 758:   ;
 759:J P[960] 50% CNT80    ;
 760:   ;
 761:J P[961] 50% CNT25    ;
 762:   ;
 763:L P[962] 1000mm/sec CNT25    ;
 764:   ;
 765:  !FR50Z1370 ;
 766:  IF R[15]=1374,CALL TECH_HOLD ;
 767:   ;
 768:L P[963] 800mm/sec FINE
    :  Arc Start[6]    ;
 769:  Weave Sine[6] ;
 770:L P[964] WELD_SPEED FINE
    :  Arc End[6]    ;
 771:  Weave End ;
 772:   ;
 773:L P[965] 500mm/sec CNT25    ;
 774:   ;
 775:L P[966] 400mm/sec CNT25    ;
 776:   ;
 777:L P[967] 300mm/sec CNT10    ;
 778:   ;
 779:  !FR50Z1380 ;
 780:  IF R[15]=1384,CALL TECH_HOLD ;
 781:   ;
 782:L P[968] 800mm/sec FINE
    :  Arc Start[6]    ;
 783:  Weave Sine[6] ;
 784:L P[969] WELD_SPEED FINE
    :  Arc End[6]    ;
 785:  Weave End ;
 786:   ;
 787:L P[970] 300mm/sec CNT10    ;
 788:   ;
 789:J P[971] 50% CNT25    ;
 790:   ;
 791:L P[972] 300mm/sec CNT10    ;
 792:   ;
 793:  !FR50Z1390 ;
 794:  IF R[15]=1394,CALL TECH_HOLD ;
 795:   ;
 796:L P[973] 800mm/sec FINE
    :  Arc Start[6]    ;
 797:L P[974] WELD_SPEED FINE
    :  Arc End[6]    ;
 798:   ;
 799:L P[975] 300mm/sec CNT10    ;
 800:   ;
 801:J P[976] 50% CNT25    ;
 802:   ;
 803:J P[977] 50% CNT25    ;
 804:   ;
 805:J P[978] 50% CNT25    ;
 806:   ;
 807:J P[979] 50% CNT25    ;
 808:   ;
 809:   ;
 810:   ;
 811:  !FR50Z1400 ;
 812:  IF R[15]=1404,CALL TECH_HOLD ;
 813:   ;
 814:L P[980] 800mm/sec FINE
    :  Arc Start[6]    ;
 815:  Weave Sine[6] ;
 816:  Track TAST[6] ;
 817:L P[981] WELD_SPEED FINE
    :  Arc End[6]    ;
 818:  Weave End ;
 819:  Track End ;
 820:   ;
 821:L P[982] 1000mm/sec CNT25    ;
 822:   ;
 823:L P[983] 1000mm/sec CNT25    ;
 824:   ;
 825:  !FR50Z1410 ;
 826:  IF R[15]=1414,CALL TECH_HOLD ;
 827:   ;
 828:L P[984] 800mm/sec FINE
    :  Arc Start[6]    ;
 829:  Weave Sine[6] ;
 830:  Track TAST[6] ;
 831:L P[985] WELD_SPEED FINE
    :  Arc End[6]    ;
 832:  Weave End ;
 833:  Track End ;
 834:   ;
 835:L P[986] 1000mm/sec CNT25    ;
 836:   ;
 837:J P[987] 50% CNT25    ;
 838:   ;
 839:  !FR50Z1420 ;
 840:  IF R[15]=1424,CALL TECH_HOLD ;
 841:   ;
 842:L P[988] 800mm/sec FINE
    :  Arc Start[6]    ;
 843:  Weave Sine[6] ;
 844:  Track TAST[6] ;
 845:L P[989] WELD_SPEED CNT100    ;
 846:C P[990]    
    :  P[991] WELD_SPEED FINE
    :  Arc End[6]    ;
 847:  Weave End ;
 848:  Track End ;
 849:   ;
 850:L P[992] 1000mm/sec CNT25    ;
 851:   ;
 852:J P[993] 50% CNT25    ;
 853:   ;
 854:J P[994] 50% CNT25    ;
 855:   ;
 856:  !FR50Z1430 ;
 857:  IF R[15]=1434,CALL TECH_HOLD ;
 858:   ;
 859:L P[995] 800mm/sec FINE
    :  Arc Start[6]    ;
 860:  Weave Sine[6] ;
 861:  Track TAST[6] ;
 862:L P[996] WELD_SPEED FINE
    :  Arc End[6]    ;
 863:  Track End ;
 864:  Weave End ;
 865:   ;
 866:L P[997] 1000mm/sec CNT25    ;
 867:   ;
 868:L P[998] 1000mm/sec CNT25    ;
 869:   ;
 870:  !FR50Z1440 ;
 871:  IF R[15]=1444,CALL TECH_HOLD ;
 872:   ;
 873:L P[999] 800mm/sec FINE
    :  Arc Start[6]    ;
 874:  Weave Sine[6] ;
 875:  Track TAST[6] ;
 876:L P[1000] WELD_SPEED FINE
    :  Arc End[6]    ;
 877:  Weave End ;
 878:  Track End ;
 879:   ;
 880:L P[1001] 1000mm/sec CNT25    ;
 881:   ;
 882:J P[1002] 50% CNT25    ;
 883:   ;
 884:  !FR50Z1450 ;
 885:  IF R[15]=1454,CALL TECH_HOLD ;
 886:   ;
 887:L P[1003] 800mm/sec FINE
    :  Arc Start[6]    ;
 888:  Weave Sine[6] ;
 889:  Track TAST[6] ;
 890:L P[1004] WELD_SPEED CNT100    ;
 891:C P[1005]    
    :  P[1006] WELD_SPEED FINE
    :  Arc End[6]    ;
 892:  Weave End ;
 893:  Track End ;
 894:   ;
 895:L P[1007] 960mm/sec CNT25    ;
 896:   ;
 897:J P[1008] 50% CNT25    ;
 898:   ;
 899:L P[1009] 1000mm/sec CNT25    ;
 900:   ;
 901:  !FR50Z1460 ;
 902:  IF R[15]=1464,CALL TECH_HOLD ;
 903:   ;
 904:L P[1010] 800mm/sec FINE
    :  Arc Start[6]    ;
 905:  Weave Sine[6] ;
 906:  Track TAST[6] ;
 907:L P[1011] WELD_SPEED FINE
    :  Arc End[6]    ;
 908:  Weave End ;
 909:  Track End ;
 910:   ;
 911:L P[1012] 1000mm/sec CNT25    ;
 912:   ;
 913:L P[1013] 1000mm/sec CNT25    ;
 914:   ;
 915:L P[1014] 1000mm/sec CNT25    ;
 916:   ;
 917:L P[1015] 1000mm/sec CNT25    ;
 918:   ;
 919:  !FR50Z1470 ;
 920:  IF R[15]=1474,CALL TECH_HOLD ;
 921:   ;
 922:L P[1016] 200mm/sec FINE
    :  Arc Start[6]    ;
 923:  Weave Sine[6] ;
 924:  Track TAST[6] ;
 925:L P[1017] WELD_SPEED FINE
    :  Arc End[6]    ;
 926:  Weave End ;
 927:  Track End ;
 928:   ;
 929:L P[1018] 200mm/sec CNT25    ;
 930:   ;
 931:L P[1019] 1000mm/sec CNT25    ;
 932:   ;
 933:J P[1020] 50% CNT25    ;
 934:   ;
 935:L P[1021] 1000mm/sec CNT25    ;
 936:   ;
 937:  !FR50Z1480 ;
 938:  IF R[15]=1484,CALL TECH_HOLD ;
 939:   ;
 940:L P[1022] 800mm/sec FINE
    :  Arc Start[6]    ;
 941:  Weave Sine[6] ;
 942:  Track TAST[6] ;
 943:L P[1023] WELD_SPEED FINE
    :  Arc End[6]    ;
 944:  Weave End ;
 945:  Track End ;
 946:   ;
 947:L P[1024] 1000mm/sec CNT25    ;
 948:   ;
 949:L P[1025] 1000mm/sec CNT25    ;
 950:   ;
 951:L P[1026] 300mm/sec CNT25    ;
 952:   ;
 953:  !FR50Z1490 ;
 954:  IF R[15]=1494,CALL TECH_HOLD ;
 955:   ;
 956:L P[1027] 300mm/sec FINE
    :  Arc Start[6]    ;
 957:  Weave Sine[6] ;
 958:  Track TAST[6] ;
 959:L P[1028] WELD_SPEED FINE
    :  Arc End[6]    ;
 960:  Weave End ;
 961:  Track End ;
 962:   ;
 963:L P[1029] 300mm/sec CNT25    ;
 964:   ;
 965:L P[1030] 700mm/sec CNT25    ;
 966:   ;
 967:J P[1031] 50% CNT25    ;
 968:   ;
 969:  !HOME ;
 970:J P[1032] 50% CNT25    ;
 971:   ;
 972:  !******** POSITIONER MOVE ******* ;
 973:J P[1033] 75% FINE    ;
 974:   ;
 975:J P[1034] 50% CNT25    ;
 976:   ;
 977:L P[1035] 1000mm/sec CNT25    ;
 978:   ;
 979:  !LENGTH: 100mm ;
 980:   ;
 981:  !FR50Z1500 ;
 982:  IF R[15]=1504,CALL TECH_HOLD ;
 983:   ;
 984:L P[1036] 800mm/sec FINE
    :  Arc Start[6]    ;
 985:  Weave Sine[6] ;
 986:L P[1037] WELD_SPEED CNT100    ;
 987:L P[1038] WELD_SPEED FINE
    :  Arc End[6]    ;
 988:  Weave End ;
 989:   ;
 990:L P[1039] 1000mm/sec CNT25    ;
 991:   ;
 992:  !FR50Z1510 ;
 993:  IF R[15]=1514,CALL TECH_HOLD ;
 994:   ;
 995:  !LENGTH: 85mm ;
 996:   ;
 997:L P[1040] 800mm/sec FINE
    :  Arc Start[8]    ;
 998:  Weave Sine[8] ;
 999:L P[1041] WELD_SPEED FINE
    :  Arc End[8]    ;
1000:  Weave End ;
1001:   ;
1002:L P[1042] 1000mm/sec CNT85    ;
1003:   ;
1004:L P[1043] 1000mm/sec CNT25    ;
1005:   ;
1006:  !FR50Z1520 ;
1007:  IF R[15]=1524,CALL TECH_HOLD ;
1008:   ;
1009:  !LENGTH: 100mm - 1 of 2 ;
1010:   ;
1011:L P[1044] 800mm/sec FINE
    :  Arc Start[6]    ;
1012:  Weave Sine[6] ;
1013:L P[1045] WELD_SPEED CNT100    ;
1014:L P[1046] WELD_SPEED FINE
    :  Arc End[6]    ;
1015:  Weave End ;
1016:   ;
1017:L P[1047] 1000mm/sec CNT50    ;
1018:   ;
1019:L P[1048] 1000mm/sec CNT50    ;
1020:   ;
1021:  !FR50Z1530 ;
1022:  IF R[15]=1534,CALL TECH_HOLD ;
1023:   ;
1024:  !LENGTH: 100mm - 2 of 2 ;
1025:  !TIE INTO PREVIOUS WELD ;
1026:   ;
1027:L P[1049] 800mm/sec FINE
    :  Arc Start[6]    ;
1028:  Weave Sine[6] ;
1029:L P[1050] WELD_SPEED FINE
    :  Arc End[8]    ;
1030:  Weave End ;
1031:   ;
1032:L P[1051] 1000mm/sec CNT50    ;
1033:   ;
1034:L P[1052] 1000mm/sec CNT100    ;
1035:   ;
1036:L P[1053] 1000mm/sec CNT75    ;
1037:   ;
1038:  !FR50Z1540 ;
1039:  IF R[15]=1544,CALL TECH_HOLD ;
1040:   ;
1041:  !LENGTH: 85mm ;
1042:   ;
1043:L P[1054] 800mm/sec FINE
    :  Arc Start[8]    ;
1044:  Weave Sine[8] ;
1045:L P[1055] WELD_SPEED FINE
    :  Arc End[8]    ;
1046:  Weave End ;
1047:   ;
1048:L P[1056] 1000mm/sec CNT75    ;
1049:   ;
1050:L P[1057] 1000mm/sec CNT85    ;
1051:   ;
1052:L P[1058] 1000mm/sec CNT30    ;
1053:   ;
1054:  !FR50Z1550 ;
1055:  IF R[15]=1554,CALL TECH_HOLD ;
1056:   ;
1057:L P[1059] 1000mm/sec FINE
    :  Arc Start[6]    ;
1058:  Weave Sine[6] ;
1059:  Track TAST[6] ;
1060:L P[1060] WELD_SPEED FINE
    :  Arc End[6]    ;
1061:  Weave End ;
1062:  Track End ;
1063:   ;
1064:L P[1061] 1000mm/sec CNT30    ;
1065:   ;
1066:L P[1062] 1000mm/sec CNT30    ;
1067:   ;
1068:  !FR50Z1560 ;
1069:  IF R[15]=1564,CALL TECH_HOLD ;
1070:   ;
1071:L P[1063] 1000mm/sec FINE
    :  Arc Start[6]    ;
1072:  Weave Sine[6] ;
1073:  Track TAST[6] ;
1074:L P[1064] WELD_SPEED FINE
    :  Arc End[6]    ;
1075:  Weave End ;
1076:  Track End ;
1077:   ;
1078:L P[1065] 1000mm/sec CNT25    ;
1079:   ;
1080:  !FR50Z1570 ;
1081:  IF R[15]=1574,CALL TECH_HOLD ;
1082:   ;
1083:L P[1066] 1000mm/sec FINE
    :  Arc Start[6]    ;
1084:  Weave Sine[6] ;
1085:  Track TAST[6] ;
1086:L P[1067] WELD_SPEED FINE
    :  Arc End[6]    ;
1087:  Weave End ;
1088:  Track End ;
1089:   ;
1090:L P[1068] 1000mm/sec CNT25    ;
1091:   ;
1092:L P[1069] 1000mm/sec CNT25    ;
1093:   ;
1094:  !FR50Z1580 ;
1095:  IF R[15]=1584,CALL TECH_HOLD ;
1096:   ;
1097:L P[1070] 1000mm/sec FINE
    :  Arc Start[6]    ;
1098:  Weave Sine[6] ;
1099:  Track TAST[6] ;
1100:L P[1071] WELD_SPEED FINE
    :  Arc End[6]    ;
1101:  Track End ;
1102:  Weave End ;
1103:   ;
1104:L P[1072] 1000mm/sec CNT25    ;
1105:   ;
1106:J P[1073] 50% CNT25    ;
1107:   ;
1108:  !FR50Z1590 ;
1109:  IF R[15]=1594,CALL TECH_HOLD ;
1110:   ;
1111:L P[1074] 1000mm/sec FINE
    :  Arc Start[6]    ;
1112:  Weave Sine[6] ;
1113:L P[1075] WELD_SPEED FINE
    :  Arc End[6]    ;
1114:  Weave End ;
1115:   ;
1116:L P[1076] 1000mm/sec CNT25    ;
1117:   ;
1118:J P[1077] 25% CNT25    ;
1119:   ;
1120:  !FR50Z1600 ;
1121:  IF R[15]=1604,CALL TECH_HOLD ;
1122:   ;
1123:L P[1078] 1000mm/sec FINE
    :  Arc Start[6]    ;
1124:  Weave Sine[6] ;
1125:L P[1079] WELD_SPEED FINE
    :  Arc End[6]    ;
1126:  Weave End ;
1127:   ;
1128:L P[1080] 1000mm/sec CNT75    ;
1129:   ;
1130:J P[1081] 50% CNT25    ;
1131:   ;
1132:  !FR50Z1610 ;
1133:  IF R[15]=1614,CALL TECH_HOLD ;
1134:   ;
1135:   ;
1136:L P[1082] 800mm/sec FINE
    :  Arc Start[6]    ;
1137:  Weave Sine[6] ;
1138:  Track TAST[6] ;
1139:L P[1083] WELD_SPEED CNT100    ;
1140:L P[1084] WELD_SPEED CNT100    ;
1141:L P[1085] WELD_SPEED CNT100    ;
1142:L P[1086] WELD_SPEED FINE
    :  Arc End[6]    ;
1143:  Weave End ;
1144:  Track End ;
1145:   ;
1146:   ;
1147:L P[1087] 1000mm/sec CNT25    ;
1148:   ;
1149:  !FR50Z1620 ;
1150:  IF R[15]=1624,CALL TECH_HOLD ;
1151:   ;
1152:L P[1088] 800mm/sec FINE
    :  Arc Start[6]    ;
1153:  Weave Sine[6] ;
1154:  Track TAST[6] ;
1155:C P[1089]    
    :  P[1090] WELD_SPEED FINE
    :  Arc End[6]    ;
1156:  Weave End ;
1157:  Track End ;
1158:   ;
1159:L P[1091] 1000mm/sec CNT50    ;
1160:   ;
1161:L P[1092] 1000mm/sec CNT25    ;
1162:   ;
1163:  !FR50Z1630 ;
1164:  IF R[15]=1634,CALL TECH_HOLD ;
1165:   ;
1166:L P[1093] 800mm/sec FINE
    :  Arc Start[6]    ;
1167:  Weave Sine[6] ;
1168:  Track TAST[6] ;
1169:L P[1094] WELD_SPEED FINE
    :  Arc End[6]    ;
1170:  Weave End ;
1171:  Track End ;
1172:   ;
1173:L P[1095] 1000mm/sec CNT25    ;
1174:   ;
1175:L P[1096] 1000mm/sec CNT25    ;
1176:   ;
1177:  !FR50Z1640 ;
1178:  IF R[15]=1644,CALL TECH_HOLD ;
1179:   ;
1180:L P[1097] 800mm/sec FINE
    :  Arc Start[6]    ;
1181:  Weave Sine[6] ;
1182:  Track TAST[6] ;
1183:L P[1098] WELD_SPEED CNT100    ;
1184:L P[1099] WELD_SPEED CNT100    ;
1185:L P[1100] WELD_SPEED FINE
    :  Arc End[6]    ;
1186:  Weave End ;
1187:  Track End ;
1188:   ;
1189:L P[1101] 900mm/sec CNT25    ;
1190:   ;
1191:L P[1102] 700mm/sec CNT25    ;
1192:   ;
1193:  !FR50Z1650 ;
1194:  IF R[15]=1654,CALL TECH_HOLD ;
1195:   ;
1196:L P[1103] 800mm/sec FINE
    :  Arc Start[6]    ;
1197:  Weave Sine[6] ;
1198:  Track TAST[6] ;
1199:L P[1104] WELD_SPEED FINE
    :  Arc End[6]    ;
1200:  Weave End ;
1201:  Track End ;
1202:   ;
1203:L P[1105] 1000mm/sec CNT25    ;
1204:   ;
1205:J P[1106] 50% FINE    ;
1206:   ;
1207:J P[1107] 50% CNT25    ;
1208:   ;
1209:   ;
1210:  !FR50Z1660 ;
1211:  IF R[15]=1664,CALL TECH_HOLD ;
1212:   ;
1213:L P[1108] 800mm/sec FINE
    :  Arc Start[6]    ;
1214:  Weave Sine[6] ;
1215:  Track TAST[6] ;
1216:L P[1109] WELD_SPEED FINE
    :  Arc End[6]    ;
1217:  Weave End ;
1218:  Track End ;
1219:   ;
1220:L P[1110] 1000mm/sec CNT25    ;
1221:   ;
1222:  !FR50Z1670 ;
1223:  IF R[15]=1674,CALL TECH_HOLD ;
1224:   ;
1225:L P[1111] 800mm/sec FINE
    :  Arc Start[6]    ;
1226:  Weave Sine[6] ;
1227:  Track TAST[6] ;
1228:C P[1112]    
    :  P[1113] WELD_SPEED FINE
    :  Arc End[6]    ;
1229:  Weave End ;
1230:  Track End ;
1231:   ;
1232:L P[1114] 1000mm/sec CNT25    ;
1233:   ;
1234:L P[1115] 1000mm/sec CNT25    ;
1235:   ;
1236:  !FR50Z1680 ;
1237:  IF R[15]=1684,CALL TECH_HOLD ;
1238:   ;
1239:L P[1116] 800mm/sec FINE
    :  Arc Start[6]    ;
1240:  Weave Sine[6] ;
1241:  Track TAST[6] ;
1242:L P[1117] WELD_SPEED FINE
    :  Arc End[6]    ;
1243:  Weave End ;
1244:  Track End ;
1245:   ;
1246:L P[1118] 1000mm/sec CNT25    ;
1247:   ;
1248:  !FR50Z1690 ;
1249:  IF R[15]=1694,CALL TECH_HOLD ;
1250:   ;
1251:L P[1119] 800mm/sec FINE
    :  Arc Start[6]    ;
1252:  Weave Sine[6] ;
1253:  Track TAST[6] ;
1254:L P[1120] WELD_SPEED CNT100    ;
1255:L P[1121] WELD_SPEED CNT100    ;
1256:L P[1122] WELD_SPEED FINE
    :  Arc End[6]    ;
1257:  Weave End ;
1258:  Track End ;
1259:   ;
1260:   ;
1261:L P[1123] 1000mm/sec CNT25    ;
1262:   ;
1263:L P[1124] 800mm/sec CNT25    ;
1264:   ;
1265:L P[1125] 600mm/sec CNT25    ;
1266:   ;
1267:  !FR50Z1700 ;
1268:  IF R[15]=1704,CALL TECH_HOLD ;
1269:   ;
1270:L P[1126] 400mm/sec FINE
    :  Arc Start[6]    ;
1271:  Weave Sine[6] ;
1272:  Track TAST[6] ;
1273:L P[1127] WELD_SPEED FINE
    :  Arc End[6]    ;
1274:  Weave End ;
1275:  Track End ;
1276:   ;
1277:L P[1128] 700mm/sec CNT25    ;
1278:   ;
1279:L P[1129] 200mm/sec CNT30    ;
1280:   ;
1281:L P[1130] 700mm/sec CNT50    ;
1282:   ;
1283:L P[1131] 1000mm/sec CNT100    ;
1284:   ;
1285:   ;
1286:  !HOME ;
1287:J P[1132] 50% FINE    ;
1288:   ;
1289:  CALL T_CLEAN    ;
1290:   ;
1291:  UFRAME_NUM=1 ;
1292:   ;
1293:J P[1133] 50% CNT25    ;
1294:   ;
1295:  !******** POSITIONER MOVE ******* ;
1296:   ;
1297:J P[1134] 75% CNT25    ;
1298:   ;
1299:J P[1135] 50% CNT80    ;
1300:   ;
1301:  DO[89:OFF:Inch backward   ]=PULSE,1.0sec ;
1302:   ;
1303:J P[1136] 50% CNT30    ;
1304:   ;
1305:  !CELL ID: C ... ;
1306:   ;
1307:L P[1137] 800mm/sec FINE
    :  Arc Start[1]    ;
1308:  WAIT    .10(sec) ;
1309:L P[1138] WELD_SPEED FINE
    :  Arc End[1]    ;
1310:   ;
1311:J P[1139] 50% CNT25    ;
1312:   ;
1313:L P[1140] 800mm/sec FINE
    :  Arc Start[1]    ;
1314:  WAIT    .10(sec) ;
1315:L P[1141] WELD_SPEED FINE
    :  Arc End[1]    ;
1316:   ;
1317:J P[1142] 50% CNT25    ;
1318:   ;
1319:L P[1143] 800mm/sec FINE
    :  Arc Start[1]    ;
1320:  WAIT    .10(sec) ;
1321:L P[1144] WELD_SPEED FINE
    :  Arc End[1]    ;
1322:   ;
1323:J P[1145] 50% CNT60    ;
1324:   ;
1325:J P[1146] 70% CNT25    ;
1326:   ;
1327:J P[1147] 50% CNT25    ;
1328:   ;
1329:L P[1148] 960mm/sec CNT25    ;
1330:   ;
1331:   ;
1332:  !FR50Z1710 ;
1333:  IF R[15]=1714,CALL TECH_HOLD ;
1334:   ;
1335:L P[1149] 800mm/sec FINE
    :  Arc Start[6]    ;
1336:  Weave Sine[6] ;
1337:  Track TAST[6] ;
1338:L P[1150] WELD_SPEED CNT100    ;
1339:C P[1151]    
    :  P[1152] WELD_SPEED CNT100    ;
1340:L P[1153] WELD_SPEED CNT100    ;
1341:C P[1154]    
    :  P[1155] WELD_SPEED CNT100    ;
1342:L P[1156] WELD_SPEED CNT100    ;
1343:C P[1157]    
    :  P[1158] WELD_SPEED FINE
    :  Arc End[6]    ;
1344:  Weave End ;
1345:  Track End ;
1346:   ;
1347:L P[1159] 1000mm/sec CNT25    ;
1348:   ;
1349:J P[1160] 50% CNT25    ;
1350:   ;
1351:L P[1161] 1000mm/sec CNT25    ;
1352:   ;
1353:   ;
1354:  !FR50Z1720 ;
1355:  IF R[15]=1724,CALL TECH_HOLD ;
1356:   ;
1357:L P[1162] 800mm/sec FINE
    :  Arc Start[6]    ;
1358:  Weave Sine[6] ;
1359:L P[1163] WELD_SPEED FINE
    :  Arc End[6]    ;
1360:  Weave End ;
1361:   ;
1362:  CALL LENGTH_CHECK(1720) ;
1363:   ;
1364:L P[1164] 1000mm/sec CNT25    ;
1365:   ;
1366:J P[1165] 50% CNT25    ;
1367:   ;
1368:  //J P[1166] 50% CNT25    ;
1369:   ;
1370:J P[1167] 50% CNT25    ;
1371:   ;
1372:L P[1168] 1000mm/sec CNT25    ;
1373:   ;
1374:L P[1169] 1000mm/sec CNT25    ;
1375:   ;
1376:  !FR50Z1730 ;
1377:  IF R[15]=1734,CALL TECH_HOLD ;
1378:   ;
1379:L P[1170] 800mm/sec FINE
    :  Arc Start[6]    ;
1380:  Weave Sine[6] ;
1381:  Track TAST[6] ;
1382:L P[1171] WELD_SPEED FINE
    :  Arc End[6]    ;
1383:  Weave End ;
1384:  Track End ;
1385:   ;
1386:L P[1172] 1000mm/sec CNT25    ;
1387:   ;
1388:  !********POSITIONER MOVE******** ;
1389:J P[1173] 75% FINE    ;
1390:   ;
1391:  !FR50Z1740 ;
1392:  IF R[15]=1744,CALL TECH_HOLD ;
1393:   ;
1394:L P[1174] 800mm/sec FINE
    :  Arc Start[6]    ;
1395:  Weave Sine[6] ;
1396:  Track TAST[6] ;
1397:L P[1175] WELD_SPEED CNT100    ;
1398:L P[1176] WELD_SPEED CNT100    ;
1399:L P[1177] WELD_SPEED CNT100    ;
1400:C P[1178]    
    :  P[1179] WELD_SPEED CNT100    ;
1401:L P[1180] WELD_SPEED CNT100    ;
1402:L P[1181] WELD_SPEED CNT100    ;
1403:L P[1182] WELD_SPEED CNT100    ;
1404:C P[1183]    
    :  P[1184] WELD_SPEED CNT100    ;
1405:L P[1185] WELD_SPEED CNT100    ;
1406:C P[1186]    
    :  P[1187] WELD_SPEED CNT100    ;
1407:L P[1188] WELD_SPEED CNT100    ;
1408:C P[1189]    
    :  P[1190] WELD_SPEED CNT100    ;
1409:L P[1191] WELD_SPEED FINE
    :  Arc End[6]    ;
1410:  Weave End ;
1411:  Track End ;
1412:   ;
1413:L P[1192] 1000mm/sec CNT25    ;
1414:   ;
1415:   ;
1416:L P[1193] 300mm/sec CNT25 Wjnt    ;
1417:   ;
1418:L P[1194] 300mm/sec CNT25    ;
1419:   ;
1420:  !FR50Z1750 ;
1421:  IF R[15]=1754,CALL TECH_HOLD ;
1422:   ;
1423:L P[1195] 800mm/sec FINE
    :  Arc Start[6]    ;
1424:  Weave Sine[6] ;
1425:  Track TAST[6] ;
1426:L P[1196] WELD_SPEED CNT100    ;
1427:C P[1197]    
    :  P[1198] WELD_SPEED CNT100    ;
1428:L P[1199] WELD_SPEED CNT100    ;
1429:C P[1200]    
    :  P[1201] WELD_SPEED CNT100    ;
1430:L P[1202] WELD_SPEED CNT100    ;
1431:C P[1203]    
    :  P[1204] WELD_SPEED FINE
    :  Arc End[6]    ;
1432:  Weave End ;
1433:  Track End ;
1434:   ;
1435:L P[1205] 1000mm/sec CNT50    ;
1436:   ;
1437:L P[1206] 1000mm/sec CNT80    ;
1438:   ;
1439:L P[1207] 1000mm/sec CNT80    ;
1440:   ;
1441:J P[1208] 50% CNT25    ;
1442:   ;
1443:J P[1209] 50% CNT25    ;
1444:   ;
1445:  !********POSITIONER MOVE******** ;
1446:J P[1210] 65% CNT10    ;
1447:   ;
1448:J P[1211] 50% CNT50    ;
1449:   ;
1450:  !FR50Z1760 ;
1451:  IF R[15]=1764,CALL TECH_HOLD ;
1452:   ;
1453:L P[1212] 1000mm/sec FINE
    :  Arc Start[6]    ;
1454:  Weave Sine[6] ;
1455:  Track TAST[6] ;
1456:C P[1213]    
    :  P[1214] WELD_SPEED CNT100    ;
1457:L P[1215] WELD_SPEED CNT100    ;
1458:C P[1216]    
    :  P[1217] WELD_SPEED CNT100    ;
1459:L P[1218] WELD_SPEED FINE
    :  Arc End[6]    ;
1460:  Weave End ;
1461:  Track End ;
1462:   ;
1463:L P[1219] 1000mm/sec CNT25    ;
1464:   ;
1465:J P[1220] 50% CNT25    ;
1466:   ;
1467:   ;
1468:  !FR50Z1770 ;
1469:  IF R[15]=1774,CALL TECH_HOLD ;
1470:   ;
1471:L P[1221] 800mm/sec FINE
    :  Arc Start[6]    ;
1472:  Weave Sine[6] ;
1473:  Track TAST[6] ;
1474:L P[1222] WELD_SPEED CNT100    ;
1475:C P[1223]    
    :  P[1224] WELD_SPEED CNT100    ;
1476:C P[1225]    
    :  P[1226] WELD_SPEED CNT100    ;
1477:C P[1227]    
    :  P[1228] WELD_SPEED CNT100    ;
1478:L P[1229] WELD_SPEED FINE
    :  Arc End[6]    ;
1479:  Weave End ;
1480:  Track End ;
1481:   ;
1482:L P[1230] 1000mm/sec CNT25    ;
1483:   ;
1484:L P[1231] 1000mm/sec CNT25    ;
1485:   ;
1486:  !FR50Z1780 ;
1487:  IF R[15]=1784,CALL TECH_HOLD ;
1488:   ;
1489:L P[1232] 500mm/sec FINE
    :  Arc Start[6]    ;
1490:  Weave Sine[6] ;
1491:  Track TAST[6] ;
1492:L P[1233] WELD_SPEED CNT100    ;
1493:L P[1234] WELD_SPEED CNT100    ;
1494:L P[1235] WELD_SPEED CNT100    ;
1495:L P[1236] WELD_SPEED FINE
    :  Arc End[6]    ;
1496:  Weave End ;
1497:  Track End ;
1498:   ;
1499:L P[1237] 500mm/sec CNT25    ;
1500:   ;
1501:L P[1238] 1000mm/sec CNT25    ;
1502:   ;
1503:  !FR50Z1790 ;
1504:  IF R[15]=1794,CALL TECH_HOLD ;
1505:   ;
1506:L P[1239] 800mm/sec FINE
    :  Arc Start[6]    ;
1507:  Weave Sine[6] ;
1508:  Track TAST[6] ;
1509:L P[1240] WELD_SPEED FINE
    :  Arc End[6]    ;
1510:  Weave End ;
1511:  Track End ;
1512:   ;
1513:L P[1241] 960mm/sec CNT40    ;
1514:   ;
1515:J P[1242] 50% CNT25    ;
1516:   ;
1517:  !FR50Z1800 ;
1518:  IF R[15]=1804,CALL TECH_HOLD ;
1519:   ;
1520:L P[1243] 800mm/sec FINE
    :  Arc Start[6]    ;
1521:  Weave Sine[6] ;
1522:  Track TAST[6] ;
1523:L P[1244] WELD_SPEED FINE
    :  Arc End[6]    ;
1524:  Weave End ;
1525:  Track End ;
1526:   ;
1527:L P[1245] 1000mm/sec CNT35    ;
1528:   ;
1529:L P[1246] 1000mm/sec CNT50    ;
1530:   ;
1531:J P[1247] 50% CNT25    ;
1532:   ;
1533:  !FR50Z1810 ;
1534:  IF R[15]=1814,CALL TECH_HOLD ;
1535:   ;
1536:L P[1248] 800mm/sec FINE
    :  Arc Start[6]    ;
1537:  Weave Sine[6] ;
1538:  Track TAST[6] ;
1539:L P[1249] WELD_SPEED FINE
    :  Arc End[6]    ;
1540:  Weave End ;
1541:  Track End ;
1542:   ;
1543:L P[1250] 1000mm/sec CNT25    ;
1544:   ;
1545:J P[1251] 50% CNT25    ;
1546:   ;
1547:   ;
1548:  !FR50Z1820 ;
1549:  IF R[15]=1824,CALL TECH_HOLD ;
1550:   ;
1551:L P[1252] 1000mm/sec FINE
    :  Arc Start[6]    ;
1552:  Weave Sine[6] ;
1553:  Track TAST[6] ;
1554:L P[1253] WELD_SPEED FINE
    :  Arc End[6]    ;
1555:  Weave End ;
1556:  Track End ;
1557:   ;
1558:L P[1254] 1000mm/sec CNT75    ;
1559:   ;
1560:L P[1255] 1000mm/sec CNT50    ;
1561:   ;
1562:J P[1256] 50% CNT25    ;
1563:   ;
1564:  !FR50Z1830 ;
1565:  IF R[15]=1834,CALL TECH_HOLD ;
1566:   ;
1567:L P[1257] 1000mm/sec FINE
    :  Arc Start[6]    ;
1568:  Weave Sine[6] ;
1569:  Track TAST[6] ;
1570:L P[1258] WELD_SPEED FINE
    :  Arc End[6]    ;
1571:  Weave End ;
1572:  Track End ;
1573:   ;
1574:L P[1259] 1000mm/sec CNT50    ;
1575:   ;
1576:J P[1260] 50% CNT50    ;
1577:   ;
1578:J P[1261] 50% CNT40    ;
1579:   ;
1580:  !********POSITIONER MOVE******** ;
1581:J P[1262] 80% CNT25    ;
1582:   ;
1583:J P[1263] 50% CNT40    ;
1584:   ;
1585:J P[1264] 25% CNT15    ;
1586:   ;
1587:L P[1265] 400mm/sec CNT5    ;
1588:   ;
1589:  CALL ARC_DISABLE_RH_LS(0) ;
1590:   ;
1591:  !FR50Z1840 ;
1592:  IF R[15]=1844,CALL TECH_HOLD ;
1593:   ;
1594:L P[1266] 200mm/sec FINE
    :  Arc Start[8]    ;
1595:  Weave Sine[8] ;
1596:L P[1267] WELD_SPEED CNT100    ;
1597:C P[1268]    
    :  P[1269] WELD_SPEED CNT100    ;
1598:L P[1270] WELD_SPEED FINE
    :  Arc End[8]    ;
1599:  Weave End ;
1600:   ;
1601:L P[1271] 200mm/sec CNT15    ;
1602:   ;
1603:J P[1272] 50% CNT25    ;
1604:   ;
1605:  !FR50Z1850 ;
1606:  IF R[15]=1854,CALL TECH_HOLD ;
1607:   ;
1608:L P[1273] 800mm/sec FINE
    :  Arc Start[8]    ;
1609:  Weave Sine[8] ;
1610:L P[1274] WELD_SPEED FINE
    :  Arc End[8]    ;
1611:  Weave End ;
1612:   ;
1613:  CALL ARC_DISABLE_RH_LS(1) ;
1614:   ;
1615:L P[1275] 1000mm/sec CNT25    ;
1616:   ;
1617:   ;
1618:J P[1276] 50% CNT90    ;
1619:   ;
1620:   ;
1621:  !HOME ;
1622:J P[1277] 50% FINE    ;
1623:   ;
1624:  CALL T_CLEAN    ;
1625:  UFRAME_NUM=1 ;
1626:   ;
1627:  !******** POSITIONER MOVE ******* ;
1628:J P[1278] 75% FINE    ;
1629:   ;
1630:J P[1279] 50% CNT25    ;
1631:   ;
1632:L P[1280] 1000mm/sec CNT25    ;
1633:   ;
1634:  !FR50Z1860 ;
1635:  IF R[15]=1864,CALL TECH_HOLD ;
1636:   ;
1637:L P[1281] 800mm/sec FINE
    :  Arc Start[6]    ;
1638:  Weave Sine[6] ;
1639:  Track TAST[6] ;
1640:L P[1282] WELD_SPEED FINE
    :  Arc End[6]    ;
1641:  Weave End ;
1642:  Track End ;
1643:   ;
1644:L P[1283] 1000mm/sec CNT100    ;
1645:   ;
1646:L P[1284] 1000mm/sec CNT25    ;
1647:   ;
1648:J P[1285] 50% CNT100    ;
1649:   ;
1650:J P[1286] 50% CNT100    ;
1651:   ;
1652:L P[1287] 1000mm/sec CNT25    ;
1653:   ;
1654:  !FR50Z1870 ;
1655:  IF R[15]=1874,CALL TECH_HOLD ;
1656:   ;
1657:L P[1288] 1000mm/sec FINE
    :  Arc Start[6]    ;
1658:  Weave Sine[6] ;
1659:  Track TAST[6] ;
1660:C P[1289]    
    :  P[1290] WELD_SPEED CNT100    ;
1661:L P[1291] WELD_SPEED FINE
    :  Arc End[6]    ;
1662:  Weave End ;
1663:  Track End ;
1664:   ;
1665:L P[1292] 1000mm/sec CNT25    ;
1666:   ;
1667:L P[1293] 1000mm/sec CNT70    ;
1668:   ;
1669:J P[1294] 50% CNT30    ;
1670:   ;
1671:  !HOME ;
1672:J P[1295] 50% CNT50    ;
1673:   ;
1674:  !******** POSITIONER MOVE ******* ;
1675:J P[1296] 70% FINE    ;
1676:   ;
1677:L P[1297] 1000mm/sec CNT25    ;
1678:   ;
1679:  !FR50Z1880 ;
1680:  IF R[15]=1884,CALL TECH_HOLD ;
1681:   ;
1682:   ;
1683:L P[1298] 1000mm/sec FINE
    :  Arc Start[6]    ;
1684:  Weave Sine[6] ;
1685:  Track TAST[6] ;
1686:C P[1299]    
    :  P[1300] WELD_SPEED CNT100    ;
1687:L P[1301] WELD_SPEED FINE
    :  Arc End[6]    ;
1688:  Weave End ;
1689:  Track End ;
1690:   ;
1691:L P[1302] 1000mm/sec CNT25    ;
1692:   ;
1693:L P[1303] 1000mm/sec CNT25    ;
1694:   ;
1695:  !HOME ;
1696:J P[1304] 50% CNT25    ;
1697:   ;
1698:  !******** POSITIONER MOVE ******* ;
1699:J P[1305] 70% FINE    ;
1700:   ;
1701:J P[1306] 50% CNT75    ;
1702:   ;
1703:J P[1307] 50% CNT25    ;
1704:   ;
1705:  ! 40mm weld ;
1706:   ;
1707:  !FR50Z1890 ;
1708:  IF R[15]=1894,CALL TECH_HOLD ;
1709:   ;
1710:L P[1308] 800mm/sec FINE
    :  Arc Start[6]    ;
1711:  Weave Sine[6] ;
1712:L P[1309] WELD_SPEED FINE
    :  Arc End[6]    ;
1713:  Weave End ;
1714:   ;
1715:  CALL LENGTH_CHECK(1890) ;
1716:   ;
1717:J P[1310] 50% CNT30    ;
1718:   ;
1719:L P[1311] 1000mm/sec CNT75    ;
1720:   ;
1721:J P[1312] 50% CNT50    ;
1722:   ;
1723:J P[1313] 50% CNT25    ;
1724:   ;
1725:  !FR50Z1900 ;
1726:  IF R[15]=1904,CALL TECH_HOLD ;
1727:   ;
1728:L P[1314] 800mm/sec FINE
    :  Arc Start[6]    ;
1729:  Weave Sine[6] ;
1730:L P[1315] WELD_SPEED CNT100    ;
1731:C P[1316]    
    :  P[1317] WELD_SPEED FINE
    :  Arc End[6]    ;
1732:  Weave End ;
1733:   ;
1734:L P[1318] 500mm/sec CNT25    ;
1735:   ;
1736:L P[1319] 1000mm/sec CNT25    ;
1737:   ;
1738:J P[1320] 50% CNT25    ;
1739:   ;
1740:L P[1321] 1000mm/sec CNT25    ;
1741:   ;
1742:L P[1322] 500mm/sec CNT25    ;
1743:   ;
1744:  !FR50Z1910 ;
1745:  IF R[15]=1914,CALL TECH_HOLD ;
1746:   ;
1747:L P[1323] 800mm/sec FINE
    :  Arc Start[6]    ;
1748:  Weave Sine[6] ;
1749:L P[1324] WELD_SPEED CNT100    ;
1750:C P[1325]    
    :  P[1326] WELD_SPEED FINE
    :  Arc End[6]    ;
1751:  Weave End ;
1752:   ;
1753:L P[1327] 400mm/sec CNT20    ;
1754:   ;
1755:J P[1328] 25% CNT25    ;
1756:   ;
1757:L P[1329] 1000mm/sec CNT45    ;
1758:   ;
1759:J P[1330] 50% CNT50    ;
1760:   ;
1761:L P[1331] 1000mm/sec CNT50    ;
1762:   ;
1763:  !FR50Z1920 ;
1764:  IF R[15]=1924,CALL TECH_HOLD ;
1765:   ;
1766:L P[1332] 800mm/sec FINE
    :  Arc Start[6]    ;
1767:  Weave Sine[6] ;
1768:  Track TAST[6] ;
1769:L P[1333] WELD_SPEED CNT100    ;
1770:C P[1334]    
    :  P[1335] WELD_SPEED CNT100    ;
1771:L P[1336] WELD_SPEED CNT100    ;
1772:C P[1337]    
    :  P[1338] WELD_SPEED CNT100    ;
1773:L P[1339] WELD_SPEED CNT100    ;
1774:C P[1340]    
    :  P[1341] WELD_SPEED CNT100    ;
1775:L P[1342] WELD_SPEED FINE
    :  Arc End[6]    ;
1776:  Weave End ;
1777:  Track End ;
1778:   ;
1779:L P[1343] 1000mm/sec CNT75    ;
1780:   ;
1781:J P[1344] 50% CNT40    ;
1782:   ;
1783:J P[1345] 50% CNT40    ;
1784:   ;
1785:L P[1346] 1000mm/sec CNT25    ;
1786:   ;
1787:  !FR50Z1930 ;
1788:  IF R[15]=1934,CALL TECH_HOLD ;
1789:   ;
1790:L P[1347] 800mm/sec FINE
    :  Arc Start[6]    ;
1791:  Weave Sine[6] ;
1792:  Track TAST[6] ;
1793:L P[1348] WELD_SPEED FINE
    :  Arc End[6]    ;
1794:  Weave End ;
1795:  Track End ;
1796:   ;
1797:L P[1349] 1000mm/sec CNT25    ;
1798:   ;
1799:  !******** POSITIONER MOVE ******* ;
1800:J P[1350] 50% CNT25    ;
1801:   ;
1802:   ;
1803:  !FR50Z1940 ;
1804:  IF R[15]=1944,CALL TECH_HOLD ;
1805:   ;
1806:   ;
1807:L P[1351] 800mm/sec FINE
    :  Arc Start[6]    ;
1808:  Weave Sine[6] ;
1809:  Track TAST[6] ;
1810:L P[1352] WELD_SPEED CNT100    ;
1811:C P[1353]    
    :  P[1354] WELD_SPEED CNT100    ;
1812:L P[1355] WELD_SPEED CNT100    ;
1813:C P[1356]    
    :  P[1357] WELD_SPEED CNT100    ;
1814:L P[1358] WELD_SPEED CNT100    ;
1815:C P[1359]    
    :  P[1360] WELD_SPEED CNT100    ;
1816:L P[1361] WELD_SPEED FINE
    :  Arc End[6]    ;
1817:  Weave End ;
1818:  Track End ;
1819:   ;
1820:L P[1362] 1000mm/sec CNT25    ;
1821:   ;
1822:J P[1363] 50% CNT25    ;
1823:   ;
1824:J P[1364] 75% CNT25    ;
1825:   ;
1826:  !FR50Z1950 ;
1827:  IF R[15]=1954,CALL TECH_HOLD ;
1828:   ;
1829:L P[1365] 500mm/sec FINE
    :  Arc Start[6]    ;
1830:  Weave Sine[6] ;
1831:  Track TAST[6] ;
1832:L P[1366] WELD_SPEED CNT100    ;
1833:C P[1367]    
    :  P[1368] WELD_SPEED CNT100    ;
1834:L P[1369] WELD_SPEED CNT100    ;
1835:C P[1370]    
    :  P[1371] WELD_SPEED CNT100    ;
1836:L P[1372] WELD_SPEED CNT100    ;
1837:C P[1373]    
    :  P[1374] WELD_SPEED FINE
    :  Arc End[6]    ;
1838:  Weave End ;
1839:  Track End ;
1840:   ;
1841:L P[1375] 1000mm/sec CNT55    ;
1842:   ;
1843:L P[1376] 1800mm/sec CNT65    ;
1844:   ;
1845:J P[1377] 50% CNT75    ;
1846:   ;
1847:J P[1378] 50% CNT25    ;
1848:   ;
1849:  !******** POSITIONER MOVE ******* ;
1850:J P[1379] 50% CNT25    ;
1851:   ;
1852:L P[1380] 1000mm/sec CNT25    ;
1853:   ;
1854:  !FR50Z1960 ;
1855:  IF R[15]=1964,CALL TECH_HOLD ;
1856:   ;
1857:L P[1381] 780mm/sec FINE
    :  Arc Start[6]    ;
1858:  Weave Sine[6] ;
1859:  Track TAST[6] ;
1860:L P[1382] WELD_SPEED CNT100    ;
1861:C P[1383]    
    :  P[1384] WELD_SPEED CNT100    ;
1862:L P[1385] WELD_SPEED CNT100    ;
1863:C P[1386]    
    :  P[1387] WELD_SPEED FINE
    :  Arc End[6]    ;
1864:  Weave End ;
1865:  Track End ;
1866:   ;
1867:L P[1388] 1000mm/sec CNT30    ;
1868:   ;
1869:J P[1389] 100% CNT20    ;
1870:   ;
1871:  !FR50Z1970 ;
1872:  IF R[15]=1974,CALL TECH_HOLD ;
1873:   ;
1874:L P[1390] 800mm/sec FINE
    :  Arc Start[6]    ;
1875:  Weave Sine[6] ;
1876:  Track TAST[6] ;
1877:L P[1391] WELD_SPEED CNT100    ;
1878:C P[1392]    
    :  P[1393] WELD_SPEED CNT100    ;
1879:C P[1394]    
    :  P[1395] WELD_SPEED CNT100    ;
1880:C P[1396]    
    :  P[1397] WELD_SPEED FINE
    :  Arc End[8]    ;
1881:  Weave End ;
1882:  Track End ;
1883:   ;
1884:L P[1398] 1000mm/sec CNT25    ;
1885:   ;
1886:L P[1399] 1000mm/sec CNT50    ;
1887:   ;
1888:  !FR50Z1980 ;
1889:  IF R[15]=1984,CALL TECH_HOLD ;
1890:   ;
1891:L P[1400] 800mm/sec FINE
    :  Arc Start[6]    ;
1892:  Weave Sine[6] ;
1893:  Track TAST[6] ;
1894:L P[1401] WELD_SPEED FINE
    :  Arc End[6]    ;
1895:  Weave End ;
1896:  Track End ;
1897:   ;
1898:L P[1402] 1000mm/sec CNT25    ;
1899:   ;
1900:J P[1403] 50% CNT25    ;
1901:   ;
1902:  !FR50Z1990 ;
1903:  IF R[15]=1994,CALL TECH_HOLD ;
1904:   ;
1905:L P[1404] 800mm/sec FINE
    :  Arc Start[6]    ;
1906:  Weave Sine[6] ;
1907:  Track TAST[6] ;
1908:L P[1405] WELD_SPEED FINE
    :  Arc End[6]    ;
1909:  Weave End ;
1910:  Track End ;
1911:   ;
1912:L P[1406] 1000mm/sec CNT25    ;
1913:   ;
1914:J P[1407] 50% CNT25    ;
1915:   ;
1916:  !FR50Z2000 ;
1917:  IF R[15]=2004,CALL TECH_HOLD ;
1918:   ;
1919:L P[1408] 800mm/sec FINE
    :  Arc Start[6]    ;
1920:  Weave Sine[6] ;
1921:  Track TAST[6] ;
1922:L P[1409] WELD_SPEED FINE
    :  Arc End[6]    ;
1923:  Weave End ;
1924:  Track End ;
1925:   ;
1926:L P[1410] 1000mm/sec CNT55    ;
1927:   ;
1928:J P[1411] 50% CNT80    ;
1929:   ;
1930:J P[1412] 50% CNT25    ;
1931:   ;
1932:   ;
1933:  !FR50Z2010 ;
1934:  IF R[15]=2014,CALL TECH_HOLD ;
1935:   ;
1936:L P[1413] 800mm/sec FINE
    :  Arc Start[6]    ;
1937:  Weave Sine[6] ;
1938:  Track TAST[6] ;
1939:L P[1414] WELD_SPEED FINE
    :  Arc End[6]    ;
1940:  Weave End ;
1941:  Track End ;
1942:   ;
1943:L P[1415] 1000mm/sec CNT35    ;
1944:   ;
1945:J P[1416] 50% CNT75    ;
1946:   ;
1947:J P[1417] 50% CNT40    ;
1948:   ;
1949:J P[1418] 50% CNT25    ;
1950:   ;
1951:  !FR50Z2020 ;
1952:  IF R[15]=2024,CALL TECH_HOLD ;
1953:   ;
1954:L P[1419] 800mm/sec FINE
    :  Arc Start[6]    ;
1955:  Weave Sine[6] ;
1956:  Track TAST[6] ;
1957:L P[1420] WELD_SPEED FINE
    :  Arc End[6]    ;
1958:  Weave End ;
1959:  Track End ;
1960:   ;
1961:J P[1421] 50% CNT40    ;
1962:   ;
1963:  !********POSITIONER MOVE******** ;
1964:J P[1422] 75% CNT25    ;
1965:   ;
1966:J P[1423] 50% CNT25    ;
1967:   ;
1968:J P[1424] 50% CNT30    ;
1969:   ;
1970:L P[1425] 800mm/sec CNT25    ;
1971:   ;
1972:  CALL ARC_LH_DISABLE_LS(0) ;
1973:   ;
1974:  !FR50Z2030 ;
1975:  IF R[15]=2034,CALL TECH_HOLD ;
1976:   ;
1977:L P[1426] 200mm/sec FINE
    :  Arc Start[8]    ;
1978:  Weave Sine[8] ;
1979:L P[1427] WELD_SPEED CNT100    ;
1980:C P[1428]    
    :  P[1429] WELD_SPEED CNT100    ;
1981:L P[1430] WELD_SPEED FINE
    :  Arc End[8]    ;
1982:  Weave End ;
1983:   ;
1984:J P[1431] 50% CNT40    ;
1985:   ;
1986:J P[1432] 50% CNT70    ;
1987:   ;
1988:J P[1433] 50% CNT35    ;
1989:   ;
1990:  !FR50Z2040 ;
1991:  IF R[15]=2044,CALL TECH_HOLD ;
1992:   ;
1993:L P[1434] 800mm/sec FINE
    :  Arc Start[8]    ;
1994:  Weave Sine[8] ;
1995:L P[1435] WELD_SPEED FINE
    :  Arc End[8]    ;
1996:  Weave End ;
1997:   ;
1998:  CALL ARC_LH_DISABLE_LS(1) ;
1999:   ;
2000:J P[1436] 25% CNT40    ;
2001:   ;
2002:J P[1437] 50% CNT25    ;
2003:   ;
2004:J P[1438] 50% CNT50    ;
2005:   ;
2006:  CALL HOME    ;
2007:  CALL LOAD_POS    ;
2008:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,	
	J1=    54.957 deg,	J2=     1.992 deg,	J3=    -9.918 deg,
	J4=     -.350 deg,	J5=   -80.016 deg,	J6=    80.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1348.217  mm,	Y =  1443.169  mm,	Z =   199.704  mm,
	W =     0.000 deg,	P =    44.876 deg,	R =   135.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1388.509  mm,	Y =  1352.386  mm,	Z =    79.916  mm,
	W =      .010 deg,	P =    44.838 deg,	R =   131.143 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=    45.000 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1446.273  mm,	Y =  1412.299  mm,	Z =    83.925  mm,
	W =     -.013 deg,	P =    44.834 deg,	R =   154.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=    45.000 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1336.438  mm,	Y =  1447.537  mm,	Z =   198.840  mm,
	W =     -.001 deg,	P =    44.865 deg,	R =   147.555 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1331.447  mm,	Y =  1340.894  mm,	Z =   148.705  mm,
	W =     0.000 deg,	P =    44.876 deg,	R =   131.152 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1363.447  mm,	Y =  1329.793  mm,	Z =    81.938  mm,
	W =      .005 deg,	P =    44.834 deg,	R =   131.119 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=    45.000 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   963.199  mm,	Y =   929.985  mm,	Z =    77.762  mm,
	W =      .012 deg,	P =    44.828 deg,	R =   129.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=    45.000 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   926.839  mm,	Y =   909.353  mm,	Z =   120.659  mm,
	W =     0.000 deg,	P =    44.876 deg,	R =   129.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   936.906  mm,	Y =   908.821  mm,	Z =    80.506  mm,
	W =      .007 deg,	P =    44.833 deg,	R =   129.320 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=    45.000 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   881.174  mm,	Y =   852.095  mm,	Z =    78.440  mm,
	W =      .008 deg,	P =    44.843 deg,	R =   112.097 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=    45.000 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   854.840  mm,	Y =   924.474  mm,	Z =   166.454  mm,
	W =     0.000 deg,	P =    44.876 deg,	R =   112.101 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1055.716  mm,	Y =   349.244  mm,	Z =  1688.356  mm,
	W =   -18.671 deg,	P =    -3.388 deg,	R =    37.118 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[14]{
   GP1:
	UF : 1, UT : 1,	
	J1=     1.317 deg,	J2=   -27.686 deg,	J3=    46.651 deg,
	J4=   -12.617 deg,	J5=   -74.957 deg,	J6=    63.061 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.158  mm,	Y =   330.292  mm,	Z =  1412.610  mm,
	W =   -49.649 deg,	P =    38.536 deg,	R =   123.520 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2250.031  mm,	Y =   359.855  mm,	Z =  1147.094  mm,
	W =   -39.772 deg,	P =    26.595 deg,	R =   121.618 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2283.498  mm,	Y =   430.777  mm,	Z =  1111.861  mm,
	W =   -41.089 deg,	P =    29.193 deg,	R =   121.339 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .001 deg,	J2=   180.000 deg
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2283.123  mm,	Y =  -435.230  mm,	Z =  1115.594  mm,
	W =    28.947 deg,	P =    41.282 deg,	R =  -149.146 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .001 deg,	J2=   180.000 deg
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2260.117  mm,	Y =  -432.937  mm,	Z =  1134.460  mm,
	W =    28.414 deg,	P =    42.100 deg,	R =  -148.233 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1774.777  mm,	Y =  -321.083  mm,	Z =  1669.822  mm,
	W =  -111.004 deg,	P =    65.310 deg,	R =     1.451 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2163.292  mm,	Y =   205.605  mm,	Z =  1198.194  mm,
	W =    43.692 deg,	P =    17.672 deg,	R =   -14.083 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.293  mm,	Y =   391.605  mm,	Z =  1126.194  mm,
	W =    46.448 deg,	P =     -.794 deg,	R =   -15.341 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.569  mm,	Y =   447.974  mm,	Z =  1112.717  mm,
	W =    45.184 deg,	P =     6.835 deg,	R =   -26.445 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2231.650  mm,	Y =   448.444  mm,	Z =  1108.447  mm,
	W =    45.687 deg,	P =    -4.841 deg,	R =    -3.151 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1794.310  mm,	Y =   447.350  mm,	Z =  1048.176  mm,
	W =    45.357 deg,	P =    -4.886 deg,	R =    -3.107 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.373  mm,	Y =   291.238  mm,	Z =  1167.111  mm,
	W =    45.951 deg,	P =    -2.498 deg,	R =     -.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1939.539  mm,	Y =   -74.375  mm,	Z =  1261.719  mm,
	W =   -39.719 deg,	P =    26.400 deg,	R =    54.786 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2239.906  mm,	Y =  -374.633  mm,	Z =  1189.839  mm,
	W =   -45.120 deg,	P =     3.323 deg,	R =    25.741 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.845  mm,	Y =  -449.074  mm,	Z =  1113.003  mm,
	W =   -45.396 deg,	P =     3.850 deg,	R =    27.159 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2246.773  mm,	Y =  -451.504  mm,	Z =  1107.759  mm,
	W =   -43.772 deg,	P =    13.274 deg,	R =    24.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .001 deg,	J2=   180.000 deg
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1794.300  mm,	Y =  -448.546  mm,	Z =  1046.541  mm,
	W =   -41.272 deg,	P =    20.586 deg,	R =    29.895 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .001 deg,	J2=   180.000 deg
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1830.700  mm,	Y =  -360.911  mm,	Z =  1132.028  mm,
	W =   -41.846 deg,	P =    21.655 deg,	R =    23.192 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1927.294  mm,	Y =   141.606  mm,	Z =   865.194  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -12.476 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.734  mm,	Y =   337.178  mm,	Z =   366.194  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -22.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2136.231  mm,	Y =   433.619  mm,	Z =   302.533  mm,
	W =    44.013 deg,	P =    11.077 deg,	R =   -35.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2116.923  mm,	Y =   436.922  mm,	Z =   298.616  mm,
	W =    44.082 deg,	P =    10.818 deg,	R =   -14.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2110.156  mm,	Y =   434.306  mm,	Z =   299.813  mm,
	W =    47.384 deg,	P =    18.192 deg,	R =   -30.923 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.224  mm,	Y =   435.905  mm,	Z =   294.151  mm,
	W =    47.321 deg,	P =    18.175 deg,	R =   -38.794 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2135.043  mm,	Y =   288.606  mm,	Z =   366.194  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.043  mm,	Y =   319.843  mm,	Z =   366.194  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2193.354  mm,	Y =   435.524  mm,	Z =   299.838  mm,
	W =    43.511 deg,	P =    13.529 deg,	R =   -13.926 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.080  mm,	Y =   432.087  mm,	Z =   304.830  mm,
	W =    44.942 deg,	P =     7.213 deg,	R =    16.501 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.043  mm,	Y =   319.843  mm,	Z =   366.194  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.043  mm,	Y =   198.409  mm,	Z =   366.194  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2110.043  mm,	Y =   -83.157  mm,	Z =   366.194  mm,
	W =   -29.024 deg,	P =    38.011 deg,	R =    45.493 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[426]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2110.030  mm,	Y =  -385.169  mm,	Z =   376.822  mm,
	W =   -46.453 deg,	P =     -.249 deg,	R =    -2.725 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[429]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2132.210  mm,	Y =  -440.070  mm,	Z =   296.831  mm,
	W =   -45.022 deg,	P =     -.679 deg,	R =    20.889 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[432]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2119.752  mm,	Y =  -442.607  mm,	Z =   294.041  mm,
	W =   -44.589 deg,	P =     6.699 deg,	R =     6.744 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[761]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2104.175  mm,	Y =  -442.560  mm,	Z =   293.647  mm,
	W =   -44.601 deg,	P =     6.707 deg,	R =     6.754 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[762]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2097.461  mm,	Y =  -442.639  mm,	Z =   291.060  mm,
	W =   -44.823 deg,	P =     3.218 deg,	R =    16.689 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[763]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2082.674  mm,	Y =  -286.174  mm,	Z =   457.165  mm,
	W =   -44.604 deg,	P =     6.705 deg,	R =    14.917 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[764]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2222.226  mm,	Y =  -390.987  mm,	Z =   382.019  mm,
	W =   -40.009 deg,	P =    25.912 deg,	R =    25.468 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[765]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2156.109  mm,	Y =  -440.524  mm,	Z =   297.448  mm,
	W =   -40.955 deg,	P =    20.511 deg,	R =    -3.045 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[766]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2176.969  mm,	Y =  -441.698  mm,	Z =   295.558  mm,
	W =   -43.977 deg,	P =    10.434 deg,	R =    10.261 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[767]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2191.588  mm,	Y =  -441.724  mm,	Z =   293.292  mm,
	W =   -43.963 deg,	P =    10.429 deg,	R =    10.254 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[768]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2209.227  mm,	Y =  -170.876  mm,	Z =   375.753  mm,
	W =   -41.567 deg,	P =    22.003 deg,	R =    21.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[769]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1326.520  mm,	Y =   -75.423  mm,	Z =   402.361  mm,
	W =     1.614 deg,	P =     1.459 deg,	R =     -.955 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[770]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1182.518  mm,	Y =   -63.422  mm,	Z =   482.761  mm,
	W =     8.102 deg,	P =      .363 deg,	R =   -84.121 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -20.000 deg,	J2=   180.000 deg
};
P[771]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1190.341  mm,	Y =   -51.181  mm,	Z =   287.949  mm,
	W =     9.894 deg,	P =     -.046 deg,	R =   -81.325 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -20.000 deg,	J2=   180.000 deg
};
P[772]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1188.893  mm,	Y =  -181.319  mm,	Z =   287.034  mm,
	W =     9.872 deg,	P =      .987 deg,	R =   -87.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -20.000 deg,	J2=   180.000 deg
};
P[773]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1194.802  mm,	Y =  -187.917  mm,	Z =   492.103  mm,
	W =     8.467 deg,	P =     -.498 deg,	R =   -57.973 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -20.000 deg,	J2=   180.000 deg
};
P[774]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1747.709  mm,	Y =   -88.826  mm,	Z =  -106.208  mm,
	W =    -3.673 deg,	P =    41.150 deg,	R =    -3.274 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000 deg,	J2=   180.000 deg
};
P[775]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1747.708  mm,	Y =   -88.826  mm,	Z =  -320.209  mm,
	W =    -3.673 deg,	P =    41.150 deg,	R =    -3.274 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000 deg,	J2=   180.000 deg
};
P[776]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1736.510  mm,	Y =   -54.624  mm,	Z =  -425.406  mm,
	W =    -1.970 deg,	P =    38.965 deg,	R =     8.377 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000 deg,	J2=   180.000 deg
};
P[777]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1733.663  mm,	Y =  -186.703  mm,	Z =  -427.772  mm,
	W =    -1.969 deg,	P =    38.956 deg,	R =     8.369 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000 deg,	J2=   180.000 deg
};
P[778]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1797.037  mm,	Y =   -88.826  mm,	Z =  -106.208  mm,
	W =    -3.673 deg,	P =    41.150 deg,	R =    -3.274 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000 deg,	J2=   180.000 deg
};
P[779]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1492.583  mm,	Y =   -55.758  mm,	Z =   786.744  mm,
	W =    -3.475 deg,	P =    47.934 deg,	R =    -4.318 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000 deg,	J2=   180.000 deg
};
P[780]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.000 deg,	J2=   180.000 deg
};
P[781]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1439.432  mm,	Y =  -607.091  mm,	Z =  1358.539  mm,
	W =    -6.310 deg,	P =    20.728 deg,	R =    -3.577 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[782]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2474.302  mm,	Y =  -931.690  mm,	Z =   599.327  mm,
	W =     7.358 deg,	P =   -13.268 deg,	R =   -80.292 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[783]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2642.269  mm,	Y = -1123.637  mm,	Z =   411.724  mm,
	W =    14.830 deg,	P =    -9.657 deg,	R =   -92.232 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[784]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2648.529  mm,	Y = -1125.551  mm,	Z =   367.341  mm,
	W =    14.330 deg,	P =     -.482 deg,	R =  -100.888 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[785]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2674.720  mm,	Y = -1125.311  mm,	Z =   366.981  mm,
	W =    14.632 deg,	P =    -2.053 deg,	R =   -90.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[786]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2671.389  mm,	Y = -1123.637  mm,	Z =   411.723  mm,
	W =    14.830 deg,	P =    -9.657 deg,	R =   -92.232 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[787]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2624.451  mm,	Y =  -916.491  mm,	Z =   661.674  mm,
	W =    -8.799 deg,	P =   -16.459 deg,	R =   -31.120 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[788]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1382.847  mm,	Y =  -583.878  mm,	Z =  1137.228  mm,
	W =     -.000 deg,	P =    35.641 deg,	R =      .006 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[789]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[790]{
   GP1:
	UF : 1, UT : 1,	
	J1=      .005 deg,	J2=   -44.424 deg,	J3=    65.270 deg,
	J4=      .005 deg,	J5=   -70.270 deg,	J6=     -.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[791]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1603.168  mm,	Y =   688.379  mm,	Z =  1096.040  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    28.710 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[792]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2364.167  mm,	Y =   846.436  mm,	Z =   771.161  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    28.710 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[793]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2617.791  mm,	Y =  1106.496  mm,	Z =   424.325  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    55.019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[794]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2651.314  mm,	Y =  1123.155  mm,	Z =   361.425  mm,
	W =    -5.117 deg,	P =    -3.367 deg,	R =    74.991 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[795]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2676.467  mm,	Y =  1121.607  mm,	Z =   365.552  mm,
	W =    -5.140 deg,	P =    -3.583 deg,	R =    85.588 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[796]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2617.789  mm,	Y =  1025.302  mm,	Z =   519.283  mm,
	W =    14.260 deg,	P =   -20.883 deg,	R =    54.512 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[797]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2364.167  mm,	Y =   851.236  mm,	Z =   788.441  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    28.710 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[798]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1603.168  mm,	Y =   688.379  mm,	Z =  1096.040  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    28.710 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[799]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[800]{
   GP1:
	UF : 1, UT : 1,	
	J1=      .005 deg,	J2=   -44.424 deg,	J3=    65.270 deg,
	J4=      .005 deg,	J5=   -70.270 deg,	J6=     -.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[801]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   685.103  mm,	Y =   -72.987  mm,	Z =  1874.792  mm,
	W =   -19.529 deg,	P =   -22.404 deg,	R =     1.583 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[802]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   952.457  mm,	Y =  -330.703  mm,	Z =  1110.775  mm,
	W =   -38.487 deg,	P =   -28.906 deg,	R =   -36.203 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[803]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1069.622  mm,	Y =  -509.922  mm,	Z =  1004.014  mm,
	W =   -38.863 deg,	P =   -26.580 deg,	R =   -38.900 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     -.000 deg
};
P[804]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1188.868  mm,	Y =  -512.228  mm,	Z =   981.153  mm,
	W =   -42.810 deg,	P =   -18.271 deg,	R =    -7.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     -.000 deg
};
P[805]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1158.912  mm,	Y =  -490.341  mm,	Z =  1046.224  mm,
	W =   -43.308 deg,	P =   -32.848 deg,	R =   -19.323 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[806]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   945.913  mm,	Y =     -.536  mm,	Z =  1134.224  mm,
	W =   -52.090 deg,	P =    -5.757 deg,	R =     7.338 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[807]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   945.912  mm,	Y =     -.536  mm,	Z =  1134.225  mm,
	W =    46.788 deg,	P =    -6.408 deg,	R =    -6.777 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[808]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1085.384  mm,	Y =   479.906  mm,	Z =  1055.847  mm,
	W =    41.380 deg,	P =   -21.866 deg,	R =    32.767 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[809]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1068.847  mm,	Y =   508.518  mm,	Z =  1005.186  mm,
	W =    41.380 deg,	P =   -21.862 deg,	R =    32.767 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     -.000 deg
};
P[810]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1191.858  mm,	Y =   507.607  mm,	Z =   985.621  mm,
	W =    41.360 deg,	P =   -21.861 deg,	R =     6.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     -.000 deg
};
P[811]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1175.341  mm,	Y =   458.621  mm,	Z =  1059.348  mm,
	W =    41.378 deg,	P =   -21.865 deg,	R =    -2.008 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[812]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   933.912  mm,	Y =     -.536  mm,	Z =  1102.225  mm,
	W =    46.788 deg,	P =    -6.408 deg,	R =    -6.777 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[813]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   933.912  mm,	Y =     -.536  mm,	Z =  1824.225  mm,
	W =     -.163 deg,	P =    -9.317 deg,	R =      .025 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[814]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1478.913  mm,	Y =   563.464  mm,	Z =  1547.225  mm,
	W =     -.170 deg,	P =   -23.530 deg,	R =      .027 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[815]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1534.637  mm,	Y =   680.464  mm,	Z =  1471.277  mm,
	W =     -.170 deg,	P =   -23.530 deg,	R =      .027 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[816]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1550.228  mm,	Y =   681.328  mm,	Z =  1400.289  mm,
	W =      .023 deg,	P =    -4.312 deg,	R =      .002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[817]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1550.308  mm,	Y =   512.706  mm,	Z =  1399.071  mm,
	W =      .035 deg,	P =    -6.244 deg,	R =      .011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[818]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1550.860  mm,	Y =   484.113  mm,	Z =  1484.061  mm,
	W =     0.000 deg,	P =    -9.999 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[819]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1540.095  mm,	Y =   471.914  mm,	Z =  1393.494  mm,
	W =      .059 deg,	P =    -9.981 deg,	R =     -.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[820]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.837  mm,	Y =   505.081  mm,	Z =  1395.609  mm,
	W =     9.853 deg,	P =   -11.234 deg,	R =     6.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[821]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1538.482  mm,	Y =   491.312  mm,	Z =  1467.384  mm,
	W =     9.843 deg,	P =   -11.234 deg,	R =     6.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[822]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1510.825  mm,	Y =   392.719  mm,	Z =  1485.424  mm,
	W =     9.843 deg,	P =   -11.234 deg,	R =     6.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[823]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1525.405  mm,	Y =   426.226  mm,	Z =  1402.664  mm,
	W =    -1.485 deg,	P =    -9.888 deg,	R =     8.613 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[824]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1525.678  mm,	Y =  -425.015  mm,	Z =  1403.457  mm,
	W =    -1.490 deg,	P =    -9.888 deg,	R =     8.606 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[825]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1537.731  mm,	Y =  -424.895  mm,	Z =  1480.208  mm,
	W =    -1.488 deg,	P =    -9.890 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[826]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1537.731  mm,	Y =  -502.895  mm,	Z =  1480.209  mm,
	W =    -1.488 deg,	P =    -9.890 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[827]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1546.108  mm,	Y =  -474.465  mm,	Z =  1393.640  mm,
	W =    -1.451 deg,	P =    -9.901 deg,	R =     8.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[828]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1547.121  mm,	Y =  -508.213  mm,	Z =  1393.915  mm,
	W =   -15.953 deg,	P =    -2.396 deg,	R =     9.481 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[829]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1550.028  mm,	Y =  -490.628  mm,	Z =  1470.287  mm,
	W =   -15.981 deg,	P =    -2.385 deg,	R =     9.464 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[830]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1550.001  mm,	Y =  -523.102  mm,	Z =  1465.210  mm,
	W =     3.796 deg,	P =    -5.457 deg,	R =     8.101 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[831]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.843  mm,	Y =  -517.891  mm,	Z =  1400.175  mm,
	W =    -1.381 deg,	P =    -9.912 deg,	R =     8.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[832]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.349  mm,	Y =  -689.297  mm,	Z =  1402.734  mm,
	W =    -1.386 deg,	P =    -9.912 deg,	R =     8.016 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.000 deg,	J2=     -.000 deg
};
P[833]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1516.847  mm,	Y =  -685.542  mm,	Z =  1558.736  mm,
	W =    -1.547 deg,	P =   -28.042 deg,	R =     8.494 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[834]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1260.191  mm,	Y =  -684.569  mm,	Z =  1538.785  mm,
	W =    -2.948 deg,	P =   -29.650 deg,	R =     9.025 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[835]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   460.199  mm,	Y =    -7.178  mm,	Z =  2558.884  mm,
	W =    -4.566 deg,	P =   -58.445 deg,	R =     2.524 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[836]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   693.592  mm,	Y =  1542.761  mm,	Z =  1694.001  mm,
	W =   -16.103 deg,	P =   -27.071 deg,	R =    15.479 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[837]{
   GP1:
	UF : 1, UT : 1,	
	J1=    81.153 deg,	J2=   -11.977 deg,	J3=     5.535 deg,
	J4=    70.610 deg,	J5=   -83.443 deg,	J6=   -54.471 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[838]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   844.913  mm,	Y =   425.748  mm,	Z =   915.509  mm,
	W =   -21.025 deg,	P =   -36.625 deg,	R =   -18.671 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[839]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   962.386  mm,	Y =   214.776  mm,	Z =   804.249  mm,
	W =   -30.190 deg,	P =   -35.033 deg,	R =   -16.083 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[840]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1173.293  mm,	Y =   314.248  mm,	Z =   804.106  mm,
	W =   -42.140 deg,	P =   -35.646 deg,	R =    22.449 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[841]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1214.957  mm,	Y =   332.116  mm,	Z =   803.884  mm,
	W =   -30.987 deg,	P =   -40.677 deg,	R =    19.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[842]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1143.986  mm,	Y =   324.015  mm,	Z =   826.909  mm,
	W =   -47.069 deg,	P =   -34.826 deg,	R =    29.873 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[843]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   844.913  mm,	Y =   425.748  mm,	Z =   915.509  mm,
	W =   -21.025 deg,	P =   -36.625 deg,	R =   -18.671 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[844]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   718.913  mm,	Y =   590.747  mm,	Z =   915.509  mm,
	W =   -21.025 deg,	P =   -36.625 deg,	R =   -18.671 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[845]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   718.913  mm,	Y =   590.747  mm,	Z =  1865.509  mm,
	W =   -21.025 deg,	P =   -36.625 deg,	R =   -18.671 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[846]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   893.350  mm,	Y =  -776.036  mm,	Z =  1993.166  mm,
	W =   -25.791 deg,	P =   -50.941 deg,	R =    32.102 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[847]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   747.081  mm,	Y =  -499.952  mm,	Z =   857.508  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =    14.585 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[848]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   968.082  mm,	Y =  -295.173  mm,	Z =   857.508  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =    14.585 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[849]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   961.896  mm,	Y =  -221.801  mm,	Z =   802.834  mm,
	W =    28.389 deg,	P =   -37.810 deg,	R =    22.493 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[850]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1213.770  mm,	Y =  -336.755  mm,	Z =   806.679  mm,
	W =    31.498 deg,	P =   -33.971 deg,	R =   -21.349 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[851]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1164.833  mm,	Y =  -333.860  mm,	Z =   828.600  mm,
	W =    32.262 deg,	P =   -37.368 deg,	R =   -20.890 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[852]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1021.081  mm,	Y =  -339.952  mm,	Z =   857.508  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =    14.585 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[853]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   747.081  mm,	Y =  -499.952  mm,	Z =   857.508  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =    14.585 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[854]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   778.671  mm,	Y =  -558.707  mm,	Z =  1532.200  mm,
	W =    -7.565 deg,	P =   -45.760 deg,	R =    43.305 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[855]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.147  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[856]{
   GP1:
	UF : 1, UT : 1,	
	J1=      .006 deg,	J2=   -44.424 deg,	J3=    65.270 deg,
	J4=      .005 deg,	J5=   -70.270 deg,	J6=     -.001 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[857]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   875.438  mm,	Y =    10.954  mm,	Z =   564.851  mm,
	W =      .000 deg,	P =    46.047 deg,	R =   177.513 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[858]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1052.437  mm,	Y =   387.955  mm,	Z =   184.851  mm,
	W =      .000 deg,	P =    46.047 deg,	R =   177.513 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[859]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1094.022  mm,	Y =   429.695  mm,	Z =    58.271  mm,
	W =    -1.758 deg,	P =    44.969 deg,	R =   175.598 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[860]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1093.612  mm,	Y =  -428.908  mm,	Z =    56.913  mm,
	W =    -1.765 deg,	P =    44.981 deg,	R =   177.520 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[861]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   933.425  mm,	Y =  -426.568  mm,	Z =   229.479  mm,
	W =      .000 deg,	P =    46.047 deg,	R =   177.059 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[862]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   990.157  mm,	Y =  -535.033  mm,	Z =   127.480  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[863]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   988.058  mm,	Y =  -511.171  mm,	Z =    53.167  mm,
	W =     8.269 deg,	P =      .295 deg,	R =    -2.033 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[864]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1083.813  mm,	Y =  -511.249  mm,	Z =    49.869  mm,
	W =     6.465 deg,	P =      .228 deg,	R =    -2.053 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[865]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1111.635  mm,	Y =  -510.560  mm,	Z =    51.251  mm,
	W =     9.233 deg,	P =   -15.828 deg,	R =    -4.541 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[866]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   987.249  mm,	Y =  -535.032  mm,	Z =   127.479  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[867]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   987.249  mm,	Y =  -535.032  mm,	Z =   327.479  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[868]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   987.249  mm,	Y =   482.968  mm,	Z =   327.479  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[869]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   981.638  mm,	Y =   496.908  mm,	Z =   127.480  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[870]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   992.710  mm,	Y =   515.638  mm,	Z =    51.880  mm,
	W =    -7.793 deg,	P =     -.258 deg,	R =    -2.050 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[871]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1086.764  mm,	Y =   516.212  mm,	Z =    53.464  mm,
	W =   -11.425 deg,	P =     -.393 deg,	R =    -2.024 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[872]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1111.040  mm,	Y =   514.713  mm,	Z =    51.503  mm,
	W =    -9.056 deg,	P =   -16.901 deg,	R =      .005 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[873]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1030.112  mm,	Y =   503.579  mm,	Z =   116.268  mm,
	W =      .976 deg,	P =    -8.486 deg,	R =    -2.142 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[874]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   901.849  mm,	Y =   394.101  mm,	Z =   175.737  mm,
	W =   -33.554 deg,	P =    26.789 deg,	R =    40.940 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[875]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1058.379  mm,	Y =   665.908  mm,	Z =   144.479  mm,
	W =    24.920 deg,	P =    40.064 deg,	R =  -147.118 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[876]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1116.044  mm,	Y =   685.821  mm,	Z =    58.721  mm,
	W =    30.212 deg,	P =    35.063 deg,	R =  -139.137 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[877]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1115.578  mm,	Y =   475.550  mm,	Z =    58.859  mm,
	W =    30.214 deg,	P =    35.068 deg,	R =  -142.772 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[878]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   960.081  mm,	Y =   466.272  mm,	Z =   227.041  mm,
	W =    30.243 deg,	P =    35.064 deg,	R =  -134.578 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[879]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   947.580  mm,	Y =  -646.891  mm,	Z =   353.041  mm,
	W =   -42.401 deg,	P =    19.964 deg,	R =   108.964 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[880]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1076.364  mm,	Y =  -699.891  mm,	Z =   104.040  mm,
	W =   -42.401 deg,	P =    19.964 deg,	R =   108.964 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[881]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1115.843  mm,	Y =  -686.474  mm,	Z =    55.478  mm,
	W =   -41.639 deg,	P =    18.884 deg,	R =   109.989 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[882]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1114.399  mm,	Y =  -474.886  mm,	Z =    57.157  mm,
	W =   -41.600 deg,	P =    18.895 deg,	R =   109.937 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[883]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   905.994  mm,	Y =  -490.017  mm,	Z =   394.296  mm,
	W =   -42.402 deg,	P =    19.964 deg,	R =   109.509 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[884]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   905.994  mm,	Y =  -911.017  mm,	Z =   394.296  mm,
	W =    41.766 deg,	P =    21.483 deg,	R =   -23.558 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[885]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   905.994  mm,	Y =  -543.017  mm,	Z =   394.296  mm,
	W =    41.767 deg,	P =    21.484 deg,	R =   -23.557 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[886]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1118.993  mm,	Y =  -616.017  mm,	Z =   165.295  mm,
	W =    41.765 deg,	P =    21.483 deg,	R =   -41.551 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[887]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1059.257  mm,	Y =  -535.451  mm,	Z =    56.722  mm,
	W =    38.814 deg,	P =    24.838 deg,	R =   -38.452 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   190.858 deg
};
P[888]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1331.767  mm,	Y =  -589.790  mm,	Z =    57.947  mm,
	W =    35.830 deg,	P =    21.655 deg,	R =   -44.070 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   190.858 deg
};
P[889]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   703.387  mm,	Y =  -656.580  mm,	Z =   359.333  mm,
	W =    25.419 deg,	P =    10.774 deg,	R =   -44.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[890]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   575.451  mm,	Y =  -279.140  mm,	Z =   688.363  mm,
	W =    26.635 deg,	P =    26.098 deg,	R =   -20.164 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[891]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   663.591  mm,	Y =   401.037  mm,	Z =   663.969  mm,
	W =   -38.490 deg,	P =    37.103 deg,	R =    23.083 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[892]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   952.148  mm,	Y =   763.601  mm,	Z =    87.916  mm,
	W =   -34.550 deg,	P =    38.563 deg,	R =    42.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[893]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1201.147  mm,	Y =   781.673  mm,	Z =   110.513  mm,
	W =   -34.550 deg,	P =    38.563 deg,	R =    42.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[894]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.150  mm,	Y =   765.968  mm,	Z =    56.524  mm,
	W =   -30.094 deg,	P =    35.162 deg,	R =    44.800 deg
   GP2:
	UF : 1, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[895]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1461.125  mm,	Y =   765.278  mm,	Z =    56.351  mm,
	W =   -38.051 deg,	P =    10.695 deg,	R =    26.577 deg
   GP2:
	UF : 1, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[896]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1414.305  mm,	Y =   818.380  mm,	Z =   109.057  mm,
	W =   -11.139 deg,	P =     4.726 deg,	R =    -3.495 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[897]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   968.371  mm,	Y =   779.805  mm,	Z =   102.625  mm,
	W =   -32.600 deg,	P =     3.916 deg,	R =    27.732 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[898]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   766.454  mm,	Y =   468.404  mm,	Z =   909.137  mm,
	W =   -28.255 deg,	P =    12.486 deg,	R =    24.398 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .132 deg,	J2=   180.000 deg
};
P[899]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .132 deg,	J2=   180.000 deg
};
P[900]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1233.293  mm,	Y =  -155.696  mm,	Z =  2264.099  mm,
	W =    24.158 deg,	P =   -31.508 deg,	R =    13.935 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[901]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.778  mm,	Y =   372.794  mm,	Z =  1996.937  mm,
	W =    32.956 deg,	P =   -21.724 deg,	R =    35.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[902]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1703.320  mm,	Y =   401.089  mm,	Z =  1954.333  mm,
	W =    39.914 deg,	P =   -18.015 deg,	R =    16.638 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[903]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.430  mm,	Y =   401.082  mm,	Z =  1952.910  mm,
	W =    48.987 deg,	P =    -7.574 deg,	R =    27.945 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[904]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.852  mm,	Y =   305.622  mm,	Z =  2040.729  mm,
	W =    58.324 deg,	P =   -28.490 deg,	R =    -1.144 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[905]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1421.852  mm,	Y =   305.623  mm,	Z =  2040.728  mm,
	W =   -28.424 deg,	P =   -26.514 deg,	R =    30.473 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[906]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.006  mm,	Y =   456.582  mm,	Z =  1925.472  mm,
	W =   -51.756 deg,	P =   -28.472 deg,	R =    11.969 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[907]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.509  mm,	Y =   456.582  mm,	Z =  1930.132  mm,
	W =   -56.565 deg,	P =   -44.721 deg,	R =    14.866 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[908]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1498.397  mm,	Y =   588.812  mm,	Z =  2003.342  mm,
	W =   -56.565 deg,	P =   -44.721 deg,	R =    14.866 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[909]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1242.484  mm,	Y =   -38.517  mm,	Z =  2264.100  mm,
	W =   -32.017 deg,	P =   -31.509 deg,	R =    19.354 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[910]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.533  mm,	Y =  -253.828  mm,	Z =  2096.179  mm,
	W =   -44.666 deg,	P =    -5.995 deg,	R =    -2.790 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[911]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1703.320  mm,	Y =  -397.922  mm,	Z =  1954.333  mm,
	W =   -45.225 deg,	P =    -9.980 deg,	R =     1.224 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[912]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1675.864  mm,	Y =  -397.713  mm,	Z =  1947.138  mm,
	W =   -45.494 deg,	P =    11.391 deg,	R =   -20.046 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[913]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1728.670  mm,	Y =  -309.937  mm,	Z =  2044.029  mm,
	W =   -44.670 deg,	P =    -6.034 deg,	R =    -2.751 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[914]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1347.300  mm,	Y =  -220.973  mm,	Z =  2082.770  mm,
	W =    -1.262 deg,	P =   -15.279 deg,	R =     7.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[915]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1532.066  mm,	Y =  -519.406  mm,	Z =  1979.773  mm,
	W =    51.555 deg,	P =   -29.157 deg,	R =   -17.061 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[916]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.004  mm,	Y =  -453.419  mm,	Z =  1925.477  mm,
	W =    50.527 deg,	P =   -27.619 deg,	R =   -14.899 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[917]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.931  mm,	Y =  -453.588  mm,	Z =  1930.522  mm,
	W =    58.344 deg,	P =   -36.533 deg,	R =   -29.518 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[918]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1533.758  mm,	Y =  -508.845  mm,	Z =  1967.543  mm,
	W =    58.344 deg,	P =   -36.533 deg,	R =   -29.518 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.188 deg,	J2=   180.000 deg
};
P[919]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   982.914  mm,	Y =  -164.140  mm,	Z =  2330.780  mm,
	W =    27.111 deg,	P =   -49.789 deg,	R =    -8.012 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.201 deg,	J2=   180.000 deg
};
P[920]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[921]{
   GP1:
	UF : 1, UT : 1,	
	J1=    22.718 deg,	J2=   -77.953 deg,	J3=    36.710 deg,
	J4=   -12.090 deg,	J5=  -103.365 deg,	J6=   138.265 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[922]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   602.106  mm,	Y =   266.643  mm,	Z =   883.671  mm,
	W =   -17.511 deg,	P =    41.069 deg,	R =   154.352 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[923]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   689.759  mm,	Y =   315.348  mm,	Z =   765.249  mm,
	W =   -18.279 deg,	P =    41.594 deg,	R =   154.204 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   180.000 deg
};
P[924]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   689.903  mm,	Y =   396.000  mm,	Z =   764.634  mm,
	W =   -33.904 deg,	P =    30.686 deg,	R =   141.051 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   180.000 deg
};
P[925]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   622.859  mm,	Y =   323.993  mm,	Z =   865.068  mm,
	W =   -39.588 deg,	P =    22.282 deg,	R =   128.236 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[926]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   680.932  mm,	Y =   285.143  mm,	Z =   802.173  mm,
	W =   -39.374 deg,	P =    23.831 deg,	R =   116.224 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[927]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.962  mm,	Y =   283.100  mm,	Z =   763.526  mm,
	W =   -39.397 deg,	P =    23.722 deg,	R =   115.040 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[928]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   692.133  mm,	Y =  -280.944  mm,	Z =   761.510  mm,
	W =    -8.965 deg,	P =    44.205 deg,	R =   161.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   180.000 deg
};
P[929]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   629.190  mm,	Y =  -329.647  mm,	Z =   856.249  mm,
	W =    17.347 deg,	P =    49.328 deg,	R =   167.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[930]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   623.987  mm,	Y =  -320.770  mm,	Z =   915.725  mm,
	W =   -33.842 deg,	P =    54.847 deg,	R =    56.315 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[931]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   677.066  mm,	Y =  -284.917  mm,	Z =  1000.353  mm,
	W =    34.269 deg,	P =    57.953 deg,	R =  -154.245 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[932]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   690.762  mm,	Y =  -320.058  mm,	Z =   764.207  mm,
	W =    35.931 deg,	P =    30.851 deg,	R =  -126.428 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[933]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.887  mm,	Y =  -397.684  mm,	Z =   767.057  mm,
	W =    39.449 deg,	P =    23.626 deg,	R =  -129.170 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   180.000 deg
};
P[934]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   415.579  mm,	Y =  -304.795  mm,	Z =  1078.946  mm,
	W =    41.082 deg,	P =    20.266 deg,	R =  -127.997 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[935]{
   GP1:
	UF : 1, UT : 1,	
	J1=   -50.075 deg,	J2=   -70.188 deg,	J3=    26.322 deg,
	J4=   -22.185 deg,	J5=   -51.288 deg,	J6=    85.470 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[936]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   917.635  mm,	Y =  -753.233  mm,	Z =  1083.148  mm,
	W =   -38.429 deg,	P =   -34.649 deg,	R =      .780 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[937]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   931.634  mm,	Y =  -796.590  mm,	Z =  1036.018  mm,
	W =   -35.829 deg,	P =   -29.161 deg,	R =    -4.112 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[938]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1027.983  mm,	Y =  -767.049  mm,	Z =  1037.107  mm,
	W =   -37.222 deg,	P =   -35.147 deg,	R =     4.026 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[939]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1019.216  mm,	Y =  -755.446  mm,	Z =  1086.674  mm,
	W =   -73.601 deg,	P =   -18.162 deg,	R =    24.579 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[940]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   651.216  mm,	Y =  -755.446  mm,	Z =  1093.416  mm,
	W =   -73.601 deg,	P =   -18.162 deg,	R =    24.579 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[941]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   879.312  mm,	Y =  -733.458  mm,	Z =  1043.745  mm,
	W =     -.609 deg,	P =   -11.317 deg,	R =    19.232 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[942]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   879.754  mm,	Y =  -733.151  mm,	Z =   977.386  mm,
	W =    -3.361 deg,	P =   -10.118 deg,	R =    19.733 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[943]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   895.508  mm,	Y =  -786.854  mm,	Z =   973.466  mm,
	W =   -11.891 deg,	P =      .117 deg,	R =    18.403 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[944]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   894.892  mm,	Y =  -773.751  mm,	Z =  1072.111  mm,
	W =   -11.972 deg,	P =    -6.765 deg,	R =    19.858 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[945]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   796.225  mm,	Y =  -784.763  mm,	Z =  1290.070  mm,
	W =   -16.270 deg,	P =     1.406 deg,	R =    16.682 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[946]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   455.144  mm,	Y =  -223.806  mm,	Z =  1838.943  mm,
	W =  -100.113 deg,	P =   -16.084 deg,	R =    32.515 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[947]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   433.199  mm,	Y =   723.768  mm,	Z =  1735.241  mm,
	W =    31.808 deg,	P =   -58.935 deg,	R =    27.008 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[948]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   915.388  mm,	Y =   803.489  mm,	Z =  1076.813  mm,
	W =    31.157 deg,	P =   -41.097 deg,	R =    13.870 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[949]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   945.882  mm,	Y =   822.490  mm,	Z =  1036.624  mm,
	W =    31.211 deg,	P =   -41.079 deg,	R =    13.849 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[950]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1045.978  mm,	Y =   792.926  mm,	Z =  1034.331  mm,
	W =    32.243 deg,	P =   -40.608 deg,	R =    13.275 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   162.834 deg
};
P[951]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1039.367  mm,	Y =   769.241  mm,	Z =  1064.643  mm,
	W =    35.123 deg,	P =   -46.989 deg,	R =     8.148 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[952]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   869.380  mm,	Y =   769.192  mm,	Z =  1065.308  mm,
	W =    35.418 deg,	P =   -46.890 deg,	R =     7.970 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   162.834 deg
};
P[953]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   861.004  mm,	Y =   762.759  mm,	Z =  1052.130  mm,
	W =    -7.907 deg,	P =    -8.124 deg,	R =    27.444 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[954]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   895.848  mm,	Y =   757.903  mm,	Z =   977.410  mm,
	W =    -6.316 deg,	P =    -5.173 deg,	R =    27.290 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[955]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   911.616  mm,	Y =   812.935  mm,	Z =   977.333  mm,
	W =    -5.644 deg,	P =    -3.900 deg,	R =    27.238 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[956]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   915.146  mm,	Y =   811.304  mm,	Z =  1045.569  mm,
	W =     -.314 deg,	P =    -5.430 deg,	R =    27.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[957]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   697.391  mm,	Y =   811.304  mm,	Z =  1325.569  mm,
	W =     -.314 deg,	P =    -5.430 deg,	R =    27.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[958]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[959]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[960]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2079.740  mm,	Y =     2.655  mm,	Z =  1634.851  mm,
	W =   -39.435 deg,	P =    38.877 deg,	R =    63.496 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[961]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2641.070  mm,	Y =    96.952  mm,	Z =   892.786  mm,
	W =   -30.662 deg,	P =    38.178 deg,	R =    67.355 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[962]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2779.073  mm,	Y =    63.988  mm,	Z =   854.225  mm,
	W =   -27.596 deg,	P =    28.973 deg,	R =    42.829 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[963]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2793.089  mm,	Y =    50.841  mm,	Z =   752.992  mm,
	W =   -32.482 deg,	P =    32.696 deg,	R =    40.318 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[964]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2827.763  mm,	Y =    50.645  mm,	Z =   753.413  mm,
	W =   -32.638 deg,	P =    32.806 deg,	R =    40.233 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[965]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2793.338  mm,	Y =    82.464  mm,	Z =   838.649  mm,
	W =   -26.653 deg,	P =    28.198 deg,	R =    43.280 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[966]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2807.102  mm,	Y =   -36.017  mm,	Z =   825.713  mm,
	W =    15.607 deg,	P =    10.488 deg,	R =   -33.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[967]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2792.338  mm,	Y =   -78.536  mm,	Z =   812.201  mm,
	W =    22.126 deg,	P =    31.326 deg,	R =   -51.965 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[968]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2799.457  mm,	Y =   -51.911  mm,	Z =   752.825  mm,
	W =    18.868 deg,	P =    36.472 deg,	R =   -60.103 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[969]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2829.014  mm,	Y =   -52.533  mm,	Z =   753.514  mm,
	W =    17.562 deg,	P =    37.061 deg,	R =   -62.294 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[970]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2792.338  mm,	Y =   -78.536  mm,	Z =   870.200  mm,
	W =    23.118 deg,	P =    32.394 deg,	R =   -51.441 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[971]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2792.338  mm,	Y =   -78.536  mm,	Z =   870.200  mm,
	W =     -.000 deg,	P =     6.847 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[972]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2852.717  mm,	Y =   -56.939  mm,	Z =   805.419  mm,
	W =      .000 deg,	P =    10.475 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[973]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2836.712  mm,	Y =   -51.940  mm,	Z =   754.621  mm,
	W =      .005 deg,	P =    15.556 deg,	R =      .002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[974]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2837.937  mm,	Y =    51.593  mm,	Z =   753.607  mm,
	W =     -.000 deg,	P =    14.988 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[975]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2852.717  mm,	Y =   -56.939  mm,	Z =   805.419  mm,
	W =      .000 deg,	P =    10.475 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[976]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2698.431  mm,	Y =   -56.939  mm,	Z =  1002.562  mm,
	W =     -.002 deg,	P =   -13.112 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[977]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.431  mm,	Y =   -56.939  mm,	Z =  1002.561  mm,
	W =     -.002 deg,	P =   -13.112 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[978]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1422.321  mm,	Y =   -19.612  mm,	Z =   892.933  mm,
	W =      .000 deg,	P =    43.571 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[979]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.321  mm,	Y =  -382.612  mm,	Z =   539.934  mm,
	W =     0.000 deg,	P =    43.571 deg,	R =    90.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[980]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1716.341  mm,	Y =  -449.493  mm,	Z =   422.245  mm,
	W =     -.012 deg,	P =    43.506 deg,	R =    86.332 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[981]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.270  mm,	Y =  -447.721  mm,	Z =   422.331  mm,
	W =     -.013 deg,	P =    43.517 deg,	R =    86.261 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[982]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1599.753  mm,	Y =  -381.366  mm,	Z =   505.008  mm,
	W =      .000 deg,	P =    43.571 deg,	R =    86.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[983]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1999.753  mm,	Y =  -381.366  mm,	Z =   505.007  mm,
	W =   -38.646 deg,	P =    21.930 deg,	R =    21.323 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[984]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1957.623  mm,	Y =  -442.508  mm,	Z =   427.694  mm,
	W =   -40.830 deg,	P =    20.791 deg,	R =    22.336 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[985]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2028.883  mm,	Y =  -449.653  mm,	Z =   423.872  mm,
	W =   -42.077 deg,	P =    21.682 deg,	R =    36.466 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[986]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2048.708  mm,	Y =  -116.976  mm,	Z =   584.258  mm,
	W =   -38.646 deg,	P =    21.930 deg,	R =    21.323 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[987]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.995  mm,	Y =  -300.976  mm,	Z =   557.316  mm,
	W =   -43.351 deg,	P =    -4.892 deg,	R =    40.339 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[988]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2146.567  mm,	Y =  -386.362  mm,	Z =   419.052  mm,
	W =   -44.859 deg,	P =    -3.606 deg,	R =    27.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[989]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2105.985  mm,	Y =  -419.849  mm,	Z =   419.949  mm,
	W =   -43.242 deg,	P =    13.881 deg,	R =    57.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[990]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.851  mm,	Y =  -426.411  mm,	Z =   422.441  mm,
	W =   -43.579 deg,	P =    -9.861 deg,	R =    55.520 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[991]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2097.549  mm,	Y =  -435.485  mm,	Z =   422.872  mm,
	W =   -43.572 deg,	P =    -9.889 deg,	R =    55.498 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[992]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1981.542  mm,	Y =  -402.485  mm,	Z =   562.968  mm,
	W =   -43.468 deg,	P =    -3.333 deg,	R =    66.484 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[993]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1422.321  mm,	Y =   -19.612  mm,	Z =   902.933  mm,
	W =      .000 deg,	P =    43.571 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[994]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1722.321  mm,	Y =   380.388  mm,	Z =   483.934  mm,
	W =     0.000 deg,	P =    43.571 deg,	R =   -89.993 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[995]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1718.837  mm,	Y =   444.280  mm,	Z =   423.719  mm,
	W =    -1.652 deg,	P =    44.986 deg,	R =   -90.065 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[996]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1588.480  mm,	Y =   444.279  mm,	Z =   420.719  mm,
	W =    -1.652 deg,	P =    44.986 deg,	R =   -90.065 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[997]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1595.927  mm,	Y =   343.841  mm,	Z =   518.086  mm,
	W =      .000 deg,	P =    43.571 deg,	R =   -92.306 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[998]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1973.927  mm,	Y =   343.841  mm,	Z =   518.086  mm,
	W =    31.879 deg,	P =    31.438 deg,	R =   -42.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[999]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1958.374  mm,	Y =   445.827  mm,	Z =   422.299  mm,
	W =    32.302 deg,	P =    33.270 deg,	R =   -47.081 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1000]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2032.108  mm,	Y =   448.090  mm,	Z =   422.222  mm,
	W =    43.758 deg,	P =    22.369 deg,	R =   -31.690 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1001]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2029.632  mm,	Y =   298.067  mm,	Z =   568.513  mm,
	W =    39.948 deg,	P =    19.080 deg,	R =   -23.626 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1002]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2029.631  mm,	Y =   298.067  mm,	Z =   568.513  mm,
	W =    39.948 deg,	P =    19.080 deg,	R =   -73.748 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1003]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2146.180  mm,	Y =   383.228  mm,	Z =   419.895  mm,
	W =    42.404 deg,	P =    16.917 deg,	R =   -60.322 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1004]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2105.246  mm,	Y =   421.815  mm,	Z =   420.684  mm,
	W =    44.162 deg,	P =     9.896 deg,	R =   -52.694 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1005]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2102.134  mm,	Y =   425.996  mm,	Z =   421.012  mm,
	W =    44.143 deg,	P =     9.905 deg,	R =   -66.074 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1006]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2100.705  mm,	Y =   433.132  mm,	Z =   421.964  mm,
	W =    44.953 deg,	P =     2.229 deg,	R =   -67.460 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1007]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2003.428  mm,	Y =   126.931  mm,	Z =   541.830  mm,
	W =    43.132 deg,	P =    -6.887 deg,	R =   -61.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1008]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.427  mm,	Y =   231.931  mm,	Z =   285.830  mm,
	W =    40.241 deg,	P =    18.349 deg,	R =   -20.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1009]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.954  mm,	Y =   365.993  mm,	Z =   296.590  mm,
	W =    40.241 deg,	P =    18.349 deg,	R =   -20.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1010]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2347.760  mm,	Y =   439.275  mm,	Z =   270.025  mm,
	W =    43.558 deg,	P =    12.622 deg,	R =   -12.919 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1011]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2403.053  mm,	Y =   435.363  mm,	Z =   273.433  mm,
	W =    43.549 deg,	P =     1.536 deg,	R =   -16.674 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1012]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.954  mm,	Y =   365.993  mm,	Z =   296.590  mm,
	W =    40.241 deg,	P =    18.349 deg,	R =   -20.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1013]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.954  mm,	Y =   213.993  mm,	Z =   296.590  mm,
	W =    40.242 deg,	P =    18.350 deg,	R =   -20.267 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1014]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2485.906  mm,	Y =   213.993  mm,	Z =   296.590  mm,
	W =    43.394 deg,	P =    -4.399 deg,	R =     4.775 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1015]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2485.594  mm,	Y =   388.028  mm,	Z =   236.817  mm,
	W =    26.387 deg,	P =   -37.359 deg,	R =    50.769 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1016]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2479.365  mm,	Y =   435.513  mm,	Z =   221.232  mm,
	W =    26.386 deg,	P =   -37.358 deg,	R =    60.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1017]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2428.881  mm,	Y =   435.920  mm,	Z =   222.314  mm,
	W =    41.283 deg,	P =   -34.943 deg,	R =    58.712 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1018]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2485.906  mm,	Y =   276.993  mm,	Z =   252.842  mm,
	W =    51.836 deg,	P =   -13.420 deg,	R =    11.542 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1019]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2485.906  mm,	Y =   213.993  mm,	Z =   296.590  mm,
	W =    43.394 deg,	P =    -4.399 deg,	R =     4.775 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1020]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.954  mm,	Y =    -6.007  mm,	Z =   296.591  mm,
	W =     5.759 deg,	P =    43.266 deg,	R =    98.508 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1021]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.954  mm,	Y =  -371.775  mm,	Z =   296.590  mm,
	W =   -43.559 deg,	P =     1.197 deg,	R =     1.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1022]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2348.791  mm,	Y =  -441.873  mm,	Z =   270.797  mm,
	W =   -44.984 deg,	P =     1.297 deg,	R =     5.834 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1023]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2402.559  mm,	Y =  -440.035  mm,	Z =   275.286  mm,
	W =   -43.855 deg,	P =   -10.820 deg,	R =     5.503 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1024]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.954  mm,	Y =  -368.775  mm,	Z =   284.590  mm,
	W =   -43.559 deg,	P =     1.197 deg,	R =     1.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1025]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2356.954  mm,	Y =  -231.775  mm,	Z =   284.590  mm,
	W =   -43.560 deg,	P =     1.197 deg,	R =     1.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1026]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2476.792  mm,	Y =  -231.775  mm,	Z =   284.590  mm,
	W =   -29.446 deg,	P =   -33.698 deg,	R =   -44.366 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1027]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2481.972  mm,	Y =  -442.010  mm,	Z =   222.427  mm,
	W =    -2.397 deg,	P =   -44.949 deg,	R =   -86.609 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1028]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2432.833  mm,	Y =  -441.320  mm,	Z =   222.622  mm,
	W =   -26.143 deg,	P =   -43.613 deg,	R =   -81.145 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1029]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2488.923  mm,	Y =  -351.753  mm,	Z =   247.956  mm,
	W =   -30.826 deg,	P =   -42.294 deg,	R =   -63.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1030]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2476.792  mm,	Y =  -231.776  mm,	Z =   284.590  mm,
	W =   -29.446 deg,	P =   -33.698 deg,	R =   -44.366 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1031]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2405.334  mm,	Y =  -139.398  mm,	Z =   301.608  mm,
	W =   -39.075 deg,	P =    20.318 deg,	R =    23.103 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1032]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   392.017  mm,	Y =    -5.147  mm,	Z =  2416.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[1033]{
   GP1:
	UF : 1, UT : 1,	
	J1=      .005 deg,	J2=   -44.424 deg,	J3=    65.270 deg,
	J4=      .005 deg,	J5=   -70.270 deg,	J6=     -.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1034]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1819.034  mm,	Y =    -6.897  mm,	Z =   564.314  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1035]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1621.906  mm,	Y =   155.031  mm,	Z =   510.314  mm,
	W =      .000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1036]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1616.404  mm,	Y =   131.606  mm,	Z =   408.971  mm,
	W =      .067 deg,	P =    45.900 deg,	R =    17.155 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1037]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1617.114  mm,	Y =   141.899  mm,	Z =   409.681  mm,
	W =      .000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1038]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1617.563  mm,	Y =   221.810  mm,	Z =   410.818  mm,
	W =      .000 deg,	P =    45.918 deg,	R =    -8.452 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1039]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1653.539  mm,	Y =   314.670  mm,	Z =   458.639  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1040]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1616.796  mm,	Y =   350.032  mm,	Z =   411.226  mm,
	W =     3.791 deg,	P =    48.896 deg,	R =    -1.442 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1041]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.694  mm,	Y =   432.338  mm,	Z =   411.156  mm,
	W =    21.553 deg,	P =    45.140 deg,	R =    22.664 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1042]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.541  mm,	Y =   314.671  mm,	Z =   548.639  mm,
	W =    14.296 deg,	P =    44.115 deg,	R =    18.950 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1043]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.539  mm,	Y =  -139.330  mm,	Z =   548.639  mm,
	W =     -.000 deg,	P =    45.919 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1044]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1614.726  mm,	Y =  -127.279  mm,	Z =   409.297  mm,
	W =      .096 deg,	P =    45.916 deg,	R =    -3.643 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1045]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1614.702  mm,	Y =  -160.882  mm,	Z =   410.034  mm,
	W =      .096 deg,	P =    46.938 deg,	R =     3.751 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1046]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1613.017  mm,	Y =  -196.806  mm,	Z =   411.621  mm,
	W =     1.031 deg,	P =    48.639 deg,	R =    42.126 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1047]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1664.805  mm,	Y =  -152.179  mm,	Z =   471.791  mm,
	W =     1.031 deg,	P =    48.639 deg,	R =    42.126 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1048]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1710.650  mm,	Y =  -235.344  mm,	Z =   518.121  mm,
	W =     -.000 deg,	P =    45.919 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1049]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.648  mm,	Y =  -221.012  mm,	Z =   411.430  mm,
	W =     1.085 deg,	P =    45.398 deg,	R =    -1.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1050]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.484  mm,	Y =  -193.298  mm,	Z =   410.211  mm,
	W =     1.093 deg,	P =    45.391 deg,	R =   -28.069 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1051]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1665.750  mm,	Y =  -216.620  mm,	Z =   476.833  mm,
	W =     1.098 deg,	P =    45.401 deg,	R =   -28.069 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=     0.000 deg
};
P[1052]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1710.649  mm,	Y =  -235.344  mm,	Z =   518.121  mm,
	W =     -.000 deg,	P =    45.919 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1053]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1710.649  mm,	Y =  -335.344  mm,	Z =   518.121  mm,
	W =   -24.937 deg,	P =    39.897 deg,	R =   -38.608 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1054]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.018  mm,	Y =  -353.317  mm,	Z =   411.647  mm,
	W =   -28.551 deg,	P =    41.609 deg,	R =   -35.630 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[1055]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.298  mm,	Y =  -433.271  mm,	Z =   410.910  mm,
	W =   -28.808 deg,	P =    41.508 deg,	R =   -35.729 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1056]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1730.632  mm,	Y =  -410.643  mm,	Z =   540.658  mm,
	W =   -30.592 deg,	P =    36.083 deg,	R =   -32.808 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1057]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1816.930  mm,	Y =  -158.897  mm,	Z =   555.408  mm,
	W =   -13.122 deg,	P =    44.168 deg,	R =   -15.536 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1058]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1665.514  mm,	Y =   -76.222  mm,	Z =   459.026  mm,
	W =    -1.398 deg,	P =    45.211 deg,	R =    -2.659 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1059]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1634.638  mm,	Y =   -80.822  mm,	Z =   408.400  mm,
	W =    -1.410 deg,	P =    46.984 deg,	R =     8.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1060]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1636.173  mm,	Y =   -49.516  mm,	Z =   408.646  mm,
	W =    -2.439 deg,	P =    46.947 deg,	R =   -13.024 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1061]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.034  mm,	Y =   -60.897  mm,	Z =   538.606  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1062]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.034  mm,	Y =    70.103  mm,	Z =   538.605  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1063]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.812  mm,	Y =    78.782  mm,	Z =   409.850  mm,
	W =    -1.870 deg,	P =    44.966 deg,	R =    -2.659 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1064]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1638.070  mm,	Y =    -5.469  mm,	Z =   410.295  mm,
	W =    -1.870 deg,	P =    44.966 deg,	R =    -2.659 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1065]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.034  mm,	Y =    70.103  mm,	Z =   538.605  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1066]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1617.914  mm,	Y =    80.097  mm,	Z =   419.790  mm,
	W =      .021 deg,	P =    45.919 deg,	R =    -2.645 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1067]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.329  mm,	Y =    53.421  mm,	Z =   420.061  mm,
	W =    -2.071 deg,	P =    48.970 deg,	R =     -.692 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1068]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.034  mm,	Y =    70.103  mm,	Z =   538.605  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1069]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.034  mm,	Y =   -77.897  mm,	Z =   538.605  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1070]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.604  mm,	Y =   -81.949  mm,	Z =   419.038  mm,
	W =    -2.076 deg,	P =    48.967 deg,	R =     4.167 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1071]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.037  mm,	Y =   -54.983  mm,	Z =   421.205  mm,
	W =    -2.076 deg,	P =    48.967 deg,	R =    -8.307 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1072]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.744  mm,	Y =   -51.899  mm,	Z =   520.175  mm,
	W =    -2.076 deg,	P =    48.967 deg,	R =    -2.751 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1073]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.744  mm,	Y =    -9.232  mm,	Z =   520.175  mm,
	W =    -2.076 deg,	P =    48.967 deg,	R =    79.079 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1074]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1611.108  mm,	Y =   -51.241  mm,	Z =   417.692  mm,
	W =    -7.325 deg,	P =    44.527 deg,	R =    79.612 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1075]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1596.840  mm,	Y =   -51.126  mm,	Z =   417.213  mm,
	W =    -7.325 deg,	P =    44.527 deg,	R =    79.612 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1076]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.744  mm,	Y =    -9.232  mm,	Z =   520.175  mm,
	W =    -2.076 deg,	P =    48.967 deg,	R =    79.079 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1077]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.744  mm,	Y =    26.526  mm,	Z =   520.175  mm,
	W =    -2.076 deg,	P =    48.967 deg,	R =   -94.932 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1078]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1613.714  mm,	Y =    48.029  mm,	Z =   417.969  mm,
	W =    -3.289 deg,	P =    44.906 deg,	R =   -94.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1079]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1602.075  mm,	Y =    47.944  mm,	Z =   418.495  mm,
	W =    -3.289 deg,	P =    44.905 deg,	R =   -94.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1080]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.744  mm,	Y =    26.526  mm,	Z =   520.175  mm,
	W =     -.707 deg,	P =    36.028 deg,	R =   -94.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1081]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2051.968  mm,	Y =  -337.038  mm,	Z =   536.737  mm,
	W =   -45.319 deg,	P =     7.608 deg,	R =     5.072 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1082]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2065.258  mm,	Y =  -440.562  mm,	Z =   416.925  mm,
	W =   -44.803 deg,	P =     3.316 deg,	R =     4.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1083]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2119.404  mm,	Y =  -440.015  mm,	Z =   419.473  mm,
	W =   -44.800 deg,	P =     3.306 deg,	R =     4.922 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1084]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2165.659  mm,	Y =  -440.071  mm,	Z =   420.450  mm,
	W =   -35.985 deg,	P =     2.077 deg,	R =     4.572 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1085]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.152  mm,	Y =  -439.912  mm,	Z =   420.613  mm,
	W =   -46.529 deg,	P =     3.253 deg,	R =     4.441 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1086]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2312.005  mm,	Y =  -442.540  mm,	Z =   421.471  mm,
	W =   -44.812 deg,	P =     3.500 deg,	R =     4.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1087]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2322.380  mm,	Y =  -374.657  mm,	Z =   488.435  mm,
	W =   -45.801 deg,	P =     3.717 deg,	R =     4.521 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1088]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2313.720  mm,	Y =  -422.562  mm,	Z =   410.868  mm,
	W =   -38.970 deg,	P =     1.358 deg,	R =    -8.449 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1089]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2245.266  mm,	Y =  -408.951  mm,	Z =   407.695  mm,
	W =   -42.398 deg,	P =     3.388 deg,	R =   -10.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1090]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2157.750  mm,	Y =  -383.025  mm,	Z =   409.230  mm,
	W =   -44.997 deg,	P =      .478 deg,	R =   -16.008 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1091]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.646  mm,	Y =  -316.002  mm,	Z =   488.370  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =   -19.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1092]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.557  mm,	Y =  -374.570  mm,	Z =   640.258  mm,
	W =   -45.370 deg,	P =     3.743 deg,	R =     3.813 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1093]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2345.996  mm,	Y =  -443.552  mm,	Z =   567.564  mm,
	W =   -44.875 deg,	P =     3.774 deg,	R =     3.782 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1094]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2398.567  mm,	Y =  -440.723  mm,	Z =   569.133  mm,
	W =   -43.832 deg,	P =    11.293 deg,	R =    25.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1095]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2361.646  mm,	Y =  -316.002  mm,	Z =   705.371  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =     3.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1096]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2431.558  mm,	Y =  -405.370  mm,	Z =   705.370  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =     3.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1097]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2479.192  mm,	Y =  -441.664  mm,	Z =   619.931  mm,
	W =   -44.875 deg,	P =     3.774 deg,	R =     3.782 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1098]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2431.611  mm,	Y =  -442.129  mm,	Z =   618.230  mm,
	W =   -44.875 deg,	P =     3.774 deg,	R =     3.782 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1099]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2422.708  mm,	Y =  -443.303  mm,	Z =   616.150  mm,
	W =   -47.202 deg,	P =    -4.228 deg,	R =    12.058 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2414.079  mm,	Y =  -439.978  mm,	Z =   614.077  mm,
	W =   -54.121 deg,	P =   -12.107 deg,	R =    21.739 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.296  mm,	Y =  -242.980  mm,	Z =   687.983  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =     3.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2505.422  mm,	Y =  -353.441  mm,	Z =   558.985  mm,
	W =   -28.620 deg,	P =   -37.578 deg,	R =   -47.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2479.805  mm,	Y =  -440.598  mm,	Z =   518.552  mm,
	W =     -.765 deg,	P =   -44.982 deg,	R =   -88.916 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2431.875  mm,	Y =  -440.714  mm,	Z =   516.919  mm,
	W =   -46.020 deg,	P =   -32.709 deg,	R =   -60.051 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.563  mm,	Y =  -374.906  mm,	Z =   592.469  mm,
	W =   -28.619 deg,	P =   -37.577 deg,	R =   -73.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.563  mm,	Y =  -194.906  mm,	Z =   592.469  mm,
	W =   -28.619 deg,	P =   -37.577 deg,	R =   -18.464 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2072.645  mm,	Y =   372.998  mm,	Z =   516.371  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -20.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2067.494  mm,	Y =   433.863  mm,	Z =   417.870  mm,
	W =    43.968 deg,	P =    11.983 deg,	R =   -17.454 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2311.792  mm,	Y =   436.788  mm,	Z =   418.985  mm,
	W =    44.829 deg,	P =     9.277 deg,	R =   -17.295 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2310.163  mm,	Y =   364.504  mm,	Z =   487.755  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -18.246 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2311.278  mm,	Y =   412.063  mm,	Z =   410.676  mm,
	W =    36.139 deg,	P =    15.180 deg,	R =    -9.294 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2238.371  mm,	Y =   398.622  mm,	Z =   408.876  mm,
	W =    35.632 deg,	P =    15.709 deg,	R =    -5.398 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2157.868  mm,	Y =   378.363  mm,	Z =   408.912  mm,
	W =    42.416 deg,	P =    16.706 deg,	R =     -.979 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2183.068  mm,	Y =   301.712  mm,	Z =   672.802  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =    -1.009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2360.068  mm,	Y =   359.712  mm,	Z =   672.802  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -16.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2345.842  mm,	Y =   435.904  mm,	Z =   568.233  mm,
	W =    41.490 deg,	P =    15.419 deg,	R =   -19.151 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2400.895  mm,	Y =   434.403  mm,	Z =   569.877  mm,
	W =    40.052 deg,	P =    21.818 deg,	R =   -37.758 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.994 deg,	J2=      .000 deg
};
P[1118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2360.068  mm,	Y =   359.712  mm,	Z =   672.802  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -18.155 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2481.175  mm,	Y =   436.218  mm,	Z =   621.065  mm,
	W =    42.312 deg,	P =    17.019 deg,	R =   -17.824 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2433.042  mm,	Y =   436.690  mm,	Z =   618.993  mm,
	W =    42.312 deg,	P =    17.019 deg,	R =   -17.824 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2421.784  mm,	Y =   436.442  mm,	Z =   618.196  mm,
	W =    46.025 deg,	P =     5.793 deg,	R =   -20.933 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2414.343  mm,	Y =   434.635  mm,	Z =   615.173  mm,
	W =    55.585 deg,	P =     -.623 deg,	R =   -30.576 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.816  mm,	Y =   386.818  mm,	Z =   645.562  mm,
	W =    55.585 deg,	P =     -.624 deg,	R =   -30.576 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2512.528  mm,	Y =   214.847  mm,	Z =   694.890  mm,
	W =    45.884 deg,	P =    -1.983 deg,	R =      .633 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2512.528  mm,	Y =   371.847  mm,	Z =   563.889  mm,
	W =    28.310 deg,	P =   -37.796 deg,	R =    47.397 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2475.852  mm,	Y =   435.206  mm,	Z =   520.599  mm,
	W =     4.772 deg,	P =   -44.999 deg,	R =    96.138 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2428.390  mm,	Y =   437.121  mm,	Z =   518.474  mm,
	W =    13.020 deg,	P =   -51.322 deg,	R =    91.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2488.844  mm,	Y =   381.884  mm,	Z =   524.273  mm,
	W =    12.001 deg,	P =   -51.332 deg,	R =    88.206 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2531.727  mm,	Y =   371.847  mm,	Z =   563.889  mm,
	W =    28.310 deg,	P =   -37.796 deg,	R =    47.397 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2512.528  mm,	Y =    40.847  mm,	Z =   705.891  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -18.155 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1841.526  mm,	Y =    83.901  mm,	Z =   705.890  mm,
	W =    -6.286 deg,	P =    45.581 deg,	R =  -100.055 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.524  mm,	Y =     -.905  mm,	Z =  2424.587  mm,
	W =     -.002 deg,	P =   -40.002 deg,	R =      .017 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[1133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   254.446  mm,	Y =   662.476  mm,	Z =  2161.953  mm,
	W =     -.015 deg,	P =   -26.755 deg,	R =    72.877 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[1134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1172.993  mm,	Y =  1396.463  mm,	Z =  1371.229  mm,
	W =     2.123 deg,	P =   -27.834 deg,	R =    46.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2163.792  mm,	Y =  1336.078  mm,	Z =   473.472  mm,
	W =     3.095 deg,	P =    -8.630 deg,	R =    30.802 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2799.519  mm,	Y =  1395.574  mm,	Z =    33.669  mm,
	W =      .013 deg,	P =      .004 deg,	R =    23.419 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2810.415  mm,	Y =  1434.242  mm,	Z =   -20.801  mm,
	W =      .010 deg,	P =      .014 deg,	R =    23.415 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2810.415  mm,	Y =  1434.241  mm,	Z =   -20.801  mm,
	W =      .010 deg,	P =      .014 deg,	R =    23.415 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2782.021  mm,	Y =  1413.818  mm,	Z =   -22.817  mm,
	W =      .004 deg,	P =      .014 deg,	R =    23.420 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2810.307  mm,	Y =  1413.819  mm,	Z =   -25.174  mm,
	W =      .004 deg,	P =      .014 deg,	R =    23.420 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2810.266  mm,	Y =  1413.884  mm,	Z =   -25.278  mm,
	W =      .011 deg,	P =      .017 deg,	R =    23.416 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2760.411  mm,	Y =  1423.182  mm,	Z =   -21.552  mm,
	W =      .001 deg,	P =      .017 deg,	R =    23.421 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2790.524  mm,	Y =  1423.286  mm,	Z =   -25.530  mm,
	W =      .025 deg,	P =      .021 deg,	R =    23.412 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2790.486  mm,	Y =  1423.336  mm,	Z =   -25.637  mm,
	W =      .031 deg,	P =      .024 deg,	R =    23.409 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2799.574  mm,	Y =  1430.502  mm,	Z =    52.293  mm,
	W =      .000 deg,	P =      .000 deg,	R =    23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.369  mm,	Y =  1342.105  mm,	Z =   119.187  mm,
	W =    -1.924 deg,	P =     1.808 deg,	R =    25.005 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1405.859  mm,	Y =   227.456  mm,	Z =    82.002  mm,
	W =   -43.796 deg,	P =    -2.383 deg,	R =    15.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1148]{
   GP1:
	UF : 1, UT : 1,	
	J1=    12.539 deg,	J2=   -45.970 deg,	J3=   -23.422 deg,
	J4=    72.490 deg,	J5=   -28.075 deg,	J6=   -34.269 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1149]{
   GP1:
	UF : 1, UT : 1,	
	J1=    10.219 deg,	J2=   -37.730 deg,	J3=   -29.437 deg,
	J4=    82.467 deg,	J5=   -30.708 deg,	J6=   -48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1491.964  mm,	Y =   -31.411  mm,	Z =   -43.028  mm,
	W =   -44.735 deg,	P =     5.500 deg,	R =    17.525 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1499.626  mm,	Y =   -26.042  mm,	Z =   -37.552  mm,
	W =   -49.947 deg,	P =   -21.098 deg,	R =    25.385 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  1503.825  mm,	Y =   -13.700  mm,	Z =   -38.379  mm,
	W =   -46.116 deg,	P =   -26.310 deg,	R =    32.911 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  1508.466  mm,	Y =    26.902  mm,	Z =   -38.356  mm,
	W =   -42.788 deg,	P =   -29.205 deg,	R =    35.275 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1522.816  mm,	Y =    49.684  mm,	Z =   -39.779  mm,
	W =   -40.568 deg,	P =   -21.329 deg,	R =    13.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1549.361  mm,	Y =    43.427  mm,	Z =   -40.544  mm,
	W =   -38.930 deg,	P =   -14.843 deg,	R =   -39.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[1156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1579.623  mm,	Y =    14.358  mm,	Z =   -40.386  mm,
	W =   -38.918 deg,	P =   -14.837 deg,	R =   -39.804 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[1157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1586.813  mm,	Y =     8.624  mm,	Z =   -39.542  mm,
	W =   -38.918 deg,	P =   -14.837 deg,	R =   -26.710 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[1158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1595.263  mm,	Y =     9.389  mm,	Z =   -39.982  mm,
	W =   -38.918 deg,	P =   -14.837 deg,	R =   -13.026 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[1159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1582.254  mm,	Y =   163.348  mm,	Z =     9.339  mm,
	W =   -43.745 deg,	P =    -3.325 deg,	R =    -4.329 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.374  mm,	Y =   285.724  mm,	Z =    20.813  mm,
	W =    54.391 deg,	P =     4.756 deg,	R =   -78.540 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1921.374  mm,	Y =    85.725  mm,	Z =    19.097  mm,
	W =    44.321 deg,	P =     6.701 deg,	R =   -79.548 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2023.221  mm,	Y =    46.932  mm,	Z =   -37.754  mm,
	W =    44.242 deg,	P =    16.885 deg,	R =  -113.422 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2042.831  mm,	Y =    17.807  mm,	Z =   -36.270  mm,
	W =    48.943 deg,	P =    10.738 deg,	R =  -117.194 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1877.442  mm,	Y =    81.577  mm,	Z =    79.657  mm,
	W =    40.231 deg,	P =    21.454 deg,	R =  -138.980 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   704.218  mm,	Y =   388.449  mm,	Z =   -44.585  mm,
	W =   -14.827 deg,	P =    66.137 deg,	R =     2.515 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1237.254  mm,	Y =  -447.653  mm,	Z =     9.338  mm,
	W =    33.676 deg,	P =    29.929 deg,	R =    49.697 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   879.900  mm,	Y =   -86.392  mm,	Z =   -19.084  mm,
	W =    43.573 deg,	P =    69.244 deg,	R =    28.521 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1543.398  mm,	Y =  -219.276  mm,	Z =   139.295  mm,
	W =    51.798 deg,	P =    44.095 deg,	R =    47.739 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1169]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1706.625  mm,	Y =  -444.344  mm,	Z =     3.766  mm,
	W =    13.040 deg,	P =    46.585 deg,	R =    21.075 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1170]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.570  mm,	Y =  -491.040  mm,	Z =   -42.200  mm,
	W =     5.245 deg,	P =    44.744 deg,	R =    15.369 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1171]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1619.148  mm,	Y =   -22.429  mm,	Z =   -41.681  mm,
	W =    39.719 deg,	P =    23.175 deg,	R =    65.389 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1172]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.796  mm,	Y =  -168.096  mm,	Z =   107.228  mm,
	W =    41.445 deg,	P =    15.816 deg,	R =    42.913 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1173]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1926.362  mm,	Y =  -139.788  mm,	Z =   193.210  mm,
	W =   -31.942 deg,	P =   -31.595 deg,	R =    87.860 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1174]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1953.942  mm,	Y =   -11.283  mm,	Z =    34.184  mm,
	W =   -32.683 deg,	P =    -8.616 deg,	R =   124.477 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1175]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1992.866  mm,	Y =   -67.843  mm,	Z =    22.749  mm,
	W =   -25.390 deg,	P =   -11.829 deg,	R =   119.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1176]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2021.982  mm,	Y =  -111.483  mm,	Z =    15.539  mm,
	W =   -24.058 deg,	P =   -19.420 deg,	R =   107.017 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1177]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2031.545  mm,	Y =  -119.748  mm,	Z =    10.887  mm,
	W =   -27.470 deg,	P =   -20.247 deg,	R =   103.965 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1178]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2038.384  mm,	Y =  -131.652  mm,	Z =    10.692  mm,
	W =   -29.318 deg,	P =   -23.368 deg,	R =   119.590 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1179]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2054.196  mm,	Y =  -142.577  mm,	Z =     6.271  mm,
	W =   -27.176 deg,	P =   -31.299 deg,	R =   125.406 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1180]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2138.616  mm,	Y =  -185.620  mm,	Z =   -14.688  mm,
	W =   -28.856 deg,	P =   -29.793 deg,	R =   128.699 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1181]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2151.849  mm,	Y =  -193.767  mm,	Z =   -18.067  mm,
	W =   -25.181 deg,	P =   -29.053 deg,	R =   112.956 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1182]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2309.475  mm,	Y =  -313.678  mm,	Z =   -58.656  mm,
	W =   -35.809 deg,	P =   -12.717 deg,	R =   141.916 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1183]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2332.141  mm,	Y =  -338.485  mm,	Z =   -65.977  mm,
	W =   -32.127 deg,	P =     2.702 deg,	R =   131.528 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1184]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2339.940  mm,	Y =  -373.864  mm,	Z =   -66.156  mm,
	W =   -26.334 deg,	P =    14.915 deg,	R =   117.862 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1185]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2342.079  mm,	Y =  -537.363  mm,	Z =   -66.325  mm,
	W =    18.926 deg,	P =    23.720 deg,	R =  -139.557 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1186]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2367.990  mm,	Y =  -595.569  mm,	Z =   -71.145  mm,
	W =     7.550 deg,	P =    35.885 deg,	R =  -115.262 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1187]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2418.261  mm,	Y =  -612.674  mm,	Z =   -84.509  mm,
	W =    26.080 deg,	P =    30.929 deg,	R =   -58.166 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1188]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2506.701  mm,	Y =  -611.466  mm,	Z =  -107.718  mm,
	W =    38.274 deg,	P =    29.551 deg,	R =   -17.504 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1189]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2543.054  mm,	Y =  -626.595  mm,	Z =  -116.227  mm,
	W =    27.942 deg,	P =    21.435 deg,	R =   -69.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1190]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2560.144  mm,	Y =  -669.781  mm,	Z =  -121.378  mm,
	W =    25.909 deg,	P =    15.700 deg,	R =  -121.699 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1191]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2545.732  mm,	Y = -1058.839  mm,	Z =  -115.894  mm,
	W =    28.324 deg,	P =   -10.379 deg,	R =   -74.774 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1192]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2473.167  mm,	Y = -1064.660  mm,	Z =    -1.690  mm,
	W =    28.324 deg,	P =   -10.379 deg,	R =   -74.774 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1193]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2362.332  mm,	Y =  -948.704  mm,	Z =   -46.458  mm,
	W =     1.961 deg,	P =    -3.226 deg,	R =   -23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1194]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2400.361  mm,	Y = -1187.577  mm,	Z =     9.775  mm,
	W =   -23.326 deg,	P =   -26.866 deg,	R =    43.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1195]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2405.778  mm,	Y = -1194.018  mm,	Z =   -81.151  mm,
	W =   -19.565 deg,	P =   -23.197 deg,	R =    42.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1196]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.332  mm,	Y = -1178.229  mm,	Z =   -80.540  mm,
	W =   -19.573 deg,	P =   -23.200 deg,	R =    42.068 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1197]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2412.348  mm,	Y = -1170.129  mm,	Z =   -84.284  mm,
	W =   -34.316 deg,	P =    -2.466 deg,	R =    34.366 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1198]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2418.087  mm,	Y = -1169.925  mm,	Z =   -87.740  mm,
	W =   -40.398 deg,	P =    23.613 deg,	R =    19.582 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1199]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2439.433  mm,	Y = -1169.404  mm,	Z =   -93.614  mm,
	W =   -44.348 deg,	P =    17.233 deg,	R =    12.103 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1200]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2472.436  mm,	Y = -1163.119  mm,	Z =  -100.981  mm,
	W =   -40.740 deg,	P =    -7.860 deg,	R =    -3.014 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1201]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  2493.725  mm,	Y = -1147.093  mm,	Z =  -105.313  mm,
	W =   -32.159 deg,	P =   -17.167 deg,	R =     4.025 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1202]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2528.380  mm,	Y = -1109.365  mm,	Z =  -111.576  mm,
	W =   -20.148 deg,	P =   -29.973 deg,	R =   -17.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1203]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2541.479  mm,	Y = -1091.180  mm,	Z =  -116.139  mm,
	W =    -6.295 deg,	P =   -31.612 deg,	R =   -24.783 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1204]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2547.416  mm,	Y = -1057.501  mm,	Z =  -115.092  mm,
	W =    15.380 deg,	P =   -26.138 deg,	R =   -37.572 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1205]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2492.591  mm,	Y = -1065.447  mm,	Z =    35.797  mm,
	W =    23.408 deg,	P =   -26.810 deg,	R =   -46.665 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1206]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2043.269  mm,	Y = -1065.447  mm,	Z =   330.490  mm,
	W =    32.980 deg,	P =   -22.407 deg,	R =   -62.157 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1207]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1479.583  mm,	Y = -1194.231  mm,	Z =   574.890  mm,
	W =   -33.532 deg,	P =   -24.491 deg,	R =   -26.069 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1208]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   469.561  mm,	Y =  -952.347  mm,	Z =   800.940  mm,
	W =      .899 deg,	P =    43.704 deg,	R =    71.522 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1209]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   744.220  mm,	Y =   -16.340  mm,	Z =  1493.482  mm,
	W =   -28.142 deg,	P =    21.236 deg,	R =    52.683 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[1210]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1934.433  mm,	Y =    90.324  mm,	Z =  1230.829  mm,
	W =   -12.673 deg,	P =    53.769 deg,	R =   143.611 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1211]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2057.927  mm,	Y =    81.682  mm,	Z =   950.884  mm,
	W =    -3.033 deg,	P =    45.239 deg,	R =   153.300 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1212]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2083.640  mm,	Y =    86.644  mm,	Z =   862.948  mm,
	W =     1.298 deg,	P =    45.759 deg,	R =   158.564 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1213]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2073.865  mm,	Y =   117.284  mm,	Z =   860.519  mm,
	W =      .310 deg,	P =    44.767 deg,	R =  -121.017 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1214]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2045.233  mm,	Y =   108.429  mm,	Z =   860.562  mm,
	W =     -.389 deg,	P =    43.845 deg,	R =   -25.335 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1215]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2036.350  mm,	Y =    83.994  mm,	Z =   859.905  mm,
	W =     1.047 deg,	P =    44.551 deg,	R =   -14.937 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1216]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2055.114  mm,	Y =    60.217  mm,	Z =   860.665  mm,
	W =      .512 deg,	P =    44.278 deg,	R =    68.687 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1217]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2078.847  mm,	Y =    70.017  mm,	Z =   861.215  mm,
	W =      .619 deg,	P =    44.302 deg,	R =   160.837 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1218]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2082.523  mm,	Y =    87.765  mm,	Z =   862.591  mm,
	W =      .679 deg,	P =    43.176 deg,	R =   162.144 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1219]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2030.342  mm,	Y =   104.719  mm,	Z =  1095.609  mm,
	W =     4.326 deg,	P =    44.835 deg,	R =   168.123 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1220]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2094.412  mm,	Y =   192.682  mm,	Z =  1020.508  mm,
	W =    -6.392 deg,	P =    42.881 deg,	R =    76.256 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1221]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2055.715  mm,	Y =   156.952  mm,	Z =   864.739  mm,
	W =    -6.514 deg,	P =    44.590 deg,	R =    80.754 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1222]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2175.980  mm,	Y =   155.212  mm,	Z =   865.187  mm,
	W =    -6.519 deg,	P =    44.584 deg,	R =    80.731 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1223]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2232.675  mm,	Y =   130.480  mm,	Z =   863.368  mm,
	W =   -10.502 deg,	P =    44.016 deg,	R =    36.787 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1224]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2253.801  mm,	Y =    86.743  mm,	Z =   863.438  mm,
	W =    -2.340 deg,	P =    43.506 deg,	R =    13.475 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1225]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2357.269  mm,	Y =   -59.957  mm,	Z =   863.784  mm,
	W =     -.575 deg,	P =    46.049 deg,	R =    47.558 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1226]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2543.201  mm,	Y =  -101.314  mm,	Z =   862.640  mm,
	W =    -1.367 deg,	P =    45.764 deg,	R =    89.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1227]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2595.248  mm,	Y =  -114.923  mm,	Z =   862.093  mm,
	W =    -1.659 deg,	P =    44.976 deg,	R =    61.762 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1228]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2619.721  mm,	Y =  -142.767  mm,	Z =   859.844  mm,
	W =   -27.973 deg,	P =    36.809 deg,	R =     1.495 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1229]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2638.228  mm,	Y =  -180.207  mm,	Z =   862.719  mm,
	W =   -32.750 deg,	P =    30.016 deg,	R =     -.323 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1230]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2663.091  mm,	Y =  -180.825  mm,	Z =   940.140  mm,
	W =   -32.753 deg,	P =    30.014 deg,	R =    10.111 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1231]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2759.539  mm,	Y =  -352.824  mm,	Z =   940.140  mm,
	W =   -15.637 deg,	P =    18.786 deg,	R =    -8.670 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1232]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2635.602  mm,	Y =  -179.163  mm,	Z =   864.410  mm,
	W =    11.258 deg,	P =    42.042 deg,	R =    39.085 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[1233]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2691.727  mm,	Y =  -303.823  mm,	Z =   865.455  mm,
	W =   -17.500 deg,	P =    36.921 deg,	R =     3.260 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1234]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2732.146  mm,	Y =  -395.302  mm,	Z =   866.339  mm,
	W =   -28.374 deg,	P =    29.568 deg,	R =   -14.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1235]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2778.109  mm,	Y =  -501.542  mm,	Z =   866.897  mm,
	W =   -36.634 deg,	P =    24.840 deg,	R =   -20.519 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1236]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2870.505  mm,	Y =  -705.231  mm,	Z =   869.783  mm,
	W =   -42.548 deg,	P =     8.667 deg,	R =   -13.898 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1237]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2899.487  mm,	Y =  -557.469  mm,	Z =   905.131  mm,
	W =   -40.224 deg,	P =    17.491 deg,	R =     -.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1238]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.487  mm,	Y =  -106.469  mm,	Z =   905.131  mm,
	W =   -40.224 deg,	P =    17.491 deg,	R =   -11.143 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1239]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2349.711  mm,	Y =  -142.767  mm,	Z =   874.878  mm,
	W =   -41.895 deg,	P =    18.208 deg,	R =    -8.798 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1240]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2283.153  mm,	Y =  -109.355  mm,	Z =   872.819  mm,
	W =   -41.895 deg,	P =    18.207 deg,	R =    -8.798 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1241]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.487  mm,	Y =  -106.469  mm,	Z =  1005.131  mm,
	W =   -40.224 deg,	P =    17.491 deg,	R =   -11.143 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1242]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2248.487  mm,	Y =  -183.468  mm,	Z =  1050.131  mm,
	W =    39.867 deg,	P =   -18.417 deg,	R =   -24.499 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1243]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2271.850  mm,	Y =  -133.562  mm,	Z =   876.059  mm,
	W =    39.929 deg,	P =   -18.389 deg,	R =   -24.535 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1244]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2336.492  mm,	Y =  -169.512  mm,	Z =   876.840  mm,
	W =    39.847 deg,	P =   -18.420 deg,	R =   -24.482 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1245]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2294.069  mm,	Y =  -220.014  mm,	Z =   945.099  mm,
	W =    21.148 deg,	P =   -20.624 deg,	R =   -17.529 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1246]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2338.975  mm,	Y =   -36.178  mm,	Z =   950.438  mm,
	W =    13.335 deg,	P =    -3.235 deg,	R =   -13.309 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1247]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2423.667  mm,	Y =  -138.414  mm,	Z =   969.098  mm,
	W =   -11.026 deg,	P =    39.710 deg,	R =   -20.881 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1248]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2350.374  mm,	Y =  -143.477  mm,	Z =   872.621  mm,
	W =   -11.026 deg,	P =    39.710 deg,	R =   -35.737 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1249]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2336.524  mm,	Y =  -170.304  mm,	Z =   870.271  mm,
	W =   -11.026 deg,	P =    39.710 deg,	R =   -41.174 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1250]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2377.004  mm,	Y =  -164.282  mm,	Z =   904.705  mm,
	W =    -8.727 deg,	P =    37.605 deg,	R =   -39.738 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1251]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1434.139  mm,	Y =   -96.053  mm,	Z =  1044.378  mm,
	W =    35.942 deg,	P =   -29.145 deg,	R =   -48.109 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1252]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1598.946  mm,	Y =   -68.636  mm,	Z =   872.853  mm,
	W =    35.973 deg,	P =   -29.108 deg,	R =   -48.121 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1253]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.518  mm,	Y =  -570.275  mm,	Z =   870.406  mm,
	W =    39.081 deg,	P =   -25.372 deg,	R =   -55.573 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.994 deg,	J2=    90.001 deg
};
P[1254]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1593.706  mm,	Y =  -518.344  mm,	Z =   947.328  mm,
	W =    43.928 deg,	P =   -20.046 deg,	R =   -74.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1255]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1462.748  mm,	Y =  -105.245  mm,	Z =  1006.284  mm,
	W =    28.753 deg,	P =    19.512 deg,	R =   -64.352 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1256]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1692.820  mm,	Y =   -70.036  mm,	Z =  1058.761  mm,
	W =    -3.706 deg,	P =    39.360 deg,	R =     3.645 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1257]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1619.799  mm,	Y =   -64.713  mm,	Z =   867.956  mm,
	W =    -3.411 deg,	P =    44.793 deg,	R =     3.190 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1258]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.212  mm,	Y =  -567.545  mm,	Z =   867.215  mm,
	W =   -43.326 deg,	P =    11.035 deg,	R =   -70.449 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1259]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.754  mm,	Y =  -445.803  mm,	Z =  1023.931  mm,
	W =   -42.752 deg,	P =    -6.233 deg,	R =   -60.128 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1260]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1320.451  mm,	Y =   130.918  mm,	Z =  1174.439  mm,
	W =     3.785 deg,	P =    35.875 deg,	R =      .609 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1261]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   733.679  mm,	Y =   695.989  mm,	Z =  1351.019  mm,
	W =    -8.561 deg,	P =    33.775 deg,	R =    -6.417 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1262]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2464.094  mm,	Y =  1570.269  mm,	Z =  1287.636  mm,
	W =    34.631 deg,	P =   -20.439 deg,	R =   -45.641 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[1263]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2557.417  mm,	Y =  1604.019  mm,	Z =   806.571  mm,
	W =    36.017 deg,	P =   -29.586 deg,	R =   -62.799 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[1264]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2773.443  mm,	Y =  1511.018  mm,	Z =   657.571  mm,
	W =    36.017 deg,	P =   -29.586 deg,	R =   -64.860 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[1265]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2840.667  mm,	Y =  1483.617  mm,	Z =   630.242  mm,
	W =    25.513 deg,	P =   -45.644 deg,	R =   -57.230 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[1266]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2866.334  mm,	Y =  1471.210  mm,	Z =   617.974  mm,
	W =    18.532 deg,	P =   -48.178 deg,	R =   -50.594 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[1267]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2864.460  mm,	Y =  1519.376  mm,	Z =   611.684  mm,
	W =    24.186 deg,	P =   -44.120 deg,	R =   -50.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[1268]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2832.116  mm,	Y =  1569.535  mm,	Z =   601.273  mm,
	W =    43.449 deg,	P =   -15.770 deg,	R =   -35.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    80.000 deg
};
P[1269]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2826.594  mm,	Y =  1571.600  mm,	Z =   602.538  mm,
	W =    43.341 deg,	P =   -14.676 deg,	R =   -32.052 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    80.000 deg
};
P[1270]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2766.778  mm,	Y =  1608.487  mm,	Z =   593.034  mm,
	W =    41.229 deg,	P =   -17.227 deg,	R =   -22.582 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    80.000 deg
};
P[1271]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2718.383  mm,	Y =  1553.514  mm,	Z =   671.141  mm,
	W =    41.229 deg,	P =   -17.227 deg,	R =   -22.582 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[1272]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2626.676  mm,	Y =  1696.319  mm,	Z =   707.935  mm,
	W =   -50.219 deg,	P =    -7.077 deg,	R =    46.580 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[1273]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2760.964  mm,	Y =  1613.249  mm,	Z =   593.325  mm,
	W =   -51.641 deg,	P =    -8.212 deg,	R =    56.621 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[1274]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2781.190  mm,	Y =  1643.143  mm,	Z =   588.718  mm,
	W =   -51.569 deg,	P =    -8.041 deg,	R =    56.416 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[1275]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2622.631  mm,	Y =  1694.272  mm,	Z =   692.651  mm,
	W =   -54.549 deg,	P =   -20.575 deg,	R =    64.434 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[1276]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1360.375  mm,	Y =   792.895  mm,	Z =  1738.194  mm,
	W =    28.012 deg,	P =   -23.444 deg,	R =   -31.919 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1277]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.498  mm,	Y =    -1.017  mm,	Z =  2424.525  mm,
	W =     -.020 deg,	P =   -39.994 deg,	R =      .020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[1278]{
   GP1:
	UF : 1, UT : 1,	
	J1=      .005 deg,	J2=   -44.424 deg,	J3=    65.270 deg,
	J4=      .005 deg,	J5=   -70.270 deg,	J6=     -.002 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1279]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   888.146  mm,	Y =  -602.894  mm,	Z =  1079.964  mm,
	W =   -52.537 deg,	P =    -3.928 deg,	R =    83.324 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1280]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.146  mm,	Y =  -630.465  mm,	Z =   945.277  mm,
	W =   -52.537 deg,	P =    -3.928 deg,	R =    60.644 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1281]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1699.504  mm,	Y =  -710.975  mm,	Z =   866.171  mm,
	W =   -44.826 deg,	P =    -4.593 deg,	R =    61.393 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1282]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1946.820  mm,	Y =  -153.040  mm,	Z =   864.296  mm,
	W =   -45.563 deg,	P =    -3.332 deg,	R =    73.092 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1283]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1883.955  mm,	Y =  -143.969  mm,	Z =   930.742  mm,
	W =   -64.247 deg,	P =    -5.308 deg,	R =    92.033 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1284]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1347.073  mm,	Y =  -315.837  mm,	Z =   930.742  mm,
	W =   -64.247 deg,	P =    -5.308 deg,	R =    92.033 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1285]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1098.250  mm,	Y =  -457.920  mm,	Z =   864.783  mm,
	W =     2.070 deg,	P =     1.344 deg,	R =    -3.885 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1286]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1195.812  mm,	Y =  -666.774  mm,	Z =   950.277  mm,
	W =    58.410 deg,	P =     1.273 deg,	R =   -88.963 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1287]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1657.098  mm,	Y =  -779.646  mm,	Z =   930.742  mm,
	W =    45.135 deg,	P =   -18.028 deg,	R =   -72.006 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1288]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.287  mm,	Y =  -776.679  mm,	Z =   865.950  mm,
	W =    41.524 deg,	P =   -20.127 deg,	R =   -75.069 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1289]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.888  mm,	Y =  -796.672  mm,	Z =   865.913  mm,
	W =    41.000 deg,	P =   -20.477 deg,	R =   -62.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -89.999 deg,	J2=    90.000 deg
};
P[1290]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.514  mm,	Y =  -803.958  mm,	Z =   865.960  mm,
	W =    47.530 deg,	P =   -19.101 deg,	R =   -59.677 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -89.998 deg,	J2=    90.000 deg
};
P[1291]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1886.256  mm,	Y = -1187.653  mm,	Z =   869.034  mm,
	W =    47.353 deg,	P =    -9.874 deg,	R =   -68.868 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1292]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1856.770  mm,	Y = -1198.746  mm,	Z =   906.359  mm,
	W =    47.317 deg,	P =    -9.906 deg,	R =   -68.856 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1293]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1298.711  mm,	Y = -1056.858  mm,	Z =   942.419  mm,
	W =    51.862 deg,	P =   -14.128 deg,	R =   -65.340 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1294]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   765.670  mm,	Y =  -903.969  mm,	Z =   930.742  mm,
	W =    45.135 deg,	P =   -18.028 deg,	R =   -72.006 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1295]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.146  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[1296]{
   GP1:
	UF : 1, UT : 1,	
	J1=    32.560 deg,	J2=   -60.491 deg,	J3=    15.402 deg,
	J4=   -23.409 deg,	J5=   -41.316 deg,	J6=    84.551 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1297]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.185  mm,	Y =   771.955  mm,	Z =   922.028  mm,
	W =   -53.210 deg,	P =    -2.950 deg,	R =    86.737 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1298]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.183  mm,	Y =   773.813  mm,	Z =   858.475  mm,
	W =   -45.334 deg,	P =    -4.733 deg,	R =    88.292 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1299]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.934  mm,	Y =   786.841  mm,	Z =   860.137  mm,
	W =   -45.324 deg,	P =    -4.767 deg,	R =    78.189 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1300]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.027  mm,	Y =   806.421  mm,	Z =   859.551  mm,
	W =   -45.270 deg,	P =    -4.781 deg,	R =    62.005 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1301]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1890.044  mm,	Y =  1189.801  mm,	Z =   860.889  mm,
	W =   -41.233 deg,	P =   -19.884 deg,	R =    40.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1302]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1717.649  mm,	Y =  1211.638  mm,	Z =   952.045  mm,
	W =   -46.336 deg,	P =   -33.058 deg,	R =    54.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1303]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   784.649  mm,	Y =  1085.924  mm,	Z =   952.045  mm,
	W =   -46.336 deg,	P =   -33.058 deg,	R =    48.624 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1304]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.017  mm,	Y =     -.147  mm,	Z =  2433.121  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[1305]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   830.852  mm,	Y =  -483.273  mm,	Z =  1732.743  mm,
	W =   -19.284 deg,	P =     3.297 deg,	R =    -8.755 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1306]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   767.197  mm,	Y =  -738.866  mm,	Z =  1347.110  mm,
	W =      .000 deg,	P =    43.936 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1307]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.198  mm,	Y =  -123.866  mm,	Z =    88.528  mm,
	W =   -43.304 deg,	P =     8.281 deg,	R =    89.437 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1308]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2026.261  mm,	Y =   -44.698  mm,	Z =   -36.323  mm,
	W =   -40.063 deg,	P =    24.150 deg,	R =   114.480 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1309]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2043.083  mm,	Y =   -18.215  mm,	Z =   -33.835  mm,
	W =   -48.094 deg,	P =    24.245 deg,	R =   137.754 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1310]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1932.512  mm,	Y =   -84.081  mm,	Z =   104.389  mm,
	W =   -43.304 deg,	P =     8.281 deg,	R =   116.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1311]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1733.857  mm,	Y =  -543.587  mm,	Z =   134.680  mm,
	W =   -12.508 deg,	P =    -9.562 deg,	R =    72.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1312]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1591.198  mm,	Y = -1120.865  mm,	Z =   261.396  mm,
	W =    43.884 deg,	P =    -2.387 deg,	R =     2.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1313]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2598.196  mm,	Y = -1016.866  mm,	Z =    71.110  mm,
	W =    43.884 deg,	P =    -2.387 deg,	R =     2.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1314]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2647.118  mm,	Y =  -923.440  mm,	Z =   -25.150  mm,
	W =    44.948 deg,	P =    -2.436 deg,	R =     2.435 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1315]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2675.601  mm,	Y =  -922.760  mm,	Z =   -23.875  mm,
	W =    44.955 deg,	P =    -2.433 deg,	R =     2.437 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1316]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2690.016  mm,	Y =  -919.083  mm,	Z =   -24.165  mm,
	W =    34.700 deg,	P =    -4.479 deg,	R =    17.698 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1317]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2696.339  mm,	Y =  -911.261  mm,	Z =   -24.996  mm,
	W =    16.193 deg,	P =     8.102 deg,	R =    28.025 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1318]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2653.897  mm,	Y =  -983.627  mm,	Z =    56.187  mm,
	W =    43.915 deg,	P =    11.001 deg,	R =   -22.994 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1319]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1897.525  mm,	Y = -1008.960  mm,	Z =   159.950  mm,
	W =    44.948 deg,	P =    -2.436 deg,	R =    -7.767 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1320]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1897.524  mm,	Y = -1008.961  mm,	Z =   242.951  mm,
	W =   -41.218 deg,	P =   -19.941 deg,	R =   -32.390 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1321]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2509.525  mm,	Y =  -803.961  mm,	Z =   173.665  mm,
	W =   -40.704 deg,	P =   -21.130 deg,	R =   -18.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1322]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2568.524  mm,	Y =  -803.961  mm,	Z =    73.664  mm,
	W =   -43.420 deg,	P =   -13.149 deg,	R =   -17.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1323]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2648.363  mm,	Y =  -840.721  mm,	Z =   -26.432  mm,
	W =   -42.608 deg,	P =     -.037 deg,	R =    -1.279 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1324]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2677.162  mm,	Y =  -842.961  mm,	Z =   -27.843  mm,
	W =   -42.622 deg,	P =     -.034 deg,	R =    -1.271 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1325]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2692.845  mm,	Y =  -848.070  mm,	Z =   -27.626  mm,
	W =   -42.602 deg,	P =     -.050 deg,	R =   -25.548 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1326]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2700.985  mm,	Y =  -864.581  mm,	Z =   -26.564  mm,
	W =   -42.663 deg,	P =     -.055 deg,	R =   -39.807 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1327]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2739.708  mm,	Y =  -860.380  mm,	Z =    49.711  mm,
	W =   -48.781 deg,	P =    -7.527 deg,	R =   -31.543 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1328]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2560.230  mm,	Y =  -778.942  mm,	Z =   215.732  mm,
	W =   -62.172 deg,	P =   -18.531 deg,	R =     1.886 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1329]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.736  mm,	Y =  -967.561  mm,	Z =   255.630  mm,
	W =   -55.591 deg,	P =   -20.659 deg,	R =   -15.783 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1330]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1591.196  mm,	Y =  -283.866  mm,	Z =   227.110  mm,
	W =    43.884 deg,	P =    -2.387 deg,	R =     2.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1331]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1591.178  mm,	Y =  -111.276  mm,	Z =    20.110  mm,
	W =    41.925 deg,	P =   -14.562 deg,	R =    15.648 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1332]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.373  mm,	Y =   -16.036  mm,	Z =   -37.263  mm,
	W =    39.236 deg,	P =   -24.033 deg,	R =    26.523 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1333]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1585.811  mm,	Y =   -14.794  mm,	Z =   -38.410  mm,
	W =    39.258 deg,	P =   -24.040 deg,	R =    26.510 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1334]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1578.711  mm,	Y =   -17.962  mm,	Z =   -41.057  mm,
	W =    43.594 deg,	P =   -12.499 deg,	R =    37.172 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1335]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1573.495  mm,	Y =   -25.883  mm,	Z =   -39.530  mm,
	W =    44.958 deg,	P =    -2.238 deg,	R =    47.243 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1336]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1544.856  mm,	Y =   -53.211  mm,	Z =   -39.944  mm,
	W =    44.958 deg,	P =    -2.234 deg,	R =    47.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1337]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1523.602  mm,	Y =   -54.037  mm,	Z =   -39.414  mm,
	W =    34.023 deg,	P =   -31.392 deg,	R =    22.799 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1338]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1510.889  mm,	Y =   -43.230  mm,	Z =   -39.558  mm,
	W =   -41.192 deg,	P =   -19.995 deg,	R =    73.656 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1339]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1505.488  mm,	Y =     8.620  mm,	Z =   -40.409  mm,
	W =   -41.204 deg,	P =   -19.968 deg,	R =    73.684 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1340]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1504.857  mm,	Y =    21.151  mm,	Z =   -40.856  mm,
	W =   -32.680 deg,	P =   -32.822 deg,	R =    84.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1341]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1488.187  mm,	Y =    26.174  mm,	Z =   -42.316  mm,
	W =    -8.361 deg,	P =   -44.372 deg,	R =    89.881 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1342]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1464.686  mm,	Y =    30.412  mm,	Z =   -42.056  mm,
	W =    -8.369 deg,	P =   -44.373 deg,	R =    89.890 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1343]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1227.013  mm,	Y =  -240.395  mm,	Z =   227.364  mm,
	W =    25.573 deg,	P =   -37.026 deg,	R =    45.674 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1344]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   647.279  mm,	Y =   337.689  mm,	Z =  -107.070  mm,
	W =    52.573 deg,	P =    53.468 deg,	R =    78.422 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1345]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1273.803  mm,	Y =   230.099  mm,	Z =   112.543  mm,
	W =    -1.181 deg,	P =    48.937 deg,	R =      .669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1346]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1720.105  mm,	Y =   480.598  mm,	Z =    18.700  mm,
	W =    -1.280 deg,	P =    45.126 deg,	R =    -9.162 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1347]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.914  mm,	Y =   493.599  mm,	Z =   -43.455  mm,
	W =    -3.146 deg,	P =    44.903 deg,	R =   -10.505 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1348]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1620.065  mm,	Y =    18.872  mm,	Z =   -43.513  mm,
	W =   -38.607 deg,	P =    25.135 deg,	R =   -58.570 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1349]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1716.229  mm,	Y =   182.625  mm,	Z =   132.677  mm,
	W =   -40.772 deg,	P =    18.032 deg,	R =   -27.154 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1350]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1801.103  mm,	Y =   268.058  mm,	Z =   232.529  mm,
	W =    47.117 deg,	P =    -2.052 deg,	R =   -98.166 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1351]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1951.397  mm,	Y =     2.544  mm,	Z =    37.986  mm,
	W =    29.524 deg,	P =   -16.700 deg,	R =  -110.691 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    74.999 deg,	J2=   -90.000 deg
};
P[1352]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2030.301  mm,	Y =   113.457  mm,	Z =    15.343  mm,
	W =    25.461 deg,	P =   -23.024 deg,	R =   -99.749 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1353]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2036.770  mm,	Y =   124.431  mm,	Z =    14.497  mm,
	W =    22.341 deg,	P =   -29.710 deg,	R =  -103.127 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1354]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2054.576  mm,	Y =   138.827  mm,	Z =     9.013  mm,
	W =    22.800 deg,	P =   -34.432 deg,	R =  -117.365 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1355]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2376.429  mm,	Y =   293.794  mm,	Z =   -73.316  mm,
	W =    -5.500 deg,	P =   -40.174 deg,	R =   -72.291 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1356]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2391.951  mm,	Y =   307.217  mm,	Z =   -77.744  mm,
	W =     1.457 deg,	P =   -36.015 deg,	R =   -63.555 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1357]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2405.655  mm,	Y =   323.649  mm,	Z =   -81.204  mm,
	W =    10.596 deg,	P =   -31.144 deg,	R =   -55.850 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1358]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2559.173  mm,	Y =   596.177  mm,	Z =  -120.001  mm,
	W =   -17.021 deg,	P =   -28.585 deg,	R =    -8.324 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1359]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2563.234  mm,	Y =   607.295  mm,	Z =  -120.021  mm,
	W =    -7.983 deg,	P =   -30.108 deg,	R =    -3.947 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1360]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2565.326  mm,	Y =   624.907  mm,	Z =  -121.548  mm,
	W =     6.928 deg,	P =   -29.916 deg,	R =   -19.097 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1361]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2551.376  mm,	Y =  1056.254  mm,	Z =  -116.499  mm,
	W =     6.097 deg,	P =   -30.066 deg,	R =     2.834 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    74.998 deg,	J2=   -90.000 deg
};
P[1362]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2448.653  mm,	Y =  1015.496  mm,	Z =    61.125  mm,
	W =     7.047 deg,	P =   -29.835 deg,	R =     3.478 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1363]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1486.213  mm,	Y =   786.102  mm,	Z =   551.453  mm,
	W =   -60.827 deg,	P =   -28.283 deg,	R =    48.470 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1364]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2234.222  mm,	Y =  1185.195  mm,	Z =   220.863  mm,
	W =    10.036 deg,	P =   -28.420 deg,	R =   -20.397 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1365]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2409.709  mm,	Y =  1193.069  mm,	Z =   -77.360  mm,
	W =    10.002 deg,	P =   -28.454 deg,	R =   -20.362 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1366]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2410.536  mm,	Y =  1173.522  mm,	Z =   -78.269  mm,
	W =    10.723 deg,	P =   -28.212 deg,	R =   -20.271 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1367]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2416.768  mm,	Y =  1169.024  mm,	Z =   -81.705  mm,
	W =    10.551 deg,	P =   -24.468 deg,	R =     4.981 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    74.999 deg,	J2=   -90.000 deg
};
P[1368]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2427.010  mm,	Y =  1167.278  mm,	Z =   -87.519  mm,
	W =    39.646 deg,	P =    27.550 deg,	R =   -14.663 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    74.999 deg,	J2=   -90.000 deg
};
P[1369]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2441.825  mm,	Y =  1166.073  mm,	Z =   -89.180  mm,
	W =    39.628 deg,	P =    27.532 deg,	R =   -14.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1370]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2470.501  mm,	Y =  1161.239  mm,	Z =   -97.706  mm,
	W =    38.840 deg,	P =    12.983 deg,	R =   -24.465 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1371]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2500.305  mm,	Y =  1139.803  mm,	Z =  -105.226  mm,
	W =    35.674 deg,	P =     -.854 deg,	R =   -29.753 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1372]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2536.842  mm,	Y =  1100.347  mm,	Z =  -115.023  mm,
	W =    35.543 deg,	P =    -1.138 deg,	R =   -29.936 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1373]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2546.545  mm,	Y =  1081.318  mm,	Z =  -117.080  mm,
	W =    25.189 deg,	P =   -20.016 deg,	R =   -20.921 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1374]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2550.840  mm,	Y =  1055.699  mm,	Z =  -118.307  mm,
	W =    19.755 deg,	P =   -23.078 deg,	R =   -38.813 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1375]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2429.591  mm,	Y =   941.223  mm,	Z =   111.356  mm,
	W =    40.532 deg,	P =   -18.229 deg,	R =   -35.810 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1376]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1135.590  mm,	Y =   941.223  mm,	Z =   631.357  mm,
	W =    40.532 deg,	P =   -18.229 deg,	R =   -35.810 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1377]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   594.691  mm,	Y =   765.878  mm,	Z =  1492.090  mm,
	W =   -20.214 deg,	P =    51.430 deg,	R =  -175.387 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1378]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   897.328  mm,	Y =   -44.116  mm,	Z =  1758.586  mm,
	W =    -8.576 deg,	P =    70.752 deg,	R =  -170.008 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1379]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.676  mm,	Y =  -119.321  mm,	Z =  1258.210  mm,
	W =    -3.043 deg,	P =    35.787 deg,	R =  -167.926 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1380]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2059.608  mm,	Y =  -129.321  mm,	Z =   981.210  mm,
	W =    -3.043 deg,	P =    35.787 deg,	R =  -167.926 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1381]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2081.803  mm,	Y =  -104.576  mm,	Z =   863.928  mm,
	W =    -4.711 deg,	P =    44.807 deg,	R =  -168.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1382]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2076.243  mm,	Y =   -76.244  mm,	Z =   862.598  mm,
	W =    -4.760 deg,	P =    44.804 deg,	R =  -168.727 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1383]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2060.180  mm,	Y =   -62.212  mm,	Z =   862.114  mm,
	W =    -5.900 deg,	P =    44.717 deg,	R =   -77.457 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1384]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2033.586  mm,	Y =   -85.112  mm,	Z =   859.812  mm,
	W =    -1.775 deg,	P =    44.967 deg,	R =    10.202 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1385]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2042.594  mm,	Y =  -111.090  mm,	Z =   859.808  mm,
	W =    -5.461 deg,	P =    44.730 deg,	R =    10.235 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1386]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2072.668  mm,	Y =  -118.651  mm,	Z =   860.814  mm,
	W =    -1.333 deg,	P =    44.974 deg,	R =   112.384 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1387]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2084.006  mm,	Y =  -100.733  mm,	Z =   863.362  mm,
	W =      .144 deg,	P =    45.003 deg,	R =  -161.772 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1388]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2044.049  mm,	Y =  -114.041  mm,	Z =  1004.475  mm,
	W =      .165 deg,	P =    45.000 deg,	R =  -161.765 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1389]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2081.406  mm,	Y =  -215.644  mm,	Z =  1032.770  mm,
	W =    -3.996 deg,	P =    46.100 deg,	R =   -98.107 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1390]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2057.931  mm,	Y =  -158.349  mm,	Z =   860.063  mm,
	W =    -5.604 deg,	P =    44.746 deg,	R =   -97.938 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1391]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2181.282  mm,	Y =  -156.646  mm,	Z =   861.080  mm,
	W =    -5.610 deg,	P =    44.738 deg,	R =   -97.948 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1392]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2222.260  mm,	Y =  -138.497  mm,	Z =   861.141  mm,
	W =    -8.257 deg,	P =    44.429 deg,	R =   -63.806 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1393]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2247.668  mm,	Y =   -98.898  mm,	Z =   862.440  mm,
	W =    -6.114 deg,	P =    44.679 deg,	R =   -22.818 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1394]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.337  mm,	Y =    57.690  mm,	Z =   866.973  mm,
	W =    20.402 deg,	P =    41.026 deg,	R =   -23.468 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1395]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2547.015  mm,	Y =    98.417  mm,	Z =   868.417  mm,
	W =    39.275 deg,	P =    24.127 deg,	R =   -34.882 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1396]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2598.256  mm,	Y =   116.207  mm,	Z =   863.365  mm,
	W =    11.867 deg,	P =    45.051 deg,	R =   -52.690 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1397]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2626.706  mm,	Y =   158.484  mm,	Z =   864.421  mm,
	W =    26.734 deg,	P =    37.663 deg,	R =    -3.650 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1398]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2666.149  mm,	Y =   165.388  mm,	Z =  1006.200  mm,
	W =    23.231 deg,	P =    35.687 deg,	R =   -21.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1399]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2360.151  mm,	Y =    86.388  mm,	Z =   981.215  mm,
	W =    23.231 deg,	P =    35.687 deg,	R =   -21.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1400]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2350.101  mm,	Y =   138.579  mm,	Z =   874.539  mm,
	W =    23.286 deg,	P =    35.713 deg,	R =   -27.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1401]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2284.041  mm,	Y =   104.828  mm,	Z =   873.193  mm,
	W =    23.235 deg,	P =    35.686 deg,	R =   -27.115 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1402]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2318.792  mm,	Y =    59.786  mm,	Z =   930.546  mm,
	W =    22.474 deg,	P =    36.128 deg,	R =   -18.977 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1403]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2383.594  mm,	Y =   190.187  mm,	Z =   944.949  mm,
	W =     2.802 deg,	P =    41.645 deg,	R =    35.577 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1404]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2338.561  mm,	Y =   165.143  mm,	Z =   872.108  mm,
	W =     2.819 deg,	P =    41.634 deg,	R =    35.579 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1405]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2350.265  mm,	Y =   140.419  mm,	Z =   871.898  mm,
	W =     2.806 deg,	P =    41.648 deg,	R =    35.590 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1406]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.447  mm,	Y =   159.675  mm,	Z =   934.277  mm,
	W =     2.802 deg,	P =    41.645 deg,	R =    35.577 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1407]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2237.352  mm,	Y =   151.375  mm,	Z =   981.847  mm,
	W =   -31.407 deg,	P =    29.635 deg,	R =    66.585 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1408]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2268.643  mm,	Y =   130.272  mm,	Z =   874.453  mm,
	W =   -30.491 deg,	P =    30.803 deg,	R =    76.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1409]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2334.675  mm,	Y =   163.679  mm,	Z =   874.552  mm,
	W =   -30.712 deg,	P =    31.401 deg,	R =    76.553 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1410]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2301.976  mm,	Y =   199.747  mm,	Z =   934.083  mm,
	W =   -30.368 deg,	P =    30.111 deg,	R =    93.411 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1411]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1939.340  mm,	Y =   134.263  mm,	Z =   990.229  mm,
	W =   -27.894 deg,	P =    40.770 deg,	R =   134.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1412]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1538.072  mm,	Y =    68.062  mm,	Z =   943.499  mm,
	W =   -27.896 deg,	P =    40.772 deg,	R =   140.108 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1413]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1598.420  mm,	Y =    65.212  mm,	Z =   867.697  mm,
	W =   -27.906 deg,	P =    40.774 deg,	R =   140.097 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1414]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.618  mm,	Y =   567.250  mm,	Z =   869.620  mm,
	W =   -42.379 deg,	P =    24.896 deg,	R =   114.371 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.994 deg,	J2=   -90.001 deg
};
P[1415]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1660.119  mm,	Y =   593.490  mm,	Z =   950.317  mm,
	W =   -47.316 deg,	P =    14.922 deg,	R =   119.101 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1416]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.004  mm,	Y =   511.820  mm,	Z =   999.263  mm,
	W =   -44.984 deg,	P =    18.872 deg,	R =   121.131 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1417]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1749.421  mm,	Y =   289.455  mm,	Z =   974.394  mm,
	W =    -1.202 deg,	P =     4.318 deg,	R =    75.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1418]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.312  mm,	Y =    49.332  mm,	Z =   945.661  mm,
	W =    36.232 deg,	P =    29.646 deg,	R =    39.019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1419]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1622.505  mm,	Y =    65.119  mm,	Z =   870.110  mm,
	W =    36.239 deg,	P =    29.632 deg,	R =    39.026 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.998 deg,	J2=   -90.000 deg
};
P[1420]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.469  mm,	Y =   572.225  mm,	Z =   869.908  mm,
	W =    40.571 deg,	P =    22.639 deg,	R =    50.196 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1421]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1772.810  mm,	Y =   561.424  mm,	Z =   953.851  mm,
	W =    39.352 deg,	P =    13.418 deg,	R =    41.887 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1422]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1146.298  mm,	Y = -1473.938  mm,	Z =  1607.148  mm,
	W =   -45.551 deg,	P =   -20.029 deg,	R =   -44.051 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1423]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2545.462  mm,	Y = -1553.476  mm,	Z =  1146.714  mm,
	W =   -35.769 deg,	P =   -28.014 deg,	R =    20.274 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1424]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2486.860  mm,	Y = -1628.009  mm,	Z =   967.791  mm,
	W =   -35.088 deg,	P =   -31.677 deg,	R =    63.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1425]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2755.354  mm,	Y = -1563.841  mm,	Z =   703.375  mm,
	W =   -35.088 deg,	P =   -31.677 deg,	R =    63.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1426]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2860.518  mm,	Y = -1474.004  mm,	Z =   619.430  mm,
	W =   -11.515 deg,	P =   -49.293 deg,	R =    46.708 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1427]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2861.805  mm,	Y = -1511.751  mm,	Z =   614.512  mm,
	W =   -37.671 deg,	P =   -31.187 deg,	R =    57.797 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1428]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2846.945  mm,	Y = -1554.557  mm,	Z =   608.687  mm,
	W =   -41.709 deg,	P =   -23.013 deg,	R =    48.917 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1429]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2817.070  mm,	Y = -1584.013  mm,	Z =   601.641  mm,
	W =   -37.085 deg,	P =   -21.237 deg,	R =    24.447 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1430]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2760.403  mm,	Y = -1616.161  mm,	Z =   596.052  mm,
	W =   -37.129 deg,	P =   -21.189 deg,	R =    22.320 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1431]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2701.350  mm,	Y = -1572.365  mm,	Z =   665.669  mm,
	W =   -43.039 deg,	P =   -10.740 deg,	R =    31.361 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1432]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2604.020  mm,	Y = -1663.100  mm,	Z =   852.581  mm,
	W =  -106.889 deg,	P =    58.736 deg,	R =    44.006 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1433]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2652.666  mm,	Y = -1671.679  mm,	Z =   674.601  mm,
	W =    47.958 deg,	P =    12.926 deg,	R =   -63.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1434]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2762.218  mm,	Y = -1619.799  mm,	Z =   593.853  mm,
	W =    49.059 deg,	P =    13.941 deg,	R =   -64.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1435]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2778.298  mm,	Y = -1646.308  mm,	Z =   589.867  mm,
	W =    49.121 deg,	P =    13.967 deg,	R =   -64.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1436]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2710.694  mm,	Y = -1669.180  mm,	Z =   631.558  mm,
	W =    48.076 deg,	P =     9.473 deg,	R =   -69.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1437]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2442.025  mm,	Y = -1810.445  mm,	Z =  1068.442  mm,
	W =    50.396 deg,	P =     5.479 deg,	R =   -69.123 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1438]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1897.508  mm,	Y = -1522.490  mm,	Z =  2080.903  mm,
	W =    58.754 deg,	P =   -40.157 deg,	R =   -73.858 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
/END
