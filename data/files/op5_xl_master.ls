/PROG  OP5_XL_MASTER
/ATTR
OWNER		= SHIFT;
COMMENT		= "XL Main Prog";
PROG_SIZE	= 81377;
CREATE		= DATE 25-11-17  TIME 10:12:48;
MODIFIED	= DATE 26-02-12  TIME 09:04:14;
FILE_NAME	= OP5_XL_M;
VERSION		= 0;
LINE_COUNT	= 1858;
MEMORY_SIZE	= 81929;
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
   2:  !-           FRAME XL           - ;
   3:  !******** FR500 CELL: C ********* ;
   4:   ;
   5:  CALL HOME    ;
   6:  CALL LOAD_POS    ;
   7:  UFRAME_NUM[GP2]=0 ;
   8:   ;
   9:  !********POSITIONER MOVE******** ;
  10:J P[1] 60% FINE    ;
  11:   ;
  12:L P[2] 1000mm/sec CNT25    ;
  13:   ;
  14:  !FR50X1000 ;
  15:  IF R[15]=1003,CALL TECH_HOLD ;
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
  24:L P[5] 1000mm/sec CNT50    ;
  25:   ;
  26:L P[6] 1000mm/sec CNT50    ;
  27:   ;
  28:   ;
  29:  !FR50X1010 ;
  30:  IF R[15]=1013,CALL TECH_HOLD ;
  31:   ;
  32:L P[7] 800mm/sec FINE
    :  Arc Start[6]    ;
  33:  Weave Sine[6] ;
  34:  Track TAST[6] ;
  35:L P[8] WELD_SPEED FINE
    :  Arc End[6]    ;
  36:  Weave End ;
  37:  Track End ;
  38:   ;
  39:L P[9] 1000mm/sec CNT25    ;
  40:   ;
  41:  !FR50X1020 ;
  42:  IF R[15]=1023,CALL TECH_HOLD ;
  43:   ;
  44:L P[10] 800mm/sec FINE
    :  Arc Start[6]    ;
  45:  Weave Sine[6] ;
  46:  Track TAST[6] ;
  47:L P[11] WELD_SPEED CNT100    ;
  48:L P[12] WELD_SPEED FINE
    :  Arc End[6]    ;
  49:  Weave End ;
  50:  Track End ;
  51:   ;
  52:L P[13] 1000mm/sec CNT25    ;
  53:   ;
  54:J P[14] 50% CNT25    ;
  55:   ;
  56:  !HOME ;
  57:J P[15] 75% CNT25    ;
  58:   ;
  59:  !********POSITIONER MOVE******** ;
  60:J P[16] 75% FINE    ;
  61:   ;
  62:J P[17] 50% CNT100    ;
  63:   ;
  64:J P[18] 50% CNT25    ;
  65:   ;
  66:  !FR50X1030 ;
  67:  IF R[15]=1033,CALL TECH_HOLD ;
  68:   ;
  69:L P[19] 800mm/sec FINE
    :  Arc Start[6]    ;
  70:  Weave Sine[6] ;
  71:  Track TAST[6] ;
  72:L P[20] WELD_SPEED FINE
    :  Arc End[6]    ;
  73:  Weave End ;
  74:  Track End ;
  75:   ;
  76:L P[21] 1000mm/sec CNT25    ;
  77:   ;
  78:J P[22] 50% CNT25    ;
  79:   ;
  80:L P[23] 1000mm/sec CNT25    ;
  81:   ;
  82:  !FR50X1040 ;
  83:  IF R[15]=1043,CALL TECH_HOLD ;
  84:   ;
  85:L P[24] 800mm/sec FINE
    :  Arc Start[6]    ;
  86:  Weave Sine[6] ;
  87:  Track TAST[6] ;
  88:L P[25] WELD_SPEED FINE
    :  Arc End[6]    ;
  89:  Weave End ;
  90:  Track End ;
  91:   ;
  92:L P[26] 960mm/sec CNT25    ;
  93:   ;
  94:J P[27] 50% CNT25    ;
  95:   ;
  96:   ;
  97:L P[28] 1000mm/sec CNT25    ;
  98:   ;
  99:  !FR50X1050 ;
 100:  IF R[15]=1053,CALL TECH_HOLD ;
 101:   ;
 102:L P[29] 800mm/sec FINE
    :  Arc Start[6]    ;
 103:  Weave Sine[6] ;
 104:  Track TAST[6] ;
 105:L P[30] WELD_SPEED CNT100    ;
 106:L P[31] WELD_SPEED FINE
    :  Arc End[6]    ;
 107:  Weave End ;
 108:  Track End ;
 109:   ;
 110:L P[32] 960mm/sec CNT25    ;
 111:   ;
 112:J P[33] 50% CNT25    ;
 113:   ;
 114:L P[34] 1000mm/sec CNT25    ;
 115:   ;
 116:  !FR50X1060 ;
 117:  IF R[15]=1063,CALL TECH_HOLD ;
 118:   ;
 119:L P[35] 800mm/sec FINE
    :  Arc Start[6]    ;
 120:  Weave Sine[6] ;
 121:  Track TAST[6] ;
 122:L P[36] WELD_SPEED CNT100    ;
 123:L P[37] WELD_SPEED FINE
    :  Arc End[6]    ;
 124:  Weave End ;
 125:  Track End ;
 126:   ;
 127:L P[38] 1000mm/sec CNT25    ;
 128:   ;
 129:J P[39] 50% CNT25    ;
 130:   ;
 131:L P[40] 1000mm/sec CNT25    ;
 132:   ;
 133:  !FR50X1070 ;
 134:  IF R[15]=1073,CALL TECH_HOLD ;
 135:   ;
 136:L P[41] 500mm/sec FINE
    :  Arc Start[6]    ;
 137:  Weave Sine[6] ;
 138:  Track TAST[6] ;
 139:L P[42] WELD_SPEED CNT100    ;
 140:L P[43] WELD_SPEED CNT100    ;
 141:L P[44] WELD_SPEED FINE
    :  Arc End[6]    ;
 142:  Weave End ;
 143:  Track End ;
 144:   ;
 145:L P[45] 700mm/sec CNT25    ;
 146:   ;
 147:L P[46] 1000mm/sec CNT50    ;
 148:   ;
 149:  !FR50X1080 ;
 150:  IF R[15]=1083,CALL TECH_HOLD ;
 151:   ;
 152:L P[47] 800mm/sec FINE
    :  Arc Start[6]    ;
 153:  Weave Sine[6] ;
 154:  Track TAST[6] ;
 155:L P[48] WELD_SPEED FINE
    :  Arc End[6]    ;
 156:  Weave End ;
 157:  Track End ;
 158:   ;
 159:L P[49] 1000mm/sec CNT25    ;
 160:   ;
 161:L P[50] 960mm/sec CNT25    ;
 162:   ;
 163:J P[51] 50% CNT25    ;
 164:   ;
 165:L P[52] 1000mm/sec CNT25    ;
 166:   ;
 167:  !FR50X1090 ;
 168:  IF R[15]=1093,CALL TECH_HOLD ;
 169:   ;
 170:L P[53] 800mm/sec FINE
    :  Arc Start[6]    ;
 171:  Weave Sine[6] ;
 172:  Track TAST[6] ;
 173:L P[54] WELD_SPEED CNT100    ;
 174:L P[55] WELD_SPEED CNT100    ;
 175:L P[56] WELD_SPEED FINE
    :  Arc End[6]    ;
 176:  Weave End ;
 177:  Track End ;
 178:   ;
 179:L P[57] 1000mm/sec CNT25    ;
 180:   ;
 181:L P[58] 1000mm/sec CNT50    ;
 182:   ;
 183:  !FR50X1100 ;
 184:  IF R[15]=1103,CALL TECH_HOLD ;
 185:   ;
 186:L P[59] 800mm/sec FINE
    :  Arc Start[6]    ;
 187:  Weave Sine[6] ;
 188:  Track TAST[6] ;
 189:L P[60] WELD_SPEED FINE
    :  Arc End[6]    ;
 190:  Weave End ;
 191:  Track End ;
 192:   ;
 193:L P[61] 1000mm/sec CNT25    ;
 194:   ;
 195:J P[62] 50% CNT25    ;
 196:   ;
 197:L P[63] 1000mm/sec CNT25    ;
 198:   ;
 199:  !FR50X1110 ;
 200:  IF R[15]=1113,CALL TECH_HOLD ;
 201:   ;
 202:L P[64] 800mm/sec FINE
    :  Arc Start[8]    ;
 203:  Weave Sine[8] ;
 204:L P[65] WELD_SPEED CNT100    ;
 205:L P[66] WELD_SPEED FINE
    :  Arc End[8]    ;
 206:  Weave End ;
 207:   ;
 208:L P[67] 800mm/sec CNT25    ;
 209:   ;
 210:J P[68] 50% CNT25    ;
 211:   ;
 212:  !********POSITIONER MOVE******** ;
 213:J P[69] 75% FINE    ;
 214:   ;
 215:  !FR50X1120 ;
 216:  IF R[15]=1123,CALL TECH_HOLD ;
 217:   ;
 218:L P[70] 800mm/sec FINE
    :  Arc Start[8]    ;
 219:  Weave Sine[8] ;
 220:L P[71] WELD_SPEED FINE
    :  Arc End[8]    ;
 221:  Weave End ;
 222:   ;
 223:L P[72] 1000mm/sec CNT25    ;
 224:   ;
 225:J P[73] 50% CNT25    ;
 226:   ;
 227:  !HOME ;
 228:J P[74] 100% FINE    ;
 229:   ;
 230:  !********POSITIONER MOVE******** ;
 231:J P[75] 60% FINE    ;
 232:   ;
 233:J P[76] 50% CNT25    ;
 234:   ;
 235:L P[77] 1000mm/sec CNT25    ;
 236:   ;
 237:L P[78] 500mm/sec CNT25    ;
 238:   ;
 239:  !FR50X1130 ;
 240:  IF R[15]=1133,CALL TECH_HOLD ;
 241:   ;
 242:L P[79] 400mm/sec FINE
    :  Arc Start[6]    ;
 243:  Weave Sine[6] ;
 244:L P[80] WELD_SPEED FINE
    :  Arc End[6]    ;
 245:  Weave End ;
 246:   ;
 247:L P[81] 500mm/sec CNT25    ;
 248:   ;
 249:L P[82] 1000mm/sec CNT25    ;
 250:   ;
 251:J P[83] 40% CNT25    ;
 252:   ;
 253:J P[84] 50% CNT25    ;
 254:   ;
 255:  !HOME ;
 256:J P[85] 100% FINE    ;
 257:   ;
 258:  !********POSITIONER MOVE******** ;
 259:J P[86] 70% FINE    ;
 260:   ;
 261:J P[87] 50% CNT25    ;
 262:   ;
 263:L P[88] 1000mm/sec CNT25    ;
 264:   ;
 265:L P[89] 1000mm/sec CNT25    ;
 266:   ;
 267:  !FR50X1140 ;
 268:  IF R[15]=1143,CALL TECH_HOLD ;
 269:   ;
 270:L P[90] 700mm/sec FINE
    :  Arc Start[6]    ;
 271:  Weave Sine[6] ;
 272:  Track TAST[6] ;
 273:L P[91] WELD_SPEED CNT100    ;
 274:L P[92] WELD_SPEED FINE
    :  Arc End[6]    ;
 275:  Weave End ;
 276:  Track End ;
 277:   ;
 278:L P[93] 1000mm/sec CNT25    ;
 279:   ;
 280:L P[94] 1000mm/sec CNT25    ;
 281:   ;
 282:L P[95] 1000mm/sec CNT25    ;
 283:   ;
 284:J P[96] 50% CNT25    ;
 285:   ;
 286:L P[97] 1000mm/sec CNT25    ;
 287:   ;
 288:  !FR50X1150 ;
 289:  IF R[15]=1153,CALL TECH_HOLD ;
 290:   ;
 291:L P[98] 1000mm/sec FINE
    :  Arc Start[6]    ;
 292:  Weave Sine[6] ;
 293:  Track TAST[6] ;
 294:L P[99] WELD_SPEED CNT100    ;
 295:L P[100] WELD_SPEED FINE
    :  Arc End[6]    ;
 296:  Weave End ;
 297:  Track End ;
 298:   ;
 299:L P[101] 1000mm/sec CNT25    ;
 300:   ;
 301:L P[102] 1000mm/sec CNT25    ;
 302:   ;
 303:  !********POSITIONER MOVE******** ;
 304:J P[103] 75% FINE    ;
 305:   ;
 306:L P[104] 1000mm/sec CNT25    ;
 307:   ;
 308:L P[105] 1000mm/sec CNT25    ;
 309:   ;
 310:  !FR50X1160 ;
 311:  IF R[15]=1163,CALL TECH_HOLD ;
 312:   ;
 313:L P[106] 1000mm/sec FINE
    :  Arc Start[6]    ;
 314:  Weave Sine[6] ;
 315:  Track TAST[6] ;
 316:L P[107] WELD_SPEED FINE
    :  Arc End[6]    ;
 317:  Weave End ;
 318:  Track End ;
 319:   ;
 320:L P[108] 1000mm/sec CNT25    ;
 321:   ;
 322:  !FR50X1170 ;
 323:  IF R[15]=1173,CALL TECH_HOLD ;
 324:   ;
 325:L P[109] 1000mm/sec FINE
    :  Arc Start[6]    ;
 326:  Weave Sine[6] ;
 327:  Track TAST[6] ;
 328:L P[110] WELD_SPEED FINE
    :  Arc End[6]    ;
 329:  Weave End ;
 330:  Track End ;
 331:   ;
 332:L P[111] 1000mm/sec CNT25    ;
 333:   ;
 334:L P[112] 1000mm/sec CNT25    ;
 335:   ;
 336:  !FR50X1180 ;
 337:  IF R[15]=1183,CALL TECH_HOLD ;
 338:   ;
 339:L P[113] 1000mm/sec FINE
    :  Arc Start[6]    ;
 340:  Weave Sine[6] ;
 341:  Track TAST[6] ;
 342:L P[114] WELD_SPEED FINE
    :  Arc End[6]    ;
 343:  Weave End ;
 344:  Track End ;
 345:   ;
 346:L P[115] 1000mm/sec CNT25    ;
 347:   ;
 348:L P[116] 1000mm/sec CNT25    ;
 349:   ;
 350:  !FR50X1190 ;
 351:  IF R[15]=1193,CALL TECH_HOLD ;
 352:   ;
 353:L P[117] 1000mm/sec FINE
    :  Arc Start[6]    ;
 354:  Weave Sine[6] ;
 355:  Track TAST[6] ;
 356:L P[118] WELD_SPEED FINE
    :  Arc End[6]    ;
 357:  Weave End ;
 358:  Track End ;
 359:   ;
 360:L P[119] 1000mm/sec CNT25    ;
 361:   ;
 362:L P[120] 1000mm/sec CNT25    ;
 363:   ;
 364:  !FR50X1200 ;
 365:  IF R[15]=1203,CALL TECH_HOLD ;
 366:   ;
 367:L P[121] 1000mm/sec FINE
    :  Arc Start[6]    ;
 368:  Weave Sine[6] ;
 369:  Track TAST[6] ;
 370:L P[122] WELD_SPEED FINE
    :  Arc End[6]    ;
 371:  Weave End ;
 372:  Track End ;
 373:   ;
 374:L P[123] 1000mm/sec CNT25    ;
 375:   ;
 376:L P[124] 1000mm/sec CNT25    ;
 377:   ;
 378:J P[125] 50% CNT25    ;
 379:   ;
 380:  !********POSITIONER MOVE******** ;
 381:J P[126] 75% FINE    ;
 382:   ;
 383:L P[127] 1000mm/sec CNT25    ;
 384:   ;
 385:  !FR50X1210 ;
 386:  IF R[15]=1213,CALL TECH_HOLD ;
 387:   ;
 388:L P[128] 500mm/sec FINE
    :  Arc Start[6]    ;
 389:  Weave Sine[6] ;
 390:  Track TAST[6] ;
 391:L P[129] WELD_SPEED FINE
    :  Arc End[6]    ;
 392:  Weave End ;
 393:  Track End ;
 394:   ;
 395:L P[130] 500mm/sec CNT25    ;
 396:   ;
 397:L P[131] 1000mm/sec FINE    ;
 398:   ;
 399:J P[132] 50% CNT25    ;
 400:   ;
 401:  !********POSITIONER MOVE******** ;
 402:J P[133] 75% FINE    ;
 403:   ;
 404:J P[134] 50% CNT25    ;
 405:   ;
 406:L P[135] 1000mm/sec CNT25    ;
 407:   ;
 408:  !FR50X1220 ;
 409:  IF R[15]=1223,CALL TECH_HOLD ;
 410:   ;
 411:L P[136] 1000mm/sec FINE
    :  Arc Start[6]    ;
 412:  Weave Sine[6] ;
 413:  Track TAST[6] ;
 414:L P[137] WELD_SPEED FINE
    :  Arc End[6]    ;
 415:  Weave End ;
 416:  Track End ;
 417:   ;
 418:L P[138] 500mm/sec CNT25    ;
 419:   ;
 420:J P[139] 50% CNT25    ;
 421:   ;
 422:J P[140] 50% CNT25    ;
 423:   ;
 424:  !HOME ;
 425:J P[141] 100% FINE    ;
 426:   ;
 427:  !********POSITIONER MOVE******** ;
 428:J P[142] 75% FINE    ;
 429:   ;
 430:  !TORCH CLEAN ;
 431:  CALL T_CLEAN    ;
 432:   ;
 433:   ;
 434:J P[143] 50% CNT25    ;
 435:   ;
 436:L P[144] 960mm/sec CNT25    ;
 437:   ;
 438:  !FR50X1230 ;
 439:  IF R[15]=1233,CALL TECH_HOLD ;
 440:   ;
 441:L P[145] 800mm/sec FINE
    :  Arc Start[6]    ;
 442:  Weave Sine[6] ;
 443:  Track TAST[6] ;
 444:L P[146] WELD_SPEED FINE
    :  Arc End[6]    ;
 445:  Weave End ;
 446:  Track End ;
 447:   ;
 448:L P[147] 960mm/sec CNT25    ;
 449:   ;
 450:J P[148] 50% CNT25    ;
 451:   ;
 452:  !FR50X1240 ;
 453:  IF R[15]=1243,CALL TECH_HOLD ;
 454:   ;
 455:L P[149] 800mm/sec FINE
    :  Arc Start[3]    ;
 456:L P[150] WELD_SPEED CNT100    ;
 457:L P[151] WELD_SPEED FINE
    :  Arc End[3]    ;
 458:   ;
 459:L P[152] 1000mm/sec CNT25    ;
 460:   ;
 461:L P[153] 500mm/sec CNT25    ;
 462:   ;
 463:  //UALM[20] ;
 464:   ;
 465:  !FR50X1250 ;
 466:  IF R[15]=1253,CALL TECH_HOLD ;
 467:   ;
 468:L P[154] 800mm/sec FINE
    :  Arc Start[3]    ;
 469:L P[155] WELD_SPEED CNT100    ;
 470:L P[156] WELD_SPEED FINE
    :  Arc End[3]    ;
 471:   ;
 472:L P[157] 1000mm/sec CNT25    ;
 473:   ;
 474:J P[158] 50% CNT25    ;
 475:   ;
 476:L P[159] 1000mm/sec CNT25    ;
 477:   ;
 478:  !FR50X1260 ;
 479:  IF R[15]=1263,CALL TECH_HOLD ;
 480:   ;
 481:L P[160] 800mm/sec FINE
    :  Arc Start[6]    ;
 482:  Weave Sine[6] ;
 483:  Track TAST[6] ;
 484:L P[161] WELD_SPEED FINE
    :  Arc End[6]    ;
 485:  Track End ;
 486:  Weave End ;
 487:   ;
 488:L P[162] 1000mm/sec CNT25    ;
 489:   ;
 490:L P[163] 1000mm/sec CNT25    ;
 491:   ;
 492:L P[164] 1000mm/sec CNT25    ;
 493:   ;
 494:  !FR50X1270 ;
 495:  IF R[15]=1273,CALL TECH_HOLD ;
 496:   ;
 497:L P[165] 800mm/sec FINE
    :  Arc Start[6]    ;
 498:  Weave Sine[6] ;
 499:  Track TAST[6] ;
 500:L P[166] WELD_SPEED FINE
    :  Arc End[6]    ;
 501:  Weave End ;
 502:  Track End ;
 503:   ;
 504:L P[167] 1000mm/sec CNT25    ;
 505:   ;
 506:J P[168] 50% CNT25    ;
 507:   ;
 508:  !********POSITIONER MOVE******** ;
 509:J P[169] 75% FINE    ;
 510:   ;
 511:L P[170] 1000mm/sec CNT25    ;
 512:   ;
 513:  !FR50X1280 ;
 514:  IF R[15]=1283,CALL TECH_HOLD ;
 515:   ;
 516:L P[171] 1000mm/sec FINE
    :  Arc Start[6]    ;
 517:  Weave Sine[6] ;
 518:  Track TAST[6] ;
 519:L P[172] WELD_SPEED FINE
    :  Arc End[6]    ;
 520:  Weave End ;
 521:  Track End ;
 522:   ;
 523:L P[173] 500mm/sec CNT25    ;
 524:   ;
 525:L P[174] 1000mm/sec CNT25    ;
 526:   ;
 527:L P[175] 1000mm/sec FINE    ;
 528:   ;
 529:  !********POSITIONER MOVE******** ;
 530:J P[176] 75% FINE    ;
 531:   ;
 532:L P[177] 1000mm/sec CNT25    ;
 533:   ;
 534:  !FR50X1290 ;
 535:  IF R[15]=1293,CALL TECH_HOLD ;
 536:   ;
 537:L P[178] 800mm/sec FINE
    :  Arc Start[6]    ;
 538:  Weave Sine[6] ;
 539:  Track TAST[6] ;
 540:L P[179] WELD_SPEED FINE
    :  Arc End[6]    ;
 541:  Weave End ;
 542:  Track End ;
 543:   ;
 544:L P[180] 300mm/sec FINE    ;
 545:   ;
 546:L P[181] 1000mm/sec FINE    ;
 547:   ;
 548:J P[182] 50% CNT25    ;
 549:   ;
 550:  !HOME ;
 551:J P[183] 100% FINE    ;
 552:   ;
 553:  !********POSITIONER MOVE******** ;
 554:J P[184] 75% FINE    ;
 555:   ;
 556:J P[185] 50% CNT25    ;
 557:   ;
 558:   ;
 559:  !FR50X1300 ;
 560:  IF R[15]=1303,CALL TECH_HOLD ;
 561:   ;
 562:   ;
 563:L P[186] 800mm/sec FINE
    :  Arc Start[6]    ;
 564:  Weave Sine[6] ;
 565:  Track TAST[6] ;
 566:L P[187] WELD_SPEED FINE
    :  Arc End[6]    ;
 567:  Weave End ;
 568:  Track End ;
 569:   ;
 570:L P[188] 1000mm/sec CNT25    ;
 571:   ;
 572:L P[189] 1000mm/sec CNT30    ;
 573:   ;
 574:  !FR50X1310 ;
 575:  IF R[15]=1313,CALL TECH_HOLD ;
 576:   ;
 577:L P[190] 800mm/sec FINE
    :  Arc Start[6]    ;
 578:  Weave Sine[6] ;
 579:  Track TAST[6] ;
 580:L P[191] WELD_SPEED FINE
    :  Arc End[6]    ;
 581:  Weave End ;
 582:  Track End ;
 583:   ;
 584:L P[192] 1000mm/sec CNT25    ;
 585:   ;
 586:  !FR50X1320 ;
 587:  IF R[15]=1323,CALL TECH_HOLD ;
 588:   ;
 589:L P[194] 800mm/sec FINE
    :  Arc Start[6]    ;
 590:  Weave Sine[6] ;
 591:  Track TAST[6] ;
 592:L P[195] WELD_SPEED FINE
    :  Arc End[6]    ;
 593:  Weave End ;
 594:  Track End ;
 595:   ;
 596:L P[196] 1000mm/sec CNT25    ;
 597:   ;
 598:  !********POSITIONER MOVE******** ;
 599:J P[197] 100% CNT25    ;
 600:   ;
 601:L P[198] 1000mm/sec CNT25    ;
 602:   ;
 603:  CALL ARC_DISABLE_RH_LS(0) ;
 604:   ;
 605:  //UALM[20] ;
 606:   ;
 607:  !FR50X1330 ;
 608:  IF R[15]=1333,CALL TECH_HOLD ;
 609:   ;
 610:L P[199] 800mm/sec FINE
    :  Arc Start[8]    ;
 611:  Weave Sine[8] ;
 612:L P[200] WELD_SPEED FINE
    :  Arc End[8]    ;
 613:  Weave End ;
 614:   ;
 615:L P[201] 800mm/sec FINE    ;
 616:   ;
 617:L P[202] 1000mm/sec CNT25    ;
 618:   ;
 619:J P[203] 50% CNT25    ;
 620:   ;
 621:  !FR50X1340 ;
 622:  !LENGTH: 57mm ;
 623:  IF R[15]=1343,CALL TECH_HOLD ;
 624:   ;
 625:L P[204] 800mm/sec FINE
    :  Arc Start[8]    ;
 626:  Weave Sine[8] ;
 627:L P[205] WELD_SPEED FINE
    :  Arc End[8]    ;
 628:  Weave End ;
 629:   ;
 630:  CALL ARC_DISABLE_RH_LS(1) ;
 631:   ;
 632:L P[206] 800mm/sec CNT5    ;
 633:   ;
 634:  !********POSITIONER MOVE******** ;
 635:J P[207] 50% CNT25    ;
 636:   ;
 637:J P[208] 50% CNT25    ;
 638:   ;
 639:J P[209] 25% CNT25    ;
 640:   ;
 641:  DO[89:OFF:Inch backward   ]=PULSE,0.8sec ;
 642:   ;
 643:  CALL ARC_LH_DISABLE_LS(0) ;
 644:   ;
 645:  !FR50X1350 ;
 646:  IF R[15]=1353,CALL TECH_HOLD ;
 647:   ;
 648:L P[210] 500mm/sec FINE
    :  Arc Start[8]    ;
 649:  Weave Sine[8] ;
 650:L P[211] WELD_SPEED FINE
    :  Arc End[8]    ;
 651:  Weave End ;
 652:   ;
 653:L P[212] 100mm/sec CNT5    ;
 654:   ;
 655:L P[213] 1000mm/sec CNT25    ;
 656:   ;
 657:J P[214] 100% CNT25    ;
 658:   ;
 659:  !FR50X1360 ;
 660:  !LENGTH: 57mm ;
 661:  IF R[15]=1363,CALL TECH_HOLD ;
 662:   ;
 663:L P[215] 800mm/sec FINE
    :  Arc Start[8]    ;
 664:  Weave Sine[8] ;
 665:L P[216] WELD_SPEED FINE
    :  Arc End[8]    ;
 666:  Weave End ;
 667:   ;
 668:  CALL ARC_LH_DISABLE_LS(1) ;
 669:   ;
 670:L P[217] 100mm/sec CNT25    ;
 671:   ;
 672:J P[218] 100% CNT25    ;
 673:   ;
 674:  !HOME ;
 675:J P[219] 100% FINE    ;
 676:   ;
 677:  !********POSITIONER MOVE******** ;
 678:J P[220] 75% FINE    ;
 679:   ;
 680:J P[221] 50% CNT25    ;
 681:   ;
 682:J P[222] 50% CNT25    ;
 683:   ;
 684:   ;
 685:L P[193] 1000mm/sec CNT25    ;
 686:   ;
 687:  !FR50X1370 ;
 688:  IF R[15]=1373,CALL TECH_HOLD ;
 689:   ;
 690:L P[672] 800mm/sec FINE
    :  Arc Start[6]    ;
 691:  Weave Sine[6] ;
 692:L P[673] WELD_SPEED FINE
    :  Arc End[6]    ;
 693:  Weave End ;
 694:   ;
 695:L P[674] 1000mm/sec CNT25    ;
 696:   ;
 697:J P[675] 50% CNT25    ;
 698:   ;
 699:L P[676] 800mm/sec CNT10    ;
 700:   ;
 701:  !FR50X1380 ;
 702:  IF R[15]=1383,CALL TECH_HOLD ;
 703:   ;
 704:L P[677] 800mm/sec FINE
    :  Arc Start[6]    ;
 705:  Weave Sine[6] ;
 706:L P[678] WELD_SPEED FINE
    :  Arc End[6]    ;
 707:  Weave End ;
 708:   ;
 709:L P[679] 1000mm/sec CNT25    ;
 710:   ;
 711:J P[680] 50% CNT25    ;
 712:   ;
 713:L P[681] 500mm/sec CNT25    ;
 714:   ;
 715:  !FR50X1390 ;
 716:  IF R[15]=1393,CALL TECH_HOLD ;
 717:   ;
 718:L P[682] 800mm/sec FINE
    :  Arc Start[6]    ;
 719:  Weave Sine[6] ;
 720:L P[683] WELD_SPEED FINE
    :  Arc End[6]    ;
 721:  Weave End ;
 722:   ;
 723:L P[684] 500mm/sec CNT25    ;
 724:   ;
 725:J P[685] 50% CNT25    ;
 726:   ;
 727:J P[686] 50% CNT25    ;
 728:   ;
 729:J P[687] 50% CNT30    ;
 730:   ;
 731:   ;
 732:   ;
 733:  !FR50X1400 ;
 734:  IF R[15]=1403,CALL TECH_HOLD ;
 735:   ;
 736:L P[688] 800mm/sec FINE
    :  Arc Start[6]    ;
 737:  Weave Sine[6] ;
 738:  Track TAST[6] ;
 739:L P[689] WELD_SPEED FINE
    :  Arc End[6]    ;
 740:  Weave End ;
 741:  Track End ;
 742:   ;
 743:L P[690] 1000mm/sec CNT25    ;
 744:   ;
 745:L P[691] 1000mm/sec CNT25    ;
 746:   ;
 747:  !FR50X1410 ;
 748:  IF R[15]=1413,CALL TECH_HOLD ;
 749:   ;
 750:L P[692] 800mm/sec FINE
    :  Arc Start[6]    ;
 751:  Weave Sine[6] ;
 752:  Track TAST[6] ;
 753:L P[693] WELD_SPEED FINE
    :  Arc End[6]    ;
 754:  Weave End ;
 755:  Track End ;
 756:   ;
 757:L P[694] 1000mm/sec CNT25    ;
 758:   ;
 759:J P[695] 50% CNT25    ;
 760:   ;
 761:   ;
 762:  !FR50X1420 ;
 763:  IF R[15]=1423,CALL TECH_HOLD ;
 764:   ;
 765:L P[696] 800mm/sec FINE
    :  Arc Start[6]    ;
 766:  Weave Sine[6] ;
 767:  Track TAST[6] ;
 768:L P[697] WELD_SPEED CNT100    ;
 769:C P[698]    
    :  P[699] WELD_SPEED FINE
    :  Arc End[6]    ;
 770:  Weave End ;
 771:  Track End ;
 772:   ;
 773:L P[700] 1000mm/sec CNT25    ;
 774:   ;
 775:J P[701] 50% CNT25    ;
 776:   ;
 777:J P[702] 50% CNT25    ;
 778:   ;
 779:   ;
 780:   ;
 781:  !FR50X1430 ;
 782:  IF R[15]=1433,CALL TECH_HOLD ;
 783:   ;
 784:L P[703] 800mm/sec FINE
    :  Arc Start[6]    ;
 785:  Weave Sine[6] ;
 786:  Track TAST[6] ;
 787:L P[704] WELD_SPEED FINE
    :  Arc End[6]    ;
 788:  Track End ;
 789:  Weave End ;
 790:   ;
 791:L P[705] 1000mm/sec CNT25    ;
 792:   ;
 793:L P[706] 1000mm/sec CNT25    ;
 794:   ;
 795:  !FR50X1440 ;
 796:  IF R[15]=1443,CALL TECH_HOLD ;
 797:   ;
 798:L P[707] 800mm/sec FINE
    :  Arc Start[6]    ;
 799:  Weave Sine[6] ;
 800:  Track TAST[6] ;
 801:L P[708] WELD_SPEED FINE
    :  Arc End[6]    ;
 802:  Weave End ;
 803:  Track End ;
 804:   ;
 805:L P[709] 1000mm/sec CNT25    ;
 806:   ;
 807:J P[710] 50% CNT25    ;
 808:   ;
 809:  //UALM[20] ;
 810:  //--eg:TOUCH UP ;
 811:   ;
 812:  !FR50X1450 ;
 813:  IF R[15]=1453,CALL TECH_HOLD ;
 814:   ;
 815:L P[711] 800mm/sec FINE
    :  Arc Start[6]    ;
 816:  Weave Sine[6] ;
 817:  Track TAST[6] ;
 818:L P[712] WELD_SPEED CNT100    ;
 819:C P[713]    
    :  P[714] WELD_SPEED FINE
    :  Arc End[6]    ;
 820:  Weave End ;
 821:  Track End ;
 822:   ;
 823:L P[715] 960mm/sec FINE    ;
 824:   ;
 825:J P[716] 50% CNT25    ;
 826:   ;
 827:L P[717] 1000mm/sec CNT25    ;
 828:   ;
 829:  !FR50X1460 ;
 830:  IF R[15]=1463,CALL TECH_HOLD ;
 831:   ;
 832:L P[718] 800mm/sec FINE
    :  Arc Start[6]    ;
 833:  Weave Sine[6] ;
 834:  Track TAST[6] ;
 835:L P[719] WELD_SPEED FINE
    :  Arc End[6]    ;
 836:  Weave End ;
 837:  Track End ;
 838:   ;
 839:L P[720] 1000mm/sec CNT25    ;
 840:   ;
 841:L P[721] 1000mm/sec CNT25    ;
 842:   ;
 843:L P[722] 1000mm/sec CNT25    ;
 844:   ;
 845:L P[723] 1000mm/sec CNT25    ;
 846:   ;
 847:  !FR50X1470 ;
 848:  IF R[15]=1473,CALL TECH_HOLD ;
 849:   ;
 850:L P[724] 200mm/sec FINE
    :  Arc Start[6]    ;
 851:  Weave Sine[6] ;
 852:  Track TAST[6] ;
 853:L P[725] WELD_SPEED FINE
    :  Arc End[6]    ;
 854:  Weave End ;
 855:  Track End ;
 856:   ;
 857:L P[726] 200mm/sec CNT25    ;
 858:   ;
 859:L P[727] 1000mm/sec FINE    ;
 860:   ;
 861:J P[728] 50% FINE    ;
 862:   ;
 863:L P[729] 1000mm/sec CNT25    ;
 864:   ;
 865:  !FR50X1480 ;
 866:  IF R[15]=1483,CALL TECH_HOLD ;
 867:   ;
 868:L P[730] 800mm/sec FINE
    :  Arc Start[6]    ;
 869:  Weave Sine[6] ;
 870:  Track TAST[6] ;
 871:L P[731] WELD_SPEED FINE
    :  Arc End[6]    ;
 872:  Weave End ;
 873:  Track End ;
 874:   ;
 875:L P[732] 1000mm/sec CNT25    ;
 876:   ;
 877:L P[733] 500mm/sec CNT25    ;
 878:   ;
 879:L P[734] 500mm/sec CNT25    ;
 880:   ;
 881:  !FR50X1490 ;
 882:  IF R[15]=1493,CALL TECH_HOLD ;
 883:   ;
 884:L P[735] 300mm/sec FINE
    :  Arc Start[6]    ;
 885:  Weave Sine[6] ;
 886:  Track TAST[6] ;
 887:L P[736] WELD_SPEED FINE
    :  Arc End[6]    ;
 888:  Weave End ;
 889:  Track End ;
 890:   ;
 891:L P[737] 300mm/sec CNT25    ;
 892:   ;
 893:J P[738] 25% FINE    ;
 894:   ;
 895:L P[739] 1000mm/sec CNT25    ;
 896:   ;
 897:  !HOME ;
 898:J P[740] 100% FINE    ;
 899:   ;
 900:  !********POSITIONER MOVE******** ;
 901:J P[741] 75% FINE    ;
 902:   ;
 903:J P[742] 50% CNT40    ;
 904:   ;
 905:L P[743] 1000mm/sec CNT25    ;
 906:   ;
 907:  !FR50X1500 ;
 908:  !LENGTH: 100mm ;
 909:  IF R[15]=1503,CALL TECH_HOLD ;
 910:   ;
 911:L P[744] 800mm/sec FINE
    :  Arc Start[8]    ;
 912:  Weave Sine[8] ;
 913:L P[745] WELD_SPEED FINE
    :  Arc End[8]    ;
 914:  Weave End ;
 915:   ;
 916:L P[746] 1000mm/sec CNT25    ;
 917:   ;
 918:  !FR50X1510 ;
 919:  !LENGTH: 85mm ;
 920:  IF R[15]=1513,CALL TECH_HOLD ;
 921:   ;
 922:L P[747] 800mm/sec FINE
    :  Arc Start[8]    ;
 923:  Weave Sine[8] ;
 924:L P[748] WELD_SPEED FINE
    :  Arc End[8]    ;
 925:  Weave End ;
 926:   ;
 927:L P[749] 1000mm/sec CNT25    ;
 928:   ;
 929:L P[750] 1000mm/sec CNT25    ;
 930:   ;
 931:   ;
 932:  !FR50X1520 ;
 933:  !LENGTH: 100mm - 1 of 2 ;
 934:  IF R[15]=1523,CALL TECH_HOLD ;
 935:   ;
 936:L P[751] 800mm/sec FINE
    :  Arc Start[8]    ;
 937:  Weave Sine[8] ;
 938:L P[752] WELD_SPEED FINE
    :  Arc End[8]    ;
 939:  Weave End ;
 940:   ;
 941:L P[753] 1000mm/sec CNT25    ;
 942:   ;
 943:L P[754] 1000mm/sec CNT100    ;
 944:   ;
 945:   ;
 946:   ;
 947:  !FR50X1530 ;
 948:  !LENGTH: 100mm - 2 of 2 ;
 949:  IF R[15]=1533,CALL TECH_HOLD ;
 950:   ;
 951:L P[755] 800mm/sec FINE
    :  Arc Start[6]    ;
 952:  Weave Sine[6] ;
 953:L P[756] WELD_SPEED FINE
    :  Arc End[6]    ;
 954:  Weave End ;
 955:   ;
 956:L P[757] 1000mm/sec CNT50    ;
 957:   ;
 958:L P[758] 1000mm/sec CNT25    ;
 959:   ;
 960:  !FR50X1540 ;
 961:  !LENGTH: 85mm ;
 962:  IF R[15]=1543,CALL TECH_HOLD ;
 963:   ;
 964:L P[759] 800mm/sec FINE
    :  Arc Start[8]    ;
 965:  Weave Sine[8] ;
 966:L P[760] WELD_SPEED FINE
    :  Arc End[8]    ;
 967:  Weave End ;
 968:   ;
 969:L P[761] 1000mm/sec CNT25    ;
 970:   ;
 971:L P[762] 1000mm/sec CNT25    ;
 972:   ;
 973:J P[763] 50% CNT25    ;
 974:   ;
 975:L P[764] 1000mm/sec CNT25    ;
 976:   ;
 977:  !FR50X1550 ;
 978:  IF R[15]=1553,CALL TECH_HOLD ;
 979:   ;
 980:   ;
 981:L P[765] 800mm/sec FINE
    :  Arc Start[6]    ;
 982:  Weave Sine[6] ;
 983:  Track TAST[6] ;
 984:L P[233] WELD_SPEED CNT100    ;
 985:L P[234] WELD_SPEED CNT100    ;
 986:L P[235] WELD_SPEED CNT100    ;
 987:L P[766] WELD_SPEED FINE
    :  Arc End[6]    ;
 988:  Weave End ;
 989:  Track End ;
 990:   ;
 991:L P[767] 1000mm/sec CNT25    ;
 992:   ;
 993:  !FR50X1560 ;
 994:  IF R[15]=1563,CALL TECH_HOLD ;
 995:   ;
 996:L P[768] 800mm/sec FINE
    :  Arc Start[6]    ;
 997:  Weave Sine[6] ;
 998:  Track TAST[6] ;
 999:C P[769]    
    :  P[770] WELD_SPEED FINE
    :  Arc End[6]    ;
