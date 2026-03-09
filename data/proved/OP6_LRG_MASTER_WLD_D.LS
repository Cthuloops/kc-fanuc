/PROG  OP6_LRG_MASTER_WLD_D
/ATTR
OWNER		= SHIFT;
COMMENT		= "";
PROG_SIZE	= 73389;
CREATE		= DATE 26-02-26  TIME 13:05:40;
MODIFIED	= DATE 26-02-26  TIME 13:05:40;
FILE_NAME	= OP6_LRG_;
VERSION		= 0;
LINE_COUNT	= 1063;
MEMORY_SIZE	= 73865;
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
   1:   ;
   2:  !FR50L1000 ;
   3:   ;
   4:L P[4] 1000mm/sec FINE
    :  Arc Start[6]    ;
   5:  Weave Sine[6] ;
   6:  Track TAST[6] ;
   7:L P[5] WELD_SPEED FINE
    :  Arc End[6]    ;
   8:  Weave End ;
   9:  Track End ;
  10:   ;
  11:  !FR50L1001 ;
  12:   ;
  13:L P[8] 1000mm/sec FINE
    :  Arc Start[6]    ;
  14:  Weave Sine[6] ;
  15:  Track TAST[6] ;
  16:L P[9] WELD_SPEED FINE
    :  Arc End[6]    ;
  17:  Weave End ;
  18:  Track End ;
  19:   ;
  20:  !FR50L1002 ;
  21:   ;
  22:L P[12] 1000mm/sec FINE
    :  Arc Start[6]    ;
  23:  Weave Sine[6] ;
  24:  Track TAST[6] ;
  25:L P[13] WELD_SPEED FINE
    :  Arc End[6]    ;
  26:  Weave End ;
  27:  Track End ;
  28:   ;
  29:  !FR50L1003 ;
  30:   ;
  31:L P[19] 1000mm/sec FINE
    :  Arc Start[6]    ;
  32:  Weave Sine[6] ;
  33:  Track TAST[6] ;
  34:L P[20] WELD_SPEED CNT100    ;
  35:L P[21] WELD_SPEED FINE
    :  Arc End[6]    ;
  36:  Track End ;
  37:  Weave End ;
  38:   ;
  39:  !FR50L1010 ;
  40:   ;
  41:L P[24] 1000mm/sec FINE
    :  Arc Start[6]    ;
  42:  Weave Sine[6] ;
  43:  Track TAST[6] ;
  44:L P[25] WELD_SPEED CNT100    ;
  45:L P[26] WELD_SPEED FINE
    :  Arc End[6]    ;
  46:  Weave End ;
  47:  Track End ;
  48:   ;
  49:  !FR50L1020 ;
  50:   ;
  51:L P[29] 1000mm/sec FINE
    :  Arc Start[6]    ;
  52:  Weave Sine[6] ;
  53:  Track TAST[6] ;
  54:L P[30] WELD_SPEED FINE
    :  Arc End[6]    ;
  55:  Weave End ;
  56:  Track End ;
  57:   ;
  58:  !FR50L1030 ;
  59:   ;
  60:L P[33] 1000mm/sec FINE
    :  Arc Start[6]    ;
  61:  Weave Sine[6] ;
  62:  Track TAST[6] ;
  63:L P[34] WELD_SPEED FINE
    :  Arc End[6]    ;
  64:  Weave End ;
  65:  Track End ;
  66:   ;
  67:  !FR50L1040 ;
  68:   ;
  69:L P[38] 1000mm/sec FINE
    :  Arc Start[6]    ;
  70:  Weave Sine[6] ;
  71:L P[39] WELD_SPEED FINE
    :  Arc End[6]    ;
  72:  Weave End ;
  73:   ;
  74:  !FR50L1050 ;
  75:   ;
  76:L P[44] 1000mm/sec FINE
    :  Arc Start[6]    ;
  77:  Weave Sine[6] ;
  78:L P[45] WELD_SPEED FINE
    :  Arc End[6]    ;
  79:  Weave End ;
  80:   ;
  81:  !FR50L1060 ;
  82:   ;
  83:L P[49] 1000mm/sec FINE
    :  Arc Start[6]    ;
  84:  Weave Sine[6] ;
  85:L P[50] WELD_SPEED FINE
    :  Arc End[6]    ;
  86:  Weave End ;
  87:   ;
  88:  !FR50L1070 ;
  89:   ;
  90:L P[55] 1000mm/sec FINE
    :  Arc Start[6]    ;
  91:  Weave Sine[6] ;
  92:  Track TAST[6] ;
  93:L P[56] WELD_SPEED FINE
    :  Arc End[6]    ;
  94:  Weave End ;
  95:  Track End ;
  96:   ;
  97:  !FR50L1080 ;
  98:   ;
  99:L P[59] 1000mm/sec FINE
    :  Arc Start[6]    ;
 100:  Weave Sine[6] ;
 101:  Track TAST[6] ;
 102:L P[60] WELD_SPEED FINE
    :  Arc End[6]    ;
 103:  Weave End ;
 104:  Track End ;
 105:   ;
 106:  !FR50L1090 ;
 107:   ;
 108:L P[64] 1000mm/sec FINE
    :  Arc Start[6]    ;
 109:  Weave Sine[6] ;
 110:  Track TAST[6] RPM[1] ;
 111:L P[65] WELD_SPEED CNT100    ;
 112:L P[66] WELD_SPEED CNT100    ;
 113:C P[67]    
    :  P[68] WELD_SPEED CNT100    ;
 114:L P[69] WELD_SPEED FINE
    :  Arc End[6]    ;
 115:  Track End ;
 116:  Weave End ;
 117:   ;
 118:  !FR50L1100 ;
 119:   ;
 120:L P[74] 1000mm/sec FINE
    :  Arc Start[6]    ;
 121:  Weave Sine[6] ;
 122:  Track TAST[6] RPM[2] ;
 123:L P[75] WELD_SPEED CNT100    ;
 124:L P[76] WELD_SPEED CNT100    ;
 125:C P[77]    
    :  P[78] WELD_SPEED CNT100    ;
 126:L P[79] WELD_SPEED FINE
    :  Arc End[6]    ;
 127:  Weave End ;
 128:  Track End ;
 129:   ;
 130:  !FR50L1110MP ;
 131:   ;
 132:L P[64] 1000mm/sec FINE
    :  Arc Start[6]    ;
 133:  Weave Sine[6] ;
 134:L P[65] WELD_SPEED CNT100    ;
 135:L P[66] WELD_SPEED CNT100    ;
 136:C P[67]    
    :  P[68] WELD_SPEED CNT100    ;
 137:L P[69] WELD_SPEED FINE
    :  Arc End[6]    ;
 138:  Weave End ;
 139:L P[64] 1000mm/sec FINE
    :  Arc Start[6]    ;
 140:  Weave Sine[6] ;
 141:L P[65] WELD_SPEED CNT100    ;
 142:L P[66] WELD_SPEED CNT100    ;
 143:C P[67]    
    :  P[68] WELD_SPEED CNT100    ;
 144:L P[69] WELD_SPEED FINE
    :  Arc End[6]    ;
 145:  Weave End ;
 146:   ;
 147:  !FR50L1120MP ;
 148:   ;
 149:L P[74] 1000mm/sec FINE
    :  Arc Start[6]    ;
 150:  Weave Sine[6] ;
 151:L P[75] WELD_SPEED CNT100    ;
 152:L P[76] WELD_SPEED CNT100    ;
 153:C P[77]    
    :  P[78] WELD_SPEED CNT100    ;
 154:L P[79] WELD_SPEED FINE
    :  Arc End[6]    ;
 155:  Weave End ;
 156:L P[74] 1000mm/sec FINE
    :  Arc Start[6]    ;
 157:  Weave Sine[6] ;
 158:L P[75] WELD_SPEED CNT100    ;
 159:L P[76] WELD_SPEED CNT100    ;
 160:C P[77]    
    :  P[78] WELD_SPEED CNT100    ;
 161:L P[79] WELD_SPEED FINE
    :  Arc End[6]    ;
 162:  Weave End ;
 163:   ;
 164:  !FR50L1140 ;
 165:   ;
 166:L P[121] 1000mm/sec FINE
    :  Arc Start[8]    ;
 167:  Weave Sine[8] ;
 168:L P[122] WELD_SPEED CNT100    ;
 169:C P[123]    
    :  P[124] WELD_SPEED FINE
    :  Arc End[8]    ;
 170:  Weave End ;
 171:   ;
 172:  !FR50L1141 ;
 173:   ;
 174:L P[127] 1000mm/sec FINE
    :  Arc Start[8]    ;
 175:  Weave Sine[8] ;
 176:L P[128] WELD_SPEED CNT100    ;
 177:C P[129]    
    :  P[130] WELD_SPEED FINE
    :  Arc End[8]    ;
 178:  Weave End ;
 179:   ;
 180:  !FR50L1150 ;
 181:   ;
 182:L P[135] 1000mm/sec FINE
    :  Arc Start[6]    ;
 183:  Weave Sine[6] ;
 184:  Track TAST[6] ;
 185:L P[136] WELD_SPEED FINE
    :  Arc End[6]    ;
 186:  Weave End ;
 187:  Track End ;
 188:   ;
 189:  !FR50L1160 ;
 190:   ;
 191:L P[139] 1000mm/sec FINE
    :  Arc Start[6]    ;
 192:  Weave Sine[6] ;
 193:  Track TAST[6] ;
 194:L P[140] WELD_SPEED FINE
    :  Arc End[6]    ;
 195:  Weave End ;
 196:  Track End ;
 197:   ;
 198:  !FR50L1170 ;
 199:   ;
 200:L P[144] 1000mm/sec FINE
    :  Arc Start[6]    ;
 201:  Weave Sine[6] ;
 202:  Track TAST[6] ;
 203:L P[145] WELD_SPEED FINE
    :  Arc End[6]    ;
 204:  Weave End ;
 205:  Track End ;
 206:   ;
 207:  !FR50L1180 ;
 208:   ;
 209:L P[148] 1000mm/sec FINE
    :  Arc Start[6]    ;
 210:  Weave Sine[6] ;
 211:  Track TAST[6] ;
 212:L P[149] WELD_SPEED FINE
    :  Arc End[6]    ;
 213:  Weave End ;
 214:  Track End ;
 215:   ;
 216:  !FR50L1210 ;
 217:   ;
 218:L P[154] 1000mm/sec FINE
    :  Arc Start[6]    ;
 219:  Weave Sine[6] ;
 220:  Track TAST[6] ;
 221:L P[155] WELD_SPEED CNT100    ;
 222:L P[156] WELD_SPEED FINE
    :  Arc End[6]    ;
 223:  Weave End ;
 224:  Track End ;
 225:   ;
 226:  !FR50L1220 ;
 227:   ;
 228:L P[159] 1000mm/sec FINE
    :  Arc Start[6]    ;
 229:  Weave Sine[6] ;
 230:  Track TAST[6] ;
 231:L P[160] WELD_SPEED CNT100    ;
 232:L P[161] WELD_SPEED FINE
    :  Arc End[6]    ;
 233:  Weave End ;
 234:  Track End ;
 235:   ;
 236:  !FR50L1230 ;
 237:   ;
 238:L P[164] 1000mm/sec FINE
    :  Arc Start[6]    ;
 239:  Weave Sine[6] ;
 240:  Track TAST[6] ;
 241:L P[165] WELD_SPEED CNT100    ;
 242:L P[166] WELD_SPEED FINE
    :  Arc End[6]    ;
 243:  Weave End ;
 244:  Track End ;
 245:   ;
 246:  !FR50L1240 ;
 247:   ;
 248:L P[169] 1000mm/sec FINE
    :  Arc Start[6]    ;
 249:  Weave Sine[6] ;
 250:  Track TAST[6] ;
 251:L P[170] WELD_SPEED CNT100    ;
 252:L P[171] WELD_SPEED FINE
    :  Arc End[6]    ;
 253:  Weave End ;
 254:  Track End ;
 255:   ;
 256:  !FR50L1250 ;
 257:   ;
 258:L P[177] 1000mm/sec FINE
    :  Arc Start[6]    ;
 259:  Weave Sine[6] ;
 260:  Track TAST[6] ;
 261:L P[178] WELD_SPEED CNT100    ;
 262:L P[179] WELD_SPEED CNT100    ;
 263:L P[180] WELD_SPEED FINE
    :  Arc End[6]    ;
 264:  Weave End ;
 265:  Track End ;
 266:   ;
 267:  !FR50L1260 ;
 268:   ;
 269:L P[185] 1000mm/sec FINE
    :  Arc Start[6]    ;
 270:  Weave Sine[6] ;
 271:  Track TAST[6] ;
 272:L P[186] WELD_SPEED CNT100    ;
 273:L P[187] WELD_SPEED CNT100    ;
 274:L P[188] WELD_SPEED FINE
    :  Arc End[6]    ;
 275:  Weave End ;
 276:  Track End ;
 277:   ;
 278:  !FR50L1270 ;
 279:   ;
 280:L P[192] 1000mm/sec FINE
    :  Arc Start[6]    ;
 281:  Weave Sine[6] ;
 282:  Track TAST[6] ;
 283:L P[193] WELD_SPEED CNT100    ;
 284:  Track End ;
 285:L P[194] WELD_SPEED FINE
    :  Arc End[6]    ;
 286:  Weave End ;
 287:  Track End ;
 288:   ;
 289:  !FR50L1280 ;
 290:   ;
 291:L P[197] 1000mm/sec FINE
    :  Arc Start[6]    ;
 292:  Weave Sine[6] ;
 293:  Track TAST[6] ;
 294:L P[198] WELD_SPEED CNT100    ;
 295:  Track End ;
 296:L P[199] WELD_SPEED FINE
    :  Arc End[6]    ;
 297:  Weave End ;
 298:  Track End ;
 299:   ;
 300:  !FR50L1290 ;
 301:   ;
 302:L P[203] 1000mm/sec FINE
    :  Arc Start[6]    ;
 303:  Weave Sine[6] ;
 304:  Track TAST[6] ;
 305:L P[204] WELD_SPEED CNT100    ;
 306:L P[205] WELD_SPEED FINE
    :  Arc End[6]    ;
 307:  Weave End ;
 308:  Track End ;
 309:L P[208] 1000mm/sec FINE
    :  Arc Start[6]    ;
 310:  Weave Sine[6] ;
 311:  Track TAST[6] ;
 312:L P[209] WELD_SPEED CNT100    ;
 313:L P[210] WELD_SPEED FINE
    :  Arc End[6]    ;
 314:  Weave End ;
 315:  Track End ;
 316:   ;
 317:  !FR50L1310 ;
 318:   ;
 319:L P[213] 1000mm/sec FINE
    :  Arc Start[6]    ;
 320:  Weave Sine[6] ;
 321:  Track TAST[6] ;
 322:L P[214] WELD_SPEED FINE
    :  Arc End[6]    ;
 323:  Weave End ;
 324:  Track End ;
 325:   ;
 326:  !FR50L1320 ;
 327:   ;
 328:L P[217] 1000mm/sec FINE
    :  Arc Start[6]    ;
 329:  Weave Sine[6] ;
 330:  Track TAST[6] ;
 331:L P[218] WELD_SPEED CNT100    ;
 332:L P[219] WELD_SPEED FINE
    :  Arc End[6]    ;
 333:  Weave End ;
 334:  Track End ;
 335:   ;
 336:  !FR50L1330 ;
 337:   ;
 338:L P[223] 1000mm/sec FINE
    :  Arc Start[8]    ;
 339:  Weave Sine[8] ;
 340:L P[224] WELD_SPEED FINE
    :  Arc End[8]    ;
 341:  Weave End ;
 342:   ;
 343:  !FR50L1340 ;
 344:   ;
 345:L P[227] 1000mm/sec FINE
    :  Arc Start[6]    ;
 346:  Weave Sine[6] ;
 347:L P[228] WELD_SPEED FINE
    :  Arc End[6]    ;
 348:  Weave End ;
 349:   ;
 350:  !FR50L1350 ;
 351:   ;
 352:L P[230] 1000mm/sec FINE
    :  Arc Start[6]    ;
 353:  Weave Sine[6] ;
 354:L P[231] WELD_SPEED FINE
    :  Arc End[6]    ;
 355:  Weave End ;
 356:   ;
 357:  !FR50L1380 ;
 358:   ;
 359:L P[238] 1000mm/sec FINE
    :  Arc Start[6]    ;
 360:  Weave Sine[6] ;
 361:  Track TAST[6] ;
 362:L P[239] WELD_SPEED CNT100    ;
 363:L P[240] WELD_SPEED CNT100    ;
 364:L P[241] WELD_SPEED FINE
    :  Arc End[6]    ;
 365:  Weave End ;
 366:  Track End ;
 367:   ;
 368:  !FR50L1390 ;
 369:   ;
 370:L P[246] 1000mm/sec FINE
    :  Arc Start[6]    ;
 371:  Weave Sine[6] ;
 372:L P[247] WELD_SPEED CNT100    ;
 373:L P[248] WELD_SPEED CNT100    ;
 374:L P[249] WELD_SPEED FINE
    :  Arc End[6]    ;
 375:  Weave End ;
 376:   ;
 377:  !FR50L1400 ;
 378:   ;
 379:L P[252] 1000mm/sec FINE
    :  Arc Start[6]    ;
 380:  Weave Sine[6] ;
 381:  Track TAST[6] ;
 382:L P[253] WELD_SPEED FINE
    :  Arc End[6]    ;
 383:  Weave End ;
 384:  Track End ;
 385:   ;
 386:  !FR50L1410 ;
 387:   ;
 388:L P[255] 1000mm/sec FINE
    :  Arc Start[6]    ;
 389:  Weave Sine[6] ;
 390:  Track TAST[6] ;
 391:L P[256] WELD_SPEED CNT100    ;
 392:L P[257] WELD_SPEED FINE
    :  Arc End[6]    ;
 393:  Weave End ;
 394:  Track End ;
 395:   ;
 396:  !FR50L1420 ;
 397:   ;
 398:L P[259] 1000mm/sec FINE
    :  Arc Start[6]    ;
 399:  Weave Sine[6] ;
 400:  Track TAST[6] ;
 401:L P[260] WELD_SPEED CNT100    ;
 402:L P[261] WELD_SPEED FINE
    :  Arc End[6]    ;
 403:  Weave End ;
 404:  Track End ;
 405:   ;
 406:  !FR50L1430 ;
 407:   ;
 408:L P[264] 1000mm/sec FINE
    :  Arc Start[6]    ;
 409:  Weave Sine[6] ;
 410:L P[265] WELD_SPEED CNT100    ;
 411:  Weave End ;
 412:L P[266] WELD_SPEED FINE
    :  Arc End[6]    ;
 413:   ;
 414:  !FR50L1431 ;
 415:   ;
 416:L P[268] 1000mm/sec FINE
    :  Arc Start[6]    ;
 417:  Weave Sine[6] ;
 418:L P[269] WELD_SPEED CNT100    ;
 419:L P[270] WELD_SPEED FINE
    :  Arc End[6]    ;
 420:  Weave End ;
 421:   ;
 422:  !FR50L1440 ;
 423:   ;
 424:L P[276] 1000mm/sec FINE
    :  Arc Start[6]    ;
 425:  Weave Sine[6] ;
 426:  Track TAST[6] ;
 427:L P[277] WELD_SPEED FINE
    :  Arc End[6]    ;
 428:  Weave End ;
 429:  Track End ;
 430:   ;
 431:  !FR50L1450 ;
 432:   ;
 433:L P[279] 1000mm/sec FINE
    :  Arc Start[6]    ;
 434:  Weave Sine[6] ;
 435:  Track TAST[6] ;
 436:L P[280] WELD_SPEED CNT100    ;
 437:L P[281] WELD_SPEED FINE
    :  Arc End[6]    ;
 438:  Weave End ;
 439:  Track End ;
 440:   ;
 441:  !FR50L1460 ;
 442:   ;
 443:L P[284] 1000mm/sec FINE
    :  Arc Start[6]    ;
 444:  Weave Sine[6] ;
 445:  Track TAST[6] ;
 446:L P[285] WELD_SPEED CNT100    ;
 447:L P[286] WELD_SPEED FINE
    :  Arc End[6]    ;
 448:  Weave End ;
 449:  Track End ;
 450:   ;
 451:  !FR50L1470 ;
 452:   ;
 453:L P[290] 1000mm/sec FINE
    :  Arc Start[6]    ;
 454:  Weave Sine[6] ;
 455:  Track TAST[6] ;
 456:L P[291] WELD_SPEED FINE
    :  Arc End[6]    ;
 457:  Weave End ;
 458:  Track End ;
 459:   ;
 460:  !FR50L1480 ;
 461:   ;
 462:L P[295] 1000mm/sec FINE
    :  Arc Start[8]    ;
 463:  Weave Sine[8] ;
 464:L P[296] WELD_SPEED FINE
    :  Arc End[8]    ;
 465:  Weave End ;
 466:   ;
 467:  !FR50L1490 ;
 468:   ;
 469:L P[299] 1000mm/sec FINE
    :  Arc Start[6]    ;
 470:  Weave Sine[6] ;
 471:  Track TAST[6] ;
 472:L P[300] WELD_SPEED FINE
    :  Arc End[6]    ;
 473:  Weave End ;
 474:  Track End ;
 475:   ;
 476:  !FR50L1500 ;
 477:   ;
 478:L P[306] 1000mm/sec FINE
    :  Arc Start[6]    ;
 479:  Weave Sine[6] ;
 480:L P[307] WELD_SPEED CNT100    ;
 481:L P[308] WELD_SPEED FINE
    :  Arc End[6]    ;
 482:  Weave End ;
 483:   ;
 484:  !FR50L1510 ;
 485:   ;
 486:L P[312] 1000mm/sec FINE
    :  Arc Start[6]    ;
 487:  Weave Sine[6] ;
 488:  Track TAST[6] ;
 489:L P[313] WELD_SPEED CNT100    ;
 490:C P[314]    
    :  P[315] WELD_SPEED CNT100    ;
 491:L P[316] WELD_SPEED CNT100    ;
 492:C P[317]    
    :  P[318] WELD_SPEED CNT100    ;
 493:L P[319] WELD_SPEED CNT100    ;
 494:C P[320]    
    :  P[321] WELD_SPEED CNT100    ;
 495:L P[322] WELD_SPEED FINE
    :  Arc End[6]    ;
 496:  Weave End ;
 497:  Track End ;
 498:L P[326] 2400mm/sec FINE
    :  Arc Start[1]    ;
 499:L P[327] WELD_SPEED FINE
    :  Arc End[1]    ;
 500:  //J P[328] 40% FINE
    :  Arc Start[1]    ;
 501:  //L P[329] WELD_SPEED FINE
    :  Arc End[1]    ;
 502:  //J P[330] 40% FINE
    :  Arc Start[1]    ;
 503:  //L P[331] WELD_SPEED FINE
    :  Arc End[1]    ;
 504:   ;
 505:  !FR50L1520 ;
 506:   ;
 507:L P[336] 1000mm/sec FINE
    :  Arc Start[6]    ;
 508:  Weave Sine[6] ;
 509:  Track TAST[6] ;
 510:L P[337] WELD_SPEED FINE
    :  Arc End[6]    ;
 511:  Weave End ;
 512:  Track End ;
 513:   ;
 514:  !FR50L1530 ;
 515:   ;
 516:L P[341] 1000mm/sec FINE
    :  Arc Start[6]    ;
 517:  Weave Sine[6] ;
 518:  Track TAST[6] ;
 519:L P[342] WELD_SPEED FINE
    :  Arc End[6]    ;
 520:  Weave End ;
 521:  Track End ;
 522:   ;
 523:  !FR50L1540 ;
 524:   ;
 525:L P[346] 1000mm/sec FINE
    :  Arc Start[6]    ;
 526:  Weave Sine[6] ;
 527:  Track TAST[6] ;
 528:L P[347] WELD_SPEED CNT100    ;
 529:L P[348] WELD_SPEED FINE
    :  Arc End[6]    ;
 530:  Weave End ;
 531:  Track End ;
 532:   ;
 533:  !FR50L1540 ;
 534:   ;
 535:L P[355] 1000mm/sec FINE
    :  Arc Start[6]    ;
 536:  Weave Sine[6] ;
 537:  Track TAST[6] ;
 538:L P[356] WELD_SPEED CNT100    ;
 539:L P[357] WELD_SPEED CNT100    ;
 540:L P[358] WELD_SPEED CNT100    ;
 541:L P[359] WELD_SPEED CNT100    ;
 542:L P[360] WELD_SPEED CNT100    ;
 543:L P[361] WELD_SPEED CNT100    ;
 544:L P[362] WELD_SPEED FINE
    :  Arc End[6]    ;
 545:  Weave End ;
 546:  Track End ;
 547:   ;
 548:  !FR50L1550 ;
 549:   ;
 550:L P[365] 1000mm/sec FINE
    :  Arc Start[6]    ;
 551:  Weave Sine[6] ;
 552:  Track TAST[6] ;
 553:L P[366] WELD_SPEED CNT100    ;
 554:L P[367] WELD_SPEED CNT100    ;
 555:L P[368] WELD_SPEED CNT100    ;
 556:L P[369] WELD_SPEED FINE
    :  Arc End[6]    ;
 557:  Weave End ;
 558:  Track End ;
 559:   ;
 560:  !FR50L1570 ;
 561:   ;
 562:L P[376] 1000mm/sec FINE
    :  Arc Start[6]    ;
 563:  Weave Sine[6] ;
 564:  Track TAST[6] ;
 565:L P[377] WELD_SPEED CNT100    ;
 566:L P[378] WELD_SPEED CNT100    ;
 567:L P[379] WELD_SPEED CNT100    ;
 568:L P[380] WELD_SPEED CNT100    ;
 569:L P[381] WELD_SPEED CNT100    ;
 570:L P[382] WELD_SPEED CNT100    ;
 571:L P[383] WELD_SPEED FINE
    :  Arc End[6]    ;
 572:  Weave End ;
 573:  Track End ;
 574:   ;
 575:  !FR50L1580 ;
 576:   ;
 577:L P[386] 1000mm/sec FINE
    :  Arc Start[6]    ;
 578:  Weave Sine[6] ;
 579:  Track TAST[6] ;
 580:L P[387] WELD_SPEED CNT100    ;
 581:L P[388] WELD_SPEED CNT100    ;
 582:L P[389] WELD_SPEED CNT100    ;
 583:L P[390] WELD_SPEED FINE
    :  Arc End[6]    ;
 584:  Weave End ;
 585:  Track End ;
 586:   ;
 587:  !FR50L1590 ;
 588:   ;
 589:L P[396] 1000mm/sec FINE
    :  Arc Start[6]    ;
 590:  Weave Sine[6] ;
 591:  Track TAST[6] ;
 592:L P[397] WELD_SPEED FINE
    :  Arc End[6]    ;
 593:  Weave End ;
 594:  Track End ;
 595:   ;
 596:  !FR50L1600 ;
 597:   ;
 598:L P[400] 1000mm/sec FINE
    :  Arc Start[6]    ;
 599:  Weave Sine[6] ;
 600:  Track TAST[6] ;
 601:L P[401] WELD_SPEED FINE
    :  Arc End[6]    ;
 602:  Weave End ;
 603:  Track End ;
 604:   ;
 605:  !FR50L1601 ;
 606:   ;
 607:L P[404] 1000mm/sec FINE
    :  Arc Start[6]    ;
 608:  Weave Sine[6] ;
 609:  Track TAST[6] ;
 610:L P[405] WELD_SPEED FINE
    :  Arc End[6]    ;
 611:  Weave End ;
 612:  Track End ;
 613:   ;
 614:  !FR50L1610 ;
 615:   ;
 616:L P[411] 1000mm/sec FINE
    :  Arc Start[6]    ;
 617:  Weave Sine[6] ;
 618:  Track TAST[6] ;
 619:L P[412] WELD_SPEED CNT100    ;
 620:L P[413] WELD_SPEED FINE
    :  Arc End[6]    ;
 621:  Weave End ;
 622:  Track End ;
 623:   ;
 624:  !FR50L1620 ;
 625:   ;
 626:L P[416] 1000mm/sec FINE
    :  Arc Start[6]    ;
 627:  Weave Sine[6] ;
 628:  Track TAST[6] ;
 629:L P[417] WELD_SPEED CNT100    ;
 630:L P[418] WELD_SPEED FINE
    :  Arc End[6]    ;
 631:  Weave End ;
 632:  Track End ;
 633:   ;
 634:  !FR50L1630 ;
 635:   ;
 636:L P[423] 1000mm/sec FINE
    :  Arc Start[6]    ;
 637:  Weave Sine[6] ;
 638:  Track TAST[6] ;
 639:L P[424] WELD_SPEED CNT100    ;
 640:C P[425]    
    :  P[426] WELD_SPEED CNT100    ;
 641:L P[427] WELD_SPEED CNT100    ;
 642:C P[428]    
    :  P[429] WELD_SPEED CNT100    ;
 643:L P[430] WELD_SPEED FINE
    :  Arc End[6]    ;
 644:  Weave End ;
 645:  Track End ;
 646:   ;
 647:  !FR50L1640 ;
 648:   ;
 649:L P[433] 1000mm/sec FINE
    :  Arc Start[6]    ;
 650:  Weave Sine[6] ;
 651:  Track TAST[6] ;
 652:L P[434] WELD_SPEED CNT100    ;
 653:C P[435]    
    :  P[436] WELD_SPEED CNT100    ;
 654:L P[437] WELD_SPEED CNT100    ;
 655:L P[438] WELD_SPEED CNT100    ;
 656:L P[439] WELD_SPEED CNT100    ;
 657:L P[440] WELD_SPEED CNT100    ;
 658:L P[441] WELD_SPEED FINE
    :  Arc End[6]    ;
 659:  Weave End ;
 660:  Track End ;
 661:   ;
 662:  !FR50L1650 ;
 663:   ;
 664:L P[447] 1000mm/sec FINE
    :  Arc Start[6]    ;
 665:  Weave Sine[6] ;
 666:L P[448] WELD_SPEED CNT100    ;
 667:L P[449] WELD_SPEED CNT100    ;
 668:L P[450] WELD_SPEED CNT100    ;
 669:  Track TAST[6] ;
 670:L P[451] WELD_SPEED CNT100    ;
 671:L P[452] WELD_SPEED CNT100    ;
 672:L P[453] WELD_SPEED CNT100    ;
 673:L P[454] WELD_SPEED CNT100    ;
 674:C P[455]    
    :  P[456] WELD_SPEED CNT100    ;
 675:L P[457] WELD_SPEED CNT100    ;
 676:C P[458]    
    :  P[459] WELD_SPEED CNT100    ;
 677:L P[460] WELD_SPEED FINE
    :  Arc End[6]    ;
 678:  Weave End ;
 679:  Track End ;
 680:   ;
 681:  !FR50L1651 ;
 682:   ;
 683:L P[463] 1000mm/sec FINE
    :  Arc Start[6]    ;
 684:  Weave Sine[6] ;
 685:  Track TAST[6] ;
 686:L P[464] WELD_SPEED CNT100    ;
 687:C P[465]    
    :  P[466] WELD_SPEED CNT100    ;
 688:C P[467]    
    :  P[468] WELD_SPEED FINE
    :  Arc End[6]    ;
 689:  Weave End ;
 690:  Track End ;
 691:   ;
 692:  !FR50L1660 ;
 693:   ;
 694:L P[477] 1000mm/sec FINE
    :  Arc Start[6]    ;
 695:  Weave Sine[6] ;
 696:  Track TAST[6] ;
 697:L P[478] WELD_SPEED FINE
    :  Arc End[6]    ;
 698:  Weave End ;
 699:  Track End ;
 700:   ;
 701:  !FR50L1661 ;
 702:   ;
 703:L P[482] 1000mm/sec FINE
    :  Arc Start[6]    ;
 704:  Weave Sine[6] ;
 705:  Track TAST[6] ;
 706:L P[483] WELD_SPEED FINE
    :  Arc End[6]    ;
 707:  Weave End ;
 708:  Track End ;
 709:   ;
 710:  !FR50L1670 ;
 711:   ;
 712:L P[489] 1000mm/sec FINE
    :  Arc Start[8]    ;
 713:  Weave Sine[8] ;
 714:L P[490] WELD_SPEED FINE
    :  Arc End[8]    ;
 715:  Weave End ;
 716:   ;
 717:  !FR50L1680 ;
 718:   ;
 719:L P[493] 1000mm/sec FINE
    :  Arc Start[6]    ;
 720:  Weave Sine[6] ;
 721:  Track TAST[6] ;
 722:L P[494] WELD_SPEED FINE
    :  Arc End[6]    ;
 723:  Weave End ;
 724:  Track End ;
 725:   ;
 726:  !FR50L1690 ;
 727:   ;
 728:L P[498] 1000mm/sec FINE
    :  Arc Start[6]    ;
 729:  Weave Sine[6] ;
 730:  Track TAST[6] ;
 731:L P[499] WELD_SPEED CNT100    ;
 732:L P[500] WELD_SPEED FINE
    :  Arc End[6]    ;
 733:  Weave End ;
 734:  Track End ;
 735:   ;
 736:  !FR50L1700 ;
 737:   ;
 738:L P[504] 1000mm/sec FINE
    :  Arc Start[6]    ;
 739:  Weave Sine[6] ;
 740:  Track TAST[6] ;
 741:L P[505] WELD_SPEED CNT100    ;
 742:C P[506]    
    :  P[507] WELD_SPEED CNT100    ;
 743:L P[508] WELD_SPEED CNT100    ;
 744:C P[509]    
    :  P[510] WELD_SPEED CNT100    ;
 745:L P[511] WELD_SPEED CNT100    ;
 746:C P[512]    
    :  P[513] WELD_SPEED CNT100    ;
 747:L P[514] WELD_SPEED FINE
    :  Arc End[6]    ;
 748:  Weave End ;
 749:  Track End ;
 750:   ;
 751:  !FR50L1710 ;
 752:   ;
 753:L P[518] 1000mm/sec FINE
    :  Arc Start[6]    ;
 754:  Weave Sine[6] ;
 755:  Track TAST[6] ;
 756:L P[519] WELD_SPEED CNT100    ;
 757:L P[520] WELD_SPEED FINE
    :  Arc End[6]    ;
 758:  Weave End ;
 759:  Track End ;
 760:   ;
 761:  !FR50L1720 ;
 762:   ;
 763:L P[526] 1000mm/sec FINE
    :  Arc Start[6]    ;
 764:  Weave Sine[6] ;
 765:L P[527] WELD_SPEED CNT100    ;
 766:L P[528] WELD_SPEED CNT100    ;
 767:L P[529] WELD_SPEED FINE
    :  Arc End[6]    ;
 768:  Weave End ;
 769:   ;
 770:  !FR50L1730 ;
 771:   ;
 772:L P[534] 1000mm/sec FINE
    :  Arc Start[6]    ;
 773:  Weave Sine[6] ;
 774:  Track TAST[6] ;
 775:L P[535] WELD_SPEED CNT100    ;
 776:L P[536] WELD_SPEED CNT100    ;
 777:L P[537] WELD_SPEED FINE
    :  Arc End[6]    ;
 778:  Weave End ;
 779:  Track End ;
 780:   ;
 781:  !FR50L1740 ;
 782:   ;
 783:L P[541] 1000mm/sec FINE
    :  Arc Start[6]    ;
 784:  Weave Sine[6] ;
 785:  Track TAST[6] ;
 786:L P[542] WELD_SPEED FINE
    :  Arc End[6]    ;
 787:  Weave End ;
 788:  Track End ;
 789:   ;
 790:  !FR50L1750 ;
 791:   ;
 792:L P[546] 1000mm/sec FINE
    :  Arc Start[6]    ;
 793:  Weave Sine[6] ;
 794:  Track TAST[6] ;
 795:L P[547] WELD_SPEED CNT100    ;
 796:L P[548] WELD_SPEED FINE
    :  Arc End[6]    ;
 797:  Weave End ;
 798:  Track End ;
 799:   ;
 800:  !FR50L1770 ;
 801:   ;
 802:L P[553] 1000mm/sec FINE
    :  Arc Start[6]    ;
 803:  Weave Sine[6] ;
 804:  Track TAST[6] ;
 805:L P[554] WELD_SPEED FINE
    :  Arc End[6]    ;
 806:  Weave End ;
 807:  Track End ;
 808:L P[557] 1000mm/sec FINE
    :  Arc Start[6]    ;
 809:  Weave Sine[6] ;
 810:L P[558] WELD_SPEED FINE
    :  Arc End[6]    ;
 811:  Weave End ;
 812:L P[562] 2400mm/sec FINE
    :  Arc Start[6]    ;
 813:  Weave Sine[6] ;
 814:L P[563] WELD_SPEED FINE
    :  Arc End[6]    ;
 815:  Weave End ;
 816:   ;
 817:  !FR50L1780 ;
 818:   ;
 819:L P[571] 500mm/sec FINE
    :  Arc Start[6]    ;
 820:  Weave Sine[6] ;
 821:  Track TAST[6] ;
 822:L P[572] WELD_SPEED FINE
    :  Arc End[6]    ;
 823:  Weave End ;
 824:  Track End ;
 825:   ;
 826:  !FR50L1790 ;
 827:   ;
 828:L P[576] 1000mm/sec FINE
    :  Arc Start[6]    ;
 829:  Weave Sine[6] ;
 830:  Track TAST[6] ;
 831:L P[577] WELD_SPEED FINE
    :  Arc End[6]    ;
 832:  Weave End ;
 833:  Track End ;
 834:   ;
 835:  !FR50L1800 ;
 836:   ;
 837:L P[579] 1000mm/sec FINE
    :  Arc Start[6]    ;
 838:  Weave Sine[6] ;
 839:  Track TAST[6] ;
 840:L P[580] WELD_SPEED CNT100    ;
 841:L P[581] WELD_SPEED FINE
    :  Arc End[6]    ;
 842:  Weave End ;
 843:  Track End ;
 844:   ;
 845:  !FR50L1810 ;
 846:   ;
 847:L P[583] 1000mm/sec FINE
    :  Arc Start[6]    ;
 848:  Weave Sine[6] ;
 849:  Track TAST[6] ;
 850:L P[584] WELD_SPEED CNT100    ;
 851:L P[585] WELD_SPEED FINE
    :  Arc End[6]    ;
 852:  Weave End ;
 853:  Track End ;
 854:   ;
 855:  !FR50L1820 ;
 856:   ;
 857:L P[589] 1000mm/sec FINE
    :  Arc Start[6]    ;
 858:  Weave Sine[6] ;
 859:L P[590] WELD_SPEED CNT100    ;
 860:L P[591] WELD_SPEED FINE
    :  Arc End[6]    ;
 861:  Weave End ;
 862:   ;
 863:  !FR50L1830 ;
 864:   ;
 865:L P[596] 1000mm/sec FINE
    :  Arc Start[6]    ;
 866:  Weave Sine[6] ;
 867:  Track TAST[6] ;
 868:L P[597] WELD_SPEED CNT100    ;
 869:C P[598]    
    :  P[599] WELD_SPEED CNT100    ;
 870:L P[600] WELD_SPEED CNT100    ;
 871:C P[601]    
    :  P[602] WELD_SPEED CNT100    ;
 872:L P[603] WELD_SPEED FINE
    :  Arc End[6]    ;
 873:  Weave End ;
 874:  Track End ;
 875:   ;
 876:  !FR50L1840 ;
 877:   ;
 878:L P[606] 1000mm/sec FINE
    :  Arc Start[6]    ;
 879:  Weave Sine[6] ;
 880:  Track TAST[6] ;
 881:L P[607] WELD_SPEED CNT100    ;
 882:C P[608]    
    :  P[609] WELD_SPEED CNT100    ;
 883:L P[610] WELD_SPEED CNT100    ;
 884:L P[611] WELD_SPEED CNT100    ;
 885:L P[612] WELD_SPEED CNT100    ;
 886:L P[613] WELD_SPEED CNT100    ;
 887:L P[614] WELD_SPEED FINE
    :  Arc End[6]    ;
 888:  Weave End ;
 889:  Track End ;
 890:   ;
 891:  !FR50L1850 ;
 892:   ;
 893:L P[619] 1000mm/sec FINE
    :  Arc Start[6]    ;
 894:  Weave Sine[6] ;
 895:L P[620] WELD_SPEED CNT100    ;
 896:L P[621] WELD_SPEED CNT100    ;
 897:L P[622] WELD_SPEED FINE
    :  Arc End[6]    ;
 898:  Weave End ;
 899:   ;
 900:  !FR50L1860 ;
 901:   ;
 902:L P[625] 1000mm/sec FINE
    :  Arc Start[6]    ;
 903:  Weave Sine[6] ;
 904:  Track TAST[6] ;
 905:L P[626] WELD_SPEED FINE
    :  Arc End[6]    ;
 906:  Weave End ;
 907:  Track End ;
 908:   ;
 909:  !FR50L1870 ;
 910:   ;
 911:L P[628] 1000mm/sec FINE
    :  Arc Start[6]    ;
 912:  Weave Sine[6] ;
 913:  Track TAST[6] ;
 914:L P[629] WELD_SPEED CNT100    ;
 915:L P[630] WELD_SPEED FINE
    :  Arc End[6]    ;
 916:  Weave End ;
 917:  Track End ;
 918:   ;
 919:  !FR50L1880 ;
 920:   ;
 921:L P[632] 1000mm/sec FINE
    :  Arc Start[6]    ;
 922:  Weave Sine[6] ;
 923:  Track TAST[6] ;
 924:L P[633] WELD_SPEED CNT100    ;
 925:L P[634] WELD_SPEED FINE
    :  Arc End[6]    ;
 926:  Weave End ;
 927:  Track End ;
 928:   ;
 929:  !FR50L1900 ;
 930:   ;
 931:L P[639] 1000mm/sec FINE
    :  Arc Start[6]    ;
 932:  Weave Sine[6] ;
 933:  Track TAST[6] ;
 934:L P[640] WELD_SPEED CNT100    ;
 935:L P[641] WELD_SPEED FINE
    :  Arc End[6]    ;
 936:  Weave End ;
 937:  Track End ;
 938:   ;
 939:  !FR50L1910 ;
 940:   ;
 941:L P[646] 1000mm/sec FINE
    :  Arc Start[6]    ;
 942:  Weave Sine[6] ;
 943:  Track TAST[6] ;
 944:L P[647] WELD_SPEED CNT100    ;
 945:C P[648]    
    :  P[649] WELD_SPEED CNT100    ;
 946:L P[650] WELD_SPEED CNT100    ;
 947:L P[651] WELD_SPEED CNT100    ;
 948:L P[652] WELD_SPEED CNT100    ;
 949:L P[653] WELD_SPEED CNT100    ;
 950:C P[654]    
    :  P[655] WELD_SPEED CNT100    ;
 951:L P[656] WELD_SPEED CNT100    ;
 952:C P[657]    
    :  P[658] WELD_SPEED CNT100    ;
 953:L P[659] WELD_SPEED CNT100    ;
 954:C P[660]    
    :  P[661] WELD_SPEED CNT100    ;
 955:L P[662] WELD_SPEED CNT100    ;
 956:L P[663] WELD_SPEED CNT100    ;
 957:L P[664] WELD_SPEED CNT100    ;
 958:C P[665]    
    :  P[666] WELD_SPEED FINE
    :  Arc End[6]    ;
 959:  Weave End ;
 960:  Track End ;
 961:L P[669] 500mm/sec FINE
    :  Arc Start[6]    ;
 962:  Weave Sine[6] ;
 963:  Track TAST[6] ;
 964:L P[670] WELD_SPEED CNT100    ;
 965:C P[671]    
    :  P[672] WELD_SPEED CNT100    ;
 966:L P[673] WELD_SPEED CNT100    ;
 967:C P[674]    
    :  P[675] WELD_SPEED FINE
    :  Arc End[6]    ;
 968:  Weave End ;
 969:  Track End ;
 970:   ;
 971:  !FR50L1920 ;
 972:   ;
 973:L P[683] 1000mm/sec FINE
    :  Arc Start[6]    ;
 974:  Weave Sine[6] ;
 975:  Track TAST[6] ;
 976:L P[684] WELD_SPEED FINE
    :  Arc End[6]    ;
 977:  Weave End ;
 978:  Track End ;
 979:   ;
 980:  !FR50L1930 ;
 981:   ;
 982:L P[688] 1000mm/sec FINE
    :  Arc Start[6]    ;
 983:  Weave Sine[6] ;
 984:  Track TAST[6] ;
 985:L P[689] WELD_SPEED CNT100    ;
 986:L P[690] WELD_SPEED FINE
    :  Arc End[6]    ;
 987:  Weave End ;
 988:  Track End ;
 989:   ;
 990:  !FR50L1940 ;
 991:   ;
 992:L P[693] 1000mm/sec FINE
    :  Arc Start[6]    ;
 993:  Weave Sine[6] ;
 994:  Track TAST[6] ;
 995:L P[694] WELD_SPEED FINE
    :  Arc End[6]    ;
 996:  Weave End ;
 997:  Track End ;
 998:   ;
 999:  !FR50L1950 ;