1000:  Weave End ;
1001:  Track End ;
1002:   ;
1003:L P[771] 1000mm/sec CNT25    ;
1004:   ;
1005:L P[772] 1000mm/sec CNT25    ;
1006:   ;
1007:  !FR50X1570 ;
1008:  IF R[15]=1573,CALL TECH_HOLD ;
1009:   ;
1010:L P[773] 800mm/sec FINE
    :  Arc Start[6]    ;
1011:  Weave Sine[6] ;
1012:  Track TAST[6] ;
1013:L P[774] WELD_SPEED FINE
    :  Arc End[6]    ;
1014:  Weave End ;
1015:  Track End ;
1016:   ;
1017:L P[775] 1000mm/sec CNT25    ;
1018:   ;
1019:L P[776] 1000mm/sec CNT25    ;
1020:   ;
1021:  !FR50X1580 ;
1022:  IF R[15]=1583,CALL TECH_HOLD ;
1023:   ;
1024:L P[777] 800mm/sec FINE
    :  Arc Start[6]    ;
1025:  Weave Sine[6] ;
1026:  Track TAST[6] ;
1027:L P[778] WELD_SPEED CNT100    ;
1028:L P[779] WELD_SPEED CNT100    ;
1029:L P[780] WELD_SPEED FINE
    :  Arc End[6]    ;
1030:  Weave End ;
1031:  Track End ;
1032:   ;
1033:L P[781] 1000mm/sec CNT25    ;
1034:   ;
1035:L P[782] 1000mm/sec CNT25    ;
1036:   ;
1037:  !FR50X1590 ;
1038:  IF R[15]=1593,CALL TECH_HOLD ;
1039:   ;
1040:L P[783] 800mm/sec FINE
    :  Arc Start[6]    ;
1041:  Weave Sine[6] ;
1042:  Track TAST[6] ;
1043:L P[784] WELD_SPEED FINE
    :  Arc End[6]    ;
1044:  Weave End ;
1045:  Track End ;
1046:   ;
1047:L P[785] 1000mm/sec CNT25    ;
1048:   ;
1049:J P[786] 50% CNT25    ;
1050:   ;
1051:J P[787] 50% CNT25    ;
1052:   ;
1053:  !FR50X1600 ;
1054:  IF R[15]=1603,CALL TECH_HOLD ;
1055:   ;
1056:L P[788] 800mm/sec FINE
    :  Arc Start[6]    ;
1057:  Weave Sine[6] ;
1058:  Track TAST[6] ;
1059:L P[789] WELD_SPEED FINE
    :  Arc End[6]    ;
1060:  Weave End ;
1061:  Track End ;
1062:   ;
1063:L P[790] 1000mm/sec CNT25    ;
1064:   ;
1065:  !FR50X1610 ;
1066:  IF R[15]=1613,CALL TECH_HOLD ;
1067:   ;
1068:L P[791] 800mm/sec FINE
    :  Arc Start[6]    ;
1069:  Weave Sine[6] ;
1070:  Track TAST[6] ;
1071:C P[792]    
    :  P[793] WELD_SPEED FINE
    :  Arc End[6]    ;
1072:  Weave End ;
1073:  Track End ;
1074:   ;
1075:L P[794] 1000mm/sec CNT25    ;
1076:   ;
1077:L P[795] 1000mm/sec CNT25    ;
1078:   ;
1079:   ;
1080:  !FR50X1620 ;
1081:  IF R[15]=1623,CALL TECH_HOLD ;
1082:   ;
1083:L P[796] 800mm/sec FINE
    :  Arc Start[6]    ;
1084:  Weave Sine[6] ;
1085:  Track TAST[6] ;
1086:L P[797] WELD_SPEED FINE
    :  Arc End[6]    ;
1087:  Weave End ;
1088:  Track End ;
1089:   ;
1090:L P[798] 1000mm/sec CNT25    ;
1091:   ;
1092:  !FR50X1630 ;
1093:  IF R[15]=1633,CALL TECH_HOLD ;
1094:   ;
1095:L P[799] 800mm/sec FINE
    :  Arc Start[6]    ;
1096:  Weave Sine[6] ;
1097:  Track TAST[6] ;
1098:L P[800] WELD_SPEED CNT100    ;
1099:L P[801] WELD_SPEED CNT100    ;
1100:L P[802] WELD_SPEED FINE
    :  Arc End[6]    ;
1101:  Weave End ;
1102:  Track End ;
1103:   ;
1104:L P[803] 300mm/sec CNT25    ;
1105:   ;
1106:L P[804] 300mm/sec CNT25    ;
1107:   ;
1108:  !FR50X1640 ;
1109:  IF R[15]=1643,CALL TECH_HOLD ;
1110:   ;
1111:L P[805] 800mm/sec FINE
    :  Arc Start[6]    ;
1112:  Weave Sine[6] ;
1113:  Track TAST[6] ;
1114:L P[806] WELD_SPEED FINE
    :  Arc End[6]    ;
1115:  Weave End ;
1116:  Track End ;
1117:   ;
1118:L P[807] 300mm/sec CNT5    ;
1119:   ;
1120:L P[808] 300mm/sec CNT25    ;
1121:   ;
1122:J P[809] 50% CNT25    ;
1123:   ;
1124:  !HOME ;
1125:J P[810] 100% CNT25    ;
1126:   ;
1127:  !TORCH CLEAN ;
1128:  CALL HOME    ;
1129:  CALL T_CLEAN    ;
1130:   ;
1131:   ;
1132:  !********POSITIONER MOVE******** ;
1133:J P[811] 75% CNT25    ;
1134:   ;
1135:J P[812] 50% CNT80    ;
1136:   ;
1137:J P[813] 50% CNT30    ;
1138:   ;
1139:  !CELL ID: C ... ;
1140:   ;
1141:L P[814] 800mm/sec FINE
    :  Arc Start[1]    ;
1142:  WAIT    .15(sec) ;
1143:L P[815] WELD_SPEED FINE
    :  Arc End[1]    ;
1144:   ;
1145:J P[224] 50% CNT50    ;
1146:   ;
1147:L P[225] 800mm/sec FINE
    :  Arc Start[1]    ;
1148:  WAIT    .15(sec) ;
1149:L P[226] WELD_SPEED FINE
    :  Arc End[1]    ;
1150:   ;
1151:J P[227] 50% CNT50    ;
1152:   ;
1153:L P[228] 800mm/sec FINE
    :  Arc Start[1]    ;
1154:  WAIT    .15(sec) ;
1155:L P[229] WELD_SPEED FINE
    :  Arc End[1]    ;
1156:   ;
1157:J P[230] 50% CNT50    ;
1158:J P[816] 50% CNT60    ;
1159:   ;
1160:J P[817] 50% CNT80    ;
1161:   ;
1162:J P[818] 50% CNT60    ;
1163:   ;
1164:J P[819] 50% CNT60    ;
1165:   ;
1166:L P[820] 960mm/sec CNT25    ;
1167:   ;
1168:  !FR50X1650 ;
1169:  IF R[15]=1653,CALL TECH_HOLD ;
1170:   ;
1171:L P[821] 800mm/sec FINE
    :  Arc Start[6]    ;
1172:  Weave Sine[6] ;
1173:  Track TAST[6] ;
1174:L P[822] WELD_SPEED CNT100    ;
1175:C P[823]    
    :  P[824] WELD_SPEED CNT100    ;
1176:L P[825] WELD_SPEED CNT100    ;
1177:C P[826]    
    :  P[827] WELD_SPEED CNT100    ;
1178:L P[828] WELD_SPEED CNT100    ;
1179:L P[829] WELD_SPEED FINE
    :  Arc End[6]    ;
1180:  Weave End ;
1181:  Track End ;
1182:   ;
1183:L P[830] 1000mm/sec CNT25    ;
1184:   ;
1185:J P[831] 50% CNT25    ;
1186:   ;
1187:L P[832] 1000mm/sec CNT25    ;
1188:   ;
1189:   ;
1190:   ;
1191:  !FR50X1660 ;
1192:  !LENGTH: 40mm ;
1193:  ! ;
1194:  IF R[15]=1663,CALL TECH_HOLD ;
1195:   ;
1196:L P[833] 800mm/sec FINE
    :  Arc Start[6]    ;
1197:  Weave Sine[6] ;
1198:L P[834] WELD_SPEED FINE
    :  Arc End[6]    ;
1199:  Weave End ;
1200:   ;
1201:  CALL LENGTH_CHECK(1660) ;
1202:   ;
1203:L P[835] 1000mm/sec CNT25    ;
1204:   ;
1205:J P[842] 50% CNT10    ;
1206:   ;
1207:J P[843] 50% CNT10    ;
1208:   ;
1209:L P[844] 1000mm/sec CNT25    ;
1210:   ;
1211:  !FR50X1680 ;
1212:  IF R[15]=1683,CALL TECH_HOLD ;
1213:   ;
1214:L P[845] 800mm/sec FINE
    :  Arc Start[6]    ;
1215:  Weave Sine[6] ;
1216:  Track TAST[6] ;
1217:L P[846] WELD_SPEED FINE
    :  Arc End[6]    ;
1218:  Weave End ;
1219:  Track End ;
1220:   ;
1221:L P[847] 1000mm/sec CNT25    ;
1222:   ;
1223:  !********POSITIONER MOVE******** ;
1224:J P[848] 50% FINE    ;
1225:   ;
1226:  !FR50X1690 ;
1227:  IF R[15]=1693,CALL TECH_HOLD ;
1228:   ;
1229:L P[849] 800mm/sec FINE
    :  Arc Start[6]    ;
1230:  Weave Sine[6] ;
1231:  Track TAST[6] ;
1232:L P[850] WELD_SPEED CNT100    ;
1233:L P[851] WELD_SPEED CNT100    ;
1234:L P[852] WELD_SPEED CNT100    ;
1235:C P[853]    
    :  P[854] WELD_SPEED CNT100    ;
1236:L P[855] WELD_SPEED CNT100    ;
1237:L P[856] WELD_SPEED CNT100    ;
1238:L P[857] WELD_SPEED CNT100    ;
1239:C P[858]    
    :  P[859] WELD_SPEED CNT100    ;
1240:L P[860] WELD_SPEED CNT100    ;
1241:C P[861]    
    :  P[862] WELD_SPEED CNT100    ;
1242:C P[863]    
    :  P[864] WELD_SPEED CNT100    ;
1243:L P[865] WELD_SPEED FINE
    :  Arc End[6]    ;
1244:  Weave End ;
1245:  Track End ;
1246:   ;
1247:L P[866] 1000mm/sec CNT25    ;
1248:   ;
1249:L P[867] 1000mm/sec CNT25    ;
1250:   ;
1251:  !FR50X1700 ;
1252:  IF R[15]=1703,CALL TECH_HOLD ;
1253:   ;
1254:L P[868] 1000mm/sec FINE
    :  Arc Start[6]    ;
1255:  Weave Sine[6] ;
1256:  Track TAST[6] ;
1257:L P[869] WELD_SPEED CNT100    ;
1258:C P[870]    
    :  P[871] WELD_SPEED CNT100    ;
1259:L P[872] WELD_SPEED CNT100    ;
1260:C P[873]    
    :  P[874] WELD_SPEED CNT100    ;
1261:L P[875] WELD_SPEED CNT100    ;
1262:C P[876]    
    :  P[877] WELD_SPEED CNT100    ;
1263:C P[878]    
    :  P[879] WELD_SPEED FINE
    :  Arc End[6]    ;
1264:  Weave End ;
1265:  Track End ;
1266:   ;
1267:L P[880] 1000mm/sec CNT25    ;
1268:   ;
1269:L P[881] 1000mm/sec CNT25    ;
1270:   ;
1271:J P[882] 50% CNT25    ;
1272:   ;
1273:J P[883] 50% CNT25    ;
1274:   ;
1275:  !********POSITIONER MOVE******** ;
1276:J P[884] 75% FINE    ;
1277:   ;
1278:   ;
1279:  !FR50X1710 ;
1280:  IF R[15]=1713,CALL TECH_HOLD ;
1281:   ;
1282:L P[885] 800mm/sec FINE
    :  Arc Start[6]    ;
1283:  Weave Sine[6] ;
1284:  Track TAST[6] ;
1285:L P[236] WELD_SPEED CNT100    ;
1286:C P[886]    
    :  P[887] WELD_SPEED CNT100    ;
1287:L P[888] WELD_SPEED CNT100    ;
1288:C P[889]    
    :  P[890] WELD_SPEED CNT100    ;
1289:L P[891] WELD_SPEED FINE
    :  Arc End[6]    ;
1290:  Weave End ;
1291:  Track End ;
1292:   ;
1293:L P[892] 1000mm/sec CNT25    ;
1294:   ;
1295:J P[893] 50% CNT25    ;
1296:   ;
1297:  !FR50X1720 ;
1298:  IF R[15]=1723,CALL TECH_HOLD ;
1299:   ;
1300:L P[894] 800mm/sec FINE
    :  Arc Start[6]    ;
1301:  Weave Sine[6] ;
1302:  Track TAST[6] ;
1303:L P[895] WELD_SPEED CNT100    ;
1304:C P[896]    
    :  P[897] WELD_SPEED CNT100    ;
1305:C P[898]    
    :  P[899] WELD_SPEED CNT100    ;
1306:C P[900]    
    :  P[901] WELD_SPEED CNT100    ;
1307:L P[902] WELD_SPEED FINE
    :  Arc End[6]    ;
1308:  Weave End ;
1309:  Track End ;
1310:   ;
1311:L P[903] 1000mm/sec CNT25    ;
1312:   ;
1313:L P[904] 500mm/sec CNT25    ;
1314:   ;
1315:L P[905] 500mm/sec CNT25    ;
1316:   ;
1317:   ;
1318:  !FR50X1730 ;
1319:  IF R[15]=1733,CALL TECH_HOLD ;
1320:   ;
1321:L P[906] 500mm/sec FINE
    :  Arc Start[6]    ;
1322:  Weave Sine[6] ;
1323:  Track TAST[6] ;
1324:L P[907] WELD_SPEED CNT100    ;
1325:L P[908] WELD_SPEED CNT100    ;
1326:L P[909] WELD_SPEED CNT100    ;
1327:L P[910] WELD_SPEED FINE
    :  Arc End[6]    ;
1328:  Weave End ;
1329:  Track End ;
1330:   ;
1331:L P[911] 500mm/sec CNT25    ;
1332:   ;
1333:L P[912] 1000mm/sec CNT25    ;
1334:   ;
1335:  !FR50X1740 ;
1336:  IF R[15]=1743,CALL TECH_HOLD ;
1337:   ;
1338:L P[913] 800mm/sec FINE
    :  Arc Start[6]    ;
1339:  Weave Sine[6] ;
1340:  Track TAST[6] ;
1341:L P[914] WELD_SPEED FINE
    :  Arc End[6]    ;
1342:  Weave End ;
1343:  Track End ;
1344:   ;
1345:L P[915] 960mm/sec CNT40    ;
1346:   ;
1347:J P[916] 50% CNT35    ;
1348:   ;
1349:  !FR50X1750 ;
1350:  IF R[15]=1753,CALL TECH_HOLD ;
1351:   ;
1352:L P[917] 800mm/sec FINE
    :  Arc Start[6]    ;
1353:  Weave Sine[6] ;
1354:L P[918] WELD_SPEED FINE
    :  Arc End[6]    ;
1355:  Weave End ;
1356:   ;
1357:L P[919] 1000mm/sec CNT50    ;
1358:   ;
1359:J P[223] 50% CNT25    ;
1360:   ;
1361:J P[920] 50% CNT25    ;
1362:   ;
1363:  !FR50X1760 ;
1364:  IF R[15]=1763,CALL TECH_HOLD ;
1365:   ;
1366:L P[921] 800mm/sec FINE
    :  Arc Start[6]    ;
1367:  Weave Sine[6] ;
1368:  Track TAST[6] ;
1369:L P[922] WELD_SPEED FINE
    :  Arc End[6]    ;
1370:  Weave End ;
1371:  Track End ;
1372:   ;
1373:L P[923] 500mm/sec CNT25    ;
1374:   ;
1375:J P[924] 50% CNT25    ;
1376:   ;
1377:J P[925] 50% CNT25    ;
1378:   ;
1379:   ;
1380:  !FR50X1770 ;
1381:  IF R[15]=1773,CALL TECH_HOLD ;
1382:   ;
1383:   ;
1384:L P[926] 1000mm/sec FINE
    :  Arc Start[6]    ;
1385:  Weave Sine[6] ;
1386:  Track TAST[6] ;
1387:L P[927] WELD_SPEED FINE
    :  Arc End[6]    ;
1388:  Weave End ;
1389:  Track End ;
1390:   ;
1391:L P[928] 1000mm/sec CNT25    ;
1392:   ;
1393:L P[929] 1000mm/sec CNT25    ;
1394:   ;
1395:J P[930] 50% CNT25    ;
1396:   ;
1397:   ;
1398:  !FR50X1780 ;
1399:  IF R[15]=1783,CALL TECH_HOLD ;
1400:   ;
1401:L P[931] 1000mm/sec FINE
    :  Arc Start[6]    ;
1402:  Weave Sine[6] ;
1403:  Track TAST[6] ;
1404:L P[932] WELD_SPEED FINE
    :  Arc End[6]    ;
1405:  Weave End ;
1406:  Track End ;
1407:   ;
1408:L P[933] 1000mm/sec CNT25    ;
1409:   ;
1410:J P[934] 50% CNT45    ;
1411:   ;
1412:J P[935] 50% CNT40    ;
1413:   ;
1414:  !********POSITIONER MOVE******** ;
1415:J P[936] 80% CNT25    ;
1416:   ;
1417:J P[937] 50% CNT40    ;
1418:   ;
1419:J P[938] 25% CNT15    ;
1420:   ;
1421:L P[231] 450mm/sec CNT25    ;
1422:   ;
1423:  CALL ARC_DISABLE_RH_LS(0) ;
1424:   ;
1425:  !FR50X1790 ;
1426:  IF R[15]=1793,CALL TECH_HOLD ;
1427:   ;
1428:L P[939] 200mm/sec FINE
    :  Arc Start[8]    ;
1429:  Weave Sine[8] ;
1430:L P[940] WELD_SPEED CNT100    ;
1431:C P[941]    
    :  P[942] WELD_SPEED CNT100    ;
1432:L P[943] WELD_SPEED FINE
    :  Arc End[8]    ;
1433:  Weave End ;
1434:   ;
1435:L P[944] 200mm/sec CNT15    ;
1436:   ;
1437:J P[945] 50% CNT25    ;
1438:   ;
1439:  !FR50X1800 ;
1440:  IF R[15]=1803,CALL TECH_HOLD ;
1441:   ;
1442:L P[946] 300mm/sec FINE
    :  Arc Start[8]    ;
1443:  Weave Sine[8] ;
1444:L P[947] WELD_SPEED FINE
    :  Arc End[8]    ;
1445:  Weave End ;
1446:   ;
1447:  CALL ARC_DISABLE_RH_LS(1) ;
1448:   ;
1449:L P[948] 300mm/sec CNT25    ;
1450:   ;
1451:J P[949] 50% CNT25    ;
1452:   ;
1453:  !HOME ;
1454:J P[950] 100% CNT25    ;
1455:   ;
1456:  !TORCH CLEAN ;
1457:  CALL HOME    ;
1458:  CALL T_CLEAN    ;
1459:   ;
1460:  !********POSITIONER MOVE******** ;
1461:J P[951] 75% FINE    ;
1462:   ;
1463:J P[952] 50% CNT25    ;
1464:   ;
1465:L P[953] 1000mm/sec CNT25    ;
1466:   ;
1467:  !FR50X1810 ;
1468:  IF R[15]=1813,CALL TECH_HOLD ;
1469:   ;
1470:L P[954] 800mm/sec FINE
    :  Arc Start[6]    ;
1471:  Weave Sine[6] ;
1472:  Track TAST[6] ;
1473:L P[955] WELD_SPEED FINE
    :  Arc End[6]    ;
1474:  Weave End ;
1475:  Track End ;
1476:   ;
1477:L P[956] 300mm/sec CNT25    ;
1478:   ;
1479:L P[957] 1000mm/sec CNT25    ;
1480:   ;
1481:J P[958] 50% CNT25    ;
1482:   ;
1483:J P[959] 50% CNT25    ;
1484:   ;
1485:L P[960] 1000mm/sec CNT25    ;
1486:   ;
1487:  !FR50X1820 ;
1488:  IF R[15]=1823,CALL TECH_HOLD ;
1489:   ;
1490:L P[961] 1000mm/sec FINE
    :  Arc Start[6]    ;
1491:  Weave Sine[6] ;
1492:  Track TAST[6] ;
1493:C P[962]    
    :  P[963] WELD_SPEED CNT100    ;
1494:L P[964] WELD_SPEED FINE
    :  Arc End[6]    ;
1495:  Weave End ;
1496:  Track End ;
1497:   ;
1498:L P[965] 300mm/sec CNT25    ;
1499:   ;
1500:L P[966] 1000mm/sec CNT25    ;
1501:   ;
1502:  !HOME ;
1503:J P[967] 100% CNT25    ;
1504:   ;
1505:  !********POSITIONER MOVE******** ;
1506:J P[968] 75% FINE    ;
1507:   ;
1508:L P[969] 1000mm/sec CNT25    ;
1509:   ;
1510:  !FR50X1830 ;
1511:  IF R[15]=1833,CALL TECH_HOLD ;
1512:   ;
1513:L P[970] 1000mm/sec FINE
    :  Arc Start[6]    ;
1514:  Weave Sine[6] ;
1515:  Track TAST[6] ;
1516:C P[971]    
    :  P[972] WELD_SPEED CNT100    ;
1517:L P[973] WELD_SPEED FINE
    :  Arc End[6]    ;
1518:  Weave End ;
1519:  Track End ;
1520:   ;
1521:L P[974] 300mm/sec CNT25    ;
1522:   ;
1523:L P[975] 1000mm/sec CNT25    ;
1524:   ;
1525:  !HOME ;
1526:J P[976] 100% FINE    ;
1527:   ;
1528:  !********POSITIONER MOVE******** ;
1529:J P[977] 75% CNT25    ;
1530:   ;
1531:J P[978] 50% CNT25    ;
1532:   ;
1533:L P[979] 1000mm/sec CNT25    ;
1534:   ;
1535:  //UALM[20] ;
1536:  !DOUBLE CHECK ;
1537:   ;
1538:   ;
1539:  !FR50X1840 ;
1540:  !LENGTH: 40mm ;
1541:   ;
1542:  IF R[15]=1843,CALL TECH_HOLD ;
1543:   ;
1544:L P[980] 800mm/sec FINE
    :  Arc Start[6]    ;
1545:  Weave Sine[6] ;
1546:L P[981] WELD_SPEED FINE
    :  Arc End[6]    ;
1547:  Weave End ;
1548:   ;
1549:  CALL LENGTH_CHECK(1840) ;
1550:   ;
1551:L P[982] 1000mm/sec CNT25    ;
1552:   ;
1553:L P[983] 1000mm/sec CNT25    ;
1554:   ;
1555:J P[984] 50% CNT25    ;
1556:   ;
1557:L P[985] 1000mm/sec CNT25    ;
1558:   ;
1559:  !FR50X1850 ;
1560:  IF R[15]=1853,CALL TECH_HOLD ;
1561:   ;
1562:L P[986] 800mm/sec FINE
    :  Arc Start[6]    ;
1563:  Weave Sine[6] ;
1564:L P[987] WELD_SPEED CNT100    ;
1565:C P[988]    
    :  P[989] WELD_SPEED FINE
    :  Arc End[6]    ;
1566:  Weave End ;
1567:   ;
1568:L P[990] 500mm/sec CNT25    ;
1569:   ;
1570:L P[991] 1000mm/sec CNT25    ;
1571:   ;
1572:J P[992] 50% CNT25    ;
1573:   ;
1574:L P[993] 1000mm/sec CNT25    ;
1575:   ;
1576:L P[994] 500mm/sec CNT25    ;
1577:   ;
1578:  !FR50X1860 ;
1579:  IF R[15]=1863,CALL TECH_HOLD ;
1580:   ;
1581:L P[995] 800mm/sec FINE
    :  Arc Start[6]    ;
1582:  Weave Sine[6] ;
1583:L P[996] WELD_SPEED CNT100    ;
1584:C P[997]    
    :  P[998] WELD_SPEED FINE
    :  Arc End[6]    ;
1585:  Weave End ;
1586:   ;
1587:L P[999] 300mm/sec CNT5    ;
1588:   ;
1589:L P[1000] 500mm/sec CNT5    ;
1590:   ;
1591:L P[1001] 1000mm/sec CNT25    ;
1592:   ;
1593:J P[1002] 50% CNT25    ;
1594:   ;
1595:L P[1003] 1000mm/sec CNT25    ;
1596:   ;
1597:  !FR50X1870 ;
1598:  IF R[15]=1873,CALL TECH_HOLD ;
1599:   ;
1600:L P[1004] 800mm/sec FINE
    :  Arc Start[6]    ;
1601:  Weave Sine[6] ;
1602:  Track TAST[6] ;
1603:C P[1005]    
    :  P[1006] WELD_SPEED CNT100    ;
1604:L P[1007] WELD_SPEED CNT100    ;
1605:C P[1008]    
    :  P[1009] WELD_SPEED CNT100    ;
1606:L P[1010] WELD_SPEED CNT100    ;
1607:C P[1011]    
    :  P[1012] WELD_SPEED CNT100    ;
1608:L P[1013] WELD_SPEED FINE
    :  Arc End[6]    ;
1609:  Weave End ;
1610:  Track End ;
1611:   ;
1612:L P[1014] 1000mm/sec CNT50    ;
1613:   ;
1614:J P[1015] 50% CNT10    ;
1615:   ;
1616:L P[1016] 1000mm/sec CNT25    ;
1617:   ;
1618:  !FR50X1880 ;
1619:  IF R[15]=1883,CALL TECH_HOLD ;
1620:   ;
1621:L P[1017] 800mm/sec FINE
    :  Arc Start[6]    ;
1622:  Weave Sine[6] ;
1623:  Track TAST[6] ;
1624:L P[1018] WELD_SPEED FINE
    :  Arc End[6]    ;
1625:  Weave End ;
1626:  Track End ;
1627:   ;
1628:L P[1019] 1000mm/sec CNT25    ;
1629:   ;
1630:  !********POSITIONER MOVE******** ;
1631:J P[1020] 75% FINE    ;
1632:   ;
1633:  !FR50X1890 ;
1634:  IF R[15]=1893,CALL TECH_HOLD ;
1635:   ;
1636:L P[1021] 800mm/sec FINE
    :  Arc Start[6]    ;
1637:  Weave Sine[6] ;
1638:  Track TAST[6] ;
1639:L P[1022] WELD_SPEED CNT100    ;
1640:C P[1023]    
    :  P[1024] WELD_SPEED CNT100    ;
1641:L P[1025] WELD_SPEED CNT100    ;
1642:C P[1026]    
    :  P[1027] WELD_SPEED CNT100    ;
1643:L P[1028] WELD_SPEED CNT100    ;
1644:C P[1029]    
    :  P[1030] WELD_SPEED CNT100    ;
1645:L P[1031] WELD_SPEED FINE
    :  Arc End[6]    ;
1646:  Weave End ;
1647:  Track End ;
1648:   ;
1649:L P[1032] 1000mm/sec CNT25    ;
1650:   ;
1651:L P[1033] 1000mm/sec CNT25    ;
1652:   ;
1653:  !FR50X1900 ;
1654:  IF R[15]=1903,CALL TECH_HOLD ;
1655:   ;
1656:L P[1034] 800mm/sec FINE
    :  Arc Start[6]    ;
1657:  Weave Sine[6] ;
1658:  Track TAST[6] ;
1659:L P[1035] WELD_SPEED CNT100    ;
1660:C P[1036]    
    :  P[1037] WELD_SPEED CNT100    ;
1661:L P[1038] WELD_SPEED CNT100    ;
1662:C P[1039]    
    :  P[1040] WELD_SPEED CNT100    ;
1663:L P[1041] WELD_SPEED CNT100    ;
1664:C P[1042]    
    :  P[1043] WELD_SPEED CNT100    ;
1665:C P[1044]    
    :  P[1045] WELD_SPEED FINE
    :  Arc End[6]    ;
1666:  Weave End ;
1667:  Track End ;
1668:   ;
1669:L P[1046] 1000mm/sec CNT25    ;
1670:   ;
1671:L P[1047] 1000mm/sec CNT25    ;
1672:   ;
1673:L P[1048] 1000mm/sec CNT25    ;
1674:   ;
1675:L P[1049] 1000mm/sec CNT25    ;
1676:   ;
1677:  !HOME ;
1678:J P[1050] 100% FINE    ;
1679:   ;
1680:  !********POSITIONER MOVE******** ;
1681:J P[1051] 50% CNT25    ;
1682:   ;
1683:  !FR50X1910 ;
1684:  IF R[15]=1913,CALL TECH_HOLD ;
1685:   ;
1686:L P[1052] 780mm/sec FINE
    :  Arc Start[6]    ;
1687:  Weave Sine[6] ;
1688:  Track TAST[6] ;
1689:L P[1053] WELD_SPEED CNT100    ;
1690:C P[1054]    
    :  P[1055] WELD_SPEED CNT100    ;
1691:L P[1056] WELD_SPEED CNT100    ;
1692:C P[1057]    
    :  P[1058] WELD_SPEED FINE
    :  Arc End[6]    ;
1693:  Weave End ;
1694:  Track End ;
1695:   ;
1696:L P[1059] 1000mm/sec CNT25    ;
1697:   ;
1698:J P[1060] 50% CNT25    ;
1699:   ;
1700:  !FR50X1920 ;
1701:  IF R[15]=1923,CALL TECH_HOLD ;
1702:   ;
1703:L P[1061] 800mm/sec FINE
    :  Arc Start[6]    ;
1704:  Weave Sine[6] ;
1705:  Track TAST[6] ;
1706:L P[1062] WELD_SPEED CNT100    ;
1707:C P[1063]    
    :  P[1064] WELD_SPEED CNT100    ;
1708:C P[1065]    
    :  P[1066] WELD_SPEED CNT100    ;