1000:   ;
1001:L P[700] 1000mm/sec FINE
    :  Arc Start[6]    ;
1002:  Weave Sine[6] ;
1003:  Track TAST[6] ;
1004:L P[701] WELD_SPEED CNT100    ;
1005:L P[702] WELD_SPEED CNT100    ;
1006:C P[703]    
    :  P[704] WELD_SPEED FINE
    :  Arc End[6]    ;
1007:  Weave End ;
1008:  Track End ;
1009:   ;
1010:  !FR50L1960 ;
1011:   ;
1012:L P[712] 1000mm/sec FINE
    :  Arc Start[6]    ;
1013:  Weave Sine[6] ;
1014:  Track TAST[6] ;
1015:L P[713] WELD_SPEED CNT100    ;
1016:L P[714] WELD_SPEED CNT100    ;
1017:C P[715]    
    :  P[716] WELD_SPEED FINE
    :  Arc End[6]    ;
1018:  Weave End ;
1019:  Track End ;
1020:   ;
1021:  !FR50L1970 ;
1022:   ;
1023:L P[88] 800mm/sec FINE
    :  Arc Start[6]    ;
1024:  Weave Sine[6] ;
1025:  Track TAST[6] ;
1026:L P[92] WELD_SPEED CNT100    ;
1027:C P[93]    
    :  P[94] WELD_SPEED FINE
    :  Arc End[6]    ;