1709:C P[1067]    
    :  P[1068] WELD_SPEED CNT100    ;
1710:L P[1069] WELD_SPEED FINE
    :  Arc End[6]    ;
1711:  Weave End ;
1712:  Track End ;
1713:   ;
1714:L P[1070] 1000mm/sec CNT25    ;
1715:   ;
1716:L P[1071] 1000mm/sec CNT25    ;
1717:   ;
1718:  !FR50X1930 ;
1719:  IF R[15]=1933,CALL TECH_HOLD ;
1720:   ;
1721:L P[1072] 800mm/sec FINE
    :  Arc Start[6]    ;
1722:  Weave Sine[6] ;
1723:  Track TAST[6] ;
1724:L P[1073] WELD_SPEED FINE
    :  Arc End[6]    ;
1725:  Weave End ;
1726:  Track End ;
1727:   ;
1728:L P[1074] 1000mm/sec CNT25    ;
1729:   ;
1730:L P[1075] 1000mm/sec CNT50    ;
1731:   ;
1732:  !FR50X1940 ;
1733:  IF R[15]=1943,CALL TECH_HOLD ;
1734:   ;
1735:L P[1076] 800mm/sec FINE
    :  Arc Start[6]    ;
1736:  Weave Sine[6] ;
1737:L P[1077] WELD_SPEED FINE
    :  Arc End[6]    ;
1738:  Weave End ;
1739:   ;
1740:L P[1078] 1000mm/sec CNT50    ;
1741:   ;
1742:J P[1079] 50% CNT25    ;
1743:   ;
1744:  !FR50X1950 ;
1745:  IF R[15]=1953,CALL TECH_HOLD ;
1746:   ;
1747:L P[1080] 800mm/sec FINE
    :  Arc Start[6]    ;
1748:  Weave Sine[6] ;
1749:  Track TAST[6] ;
1750:L P[1081] WELD_SPEED FINE
    :  Arc End[6]    ;
1751:  Weave End ;
1752:  Track End ;
1753:   ;
1754:L P[1082] 1000mm/sec CNT25    ;
1755:   ;
1756:J P[1083] 50% CNT25    ;
1757:   ;
1758:J P[1084] 50% CNT25    ;
1759:   ;
1760:  !FR50X1960 ;
1761:  IF R[15]=1963,CALL TECH_HOLD ;
1762:   ;
1763:L P[1085] 800mm/sec FINE
    :  Arc Start[6]    ;
1764:  Weave Sine[6] ;
1765:L P[1086] WELD_SPEED FINE
    :  Arc End[6]    ;
1766:  Weave End ;
1767:   ;
1768:L P[1087] 1000mm/sec CNT100    ;
1769:   ;
1770:J P[1088] 50% CNT30    ;
1771:   ;
1772:  !FR50X1970 ;
1773:  IF R[15]=1973,CALL TECH_HOLD ;
1774:   ;
1775:L P[1089] 780mm/sec FINE
    :  Arc Start[6]    ;
1776:  Weave Sine[6] ;
1777:L P[1090] WELD_SPEED FINE
    :  Arc End[6]    ;
1778:  Weave End ;
1779:   ;
1780:L P[1091] 1000mm/sec CNT75    ;
1781:   ;
1782:J P[1092] 50% CNT40    ;
1783:   ;
1784:  !********POSITIONER MOVE******** ;
1785:J P[1093] 75% CNT25    ;
1786:   ;
1787:J P[1094] 50% CNT25    ;
1788:   ;
1789:J P[1095] 50% CNT30    ;
1790:   ;
1791:L P[1096] 1000mm/sec CNT70    ;
1792:   ;
1793:L P[232] 500mm/sec CNT50    ;
1794:   ;
1795:  CALL ARC_LH_DISABLE_LS(0) ;
1796:   ;
1797:  !FR50X1980 ;
1798:  IF R[15]=1983,CALL TECH_HOLD ;
1799:   ;
1800:L P[1097] 200mm/sec FINE
    :  Arc Start[8]    ;
1801:  Weave Sine[8] ;
1802:L P[1098] WELD_SPEED CNT100    ;
1803:C P[1099]    
    :  P[1100] WELD_SPEED CNT100    ;
1804:L P[1101] WELD_SPEED FINE
    :  Arc End[8]    ;
1805:  Weave End ;
1806:   ;
1807:J P[1102] 50% CNT40    ;
1808:   ;
1809:J P[1103] 50% CNT70    ;
1810:   ;
1811:J P[1104] 50% CNT35    ;
1812:   ;
1813:  !FR50X1990 ;
1814:  IF R[15]=1993,CALL TECH_HOLD ;
1815:   ;
1816:L P[1105] 800mm/sec FINE
    :  Arc Start[8]    ;
1817:  Weave Sine[8] ;
1818:L P[1106] WELD_SPEED FINE
    :  Arc End[8]    ;
1819:  Weave End ;
1820:   ;
1821:  CALL ARC_LH_DISABLE_LS(1) ;
1822:   ;
1823:J P[1107] 25% CNT40    ;
1824:   ;
1825:J P[1108] 50% CNT25    ;
1826:   ;
1827:J P[1109] 50% CNT50    ;
1828:   ;
1829:  !HOME ;
1830:J P[1110] 100% CNT25    ;
1831:   ;
1832:  !********POSITIONER MOVE******** ;
1833:J P[1111] 75% FINE    ;
1834:   ;
1835:J P[1112] 50% CNT25    ;
1836:   ;
1837:L P[1113] 1000mm/sec CNT25    ;
1838:   ;
1839:L P[1114] 500mm/sec CNT25    ;
1840:   ;
1841:  !FR50X2000 ;
1842:  IF R[15]=2003,CALL TECH_HOLD ;
1843:   ;
1844:L P[1115] 800mm/sec FINE
    :  Arc Start[6]    ;
1845:  Weave Sine[6] ;
1846:L P[1116] WELD_SPEED FINE
    :  Arc End[6]    ;
1847:  Weave End ;
1848:   ;
1849:L P[1117] 500mm/sec CNT25    ;
1850:   ;
1851:L P[1118] 1000mm/sec CNT25    ;
1852:   ;
1853:J P[1119] 50% CNT25    ;
1854:   ;
1855:   ;
1856:  CALL HOME    ;
1857:  CALL LOAD_POS    ;
1858:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1214.464  mm,	Y =  1589.090  mm,	Z =   593.946  mm,
	W =      .000 deg,	P =    44.876 deg,	R =   135.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1343.971  mm,	Y =  1452.300  mm,	Z =   232.946  mm,
	W =      .000 deg,	P =    44.876 deg,	R =   135.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1390.272  mm,	Y =  1354.500  mm,	Z =    79.223  mm,
	W =      .004 deg,	P =    44.873 deg,	R =   131.158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1442.813  mm,	Y =  1410.035  mm,	Z =    81.944  mm,
	W =     -.001 deg,	P =    44.845 deg,	R =   152.019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1406.269  mm,	Y =  1426.258  mm,	Z =   124.762  mm,
	W =     -.002 deg,	P =    44.845 deg,	R =   152.019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1327.201  mm,	Y =  1350.025  mm,	Z =   146.947  mm,
	W =     -.000 deg,	P =    44.876 deg,	R =   131.152 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1360.318  mm,	Y =  1328.105  mm,	Z =    81.017  mm,
	W =      .000 deg,	P =    44.876 deg,	R =   131.152 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   968.269  mm,	Y =   941.123  mm,	Z =    79.601  mm,
	W =      .000 deg,	P =    44.876 deg,	R =   127.977 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.593  mm,	Y =   918.484  mm,	Z =   118.901  mm,
	W =     -.000 deg,	P =    44.876 deg,	R =   129.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   932.883  mm,	Y =   905.922  mm,	Z =    80.529  mm,
	W =      .005 deg,	P =    44.838 deg,	R =   129.334 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   885.701  mm,	Y =   855.031  mm,	Z =    77.818  mm,
	W =      .000 deg,	P =    44.876 deg,	R =   129.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   879.676  mm,	Y =   853.017  mm,	Z =    79.876  mm,
	W =      .003 deg,	P =    44.796 deg,	R =   114.722 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   863.490  mm,	Y =   904.621  mm,	Z =   146.286  mm,
	W =      .000 deg,	P =    44.876 deg,	R =   112.101 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   831.040  mm,	Y =  1277.928  mm,	Z =   275.925  mm,
	W =      .000 deg,	P =    44.876 deg,	R =   112.101 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   353.784  mm,	Y =     3.997  mm,	Z =  2425.735  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=    45.000 deg
};
P[16]{
   GP1:
	UF : 1, UT : 1,	
	J1=    -2.565 deg,	J2=   -47.918 deg,	J3=    37.877 deg,
	J4=   -63.535 deg,	J5=   -19.106 deg,	J6=    56.044 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2036.678  mm,	Y =   133.789  mm,	Z =  1445.358  mm,
	W =   -25.929 deg,	P =   -45.424 deg,	R =    36.423 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2233.304  mm,	Y =   372.944  mm,	Z =  1162.580  mm,
	W =   -27.414 deg,	P =   -38.078 deg,	R =    43.574 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2281.974  mm,	Y =   431.829  mm,	Z =  1116.684  mm,
	W =   -41.778 deg,	P =   -28.391 deg,	R =    61.958 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2287.244  mm,	Y =    94.810  mm,	Z =  1116.986  mm,
	W =   -31.951 deg,	P =   -39.356 deg,	R =    44.493 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2124.976  mm,	Y =    85.873  mm,	Z =  1194.632  mm,
	W =   -28.024 deg,	P =   -38.698 deg,	R =    43.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2124.976  mm,	Y =  -285.127  mm,	Z =  1194.632  mm,
	W =    36.159 deg,	P =   -31.426 deg,	R =   -50.949 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2228.976  mm,	Y =  -404.127  mm,	Z =  1194.631  mm,
	W =    36.159 deg,	P =   -31.426 deg,	R =   -50.949 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2286.216  mm,	Y =  -430.685  mm,	Z =  1116.208  mm,
	W =    43.325 deg,	P =   -25.600 deg,	R =   -65.383 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2285.704  mm,	Y =   -96.057  mm,	Z =  1118.736  mm,
	W =    36.109 deg,	P =   -35.685 deg,	R =   -49.851 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2200.047  mm,	Y =  -119.764  mm,	Z =  1205.936  mm,
	W =    36.159 deg,	P =   -31.426 deg,	R =   -50.949 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2148.046  mm,	Y =   213.236  mm,	Z =  1205.936  mm,
	W =    43.692 deg,	P =    17.672 deg,	R =   -14.083 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.047  mm,	Y =   399.236  mm,	Z =  1133.936  mm,
	W =    46.448 deg,	P =     -.794 deg,	R =    -1.597 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.390  mm,	Y =   445.167  mm,	Z =  1114.198  mm,
	W =    45.219 deg,	P =     6.865 deg,	R =   -26.427 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2216.474  mm,	Y =   448.477  mm,	Z =  1105.205  mm,
	W =    45.349 deg,	P =    -4.892 deg,	R =    -3.107 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1802.457  mm,	Y =   450.063  mm,	Z =  1048.114  mm,
	W =    45.349 deg,	P =    -4.892 deg,	R =    -3.106 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1805.495  mm,	Y =   305.433  mm,	Z =  1168.972  mm,
	W =    45.922 deg,	P =    -2.604 deg,	R =     -.767 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1924.292  mm,	Y =   -66.744  mm,	Z =  1269.461  mm,
	W =   -12.797 deg,	P =    45.048 deg,	R =    98.836 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2240.823  mm,	Y =  -392.629  mm,	Z =  1154.975  mm,
	W =   -42.742 deg,	P =    20.262 deg,	R =    31.070 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2264.216  mm,	Y =  -448.220  mm,	Z =  1113.311  mm,
	W =   -44.574 deg,	P =    10.493 deg,	R =    27.731 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2224.221  mm,	Y =  -446.957  mm,	Z =  1106.872  mm,
	W =   -43.356 deg,	P =    15.621 deg,	R =    23.835 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1800.140  mm,	Y =  -448.282  mm,	Z =  1046.276  mm,
	W =   -38.710 deg,	P =    26.186 deg,	R =    36.762 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.930  mm,	Y =  -324.610  mm,	Z =  1168.225  mm,
	W =   -42.742 deg,	P =    20.262 deg,	R =    19.276 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1912.048  mm,	Y =   149.237  mm,	Z =   872.936  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -12.476 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2084.488  mm,	Y =   344.809  mm,	Z =   373.936  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -22.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2134.406  mm,	Y =   435.630  mm,	Z =   299.420  mm,
	W =    43.046 deg,	P =    14.628 deg,	R =   -43.061 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.272  mm,	Y =   434.710  mm,	Z =   300.157  mm,
	W =    44.042 deg,	P =    10.806 deg,	R =   -14.045 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2097.132  mm,	Y =   436.405  mm,	Z =   293.176  mm,
	W =    47.286 deg,	P =    18.122 deg,	R =   -38.346 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2094.274  mm,	Y =   437.963  mm,	Z =   289.318  mm,
	W =    54.772 deg,	P =    18.651 deg,	R =   -46.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2119.797  mm,	Y =   296.237  mm,	Z =   373.936  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2194.797  mm,	Y =   327.474  mm,	Z =   373.936  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.044  mm,	Y =   437.665  mm,	Z =   298.404  mm,
	W =    43.151 deg,	P =    13.425 deg,	R =   -13.910 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.848  mm,	Y =   434.743  mm,	Z =   300.942  mm,
	W =    44.489 deg,	P =     7.391 deg,	R =    13.127 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2194.797  mm,	Y =   327.474  mm,	Z =   373.936  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2194.797  mm,	Y =    65.474  mm,	Z =   373.936  mm,
	W =    45.096 deg,	P =    12.591 deg,	R =   -14.745 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2094.797  mm,	Y =   -75.526  mm,	Z =   373.936  mm,
	W =   -29.024 deg,	P =    38.011 deg,	R =    45.493 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2094.797  mm,	Y =  -377.526  mm,	Z =   373.936  mm,
	W =   -46.453 deg,	P =     -.249 deg,	R =    -2.725 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2134.347  mm,	Y =  -436.629  mm,	Z =   299.531  mm,
	W =   -44.975 deg,	P =    -1.475 deg,	R =    21.092 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2104.548  mm,	Y =  -437.996  mm,	Z =   297.946  mm,
	W =   -44.604 deg,	P =     6.705 deg,	R =     6.752 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2096.858  mm,	Y =  -440.258  mm,	Z =   294.682  mm,
	W =   -41.574 deg,	P =     1.292 deg,	R =    11.594 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2091.823  mm,	Y =  -441.524  mm,	Z =   289.290  mm,
	W =   -42.365 deg,	P =    -7.029 deg,	R =    17.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2067.441  mm,	Y =  -278.531  mm,	Z =   454.279  mm,
	W =   -44.604 deg,	P =     6.705 deg,	R =    14.917 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2206.993  mm,	Y =  -383.344  mm,	Z =   379.133  mm,
	W =   -40.009 deg,	P =    25.912 deg,	R =    25.468 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2157.105  mm,	Y =  -437.897  mm,	Z =   300.163  mm,
	W =   -41.033 deg,	P =    20.379 deg,	R =     1.032 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2187.873  mm,	Y =  -436.002  mm,	Z =   298.148  mm,
	W =   -44.045 deg,	P =    10.291 deg,	R =    12.954 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2185.714  mm,	Y =  -325.864  mm,	Z =   402.368  mm,
	W =   -44.045 deg,	P =    10.291 deg,	R =    12.954 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1316.012  mm,	Y =   -61.784  mm,	Z =   400.825  mm,
	W =    11.867 deg,	P =    -6.405 deg,	R =   -40.983 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1323.445  mm,	Y =   -53.439  mm,	Z =   -20.480  mm,
	W =    24.441 deg,	P =    -8.933 deg,	R =   -71.136 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1338.138  mm,	Y =   -53.422  mm,	Z =   -39.866  mm,
	W =    27.066 deg,	P =    -9.807 deg,	R =   -71.565 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1337.981  mm,	Y =  -172.617  mm,	Z =   -42.986  mm,
	W =    30.946 deg,	P =    -7.916 deg,	R =   -82.479 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1338.658  mm,	Y =  -182.051  mm,	Z =   -41.273  mm,
	W =    27.609 deg,	P =   -16.706 deg,	R =   -92.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1305.014  mm,	Y =  -167.548  mm,	Z =    12.854  mm,
	W =    26.690 deg,	P =   -15.166 deg,	R =   -88.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1362.864  mm,	Y =  -149.434  mm,	Z =   300.607  mm,
	W =    16.584 deg,	P =   -24.331 deg,	R =   -52.652 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2075.191  mm,	Y =  -125.781  mm,	Z =  -461.526  mm,
	W =     1.303 deg,	P =    19.370 deg,	R =    -1.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2083.004  mm,	Y =   -55.853  mm,	Z =  -543.435  mm,
	W =     -.039 deg,	P =    29.544 deg,	R =     -.740 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2081.760  mm,	Y =  -183.846  mm,	Z =  -543.398  mm,
	W =     -.059 deg,	P =    29.545 deg,	R =     -.731 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2084.258  mm,	Y =  -164.318  mm,	Z =  -424.818  mm,
	W =     1.303 deg,	P =    19.370 deg,	R =    -1.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1032.407  mm,	Y =   -24.331  mm,	Z =   261.545  mm,
	W =     4.184 deg,	P =    27.142 deg,	R =     4.615 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   353.784  mm,	Y =     3.997  mm,	Z =  2425.735  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1158.814  mm,	Y =  -274.490  mm,	Z =  1840.917  mm,
	W =   -10.829 deg,	P =   -15.923 deg,	R =    -3.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2194.335  mm,	Y =  -797.990  mm,	Z =   821.256  mm,
	W =   -12.714 deg,	P =     1.832 deg,	R =   -21.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2621.218  mm,	Y =  -912.348  mm,	Z =   659.568  mm,
	W =    -8.799 deg,	P =   -16.459 deg,	R =   -31.120 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2626.052  mm,	Y = -1029.575  mm,	Z =   488.976  mm,
	W =    -8.799 deg,	P =   -16.460 deg,	R =   -56.521 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2648.892  mm,	Y = -1044.870  mm,	Z =   442.100  mm,
	W =     -.413 deg,	P =    -3.555 deg,	R =   -57.986 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2674.605  mm,	Y = -1044.870  mm,	Z =   442.100  mm,
	W =     -.413 deg,	P =    -3.555 deg,	R =   -57.986 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2671.186  mm,	Y = -1007.991  mm,	Z =   499.177  mm,
	W =     6.649 deg,	P =   -10.542 deg,	R =   -58.667 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2671.115  mm,	Y =  -921.706  mm,	Z =   607.043  mm,
	W =     3.584 deg,	P =   -15.365 deg,	R =   -57.980 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2626.997  mm,	Y =  -751.318  mm,	Z =   885.579  mm,
	W =     5.894 deg,	P =   -21.990 deg,	R =   -35.568 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1599.653  mm,	Y =  -734.724  mm,	Z =  1199.941  mm,
	W =   -10.725 deg,	P =     6.521 deg,	R =    -7.813 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   353.784  mm,	Y =     3.997  mm,	Z =  2425.735  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[86]{
   GP1:
	UF : 1, UT : 1,	
	J1=    33.588 deg,	J2=   -79.149 deg,	J3=    33.175 deg,
	J4=    61.799 deg,	J5=   -86.287 deg,	J6=     5.026 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.680  mm,	Y =     3.607  mm,	Z =  1094.838  mm,
	W =   -52.090 deg,	P =    -5.757 deg,	R =     7.338 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1196.263  mm,	Y =  -372.062  mm,	Z =  1047.575  mm,
	W =   -43.308 deg,	P =   -32.848 deg,	R =   -32.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1207.072  mm,	Y =  -455.555  mm,	Z =  1039.706  mm,
	W =   -38.963 deg,	P =   -26.708 deg,	R =   -37.905 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1184.106  mm,	Y =  -512.068  mm,	Z =   986.287  mm,
	W =   -38.904 deg,	P =   -26.674 deg,	R =   -37.920 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=      .000 deg
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1299.178  mm,	Y =  -510.077  mm,	Z =   969.589  mm,
	W =   -31.410 deg,	P =   -32.305 deg,	R =   -41.743 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1304.520  mm,	Y =  -509.278  mm,	Z =   968.518  mm,
	W =   -31.410 deg,	P =   -32.305 deg,	R =   -29.949 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1295.522  mm,	Y =  -454.651  mm,	Z =  1026.440  mm,
	W =   -31.404 deg,	P =   -32.304 deg,	R =   -19.489 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1261.804  mm,	Y =  -244.256  mm,	Z =  1027.758  mm,
	W =   -22.133 deg,	P =   -20.172 deg,	R =    -9.613 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.521  mm,	Y =    14.948  mm,	Z =  1180.907  mm,
	W =     4.751 deg,	P =    -2.174 deg,	R =    -1.174 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1022.000  mm,	Y =   102.282  mm,	Z =  1072.825  mm,
	W =    46.536 deg,	P =    -6.385 deg,	R =    -1.458 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1223.679  mm,	Y =   325.606  mm,	Z =  1022.839  mm,
	W =    44.741 deg,	P =   -16.673 deg,	R =    20.469 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1183.505  mm,	Y =   506.499  mm,	Z =   988.674  mm,
	W =    41.747 deg,	P =   -22.568 deg,	R =    30.362 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1294.200  mm,	Y =   504.899  mm,	Z =   971.327  mm,
	W =    41.747 deg,	P =   -22.568 deg,	R =    20.156 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1304.167  mm,	Y =   503.544  mm,	Z =   971.625  mm,
	W =    41.759 deg,	P =   -22.575 deg,	R =     -.824 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=      .000 deg
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1296.325  mm,	Y =   478.096  mm,	Z =  1014.718  mm,
	W =    49.103 deg,	P =   -22.303 deg,	R =    -3.634 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.679  mm,	Y =     3.607  mm,	Z =  1094.839  mm,
	W =    46.788 deg,	P =    -6.408 deg,	R =    -6.777 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.000 deg,	J2=     0.000 deg
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.679  mm,	Y =     3.607  mm,	Z =  1816.839  mm,
	W =     -.163 deg,	P =    -9.317 deg,	R =      .025 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1445.680  mm,	Y =   567.607  mm,	Z =  1511.839  mm,
	W =     -.170 deg,	P =   -23.530 deg,	R =      .027 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1617.202  mm,	Y =   691.351  mm,	Z =  1394.804  mm,
	W =     -.170 deg,	P =   -23.530 deg,	R =      .027 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1638.526  mm,	Y =   682.552  mm,	Z =  1338.481  mm,
	W =     -.026 deg,	P =   -13.810 deg,	R =     -.098 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=      .000 deg
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1638.367  mm,	Y =   523.326  mm,	Z =  1336.599  mm,
	W =     -.126 deg,	P =   -13.859 deg,	R =     -.103 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=      .000 deg
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1636.393  mm,	Y =   512.206  mm,	Z =  1362.086  mm,
	W =     0.000 deg,	P =    -9.999 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1636.312  mm,	Y =   496.857  mm,	Z =  1338.432  mm,
	W =      .202 deg,	P =   -10.242 deg,	R =     -.079 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.999 deg,	J2=      .000 deg
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.379  mm,	Y =   470.985  mm,	Z =  1336.679  mm,
	W =      .173 deg,	P =   -10.188 deg,	R =     -.060 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=      .000 deg
};
P[111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1586.518  mm,	Y =   509.816  mm,	Z =  1403.680  mm,
	W =     6.149 deg,	P =   -10.971 deg,	R =     8.557 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1586.518  mm,	Y =   412.011  mm,	Z =  1403.680  mm,
	W =     6.149 deg,	P =   -10.971 deg,	R =     8.557 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1613.222  mm,	Y =   422.510  mm,	Z =  1343.907  mm,
	W =     1.983 deg,	P =   -10.379 deg,	R =     8.603 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=      .000 deg
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.518  mm,	Y =  -427.276  mm,	Z =  1342.059  mm,
	W =     1.023 deg,	P =   -10.236 deg,	R =     8.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=      .000 deg
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1614.487  mm,	Y =  -414.217  mm,	Z =  1373.130  mm,
	W =    -1.488 deg,	P =    -9.890 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1614.487  mm,	Y =  -485.217  mm,	Z =  1373.130  mm,
	W =    -1.488 deg,	P =    -9.890 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.151  mm,	Y =  -476.391  mm,	Z =  1332.553  mm,
	W =    -1.488 deg,	P =    -9.890 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.151  mm,	Y =  -505.534  mm,	Z =  1332.553  mm,
	W =    -1.488 deg,	P =    -9.890 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1640.887  mm,	Y =  -485.217  mm,	Z =  1373.130  mm,
	W =    -1.488 deg,	P =    -9.889 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1640.887  mm,	Y =  -536.817  mm,	Z =  1373.131  mm,
	W =    -1.488 deg,	P =    -9.889 deg,	R =     8.601 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.863  mm,	Y =  -518.699  mm,	Z =  1338.876  mm,
	W =    -1.478 deg,	P =    -9.889 deg,	R =     8.595 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=      .000 deg
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1638.691  mm,	Y =  -684.628  mm,	Z =  1339.948  mm,
	W =    -1.478 deg,	P =    -9.889 deg,	R =     8.595 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1596.746  mm,	Y =  -672.062  mm,	Z =  1470.175  mm,
	W =    -5.399 deg,	P =   -32.279 deg,	R =    10.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1245.795  mm,	Y =  -672.061  mm,	Z =  1470.175  mm,
	W =    -5.399 deg,	P =   -32.279 deg,	R =    10.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1035.165  mm,	Y =   -65.668  mm,	Z =  1132.208  mm,
	W =   -71.166 deg,	P =    14.285 deg,	R =    21.053 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000 deg,	J2=     0.000 deg
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.308  mm,	Y =   628.212  mm,	Z =   613.128  mm,
	W =   -27.520 deg,	P =   -35.242 deg,	R =      .008 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   823.942  mm,	Y =   433.727  mm,	Z =   902.693  mm,
	W =   -21.025 deg,	P =   -36.625 deg,	R =   -18.671 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1066.797  mm,	Y =   261.908  mm,	Z =   798.255  mm,
	W =   -30.186 deg,	P =   -35.006 deg,	R =   -19.606 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1202.450  mm,	Y =   329.449  mm,	Z =   801.269  mm,
	W =   -38.255 deg,	P =   -37.591 deg,	R =    24.434 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1140.326  mm,	Y =   318.744  mm,	Z =   819.048  mm,
	W =   -38.472 deg,	P =   -39.741 deg,	R =    23.618 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   823.942  mm,	Y =   433.727  mm,	Z =   902.693  mm,
	W =   -21.025 deg,	P =   -36.625 deg,	R =   -18.671 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   513.685  mm,	Y =   530.238  mm,	Z =  1690.590  mm,
	W =     9.276 deg,	P =   -38.124 deg,	R =    -9.504 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    25.000 deg
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   747.111  mm,	Y =  -550.972  mm,	Z =  1852.693  mm,
	W =   -21.025 deg,	P =   -36.625 deg,	R =    58.139 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   823.111  mm,	Y =  -474.039  mm,	Z =   844.692  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =     9.424 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1000.111  mm,	Y =  -331.972  mm,	Z =   844.692  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =    14.585 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1066.661  mm,	Y =  -270.706  mm,	Z =   801.500  mm,
	W =    28.148 deg,	P =   -36.678 deg,	R =    23.142 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1200.620  mm,	Y =  -331.568  mm,	Z =   803.018  mm,
	W =    28.151 deg,	P =   -36.679 deg,	R =   -15.561 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1000.111  mm,	Y =  -290.401  mm,	Z =   844.692  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =    14.585 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   753.111  mm,	Y =  -492.972  mm,	Z =   844.692  mm,
	W =    29.770 deg,	P =   -48.142 deg,	R =      .554 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   775.537  mm,	Y =  -786.141  mm,	Z =  1946.429  mm,
	W =   -25.333 deg,	P =   -46.944 deg,	R =    33.761 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   351.047  mm,	Y =     7.833  mm,	Z =  2455.305  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -25.000 deg
};
P[142]{
   GP1:
	UF : 1, UT : 1,	
	J1=      .000 deg,	J2=   -45.001 deg,	J3=    65.001 deg,
	J4=     -.002 deg,	J5=   -69.998 deg,	J6=     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000 deg,	J2=   180.000 deg
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   869.467  mm,	Y =    18.934  mm,	Z =   587.034  mm,
	W =      .000 deg,	P =    46.047 deg,	R =   177.513 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1114.467  mm,	Y =   405.934  mm,	Z =   239.034  mm,
	W =      .000 deg,	P =    46.047 deg,	R =   177.513 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1206.924  mm,	Y =   427.021  mm,	Z =    57.080  mm,
	W =    -1.752 deg,	P =    44.972 deg,	R =   177.535 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1206.140  mm,	Y =  -427.698  mm,	Z =    56.637  mm,
	W =    -2.069 deg,	P =    44.969 deg,	R =   177.081 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   923.454  mm,	Y =  -408.589  mm,	Z =   283.662  mm,
	W =      .000 deg,	P =    46.047 deg,	R =   177.059 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1130.453  mm,	Y =  -517.053  mm,	Z =   181.663  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1102.943  mm,	Y =  -510.504  mm,	Z =    48.370  mm,
	W =    12.699 deg,	P =      .451 deg,	R =    -2.017 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1202.266  mm,	Y =  -511.688  mm,	Z =    52.866  mm,
	W =    12.689 deg,	P =      .452 deg,	R =    -2.011 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1223.716  mm,	Y =  -511.573  mm,	Z =    53.134  mm,
	W =    13.354 deg,	P =   -18.278 deg,	R =    -2.108 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1090.505  mm,	Y =  -517.053  mm,	Z =   181.663  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1090.505  mm,	Y =   514.887  mm,	Z =   181.663  mm,
	W =     2.080 deg,	P =     1.084 deg,	R =    -2.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1106.481  mm,	Y =   519.927  mm,	Z =    49.181  mm,
	W =    -7.126 deg,	P =     -.205 deg,	R =    -2.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1202.837  mm,	Y =   518.103  mm,	Z =    50.802  mm,
	W =   -11.587 deg,	P =     -.382 deg,	R =    -2.035 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1224.743  mm,	Y =   517.964  mm,	Z =    50.717  mm,
	W =   -10.969 deg,	P =   -17.304 deg,	R =    -2.152 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1087.212  mm,	Y =   520.313  mm,	Z =   176.360  mm,
	W =     2.582 deg,	P =   -12.004 deg,	R =    -2.085 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   837.505  mm,	Y =   514.887  mm,	Z =   282.662  mm,
	W =      .000 deg,	P =    46.047 deg,	R =   177.059 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1173.408  mm,	Y =   683.888  mm,	Z =   198.662  mm,
	W =    34.780 deg,	P =    32.325 deg,	R =  -130.535 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1231.889  mm,	Y =   686.007  mm,	Z =    54.636  mm,
	W =    34.694 deg,	P =    32.328 deg,	R =  -130.608 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1228.875  mm,	Y =   475.852  mm,	Z =    57.970  mm,
	W =    34.693 deg,	P =    32.344 deg,	R =  -130.608 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1067.129  mm,	Y =   481.180  mm,	Z =   216.044  mm,
	W =    34.780 deg,	P =    32.324 deg,	R =  -130.534 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   937.609  mm,	Y =  -628.912  mm,	Z =   407.224  mm,
	W =   -23.252 deg,	P =    40.938 deg,	R =   145.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1201.032  mm,	Y =  -681.912  mm,	Z =   158.223  mm,
	W =   -42.401 deg,	P =    19.964 deg,	R =   108.964 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1224.521  mm,	Y =  -687.891  mm,	Z =    57.774  mm,
	W =   -41.547 deg,	P =    19.139 deg,	R =   110.306 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1225.852  mm,	Y =  -476.874  mm,	Z =    57.460  mm,
	W =   -41.533 deg,	P =    19.138 deg,	R =   110.296 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1086.293  mm,	Y =  -468.046  mm,	Z =   256.961  mm,
	W =   -41.896 deg,	P =    19.479 deg,	R =   109.976 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   896.023  mm,	Y =  -893.038  mm,	Z =   448.479  mm,
	W =    41.766 deg,	P =    21.483 deg,	R =   -23.558 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[169]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   896.023  mm,	Y =  -525.038  mm,	Z =   448.479  mm,
	W =    41.767 deg,	P =    21.484 deg,	R =   -23.557 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[170]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1109.023  mm,	Y =  -598.037  mm,	Z =   219.479  mm,
	W =    41.765 deg,	P =    21.483 deg,	R =   -41.551 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[171]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1168.995  mm,	Y =  -554.545  mm,	Z =    56.898  mm,
	W =    38.815 deg,	P =    24.855 deg,	R =   -38.452 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   190.858 deg
};
P[172]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1442.387  mm,	Y =  -609.120  mm,	Z =    58.479  mm,
	W =    30.335 deg,	P =    15.583 deg,	R =   -43.439 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   190.858 deg
};
P[173]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1433.417  mm,	Y =  -682.761  mm,	Z =   191.796  mm,
	W =    22.166 deg,	P =     7.570 deg,	R =   -45.177 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[174]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1312.935  mm,	Y =  -662.070  mm,	Z =   295.434  mm,
	W =    23.681 deg,	P =     9.068 deg,	R =   -44.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[175]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   693.417  mm,	Y =  -638.600  mm,	Z =   413.516  mm,
	W =    25.419 deg,	P =    10.774 deg,	R =   -44.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   190.858 deg
};
P[176]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   942.177  mm,	Y =   781.580  mm,	Z =   142.099  mm,
	W =   -34.550 deg,	P =    38.563 deg,	R =    42.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[177]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1291.176  mm,	Y =   799.653  mm,	Z =   164.696  mm,
	W =   -34.550 deg,	P =    38.563 deg,	R =    42.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[178]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1295.461  mm,	Y =   763.009  mm,	Z =    55.899  mm,
	W =   -30.106 deg,	P =    35.165 deg,	R =    44.796 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[179]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1571.086  mm,	Y =   760.626  mm,	Z =    54.881  mm,
	W =   -45.053 deg,	P =    16.620 deg,	R =    41.357 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   180.000 deg
};
P[180]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.954  mm,	Y =   778.681  mm,	Z =   144.754  mm,
	W =   -49.546 deg,	P =    16.109 deg,	R =    43.352 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[181]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   870.379  mm,	Y =   778.605  mm,	Z =   144.706  mm,
	W =   -44.038 deg,	P =    20.520 deg,	R =    47.848 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[182]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   974.554  mm,	Y =   454.643  mm,	Z =   993.563  mm,
	W =   -33.816 deg,	P =    14.085 deg,	R =    17.851 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[183]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   351.047  mm,	Y =     7.833  mm,	Z =  2455.305  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[184]{
   GP1:
	UF : 1, UT : 1,	
	J1=   -10.722 deg,	J2=   -74.333 deg,	J3=    51.477 deg,
	J4=    -3.440 deg,	J5=  -105.888 deg,	J6=   152.481 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[185]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   588.577  mm,	Y =   298.999  mm,	Z =   876.681  mm,
	W =   -18.946 deg,	P =    44.582 deg,	R =   168.812 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[186]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.932  mm,	Y =   314.970  mm,	Z =   764.761  mm,
	W =   -18.743 deg,	P =    41.455 deg,	R =   154.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[187]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   686.972  mm,	Y =   381.813  mm,	Z =   767.487  mm,
	W =   -33.672 deg,	P =    31.165 deg,	R =   147.999 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   180.000 deg
};
P[188]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   571.859  mm,	Y =   355.407  mm,	Z =   890.190  mm,
	W =   -40.409 deg,	P =    21.774 deg,	R =   135.318 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[189]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   642.859  mm,	Y =   281.847  mm,	Z =   890.189  mm,
	W =   -40.407 deg,	P =    21.774 deg,	R =   118.081 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[190]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.982  mm,	Y =   282.012  mm,	Z =   764.727  mm,
	W =   -39.531 deg,	P =    23.501 deg,	R =   116.498 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[191]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   687.735  mm,	Y =  -277.604  mm,	Z =   765.790  mm,
	W =    42.217 deg,	P =    17.331 deg,	R =  -106.993 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[192]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   660.939  mm,	Y =  -331.949  mm,	Z =   794.701  mm,
	W =    42.404 deg,	P =    16.748 deg,	R =  -107.282 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[193]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2780.753  mm,	Y =    85.443  mm,	Z =   844.936  mm,
	W =   -24.896 deg,	P =    26.710 deg,	R =    44.095 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[194]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   686.395  mm,	Y =  -319.415  mm,	Z =   767.232  mm,
	W =    42.396 deg,	P =    16.802 deg,	R =  -107.252 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[195]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   686.344  mm,	Y =  -395.538  mm,	Z =   767.374  mm,
	W =    42.332 deg,	P =    16.923 deg,	R =  -127.294 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[196]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   399.609  mm,	Y =  -296.816  mm,	Z =  1066.129  mm,
	W =    41.082 deg,	P =    20.266 deg,	R =  -127.997 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   180.000 deg
};
P[197]{
   GP1:
	UF : 1, UT : 1,	
	J1=   -50.020 deg,	J2=   -69.917 deg,	J3=    26.974 deg,
	J4=   -21.929 deg,	J5=   -51.874 deg,	J6=    85.098 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[198]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   901.665  mm,	Y =  -745.253  mm,	Z =  1087.372  mm,
	W =   -38.429 deg,	P =   -34.649 deg,	R =      .780 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[199]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   933.220  mm,	Y =  -797.225  mm,	Z =  1036.983  mm,
	W =   -35.805 deg,	P =   -29.184 deg,	R =    -4.130 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[200]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1028.274  mm,	Y =  -768.347  mm,	Z =  1035.766  mm,
	W =   -48.186 deg,	P =   -30.992 deg,	R =     6.378 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[201]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1003.246  mm,	Y =  -747.467  mm,	Z =  1073.858  mm,
	W =   -73.601 deg,	P =   -18.162 deg,	R =    24.579 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[202]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   635.246  mm,	Y =  -747.467  mm,	Z =  1080.599  mm,
	W =   -73.601 deg,	P =   -18.162 deg,	R =    24.579 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[203]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   863.342  mm,	Y =  -725.478  mm,	Z =  1030.928  mm,
	W =     -.609 deg,	P =   -11.317 deg,	R =    19.232 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[204]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   882.351  mm,	Y =  -732.230  mm,	Z =   976.636  mm,
	W =     -.603 deg,	P =   -11.312 deg,	R =    19.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[205]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   897.394  mm,	Y =  -786.978  mm,	Z =   978.292  mm,
	W =      .775 deg,	P =    -4.353 deg,	R =    18.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[206]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   891.737  mm,	Y =  -780.782  mm,	Z =  1041.865  mm,
	W =     -.266 deg,	P =   -10.779 deg,	R =    18.391 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[207]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   439.173  mm,	Y =  -215.827  mm,	Z =  1826.127  mm,
	W =  -100.113 deg,	P =   -16.084 deg,	R =    32.515 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   196.129 deg
};
P[208]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   417.228  mm,	Y =   731.748  mm,	Z =  1722.425  mm,
	W =    31.808 deg,	P =   -58.935 deg,	R =    27.008 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[209]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   892.925  mm,	Y =   804.354  mm,	Z =  1049.649  mm,
	W =    26.626 deg,	P =   -37.722 deg,	R =    33.504 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[210]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   945.035  mm,	Y =   821.604  mm,	Z =  1034.094  mm,
	W =    26.239 deg,	P =   -37.738 deg,	R =    26.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   162.834 deg
};
P[211]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1040.438  mm,	Y =   789.359  mm,	Z =  1035.196  mm,
	W =    34.470 deg,	P =   -41.842 deg,	R =    17.130 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.999 deg,	J2=   162.834 deg
};
P[212]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1023.433  mm,	Y =   777.172  mm,	Z =  1060.439  mm,
	W =    35.127 deg,	P =   -46.999 deg,	R =     8.144 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[213]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   647.433  mm,	Y =   777.171  mm,	Z =  1087.913  mm,
	W =    35.127 deg,	P =   -46.999 deg,	R =     8.144 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[214]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   875.269  mm,	Y =   770.680  mm,	Z =  1039.359  mm,
	W =    -7.923 deg,	P =    -8.129 deg,	R =    27.445 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[215]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   896.264  mm,	Y =   758.406  mm,	Z =   974.529  mm,
	W =    -7.900 deg,	P =    -8.126 deg,	R =    27.442 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[216]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   911.962  mm,	Y =   812.527  mm,	Z =   974.203  mm,
	W =    -6.200 deg,	P =    -4.980 deg,	R =    27.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[217]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   899.176  mm,	Y =   819.284  mm,	Z =  1032.753  mm,
	W =     -.314 deg,	P =    -5.430 deg,	R =    27.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[218]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   681.420  mm,	Y =   819.284  mm,	Z =  1312.752  mm,
	W =     -.314 deg,	P =    -5.430 deg,	R =    27.373 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[219]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   351.047  mm,	Y =     7.833  mm,	Z =  2455.305  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   162.834 deg
};
P[220]{
   GP1:
	UF : 1, UT : 1,	
	J1=     1.807 deg,	J2=   -17.141 deg,	J3=    43.457 deg,
	J4=      .157 deg,	J5=   -93.510 deg,	J6=    56.808 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[221]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.565  mm,	Y =     4.795  mm,	Z =  1612.445  mm,
	W =   -22.514 deg,	P =    41.901 deg,	R =    74.339 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[222]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2447.368  mm,	Y =    -1.157  mm,	Z =   875.833  mm,
	W =    -2.714 deg,	P =    44.884 deg,	R =    86.165 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[223]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2375.366  mm,	Y =   -75.636  mm,	Z =  1068.010  mm,
	W =    19.551 deg,	P =    -7.021 deg,	R =   -36.488 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[224]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.342  mm,	Y =  1429.156  mm,	Z =   -10.421  mm,
	W =      .000 deg,	P =      .000 deg,	R =    23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[225]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2779.723  mm,	Y =  1421.979  mm,	Z =   -21.231  mm,
	W =    -1.266 deg,	P =    -3.105 deg,	R =    23.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[226]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2779.964  mm,	Y =  1421.713  mm,	Z =   -21.036  mm,
	W =    -1.330 deg,	P =    -3.122 deg,	R =    23.452 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[227]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.342  mm,	Y =  1429.156  mm,	Z =   -10.421  mm,
	W =      .000 deg,	P =      .000 deg,	R =    23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[228]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.343  mm,	Y =  1408.935  mm,	Z =   -22.596  mm,
	W =      .000 deg,	P =      .000 deg,	R =    23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[229]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.308  mm,	Y =  1408.958  mm,	Z =   -22.720  mm,
	W =      .007 deg,	P =      .005 deg,	R =    23.421 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[230]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.342  mm,	Y =  1429.156  mm,	Z =   -10.421  mm,
	W =      .000 deg,	P =      .000 deg,	R =    23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[231]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2851.225  mm,	Y =  1481.272  mm,	Z =   628.377  mm,
	W =    23.286 deg,	P =   -46.577 deg,	R =   -54.612 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[232]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2809.449  mm,	Y = -1512.393  mm,	Z =   661.548  mm,
	W =   -26.535 deg,	P =   -41.775 deg,	R =    57.162 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[233]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2141.340  mm,	Y =  -438.241  mm,	Z =   417.943  mm,
	W =   -44.721 deg,	P =     4.092 deg,	R =     4.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[234]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.716  mm,	Y =  -437.126  mm,	Z =   420.005  mm,
	W =   -41.090 deg,	P =     3.840 deg,	R =     4.352 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[235]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2186.155  mm,	Y =  -439.272  mm,	Z =   417.702  mm,
	W =   -40.983 deg,	P =     3.829 deg,	R =     4.326 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[236]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2085.564  mm,	Y =   124.051  mm,	Z =   864.116  mm,
	W =     -.715 deg,	P =    43.124 deg,	R =   157.497 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[672]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2790.143  mm,	Y =    51.223  mm,	Z =   753.259  mm,
	W =   -32.541 deg,	P =    32.747 deg,	R =    40.290 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[673]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2827.690  mm,	Y =    49.321  mm,	Z =   754.374  mm,
	W =   -32.607 deg,	P =    32.790 deg,	R =    40.253 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[674]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2780.720  mm,	Y =    85.310  mm,	Z =   845.034  mm,
	W =   -26.000 deg,	P =    27.653 deg,	R =    43.586 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[675]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2810.125  mm,	Y =   -14.508  mm,	Z =   877.692  mm,
	W =     4.233 deg,	P =     1.150 deg,	R =   -15.151 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[676]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2779.721  mm,	Y =   -75.691  mm,	Z =   818.586  mm,
	W =    22.126 deg,	P =    31.326 deg,	R =   -51.965 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[677]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2792.677  mm,	Y =   -55.688  mm,	Z =   756.492  mm,
	W =    24.186 deg,	P =    33.500 deg,	R =   -50.860 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[678]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2832.302  mm,	Y =   -54.185  mm,	Z =   758.283  mm,
	W =    24.209 deg,	P =    33.526 deg,	R =   -50.852 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[679]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2779.721  mm,	Y =   -75.691  mm,	Z =   876.586  mm,
	W =    23.118 deg,	P =    32.394 deg,	R =   -51.441 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[680]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2779.721  mm,	Y =   -75.691  mm,	Z =   876.586  mm,
	W =     -.000 deg,	P =     6.847 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[681]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2840.099  mm,	Y =   -54.094  mm,	Z =   811.805  mm,
	W =      .000 deg,	P =    10.475 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[682]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2840.358  mm,	Y =   -49.439  mm,	Z =   753.835  mm,
	W =      .034 deg,	P =    10.479 deg,	R =      .019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[683]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2841.066  mm,	Y =    46.936  mm,	Z =   753.793  mm,
	W =      .058 deg,	P =    10.474 deg,	R =      .009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[684]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2840.099  mm,	Y =   -54.094  mm,	Z =   811.805  mm,
	W =      .000 deg,	P =    10.475 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[685]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2685.813  mm,	Y =   -54.094  mm,	Z =  1008.948  mm,
	W =     -.002 deg,	P =   -13.112 deg,	R =      .007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[686]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1792.252  mm,	Y =    19.310  mm,	Z =   722.821  mm,
	W =   -31.232 deg,	P =    38.925 deg,	R =    72.124 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[687]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1696.704  mm,	Y =  -379.767  mm,	Z =   546.319  mm,
	W =     0.000 deg,	P =    43.571 deg,	R =    90.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[688]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1720.777  mm,	Y =  -450.296  mm,	Z =   422.624  mm,
	W =     -.005 deg,	P =    43.535 deg,	R =    86.286 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[689]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1580.851  mm,	Y =  -449.343  mm,	Z =   421.313  mm,
	W =     -.007 deg,	P =    43.521 deg,	R =    86.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[690]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1587.135  mm,	Y =  -378.521  mm,	Z =   501.393  mm,
	W =      .000 deg,	P =    43.571 deg,	R =    86.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[691]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1998.349  mm,	Y =  -373.244  mm,	Z =   510.901  mm,
	W =   -38.646 deg,	P =    21.930 deg,	R =    21.323 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[692]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1957.677  mm,	Y =  -448.116  mm,	Z =   422.495  mm,
	W =   -40.835 deg,	P =    20.797 deg,	R =    22.335 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[693]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2027.930  mm,	Y =  -449.856  mm,	Z =   421.404  mm,
	W =   -43.530 deg,	P =    18.886 deg,	R =    21.391 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[694]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2047.306  mm,	Y =  -108.854  mm,	Z =   590.153  mm,
	W =   -38.646 deg,	P =    21.930 deg,	R =    21.323 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[695]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.592  mm,	Y =  -292.854  mm,	Z =   563.211  mm,
	W =   -43.351 deg,	P =    -4.892 deg,	R =    40.339 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[696]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2144.764  mm,	Y =  -384.746  mm,	Z =   419.107  mm,
	W =   -44.891 deg,	P =    -3.592 deg,	R =    39.096 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[697]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2100.455  mm,	Y =  -424.853  mm,	Z =   417.888  mm,
	W =   -43.231 deg,	P =    13.871 deg,	R =    57.009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[698]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2099.808  mm,	Y =  -430.674  mm,	Z =   419.684  mm,
	W =   -44.233 deg,	P =    -9.263 deg,	R =    60.679 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[699]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2096.561  mm,	Y =  -436.435  mm,	Z =   421.890  mm,
	W =   -46.555 deg,	P =    -2.361 deg,	R =    62.902 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[700]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.139  mm,	Y =  -394.363  mm,	Z =   568.863  mm,
	W =   -43.468 deg,	P =    -3.333 deg,	R =    66.484 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[701]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.952  mm,	Y =   241.660  mm,	Z =   616.315  mm,
	W =    29.266 deg,	P =    41.264 deg,	R =   -11.299 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[702]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1720.918  mm,	Y =   388.510  mm,	Z =   489.828  mm,
	W =     0.000 deg,	P =    43.571 deg,	R =   -89.993 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[703]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1722.929  mm,	Y =   446.414  mm,	Z =   421.655  mm,
	W =    -1.651 deg,	P =    44.983 deg,	R =   -92.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[704]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.785  mm,	Y =   445.500  mm,	Z =   419.176  mm,
	W =    -1.657 deg,	P =    45.006 deg,	R =   -92.336 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[705]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1594.524  mm,	Y =   351.963  mm,	Z =   523.980  mm,
	W =      .000 deg,	P =    43.571 deg,	R =   -92.306 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[706]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1972.524  mm,	Y =   351.963  mm,	Z =   523.980  mm,
	W =    31.879 deg,	P =    31.438 deg,	R =   -42.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[707]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1957.584  mm,	Y =   447.653  mm,	Z =   420.327  mm,
	W =    32.281 deg,	P =    33.246 deg,	R =   -40.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[708]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2031.416  mm,	Y =   447.860  mm,	Z =   420.354  mm,
	W =    34.389 deg,	P =    31.198 deg,	R =   -39.833 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[709]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2028.229  mm,	Y =   306.190  mm,	Z =   574.407  mm,
	W =    39.948 deg,	P =    19.080 deg,	R =   -23.626 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[710]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2028.228  mm,	Y =   306.190  mm,	Z =   574.407  mm,
	W =    39.948 deg,	P =    19.080 deg,	R =   -73.748 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[711]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2146.185  mm,	Y =   382.939  mm,	Z =   421.328  mm,
	W =    42.385 deg,	P =    16.872 deg,	R =   -60.307 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[712]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2104.195  mm,	Y =   420.889  mm,	Z =   422.475  mm,
	W =    44.151 deg,	P =     9.880 deg,	R =   -52.687 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[713]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2101.951  mm,	Y =   428.282  mm,	Z =   420.792  mm,
	W =    44.777 deg,	P =    -5.046 deg,	R =   -67.249 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[714]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2101.615  mm,	Y =   433.364  mm,	Z =   421.849  mm,
	W =    42.053 deg,	P =   -17.708 deg,	R =   -50.532 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[715]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2002.025  mm,	Y =   135.053  mm,	Z =   547.724  mm,
	W =    43.132 deg,	P =    -6.887 deg,	R =   -61.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[716]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2377.025  mm,	Y =   240.053  mm,	Z =   291.724  mm,
	W =    40.241 deg,	P =    18.349 deg,	R =   -20.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[717]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.551  mm,	Y =   374.115  mm,	Z =   302.484  mm,
	W =    40.241 deg,	P =    18.349 deg,	R =   -20.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[718]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2349.451  mm,	Y =   438.430  mm,	Z =   272.108  mm,
	W =    44.913 deg,	P =     3.071 deg,	R =    -3.074 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[719]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2407.584  mm,	Y =   438.337  mm,	Z =   273.841  mm,
	W =    38.958 deg,	P =   -20.279 deg,	R =    -1.908 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[720]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.551  mm,	Y =   374.115  mm,	Z =   302.484  mm,
	W =    40.241 deg,	P =    18.349 deg,	R =   -20.268 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[721]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.551  mm,	Y =   222.115  mm,	Z =   302.484  mm,
	W =    40.242 deg,	P =    18.350 deg,	R =   -20.267 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[722]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2484.503  mm,	Y =   222.115  mm,	Z =   302.484  mm,
	W =    43.394 deg,	P =    -4.399 deg,	R =     4.775 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[723]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2484.503  mm,	Y =   285.115  mm,	Z =   258.737  mm,
	W =    43.394 deg,	P =    -4.398 deg,	R =     4.776 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[724]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.396  mm,	Y =   435.010  mm,	Z =   224.036  mm,
	W =     9.249 deg,	P =   -44.227 deg,	R =    76.876 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[725]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2430.889  mm,	Y =   433.696  mm,	Z =   223.972  mm,
	W =    35.355 deg,	P =   -42.180 deg,	R =    70.882 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[726]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2484.503  mm,	Y =   285.115  mm,	Z =   258.737  mm,
	W =    43.394 deg,	P =    -4.398 deg,	R =     4.776 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[727]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2484.503  mm,	Y =   222.115  mm,	Z =   302.485  mm,
	W =    43.394 deg,	P =    -4.399 deg,	R =     4.775 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[728]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.551  mm,	Y =     2.115  mm,	Z =   302.485  mm,
	W =     5.759 deg,	P =    43.266 deg,	R =    98.508 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[729]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.551  mm,	Y =  -363.653  mm,	Z =   302.484  mm,
	W =   -43.559 deg,	P =     1.197 deg,	R =     1.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[730]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2346.935  mm,	Y =  -439.624  mm,	Z =   272.632  mm,
	W =   -44.978 deg,	P =     1.293 deg,	R =     1.297 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[731]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2407.646  mm,	Y =  -437.669  mm,	Z =   274.279  mm,
	W =   -45.256 deg,	P =   -24.481 deg,	R =     5.929 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   180.000 deg
};
P[732]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.551  mm,	Y =  -363.653  mm,	Z =   302.484  mm,
	W =   -43.559 deg,	P =     1.197 deg,	R =     1.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[733]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.551  mm,	Y =  -226.653  mm,	Z =   302.484  mm,
	W =   -43.560 deg,	P =     1.197 deg,	R =     1.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[734]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2475.388  mm,	Y =  -226.653  mm,	Z =   302.484  mm,
	W =   -29.446 deg,	P =   -33.698 deg,	R =   -44.366 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[735]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2484.256  mm,	Y =  -439.439  mm,	Z =   222.852  mm,
	W =    -2.387 deg,	P =   -44.924 deg,	R =   -86.621 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[736]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2426.375  mm,	Y =  -437.302  mm,	Z =   225.413  mm,
	W =   -26.791 deg,	P =   -43.570 deg,	R =   -86.675 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[737]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2475.389  mm,	Y =  -226.653  mm,	Z =   302.484  mm,
	W =   -29.446 deg,	P =   -33.698 deg,	R =   -44.366 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[738]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2475.361  mm,	Y =  -127.379  mm,	Z =   161.610  mm,
	W =    -9.376 deg,	P =    15.683 deg,	R =   -16.267 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[739]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2184.132  mm,	Y =   -42.626  mm,	Z =   871.946  mm,
	W =    -9.375 deg,	P =    15.689 deg,	R =   -16.266 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[740]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   390.614  mm,	Y =     -.024  mm,	Z =  2434.016  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   180.000 deg
};
P[741]{
   GP1:
	UF : 1, UT : 1,	
	J1=     -.065 deg,	J2=   -43.813 deg,	J3=    64.455 deg,
	J4=     -.068 deg,	J5=   -69.455 deg,	J6=      .029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[742]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1852.631  mm,	Y =    -6.774  mm,	Z =   565.209  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[743]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1655.504  mm,	Y =   141.226  mm,	Z =   511.209  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[744]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1609.671  mm,	Y =   144.502  mm,	Z =   412.787  mm,
	W =      .173 deg,	P =    45.931 deg,	R =    -2.572 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     -.000 deg
};
P[745]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1610.947  mm,	Y =   248.052  mm,	Z =   413.254  mm,
	W =      .102 deg,	P =    45.934 deg,	R =    -2.609 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[746]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.136  mm,	Y =   314.793  mm,	Z =   459.534  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[747]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1612.461  mm,	Y =   348.792  mm,	Z =   411.820  mm,
	W =    -2.031 deg,	P =    48.815 deg,	R =    -2.770 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[748]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1610.257  mm,	Y =   432.690  mm,	Z =   411.364  mm,
	W =    32.767 deg,	P =    34.177 deg,	R =    46.223 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[749]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1691.137  mm,	Y =   314.793  mm,	Z =   549.534  mm,
	W =     -.000 deg,	P =    45.918 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[750]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1691.136  mm,	Y =  -139.207  mm,	Z =   549.534  mm,
	W =     -.000 deg,	P =    45.919 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[751]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1611.466  mm,	Y =  -130.160  mm,	Z =   407.191  mm,
	W =      .132 deg,	P =    45.900 deg,	R =    -2.610 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[752]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1612.455  mm,	Y =  -157.655  mm,	Z =   408.458  mm,
	W =      .071 deg,	P =    45.910 deg,	R =    -2.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[753]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1701.553  mm,	Y =  -162.044  mm,	Z =   513.926  mm,
	W =      .001 deg,	P =    45.916 deg,	R =    -2.666 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[754]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1651.458  mm,	Y =  -207.923  mm,	Z =   466.756  mm,
	W =      .001 deg,	P =    45.916 deg,	R =    15.512 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[755]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1611.664  mm,	Y =  -223.720  mm,	Z =   410.590  mm,
	W =    -1.058 deg,	P =    39.466 deg,	R =    14.834 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[756]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1613.255  mm,	Y =  -156.646  mm,	Z =   408.642  mm,
	W =     3.854 deg,	P =    34.718 deg,	R =   -21.298 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[757]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1663.438  mm,	Y =  -190.775  mm,	Z =   486.236  mm,
	W =      .001 deg,	P =    45.916 deg,	R =   -32.606 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[758]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1694.246  mm,	Y =  -335.221  mm,	Z =   519.016  mm,
	W =   -24.937 deg,	P =    39.897 deg,	R =   -38.608 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[759]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1609.958  mm,	Y =  -354.596  mm,	Z =   409.981  mm,
	W =   -28.732 deg,	P =    41.555 deg,	R =   -39.650 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[760]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.480  mm,	Y =  -434.366  mm,	Z =   408.044  mm,
	W =   -34.474 deg,	P =    37.257 deg,	R =   -48.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[761]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1714.229  mm,	Y =  -410.520  mm,	Z =   541.553  mm,
	W =   -30.592 deg,	P =    36.083 deg,	R =   -32.808 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[762]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1852.631  mm,	Y =    -6.774  mm,	Z =   565.209  mm,
	W =     -.000 deg,	P =    45.917 deg,	R =    -2.669 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[763]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2052.631  mm,	Y =  -276.774  mm,	Z =   565.209  mm,
	W =   -41.084 deg,	P =    22.633 deg,	R =    21.147 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[764]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2088.553  mm,	Y =  -373.284  mm,	Z =   491.208  mm,
	W =   -45.800 deg,	P =     3.716 deg,	R =      .937 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[765]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2063.471  mm,	Y =  -440.130  mm,	Z =   414.294  mm,
	W =   -44.841 deg,	P =     4.112 deg,	R =     4.121 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[766]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2311.826  mm,	Y =  -442.485  mm,	Z =   415.387  mm,
	W =   -44.797 deg,	P =     4.102 deg,	R =     4.097 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[767]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2305.976  mm,	Y =  -368.534  mm,	Z =   500.330  mm,
	W =   -45.801 deg,	P =     3.717 deg,	R =     4.521 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[768]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2315.872  mm,	Y =  -419.741  mm,	Z =   406.098  mm,
	W =   -44.926 deg,	P =     1.424 deg,	R =    -8.822 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[769]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2238.454  mm,	Y =  -405.307  mm,	Z =   405.845  mm,
	W =   -44.909 deg,	P =     2.942 deg,	R =   -10.342 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[770]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2163.271  mm,	Y =  -384.781  mm,	Z =   405.753  mm,
	W =   -44.753 deg,	P =      .541 deg,	R =   -16.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[771]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2185.243  mm,	Y =  -309.879  mm,	Z =   500.265  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =   -19.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[772]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.243  mm,	Y =  -309.879  mm,	Z =   717.265  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =     3.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[773]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2342.588  mm,	Y =  -441.901  mm,	Z =   567.316  mm,
	W =   -44.855 deg,	P =     3.773 deg,	R =     3.782 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[774]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2403.136  mm,	Y =  -439.944  mm,	Z =   567.175  mm,
	W =   -49.121 deg,	P =     -.390 deg,	R =    21.519 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[775]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.243  mm,	Y =  -309.879  mm,	Z =   717.265  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =     3.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[776]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2424.155  mm,	Y =  -399.247  mm,	Z =   717.265  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =     3.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[777]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.618  mm,	Y =  -440.224  mm,	Z =   618.446  mm,
	W =   -44.879 deg,	P =     3.779 deg,	R =     3.789 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[778]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2426.441  mm,	Y =  -440.765  mm,	Z =   617.885  mm,
	W =   -44.875 deg,	P =     3.774 deg,	R =     3.782 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[779]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2422.927  mm,	Y =  -439.786  mm,	Z =   619.638  mm,
	W =   -47.202 deg,	P =    -4.228 deg,	R =    12.058 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[780]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2412.831  mm,	Y =  -438.608  mm,	Z =   617.946  mm,
	W =   -54.100 deg,	P =   -12.118 deg,	R =    21.734 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[781]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2474.892  mm,	Y =  -236.857  mm,	Z =   699.878  mm,
	W =   -45.800 deg,	P =     3.717 deg,	R =     3.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[782]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2498.018  mm,	Y =  -347.318  mm,	Z =   570.880  mm,
	W =   -28.620 deg,	P =   -37.578 deg,	R =   -47.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[783]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2483.026  mm,	Y =  -442.881  mm,	Z =   516.609  mm,
	W =     -.757 deg,	P =   -44.978 deg,	R =   -88.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[784]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2425.172  mm,	Y =  -441.096  mm,	Z =   516.929  mm,
	W =   -46.015 deg,	P =   -32.689 deg,	R =   -60.060 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[785]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2560.160  mm,	Y =  -368.783  mm,	Z =   604.364  mm,
	W =   -28.619 deg,	P =   -37.577 deg,	R =   -73.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[786]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2560.160  mm,	Y =  -188.783  mm,	Z =   604.364  mm,
	W =   -28.619 deg,	P =   -37.577 deg,	R =   -18.464 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[787]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2065.242  mm,	Y =   379.121  mm,	Z =   528.266  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -20.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[788]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2063.097  mm,	Y =   437.980  mm,	Z =   414.739  mm,
	W =    42.297 deg,	P =    17.060 deg,	R =   -17.870 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[789]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2316.160  mm,	Y =   435.659  mm,	Z =   417.388  mm,
	W =    42.299 deg,	P =    17.065 deg,	R =   -17.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[790]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2302.760  mm,	Y =   370.627  mm,	Z =   499.650  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -18.246 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[791]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2315.088  mm,	Y =   415.032  mm,	Z =   410.831  mm,
	W =    34.268 deg,	P =    15.906 deg,	R =    -9.927 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[792]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2233.834  mm,	Y =   395.684  mm,	Z =   410.334  mm,
	W =    42.564 deg,	P =    16.228 deg,	R =    -3.478 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[793]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2159.172  mm,	Y =   379.102  mm,	Z =   406.936  mm,
	W =    42.409 deg,	P =    16.706 deg,	R =     -.973 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[794]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2175.664  mm,	Y =   307.835  mm,	Z =   684.697  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =    -1.009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[795]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.664  mm,	Y =   365.835  mm,	Z =   684.697  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -16.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[796]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2345.371  mm,	Y =   435.818  mm,	Z =   568.431  mm,
	W =    42.336 deg,	P =    16.930 deg,	R =   -17.720 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[797]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2402.616  mm,	Y =   434.310  mm,	Z =   568.239  mm,
	W =    45.526 deg,	P =      .647 deg,	R =   -34.327 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=      .000 deg
};
P[798]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.664  mm,	Y =   365.835  mm,	Z =   684.697  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -18.155 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[799]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2483.065  mm,	Y =   435.633  mm,	Z =   619.433  mm,
	W =    42.329 deg,	P =    17.028 deg,	R =   -17.828 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[800]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2428.112  mm,	Y =   434.137  mm,	Z =   619.473  mm,
	W =    42.315 deg,	P =    17.019 deg,	R =   -17.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[801]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2418.833  mm,	Y =   433.862  mm,	Z =   619.119  mm,
	W =    49.444 deg,	P =     7.080 deg,	R =   -20.554 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[802]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.050  mm,	Y =   432.026  mm,	Z =   615.794  mm,
	W =    55.585 deg,	P =     -.624 deg,	R =   -30.576 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[803]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2496.124  mm,	Y =   220.970  mm,	Z =   706.785  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -18.155 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[804]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2496.124  mm,	Y =   371.970  mm,	Z =   564.784  mm,
	W =    28.310 deg,	P =   -37.796 deg,	R =    47.397 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[805]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2481.086  mm,	Y =   435.399  mm,	Z =   517.416  mm,
	W =    -2.570 deg,	P =   -44.922 deg,	R =    93.655 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[806]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2425.311  mm,	Y =   433.891  mm,	Z =   519.254  mm,
	W =    33.691 deg,	P =   -40.561 deg,	R =    68.577 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=      .000 deg
};
P[807]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2505.724  mm,	Y =   371.970  mm,	Z =   545.104  mm,
	W =    28.310 deg,	P =   -37.796 deg,	R =    47.397 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[808]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2496.124  mm,	Y =    40.970  mm,	Z =   706.786  mm,
	W =    43.428 deg,	P =    16.677 deg,	R =   -18.155 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[809]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.123  mm,	Y =    84.024  mm,	Z =   706.785  mm,
	W =    -6.286 deg,	P =    45.581 deg,	R =  -100.055 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[810]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   390.614  mm,	Y =     -.024  mm,	Z =  2434.016  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[811]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1169.761  mm,	Y =  1400.668  mm,	Z =  1377.270  mm,
	W =     2.123 deg,	P =   -27.834 deg,	R =    46.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[812]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2160.560  mm,	Y =  1340.283  mm,	Z =   479.513  mm,
	W =     3.095 deg,	P =    -8.630 deg,	R =    30.802 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[813]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.342  mm,	Y =  1419.988  mm,	Z =    24.239  mm,
	W =      .000 deg,	P =      .000 deg,	R =    23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[814]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.240  mm,	Y =  1434.830  mm,	Z =   -20.868  mm,
	W =    -1.935 deg,	P =    -4.569 deg,	R =    23.477 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[815]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.240  mm,	Y =  1434.830  mm,	Z =   -20.868  mm,
	W =    -1.935 deg,	P =    -4.569 deg,	R =    23.477 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[816]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2796.342  mm,	Y =  1434.707  mm,	Z =    58.334  mm,
	W =      .000 deg,	P =      .000 deg,	R =    23.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[817]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2379.579  mm,	Y =  1303.563  mm,	Z =   243.935  mm,
	W =   -10.292 deg,	P =     3.753 deg,	R =    25.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[818]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1425.741  mm,	Y =   537.295  mm,	Z =   426.307  mm,
	W =   -37.512 deg,	P =    -9.236 deg,	R =    21.393 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[819]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1439.456  mm,	Y =   227.579  mm,	Z =    82.897  mm,
	W =   -43.796 deg,	P =    -2.383 deg,	R =    15.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[820]{
   GP1:
	UF : 1, UT : 1,	
	J1=    12.170 deg,	J2=   -42.804 deg,	J3=   -24.846 deg,
	J4=    75.067 deg,	J5=   -27.353 deg,	J6=   -37.008 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[821]{
   GP1:
	UF : 1, UT : 1,	
	J1=    10.193 deg,	J2=   -38.006 deg,	J3=   -29.309 deg,
	J4=    82.275 deg,	J5=   -30.701 deg,	J6=   -47.783 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[822]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1483.187  mm,	Y =   -32.092  mm,	Z =   -42.652  mm,
	W =   -44.722 deg,	P =     5.497 deg,	R =    17.517 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[823]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1498.238  mm,	Y =   -27.378  mm,	Z =   -40.373  mm,
	W =   -44.733 deg,	P =     5.508 deg,	R =    32.342 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[824]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1504.966  mm,	Y =   -16.747  mm,	Z =   -39.003  mm,
	W =   -44.734 deg,	P =     5.503 deg,	R =    65.609 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[825]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1511.354  mm,	Y =    32.208  mm,	Z =   -37.699  mm,
	W =   -36.293 deg,	P =   -28.673 deg,	R =    51.824 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[826]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1524.743  mm,	Y =    52.776  mm,	Z =   -40.640  mm,
	W =   -30.310 deg,	P =    34.943 deg,	R =    61.025 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[827]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1546.251  mm,	Y =    47.295  mm,	Z =   -42.912  mm,
	W =   -44.969 deg,	P =    -1.364 deg,	R =   -46.388 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[828]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1576.609  mm,	Y =    13.312  mm,	Z =   -45.161  mm,
	W =   -44.972 deg,	P =    -1.331 deg,	R =   -46.412 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[829]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.799  mm,	Y =     8.317  mm,	Z =   -43.206  mm,
	W =   -44.959 deg,	P =    -1.326 deg,	R =   -46.409 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[830]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1595.851  mm,	Y =   168.471  mm,	Z =    12.234  mm,
	W =   -43.745 deg,	P =    -3.325 deg,	R =    -4.329 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[831]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1790.704  mm,	Y =   213.074  mm,	Z =    23.022  mm,
	W =    50.484 deg,	P =     5.553 deg,	R =   -78.853 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[832]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1934.971  mm,	Y =    90.847  mm,	Z =    21.992  mm,
	W =    44.321 deg,	P =     6.701 deg,	R =   -79.548 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[833]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2032.099  mm,	Y =    33.450  mm,	Z =   -38.212  mm,
	W =    40.098 deg,	P =    22.435 deg,	R =  -114.326 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[834]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2049.069  mm,	Y =     9.346  mm,	Z =   -34.789  mm,
	W =    48.817 deg,	P =    10.905 deg,	R =  -129.577 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[835]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1879.866  mm,	Y =   103.962  mm,	Z =    68.602  mm,
	W =    32.019 deg,	P =    14.952 deg,	R =  -129.625 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[842]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   689.476  mm,	Y =   450.392  mm,	Z =    80.587  mm,
	W =    -2.211 deg,	P =    43.411 deg,	R =   -86.182 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[843]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1250.850  mm,	Y =  -232.930  mm,	Z =    12.233  mm,
	W =    33.676 deg,	P =    29.929 deg,	R =    49.697 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[844]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1783.851  mm,	Y =  -338.130  mm,	Z =    12.233  mm,
	W =    33.676 deg,	P =    29.929 deg,	R =    49.697 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[845]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.271  mm,	Y =  -490.428  mm,	Z =   -42.534  mm,
	W =     5.231 deg,	P =    44.768 deg,	R =    15.413 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[846]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1614.266  mm,	Y =   -29.526  mm,	Z =   -42.280  mm,
	W =    37.974 deg,	P =    26.237 deg,	R =    68.462 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[847]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.335  mm,	Y =   -60.794  mm,	Z =    56.902  mm,
	W =    41.445 deg,	P =    15.816 deg,	R =    46.464 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[848]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1913.446  mm,	Y =   -62.657  mm,	Z =   130.915  mm,
	W =   -26.067 deg,	P =   -28.164 deg,	R =    87.762 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[849]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1955.399  mm,	Y =   -13.539  mm,	Z =    38.320  mm,
	W =   -20.495 deg,	P =   -27.294 deg,	R =    86.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[850]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1993.467  mm,	Y =   -68.392  mm,	Z =    26.636  mm,
	W =   -14.672 deg,	P =   -26.883 deg,	R =    84.191 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[851]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.541  mm,	Y =   -94.243  mm,	Z =    22.582  mm,
	W =   -14.675 deg,	P =   -26.885 deg,	R =    84.189 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[852]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2023.206  mm,	Y =  -114.415  mm,	Z =    18.237  mm,
	W =   -19.566 deg,	P =   -27.930 deg,	R =    84.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[853]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2039.378  mm,	Y =  -135.448  mm,	Z =    13.382  mm,
	W =   -13.820 deg,	P =   -36.350 deg,	R =    95.180 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[854]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.566  mm,	Y =  -142.905  mm,	Z =     8.414  mm,
	W =    -3.677 deg,	P =   -40.350 deg,	R =    86.323 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[855]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2127.986  mm,	Y =  -179.204  mm,	Z =    -8.471  mm,
	W =    -1.490 deg,	P =   -40.478 deg,	R =    83.072 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[856]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.020  mm,	Y =  -196.097  mm,	Z =   -14.879  mm,
	W =    -8.355 deg,	P =   -36.865 deg,	R =    82.663 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[857]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2299.027  mm,	Y =  -303.490  mm,	Z =   -51.207  mm,
	W =    20.582 deg,	P =   -32.263 deg,	R =    33.785 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[858]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2329.946  mm,	Y =  -335.417  mm,	Z =   -60.024  mm,
	W =   -26.408 deg,	P =   -19.640 deg,	R =    95.166 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[859]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2341.098  mm,	Y =  -380.731  mm,	Z =   -64.593  mm,
	W =   -29.910 deg,	P =    -2.402 deg,	R =    85.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[860]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2340.662  mm,	Y =  -533.390  mm,	Z =   -64.104  mm,
	W =   -26.091 deg,	P =   -15.348 deg,	R =    61.586 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[861]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2365.150  mm,	Y =  -567.969  mm,	Z =   -68.744  mm,
	W =    44.921 deg,	P =     -.806 deg,	R =     8.102 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[862]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2409.481  mm,	Y =  -546.147  mm,	Z =   -86.786  mm,
	W =    53.375 deg,	P =    29.924 deg,	R =    49.281 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[863]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2459.813  mm,	Y =  -506.183  mm,	Z =   -97.056  mm,
	W =    44.281 deg,	P =   -15.560 deg,	R =    28.105 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[864]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2530.042  mm,	Y =  -577.464  mm,	Z =  -112.605  mm,
	W =   -19.567 deg,	P =   -23.190 deg,	R =    42.062 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[865]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2528.068  mm,	Y =  -899.653  mm,	Z =  -111.809  mm,
	W =   -24.862 deg,	P =   -17.327 deg,	R =    57.273 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[866]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2430.793  mm,	Y =  -903.370  mm,	Z =   103.434  mm,
	W =   -23.326 deg,	P =   -26.866 deg,	R =    43.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[867]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2368.792  mm,	Y = -1104.074  mm,	Z =    14.434  mm,
	W =   -23.326 deg,	P =   -26.866 deg,	R =    43.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[868]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.610  mm,	Y = -1082.928  mm,	Z =   -79.092  mm,
	W =   -19.546 deg,	P =   -23.191 deg,	R =    42.044 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[869]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.240  mm,	Y = -1067.454  mm,	Z =   -79.890  mm,
	W =   -26.072 deg,	P =   -15.376 deg,	R =    61.548 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[870]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.328  mm,	Y = -1059.339  mm,	Z =   -82.122  mm,
	W =   -29.529 deg,	P =     5.502 deg,	R =    57.417 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[871]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2417.737  mm,	Y = -1058.858  mm,	Z =   -87.317  mm,
	W =   -32.089 deg,	P =    36.210 deg,	R =    28.759 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[872]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2433.460  mm,	Y = -1056.417  mm,	Z =   -89.488  mm,
	W =   -32.089 deg,	P =    36.208 deg,	R =    28.755 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[873]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2490.094  mm,	Y = -1043.948  mm,	Z =  -104.256  mm,
	W =   -34.501 deg,	P =    16.016 deg,	R =    43.409 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[874]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2516.545  mm,	Y = -1011.556  mm,	Z =  -109.379  mm,
	W =   -31.920 deg,	P =     -.640 deg,	R =    54.341 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[875]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2527.383  mm,	Y =  -994.955  mm,	Z =  -113.224  mm,
	W =   -33.554 deg,	P =     6.843 deg,	R =    49.559 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[876]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2539.741  mm,	Y =  -971.323  mm,	Z =  -114.238  mm,
	W =   -29.429 deg,	P =    -8.196 deg,	R =    58.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[877]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2534.996  mm,	Y =  -932.454  mm,	Z =  -113.004  mm,
	W =   -16.664 deg,	P =   -27.549 deg,	R =    67.339 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[878]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2530.050  mm,	Y =  -916.394  mm,	Z =  -110.772  mm,
	W =   -21.954 deg,	P =   -21.718 deg,	R =    65.079 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[879]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2527.190  mm,	Y =  -898.692  mm,	Z =  -109.493  mm,
	W =   -26.202 deg,	P =   -15.169 deg,	R =    61.996 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[880]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2343.611  mm,	Y =  -907.396  mm,	Z =   140.307  mm,
	W =   -59.893 deg,	P =   -10.052 deg,	R =    84.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=    90.000 deg
};
P[881]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1150.634  mm,	Y =  -892.054  mm,	Z =   818.818  mm,
	W =   -59.893 deg,	P =   -10.052 deg,	R =    84.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[882]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   521.831  mm,	Y = -1015.927  mm,	Z =   836.270  mm,
	W =    -8.786 deg,	P =    50.997 deg,	R =    66.144 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[883]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   710.644  mm,	Y =     3.965  mm,	Z =  1496.074  mm,
	W =   -24.135 deg,	P =    23.300 deg,	R =    55.066 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[884]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2063.024  mm,	Y =   140.025  mm,	Z =   970.779  mm,
	W =    -3.034 deg,	P =    45.241 deg,	R =   165.093 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[885]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2077.801  mm,	Y =   102.634  mm,	Z =   864.459  mm,
	W =     -.693 deg,	P =    43.134 deg,	R =   157.506 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[886]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2075.878  mm,	Y =   148.875  mm,	Z =   863.326  mm,
	W =      .395 deg,	P =    43.419 deg,	R =  -114.443 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[887]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2047.235  mm,	Y =   141.441  mm,	Z =   862.686  mm,
	W =      .266 deg,	P =    43.290 deg,	R =   -16.093 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[888]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2032.386  mm,	Y =    94.306  mm,	Z =   863.797  mm,
	W =     -.955 deg,	P =    43.088 deg,	R =   -19.865 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[889]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2045.852  mm,	Y =    71.656  mm,	Z =   862.184  mm,
	W =      .985 deg,	P =    43.307 deg,	R =    72.945 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[890]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.666  mm,	Y =    81.698  mm,	Z =   863.376  mm,
	W =      .625 deg,	P =    42.194 deg,	R =   151.061 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[891]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2078.289  mm,	Y =   102.157  mm,	Z =   863.070  mm,
	W =      .142 deg,	P =    42.671 deg,	R =   157.880 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[892]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2049.931  mm,	Y =    77.805  mm,	Z =  1030.403  mm,
	W =     3.803 deg,	P =    43.129 deg,	R =   172.126 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[893]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2090.009  mm,	Y =   205.805  mm,	Z =  1030.403  mm,
	W =    -6.392 deg,	P =    42.881 deg,	R =    76.256 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[894]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2062.519  mm,	Y =   180.497  mm,	Z =   861.554  mm,
	W =    -6.387 deg,	P =    42.873 deg,	R =    81.031 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[895]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2174.520  mm,	Y =   180.106  mm,	Z =   863.074  mm,
	W =    -6.392 deg,	P =    42.881 deg,	R =    81.019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[896]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2221.599  mm,	Y =   158.867  mm,	Z =   861.206  mm,
	W =    -6.328 deg,	P =    42.856 deg,	R =    37.062 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[897]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2244.893  mm,	Y =   114.757  mm,	Z =   861.492  mm,
	W =    -6.322 deg,	P =    42.884 deg,	R =     2.366 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[898]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2341.485  mm,	Y =   -49.711  mm,	Z =   862.794  mm,
	W =    -6.381 deg,	P =    42.869 deg,	R =    40.648 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[899]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2546.714  mm,	Y =   -99.139  mm,	Z =   864.640  mm,
	W =    -6.392 deg,	P =    42.880 deg,	R =    80.792 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[900]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2596.829  mm,	Y =  -109.510  mm,	Z =   863.742  mm,
	W =   -16.119 deg,	P =    40.648 deg,	R =    47.370 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[901]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2625.885  mm,	Y =  -138.610  mm,	Z =   862.959  mm,
	W =   -32.655 deg,	P =    30.025 deg,	R =    -5.267 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[902]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2647.850  mm,	Y =  -178.137  mm,	Z =   863.251  mm,
	W =   -32.721 deg,	P =    30.015 deg,	R =     -.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[903]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.688  mm,	Y =  -173.702  mm,	Z =   956.035  mm,
	W =   -32.753 deg,	P =    30.014 deg,	R =    10.111 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[904]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.687  mm,	Y =  -345.701  mm,	Z =   956.035  mm,
	W =   -18.106 deg,	P =    33.354 deg,	R =    -8.090 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[905]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2752.136  mm,	Y =  -345.701  mm,	Z =   956.035  mm,
	W =   -15.637 deg,	P =    18.786 deg,	R =    -8.670 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[906]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2651.125  mm,	Y =  -181.965  mm,	Z =   865.326  mm,
	W =     -.409 deg,	P =    36.670 deg,	R =    25.404 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[907]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2712.963  mm,	Y =  -297.527  mm,	Z =   864.372  mm,
	W =   -17.171 deg,	P =    33.307 deg,	R =    -3.589 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[908]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2759.202  mm,	Y =  -384.011  mm,	Z =   866.352  mm,
	W =   -26.306 deg,	P =    25.182 deg,	R =   -22.716 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[909]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2800.634  mm,	Y =  -462.037  mm,	Z =   869.406  mm,
	W =   -35.059 deg,	P =    21.146 deg,	R =   -19.889 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[910]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2864.597  mm,	Y =  -587.463  mm,	Z =   866.155  mm,
	W =   -40.163 deg,	P =    17.500 deg,	R =    -9.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[911]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2892.084  mm,	Y =  -550.347  mm,	Z =   921.026  mm,
	W =   -46.061 deg,	P =    13.790 deg,	R =    -1.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[912]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2345.084  mm,	Y =   -99.346  mm,	Z =   921.026  mm,
	W =   -40.224 deg,	P =    17.491 deg,	R =   -11.143 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[913]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2345.241  mm,	Y =  -143.403  mm,	Z =   870.965  mm,
	W =   -36.126 deg,	P =    18.220 deg,	R =    -8.746 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[914]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2282.648  mm,	Y =  -109.823  mm,	Z =   871.166  mm,
	W =   -36.146 deg,	P =    18.219 deg,	R =    -8.768 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[915]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2345.084  mm,	Y =   -99.346  mm,	Z =  1021.026  mm,
	W =   -40.224 deg,	P =    17.491 deg,	R =   -11.143 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[916]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2403.931  mm,	Y =  -153.062  mm,	Z =   942.017  mm,
	W =   -14.995 deg,	P =    37.514 deg,	R =   -38.639 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[917]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2347.931  mm,	Y =  -146.592  mm,	Z =   870.891  mm,
	W =   -14.995 deg,	P =    37.514 deg,	R =   -38.639 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[918]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2337.717  mm,	Y =  -167.449  mm,	Z =   870.891  mm,
	W =   -14.995 deg,	P =    37.514 deg,	R =   -38.639 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[919]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2375.358  mm,	Y =  -188.860  mm,	Z =   936.517  mm,
	W =   -11.991 deg,	P =    31.145 deg,	R =   -43.623 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[920]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2241.084  mm,	Y =  -176.345  mm,	Z =  1066.026  mm,
	W =    39.867 deg,	P =   -18.417 deg,	R =   -24.499 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[921]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.739  mm,	Y =  -132.899  mm,	Z =   875.644  mm,
	W =    39.860 deg,	P =   -18.420 deg,	R =   -24.496 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[922]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2334.568  mm,	Y =  -169.227  mm,	Z =   875.761  mm,
	W =    34.466 deg,	P =   -19.855 deg,	R =   -14.827 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[923]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2241.084  mm,	Y =  -176.345  mm,	Z =  1066.025  mm,
	W =    39.866 deg,	P =   -18.417 deg,	R =   -39.014 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[924]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.083  mm,	Y =   143.655  mm,	Z =  1238.025  mm,
	W =    39.866 deg,	P =   -18.417 deg,	R =   -39.014 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[925]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1426.736  mm,	Y =   -88.930  mm,	Z =  1060.273  mm,
	W =    35.942 deg,	P =   -29.145 deg,	R =   -48.109 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[926]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1598.736  mm,	Y =   -66.432  mm,	Z =   872.868  mm,
	W =    35.824 deg,	P =   -29.280 deg,	R =   -48.048 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[927]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.530  mm,	Y =  -479.384  mm,	Z =   873.834  mm,
	W =    44.626 deg,	P =    -6.633 deg,	R =   -75.290 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[928]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1441.417  mm,	Y =  -441.770  mm,	Z =  1074.656  mm,
	W =    48.178 deg,	P =   -19.898 deg,	R =   -92.005 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[929]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1441.417  mm,	Y =  -118.913  mm,	Z =  1074.656  mm,
	W =    -2.520 deg,	P =    51.125 deg,	R =   157.822 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[930]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.416  mm,	Y =   -62.913  mm,	Z =  1074.656  mm,
	W =    -3.706 deg,	P =    39.360 deg,	R =     3.645 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[931]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1611.253  mm,	Y =   -63.766  mm,	Z =   866.535  mm,
	W =    -3.351 deg,	P =    44.836 deg,	R =     3.194 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.995 deg,	J2=    90.000 deg
};
P[932]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1668.640  mm,	Y =  -484.243  mm,	Z =   867.735  mm,
	W =   -41.394 deg,	P =    19.465 deg,	R =   -61.379 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[933]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1815.595  mm,	Y =  -400.803  mm,	Z =  1004.765  mm,
	W =   -43.547 deg,	P =    12.687 deg,	R =   -45.705 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[934]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1833.172  mm,	Y =   137.472  mm,	Z =  1065.903  mm,
	W =    -8.569 deg,	P =    33.778 deg,	R =   -31.530 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[935]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   730.446  mm,	Y =   700.194  mm,	Z =  1357.060  mm,
	W =    -8.561 deg,	P =    33.775 deg,	R =    -6.417 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[936]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2460.862  mm,	Y =  1574.474  mm,	Z =  1293.677  mm,
	W =    34.631 deg,	P =   -20.439 deg,	R =   -45.641 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[937]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2554.185  mm,	Y =  1608.224  mm,	Z =   812.612  mm,
	W =    36.017 deg,	P =   -29.586 deg,	R =   -62.799 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[938]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2770.210  mm,	Y =  1515.223  mm,	Z =   663.612  mm,
	W =    36.017 deg,	P =   -29.586 deg,	R =   -64.860 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[939]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2859.251  mm,	Y =  1470.161  mm,	Z =   622.793  mm,
	W =    21.035 deg,	P =   -48.595 deg,	R =   -52.950 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[940]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2862.590  mm,	Y =  1519.336  mm,	Z =   614.634  mm,
	W =    25.659 deg,	P =   -39.366 deg,	R =   -46.936 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[941]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2848.858  mm,	Y =  1554.917  mm,	Z =   605.833  mm,
	W =    38.517 deg,	P =   -13.826 deg,	R =   -52.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[942]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2816.955  mm,	Y =  1578.946  mm,	Z =   600.178  mm,
	W =    36.558 deg,	P =     2.413 deg,	R =   -39.556 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[943]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2767.863  mm,	Y =  1609.158  mm,	Z =   594.729  mm,
	W =    36.709 deg,	P =    -5.347 deg,	R =   -45.355 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[944]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2666.921  mm,	Y =  1574.106  mm,	Z =   705.413  mm,
	W =    36.699 deg,	P =    -5.422 deg,	R =   -45.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[945]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2623.443  mm,	Y =  1700.524  mm,	Z =   713.976  mm,
	W =   -50.219 deg,	P =    -7.077 deg,	R =    46.580 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[946]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2764.713  mm,	Y =  1617.218  mm,	Z =   592.857  mm,
	W =   -50.556 deg,	P =     -.080 deg,	R =    52.376 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[947]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2778.189  mm,	Y =  1640.751  mm,	Z =   588.691  mm,
	W =   -50.492 deg,	P =     -.105 deg,	R =    52.361 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=    80.000 deg
};
P[948]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2619.398  mm,	Y =  1698.477  mm,	Z =   698.692  mm,
	W =   -54.549 deg,	P =   -20.575 deg,	R =    64.434 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[949]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1431.673  mm,	Y =   731.089  mm,	Z =  1754.089  mm,
	W =    28.012 deg,	P =   -23.444 deg,	R =   -34.782 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[950]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   390.614  mm,	Y =     -.024  mm,	Z =  2434.016  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    80.000 deg
};
P[951]{
   GP1:
	UF : 1, UT : 1,	
	J1=   -67.228 deg,	J2=   -42.143 deg,	J3=    26.623 deg,
	J4=   -68.823 deg,	J5=  -105.727 deg,	J6=   144.671 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[952]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   921.742  mm,	Y =  -602.772  mm,	Z =  1080.858  mm,
	W =   -52.537 deg,	P =    -3.928 deg,	R =    83.324 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[953]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1662.139  mm,	Y =  -563.740  mm,	Z =   954.127  mm,
	W =   -52.527 deg,	P =    -3.934 deg,	R =    60.639 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[954]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1699.178  mm,	Y =  -604.727  mm,	Z =   864.903  mm,
	W =   -44.004 deg,	P =    -1.784 deg,	R =    59.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[955]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1939.327  mm,	Y =  -157.054  mm,	Z =   862.507  mm,
	W =   -44.919 deg,	P =    -3.099 deg,	R =    71.282 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[956]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1947.551  mm,	Y =  -143.847  mm,	Z =   939.637  mm,
	W =   -64.247 deg,	P =    -5.308 deg,	R =    92.033 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[957]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1339.858  mm,	Y =  -518.344  mm,	Z =   958.778  mm,
	W =   -68.704 deg,	P =    -3.326 deg,	R =    72.634 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[958]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1178.463  mm,	Y =  -576.131  mm,	Z =   850.740  mm,
	W =     5.796 deg,	P =    -2.160 deg,	R =   -21.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[959]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1259.408  mm,	Y =  -666.652  mm,	Z =   959.172  mm,
	W =    58.410 deg,	P =     1.273 deg,	R =   -88.963 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[960]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1642.096  mm,	Y =  -668.648  mm,	Z =   941.442  mm,
	W =    46.641 deg,	P =   -16.556 deg,	R =   -73.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[961]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1680.196  mm,	Y =  -661.782  mm,	Z =   867.291  mm,
	W =    44.399 deg,	P =   -17.018 deg,	R =   -72.718 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[962]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.681  mm,	Y =  -677.294  mm,	Z =   868.712  mm,
	W =    44.369 deg,	P =   -17.049 deg,	R =   -59.242 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[963]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.612  mm,	Y =  -701.782  mm,	Z =   867.996  mm,
	W =    44.379 deg,	P =   -17.045 deg,	R =   -47.908 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[964]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1888.332  mm,	Y = -1073.282  mm,	Z =   870.872  mm,
	W =    44.370 deg,	P =   -17.046 deg,	R =   -47.907 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[965]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1720.695  mm,	Y =  -903.847  mm,	Z =   939.638  mm,
	W =    45.135 deg,	P =   -18.028 deg,	R =   -72.006 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[966]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1150.537  mm,	Y =  -903.847  mm,	Z =   939.637  mm,
	W =    45.135 deg,	P =   -18.028 deg,	R =   -72.006 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[967]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   390.614  mm,	Y =     -.024  mm,	Z =  2434.015  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[968]{
   GP1:
	UF : 1, UT : 1,	
	J1=    31.349 deg,	J2=   -58.835 deg,	J3=    14.453 deg,
	J4=   -25.392 deg,	J5=   -40.935 deg,	J6=    86.768 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[969]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1658.982  mm,	Y =   679.545  mm,	Z =   922.923  mm,
	W =   -53.210 deg,	P =    -2.950 deg,	R =    86.737 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[970]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1676.975  mm,	Y =   666.399  mm,	Z =   865.172  mm,
	W =   -44.636 deg,	P =    -2.340 deg,	R =    86.168 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[971]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.488  mm,	Y =   683.862  mm,	Z =   864.814  mm,
	W =   -44.615 deg,	P =    -2.365 deg,	R =    73.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[972]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1688.681  mm,	Y =   703.537  mm,	Z =   862.970  mm,
	W =   -44.588 deg,	P =    -2.365 deg,	R =    57.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[973]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1890.870  mm,	Y =  1078.356  mm,	Z =   862.379  mm,
	W =   -43.116 deg,	P =   -12.585 deg,	R =    51.673 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[974]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1751.245  mm,	Y =  1086.047  mm,	Z =   952.940  mm,
	W =   -46.336 deg,	P =   -33.058 deg,	R =    48.624 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[975]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1119.126  mm,	Y =  1086.046  mm,	Z =   952.940  mm,
	W =   -46.336 deg,	P =   -33.058 deg,	R =    48.624 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[976]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   390.614  mm,	Y =     -.024  mm,	Z =  2434.016  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[977]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1013.045  mm,	Y =  -777.257  mm,	Z =  1208.287  mm,
	W =    -1.627 deg,	P =    35.013 deg,	R =    16.289 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[978]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1891.794  mm,	Y =  -123.744  mm,	Z =    89.423  mm,
	W =   -43.304 deg,	P =     8.281 deg,	R =    89.437 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[979]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.710  mm,	Y =   -77.630  mm,	Z =    75.842  mm,
	W =   -43.304 deg,	P =     8.281 deg,	R =    95.107 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[980]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2022.737  mm,	Y =   -48.948  mm,	Z =   -36.034  mm,
	W =   -39.351 deg,	P =    23.856 deg,	R =   118.022 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[981]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2042.531  mm,	Y =   -19.520  mm,	Z =   -34.591  mm,
	W =   -39.343 deg,	P =    23.911 deg,	R =   138.810 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.998 deg,	J2=   -90.000 deg
};
P[982]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1966.026  mm,	Y =   -53.845  mm,	Z =   115.121  mm,
	W =   -43.304 deg,	P =     8.281 deg,	R =   116.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[983]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.026  mm,	Y =  -401.845  mm,	Z =   180.120  mm,
	W =   -43.304 deg,	P =     8.281 deg,	R =   116.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[984]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1624.711  mm,	Y = -1090.629  mm,	Z =   272.128  mm,
	W =    43.884 deg,	P =    -2.387 deg,	R =     2.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[985]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2631.710  mm,	Y =  -986.630  mm,	Z =    81.842  mm,
	W =    43.884 deg,	P =    -2.387 deg,	R =     2.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[986]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2642.691  mm,	Y =  -923.695  mm,	Z =   -21.197  mm,
	W =    44.909 deg,	P =    -2.402 deg,	R =     2.450 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[987]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2675.893  mm,	Y =  -923.999  mm,	Z =   -21.545  mm,
	W =    44.951 deg,	P =    -2.429 deg,	R =     2.434 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[988]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.713  mm,	Y =  -922.067  mm,	Z =   -21.309  mm,
	W =    43.920 deg,	P =    11.009 deg,	R =     5.127 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[989]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2700.218  mm,	Y =  -906.405  mm,	Z =   -18.902  mm,
	W =    43.903 deg,	P =    11.008 deg,	R =     2.411 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[990]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.411  mm,	Y =  -983.390  mm,	Z =    66.919  mm,
	W =    43.915 deg,	P =    11.001 deg,	R =   -22.994 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[991]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1931.038  mm,	Y = -1008.724  mm,	Z =   170.682  mm,
	W =    44.948 deg,	P =    -2.436 deg,	R =    -7.767 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[992]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1931.038  mm,	Y = -1008.725  mm,	Z =   253.683  mm,
	W =   -41.218 deg,	P =   -19.941 deg,	R =   -32.390 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[993]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2543.038  mm,	Y =  -803.725  mm,	Z =   184.397  mm,
	W =   -38.746 deg,	P =   -26.390 deg,	R =   -19.221 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[994]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2602.037  mm,	Y =  -803.725  mm,	Z =    84.396  mm,
	W =   -43.420 deg,	P =   -13.149 deg,	R =   -17.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[995]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2646.853  mm,	Y =  -840.409  mm,	Z =   -23.316  mm,
	W =   -40.207 deg,	P =    -8.263 deg,	R =    -9.650 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[996]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2673.374  mm,	Y =  -841.195  mm,	Z =   -24.120  mm,
	W =   -44.987 deg,	P =    -1.268 deg,	R =    -1.270 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[997]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2692.519  mm,	Y =  -849.008  mm,	Z =   -26.521  mm,
	W =   -44.971 deg,	P =     1.298 deg,	R =   -25.927 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[998]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2702.206  mm,	Y =  -866.851  mm,	Z =   -24.735  mm,
	W =   -44.924 deg,	P =    -1.260 deg,	R =   -28.515 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[999]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2602.037  mm,	Y =  -803.725  mm,	Z =    84.396  mm,
	W =   -43.420 deg,	P =   -13.149 deg,	R =   -17.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1000]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2543.038  mm,	Y =  -803.725  mm,	Z =   184.397  mm,
	W =   -36.633 deg,	P =   -31.550 deg,	R =   -20.246 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1001]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1631.038  mm,	Y = -1008.725  mm,	Z =   203.683  mm,
	W =   -41.218 deg,	P =   -19.941 deg,	R =   -32.390 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1002]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1624.710  mm,	Y =  -283.630  mm,	Z =   237.842  mm,
	W =    43.884 deg,	P =    -2.387 deg,	R =     2.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1003]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1594.691  mm,	Y =  -106.040  mm,	Z =    30.842  mm,
	W =    43.884 deg,	P =    -2.387 deg,	R =     2.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1004]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1590.451  mm,	Y =   -18.944  mm,	Z =   -34.547  mm,
	W =    39.221 deg,	P =   -24.029 deg,	R =    26.552 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1005]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1578.966  mm,	Y =   -21.965  mm,	Z =   -37.747  mm,
	W =    43.587 deg,	P =   -12.502 deg,	R =    37.180 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1006]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1573.690  mm,	Y =   -24.800  mm,	Z =   -40.057  mm,
	W =    44.958 deg,	P =    -2.233 deg,	R =    47.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1007]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1543.842  mm,	Y =   -53.176  mm,	Z =   -39.928  mm,
	W =    44.961 deg,	P =    -2.235 deg,	R =    47.243 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1008]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1527.813  mm,	Y =   -57.039  mm,	Z =   -38.383  mm,
	W =    34.021 deg,	P =   -31.373 deg,	R =    36.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1009]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1513.122  mm,	Y =   -42.298  mm,	Z =   -40.119  mm,
	W =   -41.192 deg,	P =   -19.991 deg,	R =    73.659 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1010]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1507.182  mm,	Y =     4.462  mm,	Z =   -40.845  mm,
	W =   -41.198 deg,	P =   -19.963 deg,	R =    73.684 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1011]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1502.545  mm,	Y =    19.573  mm,	Z =   -37.702  mm,
	W =   -32.690 deg,	P =   -32.825 deg,	R =    84.377 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1012]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1491.160  mm,	Y =    23.880  mm,	Z =   -39.934  mm,
	W =    -8.358 deg,	P =   -44.371 deg,	R =    89.878 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1013]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1465.449  mm,	Y =    30.534  mm,	Z =   -41.739  mm,
	W =    -8.375 deg,	P =   -44.374 deg,	R =    89.894 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1014]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1230.526  mm,	Y =  -235.159  mm,	Z =   238.096  mm,
	W =    25.573 deg,	P =   -37.026 deg,	R =    45.674 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1015]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   933.242  mm,	Y =   221.976  mm,	Z =    97.147  mm,
	W =    34.687 deg,	P =    17.432 deg,	R =    80.127 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1016]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.711  mm,	Y =   392.370  mm,	Z =    51.456  mm,
	W =   -31.968 deg,	P =    31.913 deg,	R =   -49.728 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1017]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.017  mm,	Y =   491.023  mm,	Z =   -42.111  mm,
	W =   -27.131 deg,	P =    36.937 deg,	R =   -46.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1018]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1615.991  mm,	Y =    27.362  mm,	Z =   -42.588  mm,
	W =   -41.512 deg,	P =    19.281 deg,	R =   -77.925 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1019]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1698.143  mm,	Y =   167.061  mm,	Z =    99.809  mm,
	W =   -40.772 deg,	P =    18.032 deg,	R =   -44.164 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1020]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1908.299  mm,	Y =    54.865  mm,	Z =   113.676  mm,
	W =    42.650 deg,	P =   -11.738 deg,	R =  -106.796 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1021]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1953.951  mm,	Y =     5.632  mm,	Z =    39.145  mm,
	W =    29.608 deg,	P =   -16.799 deg,	R =  -110.643 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1022]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2027.889  mm,	Y =   108.049  mm,	Z =    16.247  mm,
	W =    31.674 deg,	P =   -11.950 deg,	R =  -119.063 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1023]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2038.465  mm,	Y =   126.921  mm,	Z =    16.472  mm,
	W =    31.104 deg,	P =   -20.985 deg,	R =  -124.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1024]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2054.929  mm,	Y =   139.425  mm,	Z =    12.702  mm,
	W =    20.533 deg,	P =   -35.689 deg,	R =  -113.476 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1025]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2359.489  mm,	Y =   285.327  mm,	Z =   -65.577  mm,
	W =     8.217 deg,	P =   -39.758 deg,	R =   -93.501 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1026]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2384.280  mm,	Y =   299.923  mm,	Z =   -71.556  mm,
	W =    18.277 deg,	P =   -31.096 deg,	R =   -91.382 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1027]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2405.415  mm,	Y =   321.632  mm,	Z =   -77.444  mm,
	W =    10.697 deg,	P =   -31.045 deg,	R =   -61.018 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1028]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2518.007  mm,	Y =   526.725  mm,	Z =  -104.573  mm,
	W =    -9.006 deg,	P =   -31.541 deg,	R =   -24.015 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1029]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2529.887  mm,	Y =   547.837  mm,	Z =  -109.688  mm,
	W =     1.676 deg,	P =   -30.642 deg,	R =   -24.071 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    74.999 deg,	J2=   -90.000 deg
};
P[1030]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2532.521  mm,	Y =   570.458  mm,	Z =  -110.392  mm,
	W =    11.600 deg,	P =   -27.859 deg,	R =   -23.691 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1031]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2532.281  mm,	Y =   890.860  mm,	Z =  -109.269  mm,
	W =    11.580 deg,	P =   -27.866 deg,	R =   -23.681 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1032]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.365  mm,	Y =   890.931  mm,	Z =    73.687  mm,
	W =    11.586 deg,	P =   -27.867 deg,	R =   -23.683 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1033]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2354.334  mm,	Y =  1101.931  mm,	Z =    73.687  mm,
	W =    11.586 deg,	P =   -27.867 deg,	R =   -23.683 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1034]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2408.252  mm,	Y =  1078.896  mm,	Z =   -76.528  mm,
	W =    11.605 deg,	P =   -27.850 deg,	R =   -23.703 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1035]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2409.979  mm,	Y =  1063.424  mm,	Z =   -77.389  mm,
	W =    11.606 deg,	P =   -27.847 deg,	R =   -23.707 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1036]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2414.410  mm,	Y =  1056.095  mm,	Z =   -80.691  mm,
	W =    34.423 deg,	P =     -.790 deg,	R =   -36.573 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1037]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2421.810  mm,	Y =  1053.185  mm,	Z =   -83.323  mm,
	W =    34.779 deg,	P =     -.071 deg,	R =   -37.103 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1038]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2438.564  mm,	Y =  1055.002  mm,	Z =   -88.542  mm,
	W =    45.658 deg,	P =    12.291 deg,	R =     2.752 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1039]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2488.520  mm,	Y =  1043.756  mm,	Z =  -101.823  mm,
	W =    40.993 deg,	P =    25.264 deg,	R =   -46.420 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1040]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2522.754  mm,	Y =  1010.208  mm,	Z =  -108.558  mm,
	W =    26.324 deg,	P =   -18.903 deg,	R =   -21.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1041]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2535.170  mm,	Y =   988.987  mm,	Z =  -111.768  mm,
	W =    32.199 deg,	P =   -12.971 deg,	R =   -18.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1042]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2546.209  mm,	Y =   956.342  mm,	Z =  -112.807  mm,
	W =    13.944 deg,	P =   -26.865 deg,	R =   -24.281 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    74.999 deg,	J2=   -90.000 deg
};
P[1043]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2538.801  mm,	Y =   929.373  mm,	Z =  -111.510  mm,
	W =    -6.471 deg,	P =   -31.595 deg,	R =   -24.635 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1044]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2534.564  mm,	Y =   915.670  mm,	Z =  -110.094  mm,
	W =     1.523 deg,	P =   -30.709 deg,	R =   -24.701 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1045]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2533.629  mm,	Y =   887.767  mm,	Z =  -111.110  mm,
	W =    11.877 deg,	P =   -27.745 deg,	R =   -24.298 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1046]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.102  mm,	Y =   894.517  mm,	Z =    90.509  mm,
	W =    13.605 deg,	P =   -31.054 deg,	R =   -25.134 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1047]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.145  mm,	Y =   894.399  mm,	Z =   416.736  mm,
	W =    23.304 deg,	P =   -45.350 deg,	R =   -31.189 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1048]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1339.173  mm,	Y =   894.353  mm,	Z =   608.675  mm,
	W =    23.298 deg,	P =   -45.347 deg,	R =   -31.185 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1049]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    97.559  mm,	Y =   894.331  mm,	Z =   608.685  mm,
	W =   -19.983 deg,	P =    41.209 deg,	R =   -28.759 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.000 deg,	J2=   -90.000 deg
};
P[1050]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   390.531  mm,	Y =    -9.911  mm,	Z =  2433.853  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1051]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2087.763  mm,	Y =  -128.190  mm,	Z =  1257.777  mm,
	W =     1.267 deg,	P =    49.420 deg,	R =  -164.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1052]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2078.822  mm,	Y =  -128.879  mm,	Z =   865.846  mm,
	W =     -.347 deg,	P =    42.653 deg,	R =  -165.506 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1053]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2063.478  mm,	Y =   -90.278  mm,	Z =   868.406  mm,
	W =     -.673 deg,	P =    43.750 deg,	R =  -163.703 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1054]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2042.660  mm,	Y =   -80.120  mm,	Z =   864.230  mm,
	W =     -.886 deg,	P =    43.217 deg,	R =   -85.673 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1055]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2029.699  mm,	Y =   -99.089  mm,	Z =   862.541  mm,
	W =     -.858 deg,	P =    43.081 deg,	R =    13.456 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1056]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2044.764  mm,	Y =  -145.522  mm,	Z =   863.704  mm,
	W =     -.844 deg,	P =    43.074 deg,	R =    16.885 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1057]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2066.345  mm,	Y =  -156.599  mm,	Z =   862.610  mm,
	W =     -.954 deg,	P =    42.968 deg,	R =   105.667 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1058]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2081.369  mm,	Y =  -128.535  mm,	Z =   863.747  mm,
	W =      .008 deg,	P =    43.052 deg,	R =  -165.933 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -90.000 deg
};
P[1059]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2038.233  mm,	Y =  -145.751  mm,	Z =  1040.502  mm,
	W =    -2.503 deg,	P =    37.782 deg,	R =  -167.602 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1060]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2074.921  mm,	Y =  -215.408  mm,	Z =  1040.502  mm,
	W =    -2.060 deg,	P =    34.855 deg,	R =   -96.844 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1061]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2058.688  mm,	Y =  -186.676  mm,	Z =   863.698  mm,
	W =    -3.996 deg,	P =    46.116 deg,	R =   -98.098 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1062]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2173.700  mm,	Y =  -185.156  mm,	Z =   864.180  mm,
	W =    -3.996 deg,	P =    46.103 deg,	R =   -98.114 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1063]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2223.219  mm,	Y =  -162.280  mm,	Z =   864.075  mm,
	W =    -3.959 deg,	P =    46.138 deg,	R =   -62.981 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1064]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2244.813  mm,	Y =  -121.390  mm,	Z =   863.141  mm,
	W =    -3.944 deg,	P =    46.113 deg,	R =   -22.988 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1065]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2359.031  mm,	Y =    58.406  mm,	Z =   866.058  mm,
	W =    -3.994 deg,	P =    46.113 deg,	R =   -65.223 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1066]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2555.017  mm,	Y =    95.013  mm,	Z =   866.214  mm,
	W =    -4.002 deg,	P =    46.108 deg,	R =  -103.330 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1067]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2606.669  mm,	Y =   110.131  mm,	Z =   866.023  mm,
	W =    11.847 deg,	P =    45.031 deg,	R =   -52.693 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1068]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2623.054  mm,	Y =   132.544  mm,	Z =   866.749  mm,
	W =    36.071 deg,	P =    31.153 deg,	R =    10.129 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1069]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2637.990  mm,	Y =   153.365  mm,	Z =   867.816  mm,
	W =    36.071 deg,	P =    31.153 deg,	R =     3.552 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1070]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2659.664  mm,	Y =   165.624  mm,	Z =  1020.932  mm,
	W =    26.374 deg,	P =    27.847 deg,	R =   -19.583 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1071]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2353.664  mm,	Y =    86.624  mm,	Z =   995.947  mm,
	W =    23.231 deg,	P =    35.687 deg,	R =   -21.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1072]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2347.763  mm,	Y =   140.779  mm,	Z =   874.016  mm,
	W =    23.257 deg,	P =    35.700 deg,	R =   -27.108 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1073]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2282.842  mm,	Y =   106.505  mm,	Z =   873.161  mm,
	W =    23.147 deg,	P =    35.649 deg,	R =   -27.171 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1074]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2314.873  mm,	Y =    49.882  mm,	Z =  1059.436  mm,
	W =    23.230 deg,	P =    35.687 deg,	R =   -27.122 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1075]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2407.391  mm,	Y =   163.912  mm,	Z =   960.657  mm,
	W =     8.539 deg,	P =    35.418 deg,	R =    39.363 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1076]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2350.204  mm,	Y =   145.740  mm,	Z =   875.004  mm,
	W =      .525 deg,	P =    41.703 deg,	R =    27.279 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1077]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2339.594  mm,	Y =   166.628  mm,	Z =   875.161  mm,
	W =      .525 deg,	P =    41.703 deg,	R =    27.279 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1078]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2384.166  mm,	Y =   179.687  mm,	Z =   938.550  mm,
	W =     5.309 deg,	P =    36.733 deg,	R =    27.708 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1079]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2240.873  mm,	Y =   177.882  mm,	Z =  1059.436  mm,
	W =   -27.572 deg,	P =    24.023 deg,	R =    68.377 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1080]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2266.854  mm,	Y =   128.932  mm,	Z =   873.962  mm,
	W =   -30.363 deg,	P =    30.099 deg,	R =    67.112 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1081]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2329.302  mm,	Y =   165.062  mm,	Z =   875.549  mm,
	W =   -30.345 deg,	P =    30.078 deg,	R =    67.107 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1082]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2295.490  mm,	Y =   194.983  mm,	Z =   940.815  mm,
	W =   -30.368 deg,	P =    30.111 deg,	R =    93.411 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1083]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2098.039  mm,	Y =    95.390  mm,	Z =  1058.670  mm,
	W =    -8.223 deg,	P =    27.055 deg,	R =    52.392 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1084]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1658.214  mm,	Y =    44.710  mm,	Z =   967.832  mm,
	W =    -2.274 deg,	P =    43.564 deg,	R =   -25.102 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1085]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1616.012  mm,	Y =    61.843  mm,	Z =   869.524  mm,
	W =    -2.210 deg,	P =    43.585 deg,	R =   -25.052 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1086]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.594  mm,	Y =   479.618  mm,	Z =   872.893  mm,
	W =    39.799 deg,	P =    19.526 deg,	R =    46.352 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1087]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1706.217  mm,	Y =   503.296  mm,	Z =   954.723  mm,
	W =    37.796 deg,	P =     8.495 deg,	R =    37.859 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1088]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1481.499  mm,	Y =    22.372  mm,	Z =  1018.721  mm,
	W =    -2.274 deg,	P =    43.564 deg,	R =  -148.737 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1089]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1598.141  mm,	Y =    61.873  mm,	Z =   868.998  mm,
	W =    -2.313 deg,	P =    43.575 deg,	R =   179.472 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1090]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1654.326  mm,	Y =   474.279  mm,	Z =   873.521  mm,
	W =   -36.221 deg,	P =    26.164 deg,	R =   127.253 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1091]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1571.244  mm,	Y =   480.285  mm,	Z =   955.523  mm,
	W =   -38.018 deg,	P =    23.214 deg,	R =   151.318 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1092]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.521  mm,	Y =   132.162  mm,	Z =  1231.477  mm,
	W =    25.682 deg,	P =    77.887 deg,	R =   -93.023 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[1093]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1143.065  mm,	Y = -1469.733  mm,	Z =  1613.189  mm,
	W =   -45.551 deg,	P =   -20.029 deg,	R =   -44.051 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1094]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2542.229  mm,	Y = -1549.271  mm,	Z =  1152.755  mm,
	W =   -35.769 deg,	P =   -28.014 deg,	R =    20.274 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1095]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2483.627  mm,	Y = -1623.804  mm,	Z =   973.832  mm,
	W =   -35.088 deg,	P =   -31.677 deg,	R =    63.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1096]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2752.122  mm,	Y = -1559.636  mm,	Z =   709.416  mm,
	W =   -35.088 deg,	P =   -31.677 deg,	R =    63.073 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1097]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2857.673  mm,	Y = -1474.003  mm,	Z =   621.464  mm,
	W =   -15.693 deg,	P =   -49.080 deg,	R =    48.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.999 deg,	J2=   -80.000 deg
};
P[1098]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2861.892  mm,	Y = -1519.562  mm,	Z =   611.305  mm,
	W =   -25.979 deg,	P =   -39.192 deg,	R =    47.476 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1099]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2849.490  mm,	Y = -1550.087  mm,	Z =   609.269  mm,
	W =   -35.101 deg,	P =   -20.655 deg,	R =    48.398 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2829.027  mm,	Y = -1574.688  mm,	Z =   602.044  mm,
	W =   -35.568 deg,	P =   -11.954 deg,	R =    36.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2761.067  mm,	Y = -1614.938  mm,	Z =   596.786  mm,
	W =   -35.568 deg,	P =   -11.953 deg,	R =    36.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2698.117  mm,	Y = -1568.160  mm,	Z =   671.710  mm,
	W =   -43.039 deg,	P =   -10.740 deg,	R =    31.361 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2600.787  mm,	Y = -1658.895  mm,	Z =   858.622  mm,
	W =  -106.889 deg,	P =    58.736 deg,	R =    44.006 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2649.433  mm,	Y = -1667.474  mm,	Z =   680.642  mm,
	W =    47.958 deg,	P =    12.926 deg,	R =   -63.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2764.132  mm,	Y = -1619.624  mm,	Z =   592.114  mm,
	W =    49.127 deg,	P =    13.962 deg,	R =   -64.233 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2777.012  mm,	Y = -1644.965  mm,	Z =   588.867  mm,
	W =    49.101 deg,	P =    13.947 deg,	R =   -64.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2707.461  mm,	Y = -1664.975  mm,	Z =   637.599  mm,
	W =    48.076 deg,	P =     9.473 deg,	R =   -69.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2438.792  mm,	Y = -1806.240  mm,	Z =  1074.483  mm,
	W =    50.396 deg,	P =     5.479 deg,	R =   -69.123 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1894.275  mm,	Y = -1518.285  mm,	Z =  2086.944  mm,
	W =    58.754 deg,	P =   -40.157 deg,	R =   -73.858 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   390.531  mm,	Y =    -9.911  mm,	Z =  2433.853  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=   -80.000 deg
};
P[1111]{
   GP1:
	UF : 1, UT : 1,	
	J1=     7.148 deg,	J2=   -36.542 deg,	J3=    36.380 deg,
	J4=   -17.109 deg,	J5=   -53.805 deg,	J6=    12.574 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2113.870  mm,	Y =   780.736  mm,	Z =   928.722  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    28.710 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2397.681  mm,	Y =   841.473  mm,	Z =   828.772  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    28.710 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2651.304  mm,	Y =  1015.539  mm,	Z =   531.056  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    55.019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2648.832  mm,	Y =  1039.517  mm,	Z =   445.697  mm,
	W =     2.946 deg,	P =    -4.536 deg,	R =    57.038 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2677.404  mm,	Y =  1039.517  mm,	Z =   445.698  mm,
	W =     2.946 deg,	P =    -4.536 deg,	R =    57.038 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2651.304  mm,	Y =  1015.539  mm,	Z =   531.056  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    55.019 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2397.681  mm,	Y =   841.473  mm,	Z =   828.772  mm,
	W =    12.771 deg,	P =   -18.901 deg,	R =    28.710 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[1119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1853.840  mm,	Y =   735.295  mm,	Z =  1070.725  mm,
	W =    12.871 deg,	P =   -19.018 deg,	R =    29.278 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
/END