1028:  Track End ;
1029:  Weave End ;
1030:   ;
1031:  !FR50L1980 ;
1032:   ;
1033:L P[731] 800mm/sec FINE
    :  Arc Start[6]    ;
1034:  Weave Sine[6] ;
1035:  Track TAST[6] ;
1036:L P[732] WELD_SPEED CNT100    ;
1037:C P[733]    
    :  P[734] WELD_SPEED FINE
    :  Arc End[6]    ;
1038:  Weave End ;
1039:  Track End ;
1040:   ;
1041:  !FR50L2010 ;
1042:   ;
1043:L P[752] 1000mm/sec FINE
    :  Arc Start[8]    ;
1044:  Weave Sine[8] ;
1045:L P[753] WELD_SPEED CNT100    ;
1046:C P[754]    
    :  P[755] WELD_SPEED CNT100    ;
1047:L P[756] WELD_SPEED CNT100    ;
1048:L P[757] WELD_SPEED CNT100    ;
1049:L P[758] WELD_SPEED CNT100    ;
1050:L P[759] WELD_SPEED FINE
    :  Arc End[8]    ;
1051:  Weave End ;
1052:   ;
1053:  !FR50L2040 ;
1054:   ;
1055:L P[775] 1000mm/sec FINE
    :  Arc Start[8]    ;
1056:  Weave Sine[8] ;
1057:L P[776] WELD_SPEED CNT100    ;
1058:C P[777]    
    :  P[778] WELD_SPEED CNT100    ;
1059:L P[779] WELD_SPEED CNT100    ;
1060:L P[780] WELD_SPEED CNT100    ;
1061:L P[781] WELD_SPEED CNT100    ;
1062:L P[782] WELD_SPEED FINE
    :  Arc End[8]    ;
1063:  Weave End ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y = -1277.239  mm,	Z =  1102.163  mm,
	W =     -.010 deg,	P =    41.972 deg,	R =  -155.505 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1224.128  mm,	Y = -1331.239  mm,	Z =   220.163  mm,
	W =     -.010 deg,	P =    41.970 deg,	R =  -145.526 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1252.058  mm,	Y = -1261.378  mm,	Z =    72.461  mm,
	W =    -1.699 deg,	P =    44.143 deg,	R =  -145.630 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1307.345  mm,	Y = -1320.375  mm,	Z =    70.982  mm,
	W =     1.500 deg,	P =    44.727 deg,	R =  -177.468 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1241.550  mm,	Y = -1317.720  mm,	Z =   161.258  mm,
	W =    -4.003 deg,	P =    44.859 deg,	R =  -166.486 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   884.263  mm,	Y =  -881.105  mm,	Z =   161.257  mm,
	W =      .297 deg,	P =    44.999 deg,	R =  -138.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   902.346  mm,	Y =  -835.521  mm,	Z =    69.924  mm,
	W =      .907 deg,	P =    42.840 deg,	R =  -137.766 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1236.294  mm,	Y = -1234.316  mm,	Z =    69.654  mm,
	W =      .456 deg,	P =    44.458 deg,	R =  -141.251 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1177.964  mm,	Y = -1306.379  mm,	Z =   221.212  mm,
	W =     1.291 deg,	P =    44.986 deg,	R =  -138.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   843.616  mm,	Y =  -870.021  mm,	Z =   221.211  mm,
	W =     1.291 deg,	P =    44.986 deg,	R =  -138.174 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   872.611  mm,	Y =  -807.728  mm,	Z =    71.519  mm,
	W =    -2.028 deg,	P =    42.190 deg,	R =  -140.469 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   825.707  mm,	Y =  -749.978  mm,	Z =    70.668  mm,
	W =    -1.995 deg,	P =    42.640 deg,	R =  -109.079 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   658.428  mm,	Y = -1023.542  mm,	Z =   447.767  mm,
	W =     1.291 deg,	P =    44.986 deg,	R =  -124.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   -40.000 deg
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.457  mm,	Y =    46.384  mm,	Z =  1416.548  mm,
	W =    40.560 deg,	P =     2.984 deg,	R =   -28.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2433.817  mm,	Y =   162.190  mm,	Z =   747.306  mm,
	W =    40.554 deg,	P =     2.977 deg,	R =   -28.823 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2500.817  mm,	Y =   312.190  mm,	Z =   570.504  mm,
	W =    40.554 deg,	P =     2.977 deg,	R =    -7.352 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2508.188  mm,	Y =   408.450  mm,	Z =   487.642  mm,
	W =    44.781 deg,	P =     5.019 deg,	R =    -1.188 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2466.409  mm,	Y =   408.572  mm,	Z =   487.702  mm,
	W =    44.791 deg,	P =     5.023 deg,	R =    -1.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2443.024  mm,	Y =   407.813  mm,	Z =   489.461  mm,
	W =    44.788 deg,	P =     5.020 deg,	R =    30.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2525.392  mm,	Y =   259.053  mm,	Z =   652.977  mm,
	W =    44.759 deg,	P =     5.240 deg,	R =    21.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2514.940  mm,	Y =  -254.140  mm,	Z =   573.102  mm,
	W =   -39.345 deg,	P =     9.413 deg,	R =    11.283 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2524.947  mm,	Y =  -411.523  mm,	Z =   487.782  mm,
	W =   -44.055 deg,	P =    10.311 deg,	R =     9.166 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2481.308  mm,	Y =  -411.463  mm,	Z =   487.996  mm,
	W =   -44.053 deg,	P =    10.307 deg,	R =     9.166 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2449.567  mm,	Y =  -411.710  mm,	Z =   486.469  mm,
	W =   -44.056 deg,	P =    10.309 deg,	R =   -21.686 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.360  mm,	Y =  -264.938  mm,	Z =   675.960  mm,
	W =   -44.052 deg,	P =    10.305 deg,	R =   -20.066 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2106.646  mm,	Y =   280.205  mm,	Z =   458.961  mm,
	W =    30.589 deg,	P =    34.770 deg,	R =    43.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.910  mm,	Y =   392.326  mm,	Z =   357.903  mm,
	W =    43.297 deg,	P =    13.770 deg,	R =    75.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.910  mm,	Y =   312.166  mm,	Z =   357.903  mm,
	W =    43.297 deg,	P =    13.770 deg,	R =    75.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2090.561  mm,	Y =   312.197  mm,	Z =   437.748  mm,
	W =    43.281 deg,	P =    13.759 deg,	R =    75.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2090.561  mm,	Y =  -333.900  mm,	Z =   437.748  mm,
	W =   -41.228 deg,	P =    19.917 deg,	R =   -68.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.490  mm,	Y =  -404.811  mm,	Z =   359.074  mm,
	W =   -41.229 deg,	P =    19.917 deg,	R =   -68.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.489  mm,	Y =  -322.731  mm,	Z =   359.074  mm,
	W =   -41.229 deg,	P =    19.917 deg,	R =   -68.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.880  mm,	Y =  -324.741  mm,	Z =   461.897  mm,
	W =   -41.228 deg,	P =    19.917 deg,	R =   -68.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.880  mm,	Y =    72.814  mm,	Z =   461.897  mm,
	W =     3.207 deg,	P =    44.910 deg,	R =   -85.462 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2684.879  mm,	Y =  -106.186  mm,	Z =  -442.104  mm,
	W =    -1.257 deg,	P =    33.277 deg,	R =   -88.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2736.558  mm,	Y =   -56.451  mm,	Z =  -598.484  mm,
	W =      .970 deg,	P =    44.992 deg,	R =   -88.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2767.036  mm,	Y =   -56.451  mm,	Z =  -598.486  mm,
	W =      .970 deg,	P =    44.992 deg,	R =   -88.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2684.879  mm,	Y =  -106.186  mm,	Z =  -442.104  mm,
	W =    -1.257 deg,	P =    33.277 deg,	R =   -88.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2584.879  mm,	Y =    -6.186  mm,	Z =  -442.103  mm,
	W =    -1.257 deg,	P =    33.277 deg,	R =   -88.589 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2590.797  mm,	Y =   119.439  mm,	Z =  -403.825  mm,
	W =      .677 deg,	P =    39.803 deg,	R =    91.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2714.797  mm,	Y =   119.439  mm,	Z =  -486.825  mm,
	W =      .677 deg,	P =    39.803 deg,	R =    91.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2737.214  mm,	Y =    52.045  mm,	Z =  -596.220  mm,
	W =      .898 deg,	P =    44.994 deg,	R =    91.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2765.224  mm,	Y =    53.223  mm,	Z =  -596.928  mm,
	W =      .899 deg,	P =    44.991 deg,	R =    91.266 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2714.797  mm,	Y =   119.439  mm,	Z =  -486.825  mm,
	W =      .677 deg,	P =    39.803 deg,	R =    91.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.511  mm,	Y =   110.018  mm,	Z =  -478.266  mm,
	W =     -.713 deg,	P =    25.922 deg,	R =     -.241 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2781.654  mm,	Y =    51.018  mm,	Z =  -492.014  mm,
	W =     -.713 deg,	P =    25.922 deg,	R =     -.241 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2771.547  mm,	Y =    44.594  mm,	Z =  -599.203  mm,
	W =     -.289 deg,	P =    37.601 deg,	R =      .738 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2771.146  mm,	Y =   -56.494  mm,	Z =  -598.357  mm,
	W =     -.293 deg,	P =    37.601 deg,	R =      .748 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2777.940  mm,	Y =   -47.313  mm,	Z =  -330.601  mm,
	W =     -.063 deg,	P =     6.406 deg,	R =     -.319 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2322.083  mm,	Y =     1.859  mm,	Z =   832.400  mm,
	W =     -.063 deg,	P =     6.406 deg,	R =     -.319 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2504.940  mm,	Y =     1.859  mm,	Z =   832.400  mm,
	W =    34.494 deg,	P =    22.641 deg,	R =   -29.216 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2681.939  mm,	Y =   321.124  mm,	Z =   548.399  mm,
	W =    40.027 deg,	P =    -6.599 deg,	R =     7.835 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2751.342  mm,	Y =   410.859  mm,	Z =   451.447  mm,
	W =    44.538 deg,	P =    -7.208 deg,	R =     7.272 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2710.782  mm,	Y =   408.789  mm,	Z =   452.225  mm,
	W =    44.541 deg,	P =    -7.214 deg,	R =     7.272 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2707.510  mm,	Y =   267.241  mm,	Z =   598.890  mm,
	W =    44.541 deg,	P =    -7.214 deg,	R =     7.272 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2707.510  mm,	Y =  -284.759  mm,	Z =   598.890  mm,
	W =   -34.404 deg,	P =     5.822 deg,	R =     8.425 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.725  mm,	Y =  -417.352  mm,	Z =   456.544  mm,
	W =   -44.517 deg,	P =     7.212 deg,	R =     7.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2716.537  mm,	Y =  -417.597  mm,	Z =   455.165  mm,
	W =   -44.526 deg,	P =     7.207 deg,	R =     7.276 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2709.062  mm,	Y =  -284.067  mm,	Z =   595.415  mm,
	W =   -44.541 deg,	P =     7.214 deg,	R =     7.272 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2545.584  mm,	Y =    60.730  mm,	Z =   729.483  mm,
	W =      .337 deg,	P =   -50.731 deg,	R =     6.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2867.587  mm,	Y =   280.174  mm,	Z =   498.049  mm,
	W =   -15.171 deg,	P =   -43.175 deg,	R =    33.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2896.112  mm,	Y =   278.436  mm,	Z =   463.899  mm,
	W =   -14.926 deg,	P =   -42.904 deg,	R =    33.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2897.490  mm,	Y =   360.733  mm,	Z =   463.056  mm,
	W =    -8.441 deg,	P =   -43.927 deg,	R =    33.763 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2898.388  mm,	Y =   393.767  mm,	Z =   462.045  mm,
	W =    -2.983 deg,	P =   -44.252 deg,	R =    40.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2895.619  mm,	Y =   404.047  mm,	Z =   461.557  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    53.826 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2888.819  mm,	Y =   407.185  mm,	Z =   461.271  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2877.562  mm,	Y =   409.105  mm,	Z =   461.271  mm,
	W =    -2.617 deg,	P =   -43.939 deg,	R =    78.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2705.073  mm,	Y =   246.530  mm,	Z =   646.835  mm,
	W =    -2.629 deg,	P =   -43.936 deg,	R =    42.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2526.514  mm,	Y =   103.096  mm,	Z =   648.141  mm,
	W =    43.604 deg,	P =    12.444 deg,	R =   -31.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  2532.128  mm,	Y =   -67.882  mm,	Z =   888.702  mm,
	W =   -11.578 deg,	P =   -57.733 deg,	R =     8.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2863.629  mm,	Y =  -311.612  mm,	Z =   516.569  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2897.917  mm,	Y =  -285.431  mm,	Z =   459.923  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2898.423  mm,	Y =  -384.351  mm,	Z =   461.415  mm,
	W =     7.397 deg,	P =   -43.869 deg,	R =   -27.794 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2897.209  mm,	Y =  -399.220  mm,	Z =   461.618  mm,
	W =     7.397 deg,	P =   -43.869 deg,	R =   -33.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2894.455  mm,	Y =  -407.278  mm,	Z =   461.615  mm,
	W =    -1.104 deg,	P =   -44.451 deg,	R =   -50.597 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.997 deg,	J2=     0.000 deg
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2890.602  mm,	Y =  -413.663  mm,	Z =   458.117  mm,
	W =    -1.090 deg,	P =   -44.448 deg,	R =   -71.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2876.877  mm,	Y =  -417.188  mm,	Z =   456.595  mm,
	W =    -1.104 deg,	P =   -44.451 deg,	R =   -71.047 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.995 deg,	J2=     0.000 deg
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2694.122  mm,	Y =  -313.123  mm,	Z =   596.266  mm,
	W =     1.613 deg,	P =   -43.868 deg,	R =   -40.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2545.584  mm,	Y =    60.730  mm,	Z =   729.483  mm,
	W =      .337 deg,	P =   -50.731 deg,	R =     6.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2867.587  mm,	Y =   280.174  mm,	Z =   498.049  mm,
	W =   -15.171 deg,	P =   -43.175 deg,	R =    33.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2694.047  mm,	Y =  -149.349  mm,	Z =   552.522  mm,
	W =     8.162 deg,	P =    29.011 deg,	R =  -103.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   357.030  mm,	Y =     -.134  mm,	Z =  2422.493  mm,
	W =     -.021 deg,	P =   -39.773 deg,	R =      .020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   863.445  mm,	Y =  -469.113  mm,	Z =  2181.884  mm,
	W =   -20.982 deg,	P =   -22.786 deg,	R =     -.824 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1166.553  mm,	Y = -1374.013  mm,	Z =  1522.225  mm,
	W =   -32.586 deg,	P =   -12.067 deg,	R =    17.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.625  mm,	Y = -1470.562  mm,	Z =  1075.975  mm,
	W =   -42.854 deg,	P =   -15.295 deg,	R =    39.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.861  mm,	Y = -1415.325  mm,	Z =  1029.238  mm,
	W =   -42.847 deg,	P =   -15.300 deg,	R =    39.122 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2705.073  mm,	Y =   246.530  mm,	Z =   646.835  mm,
	W =    -2.629 deg,	P =   -43.936 deg,	R =    42.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2545.584  mm,	Y =    60.730  mm,	Z =   729.483  mm,
	W =      .337 deg,	P =   -50.731 deg,	R =     6.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2867.587  mm,	Y =   280.174  mm,	Z =   498.049  mm,
	W =   -15.171 deg,	P =   -43.175 deg,	R =    33.524 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1647.655  mm,	Y = -1408.291  mm,	Z =  1027.027  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    40.474 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1660.943  mm,	Y = -1400.277  mm,	Z =  1026.065  mm,
	W =   -42.573 deg,	P =   -16.796 deg,	R =    43.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1662.852  mm,	Y = -1393.480  mm,	Z =  1032.390  mm,
	W =   -44.235 deg,	P =   -18.485 deg,	R =    48.309 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1677.456  mm,	Y = -1378.259  mm,	Z =  1040.445  mm,
	W =   -45.493 deg,	P =   -19.537 deg,	R =    48.719 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1618.043  mm,	Y = -1395.782  mm,	Z =  1053.900  mm,
	W =   -44.560 deg,	P =   -18.266 deg,	R =    45.822 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.706  mm,	Y = -1470.455  mm,	Z =  1071.063  mm,
	W =   -42.856 deg,	P =   -15.293 deg,	R =    39.131 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2705.073  mm,	Y =   246.530  mm,	Z =   646.835  mm,
	W =    -2.629 deg,	P =   -43.936 deg,	R =    42.269 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2526.514  mm,	Y =   103.096  mm,	Z =   648.141  mm,
	W =    43.604 deg,	P =    12.444 deg,	R =   -31.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[100]{
   GP1:
	UF : 1, UT : 1,	
	J1=    -1.721 deg,	J2=     3.870 deg,	J3=   -17.068 deg,
	J4=   184.314 deg,	J5=   -30.335 deg,	J6=  -177.932 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2863.629  mm,	Y =  -311.612  mm,	Z =   516.569  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1166.553  mm,	Y = -1374.013  mm,	Z =  1522.225  mm,
	W =   -32.586 deg,	P =   -12.067 deg,	R =    17.529 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1322.021  mm,	Y =   -61.275  mm,	Z =  2053.615  mm,
	W =     5.182 deg,	P =   -69.521 deg,	R =     3.554 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -125.000 deg
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   419.331  mm,	Y =  1026.789  mm,	Z =  1609.020  mm,
	W =    71.318 deg,	P =     7.769 deg,	R =   -20.454 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2208.726  mm,	Y =    79.937  mm,	Z =    12.968  mm,
	W =   -44.598 deg,	P =    -6.679 deg,	R =     6.842 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2694.122  mm,	Y =  -313.123  mm,	Z =   596.266  mm,
	W =     1.613 deg,	P =   -43.868 deg,	R =   -40.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 1, 0, 0',
	X =  2532.128  mm,	Y =   -67.882  mm,	Z =   888.702  mm,
	W =   -11.578 deg,	P =   -57.733 deg,	R =     8.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2863.629  mm,	Y =  -311.612  mm,	Z =   516.569  mm,
	W =    14.883 deg,	P =   -42.517 deg,	R =   -27.206 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2694.122  mm,	Y =  -313.123  mm,	Z =   596.266  mm,
	W =     1.613 deg,	P =   -43.868 deg,	R =   -40.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2676.978  mm,	Y =   -65.266  mm,	Z =   596.266  mm,
	W =   -30.436 deg,	P =     2.527 deg,	R =    19.106 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2652.854  mm,	Y =  -132.737  mm,	Z =   598.439  mm,
	W =    36.200 deg,	P =    39.713 deg,	R =  -141.288 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2679.009  mm,	Y =  -300.872  mm,	Z =   587.337  mm,
	W =    31.909 deg,	P =    33.590 deg,	R =  -130.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2732.660  mm,	Y =  -291.498  mm,	Z =   459.463  mm,
	W =    29.147 deg,	P =    30.453 deg,	R =  -132.266 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2737.828  mm,	Y =  -335.614  mm,	Z =   459.309  mm,
	W =    29.459 deg,	P =    30.697 deg,	R =  -132.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2748.682  mm,	Y =  -359.447  mm,	Z =   458.247  mm,
	W =    32.708 deg,	P =    26.756 deg,	R =  -103.211 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2782.788  mm,	Y =  -368.053  mm,	Z =   461.277  mm,
	W =    32.871 deg,	P =    19.630 deg,	R =   -83.146 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2765.117  mm,	Y =  -374.645  mm,	Z =   567.623  mm,
	W =    32.749 deg,	P =    20.905 deg,	R =  -102.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2671.204  mm,	Y =   225.860  mm,	Z =   543.995  mm,
	W =   -28.621 deg,	P =    20.008 deg,	R =   104.866 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2740.807  mm,	Y =   282.456  mm,	Z =   454.339  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2740.471  mm,	Y =   330.671  mm,	Z =   455.272  mm,
	W =   -36.614 deg,	P =    28.247 deg,	R =   122.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2760.137  mm,	Y =   356.906  mm,	Z =   456.179  mm,
	W =   -32.204 deg,	P =    27.169 deg,	R =   100.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2776.222  mm,	Y =   360.760  mm,	Z =   461.623  mm,
	W =   -28.646 deg,	P =    22.121 deg,	R =    94.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.069  mm,	Y =   367.028  mm,	Z =   527.668  mm,
	W =   -32.204 deg,	P =    27.169 deg,	R =   115.020 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2467.068  mm,	Y =    59.086  mm,	Z =   527.668  mm,
	W =     1.750 deg,	P =    41.136 deg,	R =  -171.025 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2280.523  mm,	Y =    36.005  mm,	Z =   540.262  mm,
	W =    -2.229 deg,	P =    48.780 deg,	R =     4.148 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1780.523  mm,	Y =   179.521  mm,	Z =   445.976  mm,
	W =    35.022 deg,	P =    36.482 deg,	R =    50.220 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1666.073  mm,	Y =   232.940  mm,	Z =   357.763  mm,
	W =    31.327 deg,	P =    33.496 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.367  mm,	Y =   161.118  mm,	Z =   359.810  mm,
	W =    31.331 deg,	P =    33.498 deg,	R =    49.952 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1757.652  mm,	Y =   163.148  mm,	Z =   445.250  mm,
	W =    31.721 deg,	P =    33.769 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1757.652  mm,	Y =  -238.081  mm,	Z =   445.250  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -52.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.296  mm,	Y =  -245.157  mm,	Z =   359.474  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1674.067  mm,	Y =  -171.272  mm,	Z =   358.368  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -56.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1846.771  mm,	Y =  -176.092  mm,	Z =   533.918  mm,
	W =   -34.074 deg,	P =    31.387 deg,	R =   -52.404 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=     0.000 deg
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.627  mm,	Y =   -99.092  mm,	Z =  1116.203  mm,
	W =      .036 deg,	P =     1.106 deg,	R =     1.891 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.627  mm,	Y =  -399.092  mm,	Z =   995.203  mm,
	W =     -.607 deg,	P =      .924 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1806.951  mm,	Y =  -401.301  mm,	Z =   820.124  mm,
	W =     -.611 deg,	P =      .925 deg,	R =   -33.342 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1811.177  mm,	Y =  -171.928  mm,	Z =   822.372  mm,
	W =     -.615 deg,	P =      .929 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.627  mm,	Y =  -181.093  mm,	Z =  1075.203  mm,
	W =     -.607 deg,	P =      .924 deg,	R =   -33.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.627  mm,	Y =   367.907  mm,	Z =  1009.203  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.441 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1807.900  mm,	Y =   392.843  mm,	Z =   821.281  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1805.706  mm,	Y =   162.058  mm,	Z =   821.772  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.442 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.628  mm,	Y =   165.628  mm,	Z =  1157.203  mm,
	W =     -.607 deg,	P =      .924 deg,	R =    40.441 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=     0.000 deg
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1855.817  mm,	Y =   565.761  mm,	Z =  1580.306  mm,
	W =     -.010 deg,	P =   -11.091 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2144.817  mm,	Y =   565.761  mm,	Z =  1463.306  mm,
	W =     -.010 deg,	P =   -11.091 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.485  mm,	Y =   641.712  mm,	Z =  1313.269  mm,
	W =     -.150 deg,	P =     3.186 deg,	R =     -.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
};
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2180.448  mm,	Y =   484.330  mm,	Z =  1313.381  mm,
	W =      .050 deg,	P =     3.285 deg,	R =     -.057 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.995 deg,	J2=     0.000 deg
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2180.629  mm,	Y =   441.870  mm,	Z =  1314.110  mm,
	W =   -10.967 deg,	P =     3.763 deg,	R =     -.257 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.999 deg,	J2=     0.000 deg
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2188.628  mm,	Y =   442.244  mm,	Z =  1370.256  mm,
	W =     0.000 deg,	P =    -1.567 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2188.627  mm,	Y =     9.496  mm,	Z =  1370.255  mm,
	W =     0.000 deg,	P =    -1.567 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.448  mm,	Y =     9.539  mm,	Z =  1331.644  mm,
	W =     -.712 deg,	P =     8.094 deg,	R =     -.112 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.996 deg,	J2=     0.000 deg
};
P[160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.019  mm,	Y =  -184.522  mm,	Z =  1332.900  mm,
	W =     -.016 deg,	P =    10.106 deg,	R =      .980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.456  mm,	Y =  -407.129  mm,	Z =  1331.643  mm,
	W =     -.927 deg,	P =     7.509 deg,	R =     -.098 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2172.695  mm,	Y =  -405.504  mm,	Z =  1389.385  mm,
	W =     0.000 deg,	P =     1.835 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2172.695  mm,	Y =   348.496  mm,	Z =  1389.385  mm,
	W =     0.000 deg,	P =     1.835 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2167.632  mm,	Y =   399.347  mm,	Z =  1331.502  mm,
	W =      .164 deg,	P =     6.215 deg,	R =      .006 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.862  mm,	Y =   175.690  mm,	Z =  1332.608  mm,
	W =      .990 deg,	P =     7.423 deg,	R =      .117 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2166.171  mm,	Y =     8.099  mm,	Z =  1332.684  mm,
	W =    -1.725 deg,	P =     7.606 deg,	R =     2.359 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2172.695  mm,	Y =     9.496  mm,	Z =  1419.385  mm,
	W =     0.000 deg,	P =    -4.591 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2172.695  mm,	Y =  -559.432  mm,	Z =  1419.385  mm,
	W =     0.000 deg,	P =    -4.591 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[169]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.486  mm,	Y =  -651.866  mm,	Z =  1318.869  mm,
	W =      .005 deg,	P =     8.099 deg,	R =      .006 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[170]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.374  mm,	Y =  -454.527  mm,	Z =  1315.208  mm,
	W =      .023 deg,	P =     7.896 deg,	R =     -.019 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[171]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2179.713  mm,	Y =  -448.929  mm,	Z =  1315.415  mm,
	W =     8.588 deg,	P =     5.688 deg,	R =      .847 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[172]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2189.212  mm,	Y =  -647.666  mm,	Z =  1505.155  mm,
	W =     0.000 deg,	P =   -23.113 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[173]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   857.212  mm,	Y =  -647.666  mm,	Z =  1505.155  mm,
	W =     0.000 deg,	P =   -23.113 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.000 deg,	J2=     0.000 deg
};
P[174]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[175]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  1052.305  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =   -90.656 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[176]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2182.317  mm,	Y =   237.190  mm,	Z =   362.878  mm,
	W =    34.980 deg,	P =    30.342 deg,	R =   -11.521 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[177]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2140.306  mm,	Y =   407.443  mm,	Z =   274.579  mm,
	W =    39.266 deg,	P =    23.844 deg,	R =     9.200 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[178]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2156.848  mm,	Y =   408.546  mm,	Z =   273.021  mm,
	W =    39.276 deg,	P =    23.852 deg,	R =   -24.752 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[179]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.264  mm,	Y =   408.269  mm,	Z =   272.683  mm,
	W =    39.348 deg,	P =    23.574 deg,	R =   -24.954 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[180]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2195.713  mm,	Y =   409.133  mm,	Z =   275.050  mm,
	W =    41.358 deg,	P =    16.787 deg,	R =   -30.152 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[181]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2148.042  mm,	Y =   316.356  mm,	Z =   353.027  mm,
	W =    41.358 deg,	P =    19.397 deg,	R =   -30.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[182]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.086  mm,	Y =    41.606  mm,	Z =   465.870  mm,
	W =     5.185 deg,	P =    44.764 deg,	R =   -99.894 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[183]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2195.445  mm,	Y =  -144.246  mm,	Z =   467.890  mm,
	W =    -5.093 deg,	P =    45.959 deg,	R =    87.861 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[184]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.482  mm,	Y =  -353.276  mm,	Z =   396.583  mm,
	W =   -45.879 deg,	P =    -3.673 deg,	R =    -1.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[185]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.308  mm,	Y =  -414.633  mm,	Z =   275.688  mm,
	W =   -42.902 deg,	P =    -2.083 deg,	R =   -37.986 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[186]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2148.323  mm,	Y =  -414.723  mm,	Z =   274.084  mm,
	W =   -42.900 deg,	P =    -2.086 deg,	R =    -3.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[187]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2197.502  mm,	Y =  -415.369  mm,	Z =   273.507  mm,
	W =   -42.900 deg,	P =    -2.086 deg,	R =    -3.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[188]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.828  mm,	Y =  -413.909  mm,	Z =   275.461  mm,
	W =   -37.675 deg,	P =   -22.312 deg,	R =     8.930 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[189]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2156.359  mm,	Y =  -282.400  mm,	Z =   447.455  mm,
	W =   -44.186 deg,	P =    -9.562 deg,	R =     3.909 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[190]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1997.297  mm,	Y =   -33.580  mm,	Z =   226.532  mm,
	W =    21.889 deg,	P =    35.316 deg,	R =  -145.925 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[191]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2093.179  mm,	Y =  -225.375  mm,	Z =   -15.616  mm,
	W =    32.857 deg,	P =    25.665 deg,	R =  -124.570 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[192]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2230.692  mm,	Y =  -244.712  mm,	Z =  -195.164  mm,
	W =    34.818 deg,	P =    27.072 deg,	R =  -123.443 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[193]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2231.573  mm,	Y =   -26.230  mm,	Z =  -195.203  mm,
	W =    34.826 deg,	P =    27.077 deg,	R =  -123.454 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[194]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2228.732  mm,	Y =    -5.925  mm,	Z =  -190.893  mm,
	W =    33.017 deg,	P =    26.717 deg,	R =   -93.421 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[195]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2122.464  mm,	Y =  -149.759  mm,	Z =    33.627  mm,
	W =    48.999 deg,	P =    55.272 deg,	R =  -134.620 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[196]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2199.611  mm,	Y =   205.102  mm,	Z =   -91.897  mm,
	W =   -26.253 deg,	P =    37.378 deg,	R =   139.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[197]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.608  mm,	Y =   237.638  mm,	Z =  -198.866  mm,
	W =   -26.756 deg,	P =    37.336 deg,	R =   139.554 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[198]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.167  mm,	Y =    15.957  mm,	Z =  -196.509  mm,
	W =   -26.754 deg,	P =    37.334 deg,	R =   139.553 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[199]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2229.296  mm,	Y =    -3.861  mm,	Z =  -195.798  mm,
	W =   -20.120 deg,	P =    35.519 deg,	R =   111.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[200]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2164.001  mm,	Y =    53.080  mm,	Z =   -49.714  mm,
	W =    14.710 deg,	P =    43.024 deg,	R =   172.922 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[201]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1395.872  mm,	Y =   -18.464  mm,	Z =   285.712  mm,
	W =    -2.036 deg,	P =    45.052 deg,	R =  -178.440 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[202]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1396.005  mm,	Y =  -582.305  mm,	Z =   147.420  mm,
	W =    42.351 deg,	P =    16.902 deg,	R =  -106.783 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[203]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1481.773  mm,	Y =  -649.516  mm,	Z =     4.672  mm,
	W =    42.305 deg,	P =    16.820 deg,	R =  -100.938 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[204]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1483.359  mm,	Y =  -463.806  mm,	Z =     3.440  mm,
	W =    42.353 deg,	P =    16.915 deg,	R =  -100.930 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[205]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1480.083  mm,	Y =  -453.844  mm,	Z =     3.901  mm,
	W =    42.350 deg,	P =    16.901 deg,	R =   -86.937 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[206]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1285.775  mm,	Y =  -605.974  mm,	Z =   235.473  mm,
	W =    42.357 deg,	P =    16.906 deg,	R =   -86.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[207]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1366.185  mm,	Y =    -6.493  mm,	Z =   187.345  mm,
	W =     -.786 deg,	P =    44.995 deg,	R =   178.888 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[208]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1457.610  mm,	Y =    -5.074  mm,	Z =    -1.334  mm,
	W =      .944 deg,	P =    42.924 deg,	R =   177.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[209]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1456.823  mm,	Y =  -333.215  mm,	Z =     -.642  mm,
	W =    -1.375 deg,	P =    43.930 deg,	R =   175.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[210]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1457.144  mm,	Y =  -389.993  mm,	Z =      .340  mm,
	W =     5.164 deg,	P =    43.292 deg,	R =  -179.576 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[211]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1417.107  mm,	Y =  -380.581  mm,	Z =   110.237  mm,
	W =    18.566 deg,	P =    41.762 deg,	R =  -153.239 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[212]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1417.107  mm,	Y =   330.231  mm,	Z =   110.237  mm,
	W =   -20.958 deg,	P =    40.782 deg,	R =   149.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[213]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1452.091  mm,	Y =   380.184  mm,	Z =     1.132  mm,
	W =    -1.242 deg,	P =    44.316 deg,	R =   179.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[214]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1459.905  mm,	Y =    -8.182  mm,	Z =     -.258  mm,
	W =     -.052 deg,	P =    43.981 deg,	R =  -179.147 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[215]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1280.837  mm,	Y =    -6.346  mm,	Z =   248.725  mm,
	W =     -.786 deg,	P =    44.995 deg,	R =   178.888 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[216]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1280.836  mm,	Y =   565.797  mm,	Z =   248.725  mm,
	W =    24.666 deg,	P =    38.913 deg,	R =  -143.830 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[217]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1478.049  mm,	Y =   642.654  mm,	Z =     4.653  mm,
	W =    29.663 deg,	P =    31.501 deg,	R =  -136.780 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[218]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1475.653  mm,	Y =   450.274  mm,	Z =     6.255  mm,
	W =    35.513 deg,	P =    24.469 deg,	R =  -124.378 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[219]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1474.914  mm,	Y =   441.895  mm,	Z =     5.846  mm,
	W =    35.513 deg,	P =    24.469 deg,	R =  -129.749 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[220]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1315.254  mm,	Y =   637.393  mm,	Z =   239.448  mm,
	W =    31.136 deg,	P =    34.298 deg,	R =  -133.008 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[221]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1315.254  mm,	Y =   -22.103  mm,	Z =   239.448  mm,
	W =      .876 deg,	P =    44.994 deg,	R =  -178.760 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[222]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2246.254  mm,	Y =   -86.103  mm,	Z =  -284.552  mm,
	W =      .610 deg,	P =    20.044 deg,	R =      .446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[223]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2186.980  mm,	Y =   -83.076  mm,	Z =  -438.565  mm,
	W =     -.956 deg,	P =    22.926 deg,	R =     1.001 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[224]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2186.499  mm,	Y =  -161.647  mm,	Z =  -438.565  mm,
	W =     -.956 deg,	P =    22.926 deg,	R =    22.592 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[225]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2246.254  mm,	Y =   -86.103  mm,	Z =  -284.552  mm,
	W =      .610 deg,	P =    20.044 deg,	R =      .446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.000 deg,	J2=   180.000 deg
};
P[226]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1562.464  mm,	Y =   -86.103  mm,	Z =    71.448  mm,
	W =     5.459 deg,	P =    -9.689 deg,	R =   -27.215 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[227]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1524.716  mm,	Y =   -79.047  mm,	Z =   -64.180  mm,
	W =     1.172 deg,	P =   -23.208 deg,	R =    -8.280 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[228]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1525.494  mm,	Y =  -112.165  mm,	Z =   -64.782  mm,
	W =     1.185 deg,	P =   -23.204 deg,	R =    -8.290 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[229]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1528.479  mm,	Y =  -166.347  mm,	Z =   -47.127  mm,
	W =     1.196 deg,	P =   -23.198 deg,	R =    -8.295 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[230]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1525.388  mm,	Y =  -160.517  mm,	Z =   -66.135  mm,
	W =     1.184 deg,	P =   -23.205 deg,	R =    -8.289 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[231]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1526.724  mm,	Y =  -137.443  mm,	Z =   -67.899  mm,
	W =     1.184 deg,	P =   -23.205 deg,	R =    -8.289 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[232]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1473.385  mm,	Y =  -169.076  mm,	Z =   222.771  mm,
	W =     9.627 deg,	P =   -18.262 deg,	R =   -28.428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     0.000 deg,	J2=   180.000 deg
};
P[233]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[234]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   322.817  mm,	Y =  -683.239  mm,	Z =  1534.020  mm,
	W =    -9.261 deg,	P =    44.239 deg,	R =   -13.141 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[235]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1409.816  mm,	Y =  -117.239  mm,	Z =   420.020  mm,
	W =    41.026 deg,	P =    20.397 deg,	R =     1.960 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[236]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2540.530  mm,	Y =  -162.127  mm,	Z =    95.162  mm,
	W =    36.503 deg,	P =    18.679 deg,	R =   -19.970 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[237]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2458.530  mm,	Y =  -162.127  mm,	Z =    32.162  mm,
	W =    36.503 deg,	P =    18.679 deg,	R =    32.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[238]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2372.493  mm,	Y =   -85.125  mm,	Z =   -28.442  mm,
	W =    40.515 deg,	P =    40.131 deg,	R =    23.483 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[239]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2370.298  mm,	Y =  -109.505  mm,	Z =   -29.922  mm,
	W =    40.520 deg,	P =    40.127 deg,	R =    54.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[240]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2373.512  mm,	Y =  -147.571  mm,	Z =   -28.085  mm,
	W =    40.521 deg,	P =    40.128 deg,	R =    54.929 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[241]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2373.382  mm,	Y =  -159.792  mm,	Z =   -26.936  mm,
	W =    39.996 deg,	P =    39.207 deg,	R =    81.747 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.998 deg,	J2=    90.000 deg
};
P[242]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2458.531  mm,	Y =  -105.876  mm,	Z =    32.162  mm,
	W =    36.503 deg,	P =    18.679 deg,	R =    44.252 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[243]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2540.530  mm,	Y =  -162.127  mm,	Z =    95.162  mm,
	W =    36.503 deg,	P =    18.679 deg,	R =   -19.970 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[244]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1653.515  mm,	Y =  -229.199  mm,	Z =   167.076  mm,
	W =    39.659 deg,	P =    20.135 deg,	R =   -30.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[245]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.357  mm,	Y =  -249.914  mm,	Z =    68.004  mm,
	W =    39.659 deg,	P =    20.135 deg,	R =   -14.061 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[246]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1674.558  mm,	Y =  -197.902  mm,	Z =   -15.747  mm,
	W =    38.571 deg,	P =    15.643 deg,	R =    22.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[247]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1706.028  mm,	Y =  -198.510  mm,	Z =   -16.685  mm,
	W =    38.571 deg,	P =    15.644 deg,	R =   -27.579 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[248]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1973.574  mm,	Y =  -202.749  mm,	Z =   -17.434  mm,
	W =    38.571 deg,	P =    15.644 deg,	R =   -27.579 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[249]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1991.550  mm,	Y =  -201.914  mm,	Z =   -14.547  mm,
	W =    38.530 deg,	P =    15.652 deg,	R =   -66.405 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=    90.000 deg
};
P[250]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1975.584  mm,	Y =  -259.178  mm,	Z =    54.947  mm,
	W =    38.570 deg,	P =    15.643 deg,	R =   -37.733 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[251]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2241.584  mm,	Y =   -44.178  mm,	Z =    54.947  mm,
	W =    41.142 deg,	P =     1.290 deg,	R =    -4.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[252]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2220.122  mm,	Y =    37.299  mm,	Z =    -4.302  mm,
	W =    44.923 deg,	P =     3.028 deg,	R =    -3.033 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[253]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2261.501  mm,	Y =    37.528  mm,	Z =    -6.118  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[254]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2208.125  mm,	Y =   -44.178  mm,	Z =    54.947  mm,
	W =    41.142 deg,	P =     1.290 deg,	R =    -4.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[255]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.641  mm,	Y =    39.627  mm,	Z =   -15.239  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[256]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2213.357  mm,	Y =    37.987  mm,	Z =   -14.278  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[257]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.573  mm,	Y =    36.787  mm,	Z =   -11.639  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =   -14.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[258]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2109.219  mm,	Y =    -9.572  mm,	Z =    50.759  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[259]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.497  mm,	Y =    36.666  mm,	Z =   -20.463  mm,
	W =    44.934 deg,	P =     3.042 deg,	R =     5.570 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[260]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2025.978  mm,	Y =    40.194  mm,	Z =   -20.755  mm,
	W =    44.928 deg,	P =     3.034 deg,	R =     5.584 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[261]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2016.978  mm,	Y =    40.597  mm,	Z =   -22.240  mm,
	W =    44.927 deg,	P =     3.029 deg,	R =    34.553 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[262]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2109.219  mm,	Y =   -49.919  mm,	Z =   167.759  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    -3.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[263]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1720.156  mm,	Y =   -49.919  mm,	Z =    98.759  mm,
	W =    44.920 deg,	P =     3.025 deg,	R =    11.940 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[264]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1799.412  mm,	Y =    41.133  mm,	Z =    49.790  mm,
	W =    50.318 deg,	P =     2.533 deg,	R =    12.052 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[265]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1689.959  mm,	Y =    40.113  mm,	Z =    51.381  mm,
	W =    50.325 deg,	P =     2.535 deg,	R =    12.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[266]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.091  mm,	Y =    39.397  mm,	Z =    51.498  mm,
	W =    55.797 deg,	P =      .895 deg,	R =    26.094 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[267]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1705.536  mm,	Y =   -37.237  mm,	Z =   113.105  mm,
	W =    53.172 deg,	P =     1.611 deg,	R =    24.177 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[268]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.553  mm,	Y =    44.041  mm,	Z =    47.838  mm,
	W =    52.757 deg,	P =    -4.415 deg,	R =     3.518 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[269]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1969.022  mm,	Y =    41.636  mm,	Z =    48.426  mm,
	W =    53.726 deg,	P =    -4.474 deg,	R =     3.443 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[270]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1991.252  mm,	Y =    40.726  mm,	Z =    49.738  mm,
	W =    52.869 deg,	P =   -12.269 deg,	R =   -23.050 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[271]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1917.572  mm,	Y =   -54.528  mm,	Z =   166.034  mm,
	W =    52.365 deg,	P =    -4.474 deg,	R =   -14.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[272]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1176.429  mm,	Y =  -100.956  mm,	Z =   166.035  mm,
	W =    52.365 deg,	P =    -4.474 deg,	R =    -5.630 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[273]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1176.430  mm,	Y =   614.758  mm,	Z =   166.035  mm,
	W =    -3.436 deg,	P =    41.518 deg,	R =  -103.326 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[274]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1545.002  mm,	Y =   614.758  mm,	Z =   166.035  mm,
	W =   -41.304 deg,	P =     5.776 deg,	R =    -1.616 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[275]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2236.431  mm,	Y =   125.758  mm,	Z =   124.484  mm,
	W =   -39.814 deg,	P =   -13.337 deg,	R =   -23.619 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[276]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.442  mm,	Y =    51.853  mm,	Z =    -5.922  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[277]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2264.485  mm,	Y =    52.336  mm,	Z =    -5.439  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[278]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2177.238  mm,	Y =   107.278  mm,	Z =    55.645  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[279]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2141.462  mm,	Y =    52.670  mm,	Z =   -13.878  mm,
	W =   -44.606 deg,	P =    -6.681 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[280]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2208.711  mm,	Y =    51.845  mm,	Z =   -13.000  mm,
	W =   -44.606 deg,	P =    -6.681 deg,	R =    -6.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[281]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.514  mm,	Y =    56.035  mm,	Z =   -11.445  mm,
	W =   -44.606 deg,	P =    -6.681 deg,	R =     6.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[282]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.390  mm,	Y =   100.916  mm,	Z =    41.885  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[283]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2005.598  mm,	Y =   100.916  mm,	Z =    41.885  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -6.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[284]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1992.263  mm,	Y =    56.122  mm,	Z =   -19.968  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -3.024 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[285]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2107.423  mm,	Y =    54.740  mm,	Z =   -20.388  mm,
	W =   -44.607 deg,	P =    -6.682 deg,	R =    -3.024 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[286]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2111.262  mm,	Y =    57.036  mm,	Z =   -16.902  mm,
	W =   -42.118 deg,	P =   -17.568 deg,	R =    21.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[287]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2101.024  mm,	Y =   106.138  mm,	Z =   124.353  mm,
	W =   -44.606 deg,	P =    -6.682 deg,	R =     6.426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[288]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2135.967  mm,	Y =   106.138  mm,	Z =   138.266  mm,
	W =   -41.424 deg,	P =   -19.434 deg,	R =   -97.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[289]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2095.104  mm,	Y =   -15.863  mm,	Z =    83.266  mm,
	W =   -41.424 deg,	P =   -19.434 deg,	R =   -97.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[290]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.717  mm,	Y =    84.636  mm,	Z =    -8.736  mm,
	W =   -45.251 deg,	P =    -8.450 deg,	R =  -108.138 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[291]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.359  mm,	Y =  -137.141  mm,	Z =   -45.703  mm,
	W =   -45.251 deg,	P =    -8.450 deg,	R =   -86.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[292]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2095.104  mm,	Y =   -15.863  mm,	Z =    83.266  mm,
	W =   -41.424 deg,	P =   -19.434 deg,	R =   -97.506 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[293]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2095.103  mm,	Y =   301.280  mm,	Z =   494.695  mm,
	W =    -3.830 deg,	P =   -10.878 deg,	R =   -17.892 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[294]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2685.132  mm,	Y =   201.280  mm,	Z =   305.695  mm,
	W =    -3.830 deg,	P =   -10.878 deg,	R =   -17.892 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[295]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2753.412  mm,	Y =   160.459  mm,	Z =   180.671  mm,
	W =     2.791 deg,	P =    -7.674 deg,	R =   -18.462 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[296]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2867.805  mm,	Y =   160.634  mm,	Z =   182.471  mm,
	W =     9.502 deg,	P =   -26.582 deg,	R =   -20.495 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.999 deg,	J2=   135.000 deg
};
P[297]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2663.741  mm,	Y =   157.782  mm,	Z =   292.643  mm,
	W =    13.374 deg,	P =   -35.036 deg,	R =   -22.495 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[298]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2363.741  mm,	Y =   272.782  mm,	Z =   292.643  mm,
	W =     -.090 deg,	P =    -5.498 deg,	R =      .950 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[299]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.956  mm,	Y =   265.120  mm,	Z =    86.366  mm,
	W =     1.850 deg,	P =     -.182 deg,	R =      .942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[300]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2754.391  mm,	Y =   263.612  mm,	Z =    86.366  mm,
	W =     1.733 deg,	P =    -7.250 deg,	R =      .949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[301]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2718.394  mm,	Y =   243.937  mm,	Z =   215.203  mm,
	W =     -.140 deg,	P =    -8.465 deg,	R =      .956 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[302]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2303.751  mm,	Y =   260.223  mm,	Z =   215.203  mm,
	W =     -.140 deg,	P =    -8.465 deg,	R =      .956 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[303]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.037  mm,	Y =   423.080  mm,	Z =   600.917  mm,
	W =     -.140 deg,	P =    -8.465 deg,	R =   -19.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   135.000 deg
};
P[304]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1858.037  mm,	Y =   423.080  mm,	Z =   369.489  mm,
	W =    39.110 deg,	P =     2.688 deg,	R =   -82.797 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[305]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2035.037  mm,	Y =    99.189  mm,	Z =    92.489  mm,
	W =    39.110 deg,	P =     2.688 deg,	R =   -82.797 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[306]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2068.312  mm,	Y =   107.394  mm,	Z =   -18.582  mm,
	W =    37.933 deg,	P =    17.387 deg,	R =   -97.672 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[307]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2109.723  mm,	Y =    72.505  mm,	Z =   -21.222  mm,
	W =    37.933 deg,	P =    17.387 deg,	R =  -104.287 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[308]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2115.592  mm,	Y =    62.473  mm,	Z =   -16.026  mm,
	W =    44.181 deg,	P =    21.261 deg,	R =  -126.963 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[309]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2027.388  mm,	Y =   105.837  mm,	Z =    81.683  mm,
	W =    40.362 deg,	P =    21.867 deg,	R =  -139.995 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[310]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1658.817  mm,	Y =   448.694  mm,	Z =    81.684  mm,
	W =   -42.959 deg,	P =    14.926 deg,	R =    16.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[311]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.875  mm,	Y =   114.694  mm,	Z =    81.683  mm,
	W =   -42.959 deg,	P =    14.926 deg,	R =    16.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[312]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.743  mm,	Y =    59.810  mm,	Z =   -17.917  mm,
	W =   -42.807 deg,	P =    15.441 deg,	R =    16.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[313]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.429  mm,	Y =    58.946  mm,	Z =   -19.364  mm,
	W =   -42.810 deg,	P =    15.442 deg,	R =    16.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[314]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1640.987  mm,	Y =    56.683  mm,	Z =   -21.519  mm,
	W =   -42.181 deg,	P =    15.522 deg,	R =    -8.109 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[315]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1637.701  mm,	Y =    59.485  mm,	Z =   -19.665  mm,
	W =   -38.593 deg,	P =    25.218 deg,	R =   -16.905 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[316]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.736  mm,	Y =    83.348  mm,	Z =   -24.399  mm,
	W =   -38.593 deg,	P =    25.219 deg,	R =   -16.905 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[317]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1585.662  mm,	Y =   101.135  mm,	Z =   -21.859  mm,
	W =   -45.000 deg,	P =    -3.170 deg,	R =      .426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[318]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1556.810  mm,	Y =    69.060  mm,	Z =   -21.622  mm,
	W =   -45.449 deg,	P =    19.944 deg,	R =    98.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[319]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.240  mm,	Y =    28.811  mm,	Z =   -19.922  mm,
	W =   -45.337 deg,	P =    20.062 deg,	R =    97.887 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[320]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1551.443  mm,	Y =    22.198  mm,	Z =   -20.367  mm,
	W =   -45.343 deg,	P =    20.068 deg,	R =    97.646 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[321]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1549.407  mm,	Y =    21.768  mm,	Z =   -17.950  mm,
	W =   -41.210 deg,	P =    19.947 deg,	R =    34.862 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[322]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1540.684  mm,	Y =    20.490  mm,	Z =   -17.846  mm,
	W =   -41.215 deg,	P =    19.945 deg,	R =    34.866 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[323]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1231.677  mm,	Y =   199.953  mm,	Z =   178.712  mm,
	W =   -41.215 deg,	P =    19.944 deg,	R =    40.052 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[324]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   877.425  mm,	Y =  1334.354  mm,	Z =    94.527  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[325]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2712.426  mm,	Y =  1334.354  mm,	Z =    94.527  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[326]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2866.453  mm,	Y =  1420.346  mm,	Z =   -11.619  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[327]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2866.454  mm,	Y =  1403.775  mm,	Z =   -11.619  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[328]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2851.597  mm,	Y =  1403.775  mm,	Z =   -11.619  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[329]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2851.596  mm,	Y =  1403.775  mm,	Z =    -7.333  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.508 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[330]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2851.355  mm,	Y =  1420.068  mm,	Z =   -11.543  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[331]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2851.355  mm,	Y =  1420.068  mm,	Z =    -7.258  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[332]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2712.426  mm,	Y =  1334.354  mm,	Z =    94.527  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[333]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   877.425  mm,	Y =  1334.354  mm,	Z =    94.527  mm,
	W =     -.178 deg,	P =    -1.186 deg,	R =    26.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[334]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1097.392  mm,	Y =  -178.047  mm,	Z =   178.712  mm,
	W =   -34.745 deg,	P =    30.619 deg,	R =   119.475 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[335]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1587.677  mm,	Y =  -226.342  mm,	Z =    50.712  mm,
	W =   -34.744 deg,	P =    30.618 deg,	R =   128.397 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[336]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1651.536  mm,	Y =  -219.100  mm,	Z =   -19.888  mm,
	W =   -32.939 deg,	P =    29.350 deg,	R =   129.300 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[337]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1652.465  mm,	Y =    20.682  mm,	Z =   -20.854  mm,
	W =   -34.233 deg,	P =    30.069 deg,	R =   141.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[338]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1473.582  mm,	Y =   -83.067  mm,	Z =   190.803  mm,
	W =   -34.742 deg,	P =    30.617 deg,	R =   153.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[339]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1333.582  mm,	Y =  -300.066  mm,	Z =   190.803  mm,
	W =    44.863 deg,	P =    -3.871 deg,	R =     -.364 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[340]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.583  mm,	Y =  -249.066  mm,	Z =    43.803  mm,
	W =    42.099 deg,	P =    -2.376 deg,	R =   -15.667 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[341]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2351.061  mm,	Y =  -179.371  mm,	Z =   -13.077  mm,
	W =    44.587 deg,	P =     6.899 deg,	R =    -6.951 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[342]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2518.615  mm,	Y =  -178.195  mm,	Z =   -13.758  mm,
	W =    44.582 deg,	P =     6.892 deg,	R =    -6.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[343]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2517.065  mm,	Y =  -219.497  mm,	Z =    58.957  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[344]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2344.098  mm,	Y =  -219.497  mm,	Z =    58.957  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[345]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2344.098  mm,	Y =  -132.497  mm,	Z =    58.956  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[346]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.052  mm,	Y =   -90.042  mm,	Z =   -15.707  mm,
	W =    43.242 deg,	P =    13.891 deg,	R =   -18.605 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[347]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.409  mm,	Y =   -89.953  mm,	Z =   -14.975  mm,
	W =    43.244 deg,	P =    13.890 deg,	R =   -18.607 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[348]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2423.248  mm,	Y =   -92.540  mm,	Z =    -8.646  mm,
	W =    42.728 deg,	P =    13.810 deg,	R =   -51.889 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.998 deg,	J2=    90.000 deg
};
P[349]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2344.098  mm,	Y =  -132.497  mm,	Z =    58.956  mm,
	W =    44.580 deg,	P =     6.891 deg,	R =   -21.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[350]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1084.097  mm,	Y =  -132.497  mm,	Z =   115.956  mm,
	W =    46.380 deg,	P =     2.235 deg,	R =    13.463 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[351]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1084.097  mm,	Y =  -132.497  mm,	Z =  1093.099  mm,
	W =    23.155 deg,	P =    41.431 deg,	R =   -41.534 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[352]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[353]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  1240.448  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -65.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[354]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1630.173  mm,	Y =   470.761  mm,	Z =   907.448  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -65.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[355]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1684.563  mm,	Y =   458.656  mm,	Z =   830.406  mm,
	W =    39.866 deg,	P =   -22.888 deg,	R =   -65.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[356]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.493  mm,	Y =   473.679  mm,	Z =   828.230  mm,
	W =    39.866 deg,	P =   -22.887 deg,	R =   -65.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[357]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.563  mm,	Y =   480.822  mm,	Z =   829.093  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -69.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[358]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1687.491  mm,	Y =   484.680  mm,	Z =   827.711  mm,
	W =    39.867 deg,	P =   -22.888 deg,	R =   -70.971 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[359]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1708.839  mm,	Y =   554.633  mm,	Z =   827.423  mm,
	W =    39.871 deg,	P =   -22.884 deg,	R =   -70.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[360]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1711.676  mm,	Y =   557.080  mm,	Z =   826.531  mm,
	W =    39.870 deg,	P =   -22.884 deg,	R =   -74.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[361]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.809  mm,	Y =   560.962  mm,	Z =   826.801  mm,
	W =    39.866 deg,	P =   -22.883 deg,	R =   -82.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[362]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1845.680  mm,	Y =   825.086  mm,	Z =   832.601  mm,
	W =    14.309 deg,	P =   -43.038 deg,	R =   -40.623 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -89.991 deg,	J2=   -89.999 deg
};
P[363]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1719.210  mm,	Y =   890.070  mm,	Z =   992.766  mm,
	W =   -20.210 deg,	P =   -41.106 deg,	R =     1.246 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[364]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1696.710  mm,	Y =   336.928  mm,	Z =   932.155  mm,
	W =    42.022 deg,	P =   -15.891 deg,	R =   -33.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[365]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1698.333  mm,	Y =   426.907  mm,	Z =   830.357  mm,
	W =    43.050 deg,	P =   -14.373 deg,	R =   -45.079 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[366]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1839.303  mm,	Y =   266.347  mm,	Z =   829.243  mm,
	W =    43.053 deg,	P =   -14.369 deg,	R =   -45.082 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[367]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1847.539  mm,	Y =   258.366  mm,	Z =   830.212  mm,
	W =    43.049 deg,	P =   -14.375 deg,	R =   -42.871 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[368]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1859.538  mm,	Y =   247.937  mm,	Z =   830.256  mm,
	W =    43.049 deg,	P =   -14.375 deg,	R =   -40.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[369]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1923.179  mm,	Y =   200.865  mm,	Z =   829.012  mm,
	W =    43.049 deg,	P =   -14.374 deg,	R =   -40.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[370]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1870.572  mm,	Y =   165.642  mm,	Z =   951.351  mm,
	W =    58.350 deg,	P =   -26.173 deg,	R =   -73.280 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[371]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   849.429  mm,	Y =   203.927  mm,	Z =   951.351  mm,
	W =    58.350 deg,	P =   -26.173 deg,	R =   -73.280 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=   -90.000 deg
};
P[372]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   556.988  mm,	Y =    -6.143  mm,	Z =  1500.654  mm,
	W =     -.033 deg,	P =    22.090 deg,	R =      .044 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -70.000 deg,	J2=    45.000 deg
};
P[373]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   556.950  mm,	Y =    -6.098  mm,	Z =  1500.653  mm,
	W =     -.030 deg,	P =    22.091 deg,	R =      .051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[374]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1449.587  mm,	Y =  -481.240  mm,	Z =   957.304  mm,
	W =     -.010 deg,	P =   -46.549 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[375]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1660.516  mm,	Y =  -481.240  mm,	Z =   876.304  mm,
	W =   -29.059 deg,	P =   -38.116 deg,	R =    41.980 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[376]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.881  mm,	Y =  -469.975  mm,	Z =   829.150  mm,
	W =   -28.314 deg,	P =   -37.469 deg,	R =    36.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[377]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.926  mm,	Y =  -487.189  mm,	Z =   826.659  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    36.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[378]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.542  mm,	Y =  -491.734  mm,	Z =   828.424  mm,
	W =   -28.334 deg,	P =   -37.464 deg,	R =    39.731 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[379]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1683.217  mm,	Y =  -494.546  mm,	Z =   827.297  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    41.171 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[380]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1707.638  mm,	Y =  -565.332  mm,	Z =   825.835  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    41.171 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[381]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.098  mm,	Y =  -569.548  mm,	Z =   825.685  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    48.505 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[382]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1713.633  mm,	Y =  -574.840  mm,	Z =   824.222  mm,
	W =   -28.328 deg,	P =   -37.465 deg,	R =    55.403 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[383]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1842.146  mm,	Y =  -829.157  mm,	Z =   829.639  mm,
	W =   -28.322 deg,	P =   -37.469 deg,	R =    50.636 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[384]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1612.442  mm,	Y =  -863.138  mm,	Z =   905.385  mm,
	W =   -20.245 deg,	P =   -41.090 deg,	R =    57.299 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[385]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1612.442  mm,	Y =  -365.996  mm,	Z =   905.386  mm,
	W =   -53.336 deg,	P =     2.108 deg,	R =    49.603 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[386]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1690.304  mm,	Y =  -437.670  mm,	Z =   830.884  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    42.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[387]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1836.271  mm,	Y =  -275.564  mm,	Z =   827.815  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    42.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[388]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1848.380  mm,	Y =  -264.272  mm,	Z =   828.029  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    38.620 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[389]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1862.737  mm,	Y =  -253.785  mm,	Z =   829.403  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    41.372 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[390]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1935.611  mm,	Y =  -199.637  mm,	Z =   827.419  mm,
	W =   -39.460 deg,	P =    -8.334 deg,	R =    45.243 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[391]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1827.763  mm,	Y =  -230.895  mm,	Z =   883.594  mm,
	W =   -54.261 deg,	P =    -6.374 deg,	R =    77.692 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[392]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   815.336  mm,	Y =  -406.109  mm,	Z =   870.736  mm,
	W =   -48.700 deg,	P =    -5.138 deg,	R =    77.361 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   -90.000 deg,	J2=    90.000 deg
};
P[393]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[394]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2001.817  mm,	Y =    -9.239  mm,	Z =  1516.306  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =    90.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[395]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2240.817  mm,	Y =   100.761  mm,	Z =   993.305  mm,
	W =     -.010 deg,	P =    44.999 deg,	R =    66.715 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[396]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2344.158  mm,	Y =   -61.498  mm,	Z =   837.144  mm,
	W =     4.733 deg,	P =    44.799 deg,	R =    66.706 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[397]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2404.770  mm,	Y =   -93.993  mm,	Z =   837.387  mm,
	W =     4.736 deg,	P =    44.803 deg,	R =    66.702 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[398]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2444.940  mm,	Y =   -30.095  mm,	Z =   912.480  mm,
	W =     4.736 deg,	P =    44.803 deg,	R =    66.702 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[399]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2429.507  mm,	Y =  -139.995  mm,	Z =   915.768  mm,
	W =   -19.426 deg,	P =    41.428 deg,	R =   -56.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[400]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2400.549  mm,	Y =  -120.824  mm,	Z =   838.185  mm,
	W =   -19.419 deg,	P =    41.428 deg,	R =   -56.052 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[401]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.665  mm,	Y =  -100.428  mm,	Z =   838.269  mm,
	W =   -19.426 deg,	P =    41.428 deg,	R =   -56.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[402]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2471.948  mm,	Y =  -129.877  mm,	Z =   908.172  mm,
	W =   -19.426 deg,	P =    41.428 deg,	R =   -56.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[403]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2171.268  mm,	Y =   -40.755  mm,	Z =   918.909  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[404]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2329.816  mm,	Y =   -87.227  mm,	Z =   839.756  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[405]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2393.327  mm,	Y =  -122.227  mm,	Z =   840.237  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[406]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2236.242  mm,	Y =  -121.027  mm,	Z =   923.380  mm,
	W =    34.022 deg,	P =    31.444 deg,	R =   -66.610 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[407]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.569  mm,	Y =   539.568  mm,	Z =  1195.939  mm,
	W =    30.412 deg,	P =    23.153 deg,	R =   -68.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[408]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.569  mm,	Y =   539.568  mm,	Z =  1195.939  mm,
	W =   -37.197 deg,	P =    -5.451 deg,	R =   -16.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[409]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2172.569  mm,	Y =    47.854  mm,	Z =   147.939  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[410]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2497.569  mm,	Y =    47.854  mm,	Z =   147.939  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[411]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2519.938  mm,	Y =   -81.372  mm,	Z =   -32.158  mm,
	W =   -31.368 deg,	P =   -16.422 deg,	R =   -28.761 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[412]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2482.458  mm,	Y =   -80.069  mm,	Z =   -28.898  mm,
	W =   -25.037 deg,	P =   -25.315 deg,	R =   -46.367 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[413]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2453.629  mm,	Y =   -82.007  mm,	Z =   -26.243  mm,
	W =   -25.039 deg,	P =   -25.325 deg,	R =   -79.891 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[414]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2564.729  mm,	Y =    37.568  mm,	Z =   126.466  mm,
	W =   -31.566 deg,	P =   -16.651 deg,	R =   -48.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[415]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2361.283  mm,	Y =    58.394  mm,	Z =   147.939  mm,
	W =   -33.684 deg,	P =   -17.646 deg,	R =   -34.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[416]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2351.765  mm,	Y =   -85.833  mm,	Z =   -33.800  mm,
	W =   -31.948 deg,	P =   -15.141 deg,	R =   -17.031 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[417]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.846  mm,	Y =   -83.445  mm,	Z =   -32.390  mm,
	W =   -31.930 deg,	P =   -15.141 deg,	R =   -17.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[418]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.835  mm,	Y =   -83.306  mm,	Z =   -29.423  mm,
	W =   -24.232 deg,	P =   -24.716 deg,	R =   -17.035 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[419]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2371.614  mm,	Y =   -31.308  mm,	Z =    73.274  mm,
	W =   -26.718 deg,	P =   -22.770 deg,	R =   -10.639 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[420]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.569  mm,	Y =   539.568  mm,	Z =  1045.939  mm,
	W =   -37.197 deg,	P =    -5.451 deg,	R =   -16.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   100.000 deg
};
P[421]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1125.569  mm,	Y =   539.568  mm,	Z =  1045.939  mm,
	W =      .249 deg,	P =    55.227 deg,	R =  -177.147 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[422]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2117.778  mm,	Y =   173.525  mm,	Z =  1006.395  mm,
	W =     -.647 deg,	P =    55.219 deg,	R =   156.602 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[423]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2129.658  mm,	Y =   151.797  mm,	Z =   832.903  mm,
	W =     2.981 deg,	P =    35.499 deg,	R =   160.128 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[424]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2137.350  mm,	Y =   177.465  mm,	Z =   833.508  mm,
	W =     2.985 deg,	P =    35.513 deg,	R =   160.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[425]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2130.020  mm,	Y =   199.847  mm,	Z =   830.984  mm,
	W =     2.986 deg,	P =    35.518 deg,	R =  -100.169 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[426]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2102.832  mm,	Y =   191.069  mm,	Z =   829.130  mm,
	W =     2.988 deg,	P =    35.514 deg,	R =   -13.075 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[427]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2088.170  mm,	Y =   149.785  mm,	Z =   828.888  mm,
	W =     2.984 deg,	P =    35.513 deg,	R =   -13.072 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[428]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2102.574  mm,	Y =   126.514  mm,	Z =   830.669  mm,
	W =     2.985 deg,	P =    35.513 deg,	R =    80.476 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[429]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2126.850  mm,	Y =   136.271  mm,	Z =   831.455  mm,
	W =     2.984 deg,	P =    35.513 deg,	R =   159.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[430]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.899  mm,	Y =   151.648  mm,	Z =   831.455  mm,
	W =     2.984 deg,	P =    35.513 deg,	R =   159.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[431]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2068.875  mm,	Y =   196.174  mm,	Z =   979.978  mm,
	W =      .815 deg,	P =    36.667 deg,	R =   159.784 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[432]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2127.874  mm,	Y =   249.175  mm,	Z =   979.977  mm,
	W =    -8.588 deg,	P =    43.492 deg,	R =    86.611 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[433]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.924  mm,	Y =   226.875  mm,	Z =   829.785  mm,
	W =    -2.360 deg,	P =    42.843 deg,	R =    86.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[434]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2202.613  mm,	Y =   227.153  mm,	Z =   829.824  mm,
	W =    -2.356 deg,	P =    42.846 deg,	R =    86.538 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[435]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.661  mm,	Y =   222.377  mm,	Z =   830.815  mm,
	W =    -2.493 deg,	P =    44.293 deg,	R =    56.655 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[436]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2222.874  mm,	Y =   213.385  mm,	Z =   828.313  mm,
	W =      .032 deg,	P =    44.143 deg,	R =    40.390 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[437]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2449.009  mm,	Y =   -44.468  mm,	Z =   827.867  mm,
	W =     -.128 deg,	P =    43.814 deg,	R =    45.335 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[438]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2454.781  mm,	Y =   -47.719  mm,	Z =   829.593  mm,
	W =      .165 deg,	P =    43.853 deg,	R =    54.355 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[439]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2459.541  mm,	Y =   -51.626  mm,	Z =   829.104  mm,
	W =    -1.320 deg,	P =    42.586 deg,	R =    55.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[440]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2655.978  mm,	Y =  -198.403  mm,	Z =   829.994  mm,
	W =   -30.974 deg,	P =    27.490 deg,	R =    12.667 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[441]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2672.856  mm,	Y =  -207.422  mm,	Z =   831.831  mm,
	W =   -30.972 deg,	P =    27.486 deg,	R =    12.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[442]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2657.997  mm,	Y =  -144.176  mm,	Z =   981.534  mm,
	W =   -36.400 deg,	P =    28.534 deg,	R =    31.709 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[443]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   997.713  mm,	Y =    11.153  mm,	Z =   981.534  mm,
	W =   -36.400 deg,	P =    28.534 deg,	R =    23.998 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[444]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   997.713  mm,	Y =  -220.683  mm,	Z =   981.533  mm,
	W =   -43.636 deg,	P =   -12.296 deg,	R =    70.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[445]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.713  mm,	Y =  -220.683  mm,	Z =   311.533  mm,
	W =   -43.636 deg,	P =   -12.296 deg,	R =    70.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[446]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2033.303  mm,	Y =   -34.036  mm,	Z =   121.326  mm,
	W =   -38.665 deg,	P =    -2.420 deg,	R =   142.728 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[447]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2073.851  mm,	Y =    35.924  mm,	Z =    12.285  mm,
	W =   -30.951 deg,	P =    -2.135 deg,	R =   142.491 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[448]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.748  mm,	Y =    -4.566  mm,	Z =     3.630  mm,
	W =   -28.504 deg,	P =     6.349 deg,	R =   142.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[449]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2124.001  mm,	Y =   -12.191  mm,	Z =     2.432  mm,
	W =   -27.562 deg,	P =     5.114 deg,	R =   139.578 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[450]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2130.131  mm,	Y =   -20.247  mm,	Z =     1.791  mm,
	W =   -27.580 deg,	P =     5.122 deg,	R =   136.990 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[451]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2251.754  mm,	Y =  -187.747  mm,	Z =   -18.626  mm,
	W =   -36.464 deg,	P =    -8.806 deg,	R =   122.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[452]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2260.659  mm,	Y =  -197.463  mm,	Z =   -20.538  mm,
	W =   -36.554 deg,	P =   -11.684 deg,	R =   125.973 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[453]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.185  mm,	Y =  -206.886  mm,	Z =   -21.960  mm,
	W =   -36.304 deg,	P =   -14.510 deg,	R =   128.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[454]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2511.863  mm,	Y =  -435.567  mm,	Z =   -65.547  mm,
	W =   -23.381 deg,	P =   -31.779 deg,	R =    95.136 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[455]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2535.927  mm,	Y =  -449.078  mm,	Z =   -69.737  mm,
	W =   -18.431 deg,	P =   -37.735 deg,	R =   100.755 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[456]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2558.091  mm,	Y =  -453.543  mm,	Z =   -73.418  mm,
	W =   -18.771 deg,	P =   -39.987 deg,	R =   104.546 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[457]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2574.982  mm,	Y =  -457.797  mm,	Z =   -77.599  mm,
	W =   -22.267 deg,	P =   -37.927 deg,	R =   106.779 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[458]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2621.992  mm,	Y =  -529.847  mm,	Z =   -85.920  mm,
	W =   -33.012 deg,	P =   -16.164 deg,	R =    66.999 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[459]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2621.958  mm,	Y =  -548.775  mm,	Z =   -86.023  mm,
	W =   -33.009 deg,	P =   -16.162 deg,	R =    66.994 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[460]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2620.833  mm,	Y =  -724.953  mm,	Z =   -86.008  mm,
	W =   -27.674 deg,	P =   -22.322 deg,	R =    54.091 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[461]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2576.687  mm,	Y =  -716.670  mm,	Z =    -1.123  mm,
	W =   -27.687 deg,	P =   -22.321 deg,	R =    54.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[462]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2532.411  mm,	Y =  -819.670  mm,	Z =    -1.123  mm,
	W =   -27.687 deg,	P =   -22.321 deg,	R =    54.103 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[463]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2550.739  mm,	Y =  -832.902  mm,	Z =   -76.728  mm,
	W =   -27.690 deg,	P =   -22.316 deg,	R =    54.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[464]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2551.660  mm,	Y =  -813.166  mm,	Z =   -76.438  mm,
	W =   -27.682 deg,	P =   -22.308 deg,	R =    54.092 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[465]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2565.317  mm,	Y =  -801.232  mm,	Z =   -77.060  mm,
	W =   -27.686 deg,	P =   -22.321 deg,	R =    23.348 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[466]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2576.762  mm,	Y =  -796.353  mm,	Z =   -82.224  mm,
	W =   -33.350 deg,	P =   -11.305 deg,	R =    17.629 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[467]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2611.385  mm,	Y =  -766.607  mm,	Z =   -84.979  mm,
	W =   -30.071 deg,	P =    -4.704 deg,	R =    42.986 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[468]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2624.754  mm,	Y =  -718.507  mm,	Z =   -86.108  mm,
	W =   -25.591 deg,	P =   -24.735 deg,	R =    48.858 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[469]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2566.235  mm,	Y =  -721.088  mm,	Z =   115.103  mm,
	W =   -35.203 deg,	P =   -31.584 deg,	R =    53.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[470]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1323.235  mm,	Y =  -721.088  mm,	Z =   524.103  mm,
	W =   -35.203 deg,	P =   -31.584 deg,	R =    53.410 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[471]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1085.059  mm,	Y =   -93.088  mm,	Z =   524.103  mm,
	W =    -5.111 deg,	P =    43.836 deg,	R =   172.642 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[472]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   916.718  mm,	Y =  -171.225  mm,	Z =  1504.038  mm,
	W =    97.453 deg,	P =    88.349 deg,	R =   -88.494 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=    90.000 deg
};
P[473]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[474]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1499.817  mm,	Y = -1083.239  mm,	Z =   440.877  mm,
	W =   -44.578 deg,	P =    -6.914 deg,	R =    83.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[475]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2355.816  mm,	Y =  -998.239  mm,	Z =    94.877  mm,
	W =   -44.578 deg,	P =    -6.914 deg,	R =    83.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[476]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2380.661  mm,	Y =  -855.649  mm,	Z =   109.732  mm,
	W =   -44.580 deg,	P =    -6.907 deg,	R =    83.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[477]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2494.854  mm,	Y =  -857.680  mm,	Z =    -8.806  mm,
	W =   -44.580 deg,	P =    -6.907 deg,	R =    84.735 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[478]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2494.926  mm,	Y =  -777.781  mm,	Z =    -9.320  mm,
	W =   -44.580 deg,	P =    -6.907 deg,	R =    84.735 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[479]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2373.746  mm,	Y =  -828.779  mm,	Z =   224.191  mm,
	W =   -44.579 deg,	P =    -6.907 deg,	R =   101.186 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[480]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2376.848  mm,	Y =  -600.055  mm,	Z =   228.526  mm,
	W =   -47.568 deg,	P =      .065 deg,	R =    50.370 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[481]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2443.747  mm,	Y =  -697.351  mm,	Z =    99.482  mm,
	W =   -41.825 deg,	P =    18.388 deg,	R =    51.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[482]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2518.619  mm,	Y =  -755.627  mm,	Z =    -6.486  mm,
	W =   -39.981 deg,	P =    14.824 deg,	R =    17.712 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[483]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2567.877  mm,	Y =  -756.992  mm,	Z =    -7.047  mm,
	W =   -39.981 deg,	P =    14.824 deg,	R =    17.712 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[484]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2443.747  mm,	Y =  -697.351  mm,	Z =    99.482  mm,
	W =   -41.825 deg,	P =    18.388 deg,	R =    51.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[485]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2443.747  mm,	Y =  -697.351  mm,	Z =   245.196  mm,
	W =   -57.120 deg,	P =     5.483 deg,	R =    47.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[486]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1415.176  mm,	Y =  -697.351  mm,	Z =   245.196  mm,
	W =   -57.120 deg,	P =     5.483 deg,	R =    47.853 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[487]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1415.175  mm,	Y =  -361.351  mm,	Z =   492.217  mm,
	W =    -2.074 deg,	P =   -10.233 deg,	R =    32.173 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[488]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2670.175  mm,	Y =  -174.351  mm,	Z =   333.217  mm,
	W =     1.417 deg,	P =   -10.343 deg,	R =    12.808 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[489]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2752.964  mm,	Y =  -168.876  mm,	Z =   176.244  mm,
	W =    -1.647 deg,	P =    -7.143 deg,	R =    13.032 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[490]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2865.942  mm,	Y =  -168.094  mm,	Z =   177.218  mm,
	W =    -5.450 deg,	P =   -22.504 deg,	R =    14.017 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[491]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2838.021  mm,	Y =  -168.157  mm,	Z =   249.822  mm,
	W =    -7.346 deg,	P =   -29.104 deg,	R =    14.845 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[492]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2372.538  mm,	Y =  -278.569  mm,	Z =   249.822  mm,
	W =    -1.017 deg,	P =    -4.421 deg,	R =    12.975 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[493]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2379.984  mm,	Y =  -271.988  mm,	Z =    87.998  mm,
	W =      .003 deg,	P =      .001 deg,	R =    -2.945 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[494]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2755.499  mm,	Y =  -271.313  mm,	Z =    89.477  mm,
	W =      .076 deg,	P =    -1.495 deg,	R =    -2.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[495]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2656.405  mm,	Y =  -272.702  mm,	Z =   254.628  mm,
	W =     0.000 deg,	P =    -6.880 deg,	R =    -2.940 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -135.000 deg
};
P[496]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2489.404  mm,	Y =   -49.702  mm,	Z =    81.225  mm,
	W =    43.945 deg,	P =   -11.174 deg,	R =     1.639 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[497]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2489.404  mm,	Y =    82.676  mm,	Z =    70.893  mm,
	W =    39.708 deg,	P =   -23.339 deg,	R =    15.773 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[498]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2504.732  mm,	Y =   163.801  mm,	Z =    -7.840  mm,
	W =    37.870 deg,	P =   -26.386 deg,	R =    31.563 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[499]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2464.249  mm,	Y =   164.384  mm,	Z =    -7.847  mm,
	W =    37.874 deg,	P =   -26.389 deg,	R =    31.563 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[500]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2444.114  mm,	Y =   163.873  mm,	Z =    -8.034  mm,
	W =    40.554 deg,	P =   -21.460 deg,	R =    53.231 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[501]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2489.404  mm,	Y =    82.676  mm,	Z =    70.893  mm,
	W =    42.059 deg,	P =   -17.938 deg,	R =    23.331 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[502]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2489.404  mm,	Y =  -188.988  mm,	Z =    81.225  mm,
	W =    43.034 deg,	P =    14.904 deg,	R =   -25.132 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[503]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.833  mm,	Y =  -188.988  mm,	Z =    81.225  mm,
	W =    43.034 deg,	P =    14.904 deg,	R =   -25.132 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[504]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1685.665  mm,	Y =   -64.872  mm,	Z =   -18.365  mm,
	W =    41.394 deg,	P =    19.519 deg,	R =   -17.046 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[505]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1655.518  mm,	Y =   -66.180  mm,	Z =   -18.364  mm,
	W =    41.393 deg,	P =    19.514 deg,	R =   -16.107 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[506]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1644.071  mm,	Y =   -64.443  mm,	Z =   -18.488  mm,
	W =    41.392 deg,	P =    19.514 deg,	R =     3.473 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[507]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1635.702  mm,	Y =   -66.864  mm,	Z =   -17.244  mm,
	W =    41.392 deg,	P =    19.514 deg,	R =    24.112 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[508]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.120  mm,	Y =   -97.236  mm,	Z =   -17.308  mm,
	W =    37.029 deg,	P =    27.659 deg,	R =    15.298 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[509]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1588.118  mm,	Y =  -108.567  mm,	Z =   -16.888  mm,
	W =    38.940 deg,	P =    23.604 deg,	R =   -29.723 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[510]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1562.037  mm,	Y =   -85.294  mm,	Z =   -16.902  mm,
	W =    36.730 deg,	P =    28.082 deg,	R =  -109.081 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[511]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1556.914  mm,	Y =   -40.647  mm,	Z =   -16.118  mm,
	W =    36.727 deg,	P =    28.082 deg,	R =  -114.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[512]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1556.835  mm,	Y =   -36.070  mm,	Z =   -15.557  mm,
	W =    39.289 deg,	P =    28.081 deg,	R =   -80.638 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[513]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1548.450  mm,	Y =   -29.796  mm,	Z =   -15.951  mm,
	W =    36.729 deg,	P =    28.085 deg,	R =   -43.976 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[514]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1541.843  mm,	Y =   -26.526  mm,	Z =   -17.050  mm,
	W =    36.730 deg,	P =    28.085 deg,	R =   -43.977 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[515]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1439.819  mm,	Y =  -288.523  mm,	Z =   263.807  mm,
	W =    40.466 deg,	P =    21.645 deg,	R =   -45.635 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[516]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2349.342  mm,	Y =  -184.523  mm,	Z =   120.807  mm,
	W =    49.996 deg,	P =    12.253 deg,	R =   -42.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[517]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2349.342  mm,	Y =    87.477  mm,	Z =   100.131  mm,
	W =    41.080 deg,	P =   -17.089 deg,	R =    29.592 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[518]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2359.776  mm,	Y =   167.003  mm,	Z =    -8.816  mm,
	W =    38.121 deg,	P =   -25.966 deg,	R =    27.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[519]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2406.274  mm,	Y =   166.697  mm,	Z =    -9.876  mm,
	W =    38.121 deg,	P =   -25.966 deg,	R =    27.297 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[520]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.811  mm,	Y =   162.873  mm,	Z =    -7.347  mm,
	W =     9.855 deg,	P =   -38.956 deg,	R =    41.531 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.988 deg,	J2=   -90.001 deg
};
P[521]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2355.377  mm,	Y =    87.835  mm,	Z =    47.968  mm,
	W =    34.887 deg,	P =   -26.988 deg,	R =    21.909 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[522]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2349.342  mm,	Y =  -184.523  mm,	Z =   120.807  mm,
	W =    49.996 deg,	P =    12.253 deg,	R =   -42.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[523]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1289.342  mm,	Y =  -184.523  mm,	Z =   120.807  mm,
	W =    49.996 deg,	P =    12.253 deg,	R =   -42.841 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[524]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1152.199  mm,	Y =   223.477  mm,	Z =   120.807  mm,
	W =     5.452 deg,	P =    45.384 deg,	R =    96.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[525]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1744.798  mm,	Y =   208.477  mm,	Z =    36.380  mm,
	W =   -35.057 deg,	P =    31.336 deg,	R =    18.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[526]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1671.414  mm,	Y =   189.046  mm,	Z =   -15.712  mm,
	W =   -36.940 deg,	P =    22.774 deg,	R =   -15.979 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[527]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1704.592  mm,	Y =   193.463  mm,	Z =   -14.287  mm,
	W =   -36.936 deg,	P =    22.774 deg,	R =    39.322 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[528]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1976.573  mm,	Y =   191.971  mm,	Z =   -16.183  mm,
	W =   -36.940 deg,	P =    22.774 deg,	R =    39.323 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[529]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1990.474  mm,	Y =   191.565  mm,	Z =   -18.105  mm,
	W =   -40.749 deg,	P =    13.396 deg,	R =    62.815 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[530]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1983.329  mm,	Y =   227.532  mm,	Z =    32.278  mm,
	W =   -37.049 deg,	P =    22.562 deg,	R =    41.911 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[531]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2295.778  mm,	Y =   288.199  mm,	Z =    71.302  mm,
	W =   -37.045 deg,	P =    22.566 deg,	R =    41.912 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[532]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2506.193  mm,	Y =   208.629  mm,	Z =    36.065  mm,
	W =   -42.488 deg,	P =     1.840 deg,	R =   -59.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[533]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2502.331  mm,	Y =   124.533  mm,	Z =    32.277  mm,
	W =   -42.488 deg,	P =     1.841 deg,	R =   -72.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[534]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2392.053  mm,	Y =    84.549  mm,	Z =   -21.907  mm,
	W =   -47.015 deg,	P =     6.660 deg,	R =   -51.412 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[535]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2391.109  mm,	Y =   106.727  mm,	Z =   -21.577  mm,
	W =   -47.008 deg,	P =     6.653 deg,	R =   -83.994 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[536]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2390.648  mm,	Y =   140.871  mm,	Z =   -20.910  mm,
	W =   -47.989 deg,	P =     7.881 deg,	R =   -87.078 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[537]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2393.525  mm,	Y =   163.570  mm,	Z =   -20.785  mm,
	W =   -47.988 deg,	P =     7.880 deg,	R =  -106.126 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[538]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2502.331  mm,	Y =   124.533  mm,	Z =    32.277  mm,
	W =   -42.488 deg,	P =     1.841 deg,	R =   -72.344 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[539]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2502.330  mm,	Y =   227.533  mm,	Z =    32.277  mm,
	W =   -46.494 deg,	P =   -14.946 deg,	R =     1.465 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.000 deg,	J2=   -90.000 deg
};
P[540]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.330  mm,	Y =   227.532  mm,	Z =    38.468  mm,
	W =   -46.494 deg,	P =   -14.946 deg,	R =     1.465 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[541]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.142  mm,	Y =   180.100  mm,	Z =    -9.199  mm,
	W =   -44.813 deg,	P =    -4.559 deg,	R =    -2.484 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[542]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2505.035  mm,	Y =   180.287  mm,	Z =    -9.109  mm,
	W =   -44.818 deg,	P =    -4.562 deg,	R =    -2.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[543]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2497.995  mm,	Y =   234.683  mm,	Z =    53.964  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    17.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[544]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2294.995  mm,	Y =   234.683  mm,	Z =    53.964  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    17.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[545]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2294.995  mm,	Y =   134.683  mm,	Z =    53.965  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    17.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[546]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2363.074  mm,	Y =    82.607  mm,	Z =    -8.621  mm,
	W =   -44.379 deg,	P =     8.160 deg,	R =    14.035 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[547]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2414.311  mm,	Y =    81.629  mm,	Z =    -8.521  mm,
	W =   -44.393 deg,	P =     8.163 deg,	R =    14.043 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[548]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2420.856  mm,	Y =    84.559  mm,	Z =    -6.348  mm,
	W =   -44.535 deg,	P =    -7.128 deg,	R =    33.228 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[549]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2294.995  mm,	Y =   210.290  mm,	Z =    96.252  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    25.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[550]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1218.995  mm,	Y =   210.290  mm,	Z =    96.253  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    25.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[551]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1218.995  mm,	Y =  -175.710  mm,	Z =  1113.253  mm,
	W =   -44.990 deg,	P =    -1.038 deg,	R =    25.270 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[552]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2322.394  mm,	Y =   -54.093  mm,	Z =   961.517  mm,
	W =    42.919 deg,	P =     3.331 deg,	R =   -15.173 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[553]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2347.090  mm,	Y =    54.696  mm,	Z =   840.157  mm,
	W =    45.388 deg,	P =    17.262 deg,	R =    -1.525 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[554]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2407.727  mm,	Y =    84.771  mm,	Z =   840.157  mm,
	W =    45.388 deg,	P =    17.262 deg,	R =    -1.525 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[555]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2424.460  mm,	Y =    34.399  mm,	Z =   891.750  mm,
	W =    45.388 deg,	P =    17.262 deg,	R =    -1.525 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[556]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2461.841  mm,	Y =   116.924  mm,	Z =   905.997  mm,
	W =     1.448 deg,	P =    40.366 deg,	R =    26.776 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[557]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2411.910  mm,	Y =    90.376  mm,	Z =   839.563  mm,
	W =     1.454 deg,	P =    40.369 deg,	R =    26.792 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[558]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2400.458  mm,	Y =   114.292  mm,	Z =   839.623  mm,
	W =     1.448 deg,	P =    40.366 deg,	R =    26.776 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[559]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2448.220  mm,	Y =   138.001  mm,	Z =   901.971  mm,
	W =     1.448 deg,	P =    40.366 deg,	R =    26.776 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[560]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2256.717  mm,	Y =   -37.123  mm,	Z =  1005.877  mm,
	W =   -39.479 deg,	P =   -19.708 deg,	R =    39.669 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[561]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2265.316  mm,	Y =   124.768  mm,	Z =   903.052  mm,
	W =   -46.224 deg,	P =   -25.156 deg,	R =    34.043 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[562]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2330.795  mm,	Y =    79.737  mm,	Z =   841.199  mm,
	W =   -46.224 deg,	P =   -25.156 deg,	R =    34.043 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[563]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  2394.366  mm,	Y =   112.525  mm,	Z =   840.958  mm,
	W =   -46.224 deg,	P =   -25.155 deg,	R =    34.042 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[564]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2189.899  mm,	Y =   169.121  mm,	Z =   881.852  mm,
	W =   -41.492 deg,	P =   -19.813 deg,	R =    37.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[565]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2189.900  mm,	Y =   -28.744  mm,	Z =   939.390  mm,
	W =   -41.493 deg,	P =   -19.814 deg,	R =    37.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[566]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.995  mm,	Y =  -228.567  mm,	Z =  1372.538  mm,
	W =    -4.515 deg,	P =      .965 deg,	R =    -2.729 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[567]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[568]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1001.816  mm,	Y =  -769.240  mm,	Z =   839.808  mm,
	W =     4.407 deg,	P =   -18.981 deg,	R =   -17.214 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[569]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2120.817  mm,	Y =  -186.240  mm,	Z =   155.808  mm,
	W =    -4.184 deg,	P =     7.592 deg,	R =    43.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[570]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2120.816  mm,	Y =   -28.525  mm,	Z =   155.808  mm,
	W =     2.218 deg,	P =    14.051 deg,	R =    70.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[571]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.656  mm,	Y =   -98.489  mm,	Z =    -6.723  mm,
	W =    40.376 deg,	P =    23.931 deg,	R =    74.346 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[572]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2009.129  mm,	Y =   124.302  mm,	Z =   -44.627  mm,
	W =    45.687 deg,	P =     4.511 deg,	R =    78.829 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[573]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2120.816  mm,	Y =   -28.525  mm,	Z =   155.807  mm,
	W =     2.218 deg,	P =    14.051 deg,	R =    70.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[574]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2120.817  mm,	Y =  -186.240  mm,	Z =   155.808  mm,
	W =    -4.184 deg,	P =     7.592 deg,	R =    43.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=  -100.000 deg
};
P[575]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2169.234  mm,	Y =  -186.240  mm,	Z =   155.807  mm,
	W =    28.994 deg,	P =   -15.433 deg,	R =    30.441 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[576]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.271  mm,	Y =   -64.539  mm,	Z =    -1.822  mm,
	W =    44.892 deg,	P =    -3.427 deg,	R =     3.436 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[577]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2260.320  mm,	Y =   -63.687  mm,	Z =    -1.783  mm,
	W =    44.897 deg,	P =    -3.424 deg,	R =     3.430 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[578]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2171.101  mm,	Y =  -106.848  mm,	Z =    40.010  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -3.635 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[579]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2134.875  mm,	Y =   -62.293  mm,	Z =   -12.089  mm,
	W =    44.886 deg,	P =     3.630 deg,	R =    -4.912 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[580]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.171  mm,	Y =   -64.816  mm,	Z =   -10.170  mm,
	W =    44.886 deg,	P =     3.630 deg,	R =    -4.912 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[581]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.120  mm,	Y =   -62.897  mm,	Z =   -10.890  mm,
	W =    44.886 deg,	P =     3.630 deg,	R =   -11.550 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[582]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2072.771  mm,	Y =  -106.847  mm,	Z =    40.010  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -3.635 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[583]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.534  mm,	Y =   -65.727  mm,	Z =   -17.955  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -8.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[584]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2097.268  mm,	Y =   -65.065  mm,	Z =   -17.473  mm,
	W =    44.885 deg,	P =     3.628 deg,	R =    -8.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[585]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2112.828  mm,	Y =   -64.584  mm,	Z =   -16.753  mm,
	W =    41.205 deg,	P =   -19.972 deg,	R =    -8.013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[586]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1903.826  mm,	Y =  -198.100  mm,	Z =    98.030  mm,
	W =    40.690 deg,	P =   -21.162 deg,	R =    -6.795 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[587]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1903.827  mm,	Y =  -198.100  mm,	Z =    98.030  mm,
	W =   -33.760 deg,	P =   -16.746 deg,	R =    41.760 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[588]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2037.827  mm,	Y =  -117.100  mm,	Z =    98.030  mm,
	W =   -36.632 deg,	P =    -7.222 deg,	R =    55.482 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[589]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2071.831  mm,	Y =  -111.826  mm,	Z =   -18.286  mm,
	W =   -37.503 deg,	P =      .971 deg,	R =    76.661 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[590]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2101.801  mm,	Y =   -84.456  mm,	Z =   -18.286  mm,
	W =   -37.503 deg,	P =      .971 deg,	R =    85.242 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[591]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2119.303  mm,	Y =   -69.097  mm,	Z =   -17.436  mm,
	W =   -37.503 deg,	P =      .971 deg,	R =   107.030 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[592]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2055.659  mm,	Y =   -89.520  mm,	Z =    80.831  mm,
	W =   -33.519 deg,	P =   -11.367 deg,	R =    99.761 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[593]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1095.659  mm,	Y =  -338.091  mm,	Z =    80.831  mm,
	W =   -14.565 deg,	P =    32.384 deg,	R =  -179.547 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[594]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1464.711  mm,	Y =  -492.316  mm,	Z =  1452.110  mm,
	W =    59.113 deg,	P =    76.093 deg,	R =  -118.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[595]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2120.659  mm,	Y =  -156.092  mm,	Z =   977.831  mm,
	W =    -2.744 deg,	P =    30.268 deg,	R =  -167.022 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[596]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2129.923  mm,	Y =  -163.109  mm,	Z =   831.039  mm,
	W =     3.597 deg,	P =    39.858 deg,	R =  -158.843 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[597]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2137.809  mm,	Y =  -186.248  mm,	Z =   831.044  mm,
	W =     2.770 deg,	P =    38.184 deg,	R =  -159.358 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[598]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.992  mm,	Y =  -204.644  mm,	Z =   830.285  mm,
	W =     7.244 deg,	P =    45.395 deg,	R =   112.852 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[599]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2100.015  mm,	Y =  -196.039  mm,	Z =   828.573  mm,
	W =     5.322 deg,	P =    47.573 deg,	R =    22.949 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[600]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2086.616  mm,	Y =  -152.754  mm,	Z =   828.880  mm,
	W =      .306 deg,	P =    46.787 deg,	R =    19.130 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[601]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2100.504  mm,	Y =  -134.531  mm,	Z =   832.401  mm,
	W =    -1.751 deg,	P =    45.025 deg,	R =   -76.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[602]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2125.547  mm,	Y =  -142.237  mm,	Z =   829.698  mm,
	W =      .707 deg,	P =    41.168 deg,	R =  -163.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[603]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2131.397  mm,	Y =  -162.602  mm,	Z =   829.829  mm,
	W =      .078 deg,	P =    40.942 deg,	R =  -164.204 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[604]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2005.953  mm,	Y =  -131.336  mm,	Z =  1019.826  mm,
	W =    10.851 deg,	P =    41.306 deg,	R =  -172.082 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[605]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2119.952  mm,	Y =  -275.231  mm,	Z =  1019.826  mm,
	W =     2.972 deg,	P =    30.278 deg,	R =   -91.159 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[606]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2108.961  mm,	Y =  -235.302  mm,	Z =   830.555  mm,
	W =     -.443 deg,	P =    39.555 deg,	R =   -90.699 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[607]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2201.336  mm,	Y =  -235.279  mm,	Z =   830.597  mm,
	W =     -.447 deg,	P =    39.555 deg,	R =   -90.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[608]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.980  mm,	Y =  -233.048  mm,	Z =   831.869  mm,
	W =     -.447 deg,	P =    39.555 deg,	R =   -57.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[609]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2222.918  mm,	Y =  -224.326  mm,	Z =   830.599  mm,
	W =     -.447 deg,	P =    39.555 deg,	R =   -44.058 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[610]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.178  mm,	Y =   -28.001  mm,	Z =   831.741  mm,
	W =     -.034 deg,	P =    41.997 deg,	R =   -43.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[611]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2450.792  mm,	Y =    35.777  mm,	Z =   832.312  mm,
	W =      .115 deg,	P =    42.764 deg,	R =   -49.054 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[612]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2457.628  mm,	Y =    40.947  mm,	Z =   832.314  mm,
	W =      .115 deg,	P =    42.764 deg,	R =   -56.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[613]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2521.514  mm,	Y =    87.672  mm,	Z =   832.133  mm,
	W =    11.971 deg,	P =    40.663 deg,	R =   -38.122 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[614]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2650.676  mm,	Y =   184.582  mm,	Z =   832.304  mm,
	W =    27.597 deg,	P =    31.501 deg,	R =   -10.869 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[615]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2693.013  mm,	Y =   190.209  mm,	Z =   894.682  mm,
	W =    28.386 deg,	P =    27.784 deg,	R =   -40.362 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[616]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   946.013  mm,	Y =   190.209  mm,	Z =   994.682  mm,
	W =    28.386 deg,	P =    27.784 deg,	R =   -40.362 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[617]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   946.013  mm,	Y =   190.209  mm,	Z =   326.110  mm,
	W =   -34.527 deg,	P =    19.136 deg,	R =    25.896 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[618]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1715.261  mm,	Y =   113.066  mm,	Z =   168.110  mm,
	W =   -48.737 deg,	P =     8.784 deg,	R =     7.978 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[619]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1959.340  mm,	Y =   -50.107  mm,	Z =    51.552  mm,
	W =   -51.898 deg,	P =     9.370 deg,	R =    14.305 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[620]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1948.268  mm,	Y =   -49.653  mm,	Z =    51.537  mm,
	W =   -51.894 deg,	P =     9.366 deg,	R =     5.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[621]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1696.243  mm,	Y =   -50.530  mm,	Z =    52.257  mm,
	W =   -51.894 deg,	P =     9.366 deg,	R =     5.846 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[622]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.714  mm,	Y =   -48.833  mm,	Z =    54.913  mm,
	W =   -51.894 deg,	P =     9.366 deg,	R =   -32.596 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[623]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1930.555  mm,	Y =    75.757  mm,	Z =   159.682  mm,
	W =   -51.903 deg,	P =     9.364 deg,	R =    21.482 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[624]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2187.556  mm,	Y =    75.757  mm,	Z =   159.682  mm,
	W =   -51.227 deg,	P =   -13.564 deg,	R =     3.543 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[625]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2224.519  mm,	Y =   -44.534  mm,	Z =    -1.819  mm,
	W =   -45.065 deg,	P =    -5.943 deg,	R =    -3.250 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[626]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2262.967  mm,	Y =   -46.459  mm,	Z =    -2.708  mm,
	W =   -45.063 deg,	P =    -5.948 deg,	R =    -3.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[627]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2185.536  mm,	Y =    -1.237  mm,	Z =    55.960  mm,
	W =   -44.735 deg,	P =    -5.491 deg,	R =    -5.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[628]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2141.111  mm,	Y =   -46.149  mm,	Z =    -9.294  mm,
	W =   -44.730 deg,	P =    -5.491 deg,	R =    -5.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[629]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2205.054  mm,	Y =   -46.149  mm,	Z =    -9.294  mm,
	W =   -44.730 deg,	P =    -5.491 deg,	R =    -5.523 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[630]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2212.135  mm,	Y =   -45.578  mm,	Z =    -9.294  mm,
	W =   -44.730 deg,	P =    -5.491 deg,	R =    10.504 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[631]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2095.621  mm,	Y =    -7.964  mm,	Z =    38.524  mm,
	W =   -44.735 deg,	P =    -5.491 deg,	R =    -5.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[632]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.729  mm,	Y =   -45.526  mm,	Z =   -17.679  mm,
	W =   -44.735 deg,	P =    -5.490 deg,	R =    -5.517 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[633]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2032.308  mm,	Y =   -46.092  mm,	Z =   -17.679  mm,
	W =   -44.735 deg,	P =    -5.490 deg,	R =    -5.517 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[634]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.263  mm,	Y =   -47.292  mm,	Z =   -17.680  mm,
	W =   -44.735 deg,	P =    -5.490 deg,	R =   -41.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[635]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2078.052  mm,	Y =    71.672  mm,	Z =   101.338  mm,
	W =   -44.734 deg,	P =    -5.490 deg,	R =     4.917 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[636]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1302.053  mm,	Y =    71.672  mm,	Z =   101.339  mm,
	W =   -44.734 deg,	P =    -5.490 deg,	R =     4.917 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[637]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1302.053  mm,	Y =    71.673  mm,	Z =   101.339  mm,
	W =    36.994 deg,	P =    27.707 deg,	R =  -122.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[638]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1623.053  mm,	Y =   183.673  mm,	Z =    50.339  mm,
	W =    36.994 deg,	P =    27.707 deg,	R =  -122.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[639]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.956  mm,	Y =   215.868  mm,	Z =   -13.936  mm,
	W =    34.857 deg,	P =    26.466 deg,	R =  -126.842 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[640]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1654.227  mm,	Y =    -6.870  mm,	Z =   -18.681  mm,
	W =    36.965 deg,	P =    27.690 deg,	R =  -122.601 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[641]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1654.396  mm,	Y =   -25.585  mm,	Z =   -18.765  mm,
	W =    37.080 deg,	P =    27.790 deg,	R =  -137.819 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[642]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1532.379  mm,	Y =    48.074  mm,	Z =   132.806  mm,
	W =    36.993 deg,	P =    27.706 deg,	R =  -154.189 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=   -90.000 deg
};
P[643]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1491.379  mm,	Y =   161.074  mm,	Z =   377.806  mm,
	W =    23.939 deg,	P =    39.314 deg,	R =  -177.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[644]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2049.380  mm,	Y =   161.074  mm,	Z =   177.806  mm,
	W =    23.939 deg,	P =    39.314 deg,	R =  -177.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[645]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2049.380  mm,	Y =    -6.926  mm,	Z =   106.806  mm,
	W =    34.881 deg,	P =    30.459 deg,	R =  -142.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[646]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2063.360  mm,	Y =   -46.552  mm,	Z =    14.408  mm,
	W =    27.118 deg,	P =    24.034 deg,	R =  -162.974 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[647]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2070.201  mm,	Y =    -5.697  mm,	Z =    13.112  mm,
	W =    26.540 deg,	P =    23.909 deg,	R =  -139.397 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[648]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2069.499  mm,	Y =    -1.522  mm,	Z =    13.452  mm,
	W =    26.543 deg,	P =    23.908 deg,	R =  -163.851 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[649]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2079.957  mm,	Y =    14.618  mm,	Z =    14.062  mm,
	W =    17.949 deg,	P =    33.023 deg,	R =   153.341 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[650]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2257.638  mm,	Y =   188.605  mm,	Z =   -17.721  mm,
	W =      .048 deg,	P =    36.127 deg,	R =   125.240 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[651]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.957  mm,	Y =   197.647  mm,	Z =   -19.138  mm,
	W =     3.307 deg,	P =    33.871 deg,	R =   124.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[652]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2281.172  mm,	Y =   204.541  mm,	Z =   -20.943  mm,
	W =     6.003 deg,	P =    35.927 deg,	R =   123.386 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[653]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2386.760  mm,	Y =   271.261  mm,	Z =   -38.436  mm,
	W =     8.791 deg,	P =    37.202 deg,	R =   129.076 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[654]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2402.059  mm,	Y =   281.172  mm,	Z =   -42.884  mm,
	W =    -2.502 deg,	P =    34.195 deg,	R =   123.652 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[655]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2416.336  mm,	Y =   299.753  mm,	Z =   -44.208  mm,
	W =      .578 deg,	P =    31.078 deg,	R =   135.858 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[656]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2499.975  mm,	Y =   418.494  mm,	Z =   -59.863  mm,
	W =   -18.687 deg,	P =    29.860 deg,	R =   100.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[657]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2522.749  mm,	Y =   437.814  mm,	Z =   -61.500  mm,
	W =   -18.823 deg,	P =    32.557 deg,	R =    79.853 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[658]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2555.836  mm,	Y =   446.395  mm,	Z =   -68.337  mm,
	W =   -16.509 deg,	P =    33.836 deg,	R =    74.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[659]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2568.335  mm,	Y =   451.071  mm,	Z =   -68.337  mm,
	W =   -16.509 deg,	P =    33.836 deg,	R =    74.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[660]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2604.215  mm,	Y =   477.246  mm,	Z =   -76.736  mm,
	W =   -17.687 deg,	P =    33.474 deg,	R =   110.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[661]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2618.697  mm,	Y =   518.470  mm,	Z =   -81.888  mm,
	W =   -28.179 deg,	P =    11.270 deg,	R =   110.042 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[662]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2619.516  mm,	Y =   709.528  mm,	Z =   -82.638  mm,
	W =   -28.920 deg,	P =    12.962 deg,	R =   109.018 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[663]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2621.157  mm,	Y =   717.292  mm,	Z =   -84.163  mm,
	W =   -28.920 deg,	P =    12.962 deg,	R =    86.656 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[664]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2623.715  mm,	Y =   724.341  mm,	Z =   -84.162  mm,
	W =   -28.920 deg,	P =    12.962 deg,	R =    81.288 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[665]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2631.075  mm,	Y =   754.747  mm,	Z =   -85.027  mm,
	W =   -29.833 deg,	P =     9.276 deg,	R =    88.853 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[666]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2630.091  mm,	Y =   766.127  mm,	Z =   -86.552  mm,
	W =   -33.769 deg,	P =      .741 deg,	R =   112.878 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[667]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2507.109  mm,	Y =   731.136  mm,	Z =    16.168  mm,
	W =   -42.166 deg,	P =     5.515 deg,	R =   107.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[668]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2507.109  mm,	Y =   801.136  mm,	Z =    16.168  mm,
	W =   -35.462 deg,	P =    25.069 deg,	R =   132.276 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[669]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2547.891  mm,	Y =   822.808  mm,	Z =   -72.485  mm,
	W =   -31.199 deg,	P =     9.620 deg,	R =   105.426 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[670]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2549.025  mm,	Y =   813.653  mm,	Z =   -72.568  mm,
	W =   -32.484 deg,	P =     1.246 deg,	R =    91.954 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[671]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2556.443  mm,	Y =   796.316  mm,	Z =   -71.740  mm,
	W =   -29.311 deg,	P =   -14.722 deg,	R =   104.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[672]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2576.844  mm,	Y =   790.013  mm,	Z =   -76.345  mm,
	W =    -3.324 deg,	P =   -34.459 deg,	R =   105.041 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[673]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.397  mm,	Y =   789.960  mm,	Z =   -81.033  mm,
	W =    -3.272 deg,	P =   -34.453 deg,	R =   105.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[674]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2617.219  mm,	Y =   781.118  mm,	Z =   -82.622  mm,
	W =     3.036 deg,	P =   -34.484 deg,	R =    65.941 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[675]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2627.491  mm,	Y =   762.062  mm,	Z =   -83.870  mm,
	W =   -15.099 deg,	P =   -26.030 deg,	R =    67.737 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[676]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2536.373  mm,	Y =   677.588  mm,	Z =   101.581  mm,
	W =   -11.653 deg,	P =   -32.812 deg,	R =    68.201 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[677]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2379.054  mm,	Y =   340.913  mm,	Z =   218.031  mm,
	W =   -12.774 deg,	P =    75.193 deg,	R =  -178.717 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[678]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1113.732  mm,	Y =   361.444  mm,	Z =   517.929  mm,
	W =    14.500 deg,	P =    75.040 deg,	R =  -140.487 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.000 deg,	J2=   -90.000 deg
};
P[679]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   922.816  mm,	Y =    -9.239  mm,	Z =  2168.306  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[680]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   913.051  mm,	Y = -1107.917  mm,	Z =  1634.767  mm,
	W =    10.155 deg,	P =    42.864 deg,	R =  -126.216 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[681]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   813.817  mm,	Y = -1211.238  mm,	Z =  1026.306  mm,
	W =    24.190 deg,	P =   -39.178 deg,	R =    -6.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[682]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   968.817  mm,	Y = -1111.238  mm,	Z =   852.305  mm,
	W =    24.190 deg,	P =   -39.178 deg,	R =    -6.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[683]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1053.046  mm,	Y = -1056.747  mm,	Z =   769.543  mm,
	W =    24.542 deg,	P =   -38.984 deg,	R =    -6.156 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[684]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1094.890  mm,	Y = -1127.769  mm,	Z =   768.463  mm,
	W =    24.536 deg,	P =   -38.987 deg,	R =    -6.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[685]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   585.666  mm,	Y = -1195.897  mm,	Z =  1026.056  mm,
	W =    24.190 deg,	P =   -39.178 deg,	R =    -6.255 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[686]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   585.666  mm,	Y = -1195.897  mm,	Z =  1026.056  mm,
	W =   -11.844 deg,	P =    43.739 deg,	R =  -167.714 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[687]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   763.666  mm,	Y =  -662.897  mm,	Z =   826.056  mm,
	W =   -27.661 deg,	P =    37.026 deg,	R =   168.125 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[688]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   776.756  mm,	Y =  -578.766  mm,	Z =   774.376  mm,
	W =   -11.191 deg,	P =    42.605 deg,	R =  -165.904 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[689]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   923.650  mm,	Y =  -831.496  mm,	Z =   772.822  mm,
	W =     1.427 deg,	P =    43.776 deg,	R =  -152.542 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[690]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1037.419  mm,	Y = -1025.988  mm,	Z =   770.961  mm,
	W =     -.115 deg,	P =    43.762 deg,	R =  -154.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[691]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   969.618  mm,	Y = -1090.804  mm,	Z =   854.949  mm,
	W =    41.435 deg,	P =    19.411 deg,	R =   -80.632 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[692]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   607.272  mm,	Y =  -642.803  mm,	Z =   854.949  mm,
	W =    44.809 deg,	P =     4.676 deg,	R =   -64.692 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[693]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   758.466  mm,	Y =  -545.960  mm,	Z =   772.606  mm,
	W =    33.386 deg,	P =   -31.996 deg,	R =   -21.225 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[694]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   710.278  mm,	Y =  -477.960  mm,	Z =   772.606  mm,
	W =    33.386 deg,	P =   -31.996 deg,	R =    -8.428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[695]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   606.617  mm,	Y =  -573.857  mm,	Z =   914.233  mm,
	W =    33.386 deg,	P =   -31.996 deg,	R =    -8.428 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[696]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   426.165  mm,	Y =  -510.830  mm,	Z =  1734.717  mm,
	W =    10.103 deg,	P =   -28.621 deg,	R =   -21.273 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=  -150.000 deg
};
P[697]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   973.093  mm,	Y =  -950.831  mm,	Z =  1456.444  mm,
	W =     -.010 deg,	P =    45.866 deg,	R =    90.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[698]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1878.092  mm,	Y = -1312.832  mm,	Z =  1256.443  mm,
	W =   -41.810 deg,	P =   -20.894 deg,	R =   -21.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[699]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1944.092  mm,	Y = -1413.832  mm,	Z =  1049.443  mm,
	W =   -42.701 deg,	P =    18.644 deg,	R =    19.122 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[700]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1905.343  mm,	Y = -1477.017  mm,	Z =  1025.975  mm,
	W =   -39.881 deg,	P =    23.853 deg,	R =    23.904 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[701]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1932.126  mm,	Y = -1480.053  mm,	Z =  1024.380  mm,
	W =   -43.541 deg,	P =    14.557 deg,	R =    14.831 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[702]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1967.611  mm,	Y = -1478.561  mm,	Z =  1026.042  mm,
	W =   -43.535 deg,	P =    14.558 deg,	R =    14.822 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[703]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2000.593  mm,	Y = -1497.735  mm,	Z =  1025.630  mm,
	W =   -43.543 deg,	P =    14.556 deg,	R =   -14.021 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[704]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2008.768  mm,	Y = -1507.923  mm,	Z =  1025.740  mm,
	W =   -44.808 deg,	P =     8.520 deg,	R =   -27.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[705]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.583  mm,	Y = -1389.775  mm,	Z =  1062.551  mm,
	W =   -44.862 deg,	P =     3.961 deg,	R =   -20.537 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[706]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1878.092  mm,	Y = -1312.832  mm,	Z =  1256.443  mm,
	W =   -41.810 deg,	P =   -20.894 deg,	R =   -21.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[707]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   648.092  mm,	Y = -1312.832  mm,	Z =  1599.443  mm,
	W =   -41.810 deg,	P =   -20.894 deg,	R =   -21.724 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=   -90.000 deg
};
P[708]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   973.093  mm,	Y =   -11.831  mm,	Z =  2176.445  mm,
	W =     -.010 deg,	P =   -45.000 deg,	R =     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[709]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1331.092  mm,	Y =   987.169  mm,	Z =  1342.444  mm,
	W =     -.010 deg,	P =    45.000 deg,	R =   -90.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[710]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.092  mm,	Y =  1212.638  mm,	Z =  1342.445  mm,
	W =    44.958 deg,	P =    -2.212 deg,	R =     2.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[711]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1940.973  mm,	Y =  1347.132  mm,	Z =  1061.188  mm,
	W =    41.277 deg,	P =    19.800 deg,	R =   -21.086 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[712]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1901.875  mm,	Y =  1465.160  mm,	Z =  1036.238  mm,
	W =    41.263 deg,	P =    19.805 deg,	R =   -17.225 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[713]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1934.116  mm,	Y =  1464.614  mm,	Z =  1037.732  mm,
	W =    41.277 deg,	P =    19.801 deg,	R =   -17.230 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[714]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1965.909  mm,	Y =  1468.963  mm,	Z =  1032.171  mm,
	W =    41.272 deg,	P =    19.803 deg,	R =   -17.223 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[715]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.605  mm,	Y =  1480.121  mm,	Z =  1030.618  mm,
	W =    41.277 deg,	P =    19.801 deg,	R =     6.735 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[716]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1999.792  mm,	Y =  1488.994  mm,	Z =  1027.439  mm,
	W =    43.863 deg,	P =    11.272 deg,	R =    16.919 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[717]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2007.580  mm,	Y =  1422.903  mm,	Z =  1059.661  mm,
	W =    44.305 deg,	P =     8.850 deg,	R =     3.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[718]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.092  mm,	Y =  1212.638  mm,	Z =  1342.444  mm,
	W =    44.958 deg,	P =    -2.212 deg,	R =     2.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000 deg,	J2=    90.000 deg
};
P[729]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   818.947  mm,	Y =   972.802  mm,	Z =  1108.910  mm,
	W =    50.730 deg,	P =      .639 deg,	R =   -51.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[730]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1078.589  mm,	Y =   991.016  mm,	Z =  1063.910  mm,
	W =    50.730 deg,	P =      .639 deg,	R =   -51.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[731]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1104.853  mm,	Y =  1006.203  mm,	Z =  1025.639  mm,
	W =    44.130 deg,	P =    -6.203 deg,	R =   -51.549 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[732]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1114.844  mm,	Y =  1000.704  mm,	Z =  1027.080  mm,
	W =    43.014 deg,	P =    -7.268 deg,	R =   -34.946 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[733]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1125.597  mm,	Y =   997.219  mm,	Z =  1027.206  mm,
	W =    42.651 deg,	P =   -14.126 deg,	R =   -20.722 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[734]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1138.321  mm,	Y =   996.177  mm,	Z =  1027.210  mm,
	W =    42.651 deg,	P =   -14.126 deg,	R =   -27.080 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[735]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =  1090.032  mm,	Y =   963.970  mm,	Z =  1058.684  mm,
	W =    50.535 deg,	P =   -23.426 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[736]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   866.460  mm,	Y =   968.970  mm,	Z =  1058.684  mm,
	W =    50.535 deg,	P =   -23.426 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[737]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   866.460  mm,	Y =   968.969  mm,	Z =  1794.399  mm,
	W =    50.535 deg,	P =   -23.425 deg,	R =   -25.981 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000 deg,	J2=   150.000 deg
};
P[749]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   361.637  mm,	Y =   -13.715  mm,	Z =  2427.062  mm,
	W =     -.019 deg,	P =   -39.997 deg,	R =      .013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[750]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   345.640  mm,	Y = -1572.170  mm,	Z =  1050.335  mm,
	W =    56.087 deg,	P =     8.668 deg,	R =   -95.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[751]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2515.039  mm,	Y = -1508.170  mm,	Z =  1050.334  mm,
	W =   -50.284 deg,	P =   -30.325 deg,	R =    67.097 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[752]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2788.736  mm,	Y = -1483.274  mm,	Z =   933.541  mm,
	W =   -37.771 deg,	P =   -31.405 deg,	R =    42.828 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[753]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2790.127  mm,	Y = -1512.097  mm,	Z =   933.343  mm,
	W =   -37.782 deg,	P =   -31.394 deg,	R =    42.842 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[754]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2777.828  mm,	Y = -1541.019  mm,	Z =   932.405  mm,
	W =   -42.870 deg,	P =   -22.985 deg,	R =    39.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[755]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2762.396  mm,	Y = -1555.396  mm,	Z =   929.477  mm,
	W =   -45.718 deg,	P =   -14.892 deg,	R =    35.274 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[756]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2731.844  mm,	Y = -1574.335  mm,	Z =   920.084  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =    30.406 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[757]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2725.103  mm,	Y = -1575.819  mm,	Z =   919.847  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =    18.309 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[758]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2712.522  mm,	Y = -1579.347  mm,	Z =   916.110  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =     6.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[759]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2684.760  mm,	Y = -1581.022  mm,	Z =   910.051  mm,
	W =   -45.718 deg,	P =   -14.891 deg,	R =     6.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[760]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2624.684  mm,	Y = -1545.568  mm,	Z =  1157.185  mm,
	W =   -45.531 deg,	P =     6.252 deg,	R =    32.963 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[761]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   619.684  mm,	Y = -1545.568  mm,	Z =  1157.185  mm,
	W =   -45.531 deg,	P =     6.252 deg,	R =    32.963 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000 deg,	J2=   -90.000 deg
};
P[771]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   361.637  mm,	Y =   -13.715  mm,	Z =  2427.062  mm,
	W =     -.019 deg,	P =   -39.997 deg,	R =      .013 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[772]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1600.281  mm,	Y =  1476.125  mm,	Z =  1082.764  mm,
	W =    44.983 deg,	P =     1.340 deg,	R =    -4.979 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    90.000 deg,	J2=    90.000 deg
};
P[773]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2541.394  mm,	Y =  1548.125  mm,	Z =  1070.592  mm,
	W =    21.780 deg,	P =   -40.404 deg,	R =   -29.962 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[774]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2674.298  mm,	Y =  1497.536  mm,	Z =  1070.592  mm,
	W =    15.908 deg,	P =   -31.536 deg,	R =   -26.500 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[775]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2833.414  mm,	Y =  1483.559  mm,	Z =   885.495  mm,
	W =     1.862 deg,	P =   -42.072 deg,	R =    -2.894 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[776]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2833.081  mm,	Y =  1508.177  mm,	Z =   884.362  mm,
	W =     1.851 deg,	P =   -42.070 deg,	R =    -2.890 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[777]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2826.705  mm,	Y =  1541.371  mm,	Z =   879.685  mm,
	W =    47.457 deg,	P =    -2.512 deg,	R =   -28.093 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[778]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2808.617  mm,	Y =  1556.143  mm,	Z =   878.386  mm,
	W =    47.469 deg,	P =    -2.511 deg,	R =   -28.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[779]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2772.622  mm,	Y =  1570.522  mm,	Z =   877.279  mm,
	W =    47.469 deg,	P =    -2.511 deg,	R =   -28.096 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[780]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2766.040  mm,	Y =  1572.698  mm,	Z =   875.804  mm,
	W =    46.964 deg,	P =     8.281 deg,	R =   -26.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[781]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2756.734  mm,	Y =  1575.818  mm,	Z =   872.094  mm,
	W =    47.296 deg,	P =    13.421 deg,	R =   -20.078 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    94.995 deg,	J2=    90.000 deg
};
P[782]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2725.010  mm,	Y =  1574.875  mm,	Z =   871.699  mm,
	W =    46.312 deg,	P =    12.118 deg,	R =   -20.583 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[783]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2601.214  mm,	Y =  1517.756  mm,	Z =  1073.770  mm,
	W =    42.689 deg,	P =    16.599 deg,	R =   -42.374 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
P[784]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1497.214  mm,	Y =  1517.756  mm,	Z =  1073.770  mm,
	W =    42.689 deg,	P =    16.599 deg,	R =   -42.374 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.000 deg,	J2=    90.000 deg
};
/END
