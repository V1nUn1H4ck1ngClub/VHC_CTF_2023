; ModuleID = 'wyvern.c'
source_filename = "wyvern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@key1 = dso_local global [6 x i8] c"\AB\8A\C5\FEG\00", align 1, !dbg !0
@key2 = dso_local global [6 x i8] c"y\F1\D0\04\E8\00", align 1, !dbg !10
@key3 = dso_local global [6 x i8] c"\F8\FB\F5\E7\B9\00", align 1, !dbg !16
@key4 = dso_local global [6 x i8] c"\B6\1C\CAQp\00", align 1, !dbg !18
@flag = dso_local global [16 x i16] [i16 16977, i16 23678, i16 28325, i16 12148, i16 -12907, i16 23399, i16 -10695, i16 20663, i16 21868, i16 -13461, i16 -21535, i16 7761, i16 22036, i16 -7804, i16 27056, i16 14160], align 16, !dbg !20
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"                           ?~                                               75:\0A\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"                           !&?                                             J&^ !:\0A\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"                       .Y~ ^@@J!:               .^                        .&G ?6\0A\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"                        Y@P&@@@P:          .^ .7J:                       :P@@#@GJ!.\0A\00", align 1
@.str.5 = private unnamed_addr constant [86 x i8] c"                      :7B@&&@@G           ^?^?5!..^.                      .?@@#&@@B~\0A\00", align 1
@.str.6 = private unnamed_addr constant [87 x i8] c"                   :?G&@@##@B&~         :?GPB5777^.  .:.                    G@5P5B@@?\0A\00", align 1
@.str.7 = private unnamed_addr constant [90 x i8] c"                 !P&@@@@B&@#GG       .!5&&@@&@@GGPPGPY7^..^^:               J@@@&PJ#@5^^\0A\00", align 1
@.str.8 = private unnamed_addr constant [92 x i8] c"              .7B@@@@@@PB@@5#J     .Y#@B#@@@@@@@@@@@&#&##GY~.               G@@@@@#?G@PBJ.\0A\00", align 1
@.str.9 = private unnamed_addr constant [93 x i8] c"            .?#@@@@@@@BY@@&7&!  ~YPB@@@@@@@@GY#@@@@&@@@@@@##PY7~:.          B@@@@#@&~B@B@B~\0A\00", align 1
@.str.10 = private unnamed_addr constant [95 x i8] c"           7#@@@@@@@@@7B@@B!@^ .?G&&G?7!7?Y?::^!7?JYPBBB&@@@@#?~:.         J@&#@#^5@J7@#@@@Y.\0A\00", align 1
@.str.11 = private unnamed_addr constant [96 x i8] c"         !B@@@@@@@@@@5!@PBG7@~    ..:                !#BYB@@@@P77~.       Y@&P@@G757!Y@@@@@@G^\0A\00", align 1
@.str.12 = private unnamed_addr constant [96 x i8] c"       ~G@@@@@@@@@@@@7~57G#7@5.                      ~P@G5@@@@#!.       G@&P&@@G!@B#@@@@@@@@&!\0A\00", align 1
@.str.13 = private unnamed_addr constant [98 x i8] c"     .Y@@@#@@@@@@@@@@PBBJ@@PP#BYJ?~:              .^YG#B5#@@@#7?7. :~7Y5G@#B&@@@#^&@@@@@@@@@@@@?\0A\00", align 1
@.str.14 = private unnamed_addr constant [99 x i8] c"    ^B@@BY7@@@@@@@@@@@5J&@@@&###B#&#B5?!^:.:!J5Y?YPGGGPG&@@&##BPYP#&@@&BB#&@@@@@@^G@@@@@@@@B5G&@7\0A\00", align 1
@.str.15 = private unnamed_addr constant [99 x i8] c"   ~&@#5GJB@@@@@@@@@@^?@&~^G@@P!:.P55G#GBP5G&@@&PP5  ~    :P~    :J#@B.    7#@J.&@@@@@@@@#7@@@PB5\0A\00", align 1
@.str.16 = private unnamed_addr constant [101 x i8] c"  ^&@GY&5G@@@@@@@@@@?!@@@@@@@@@@@&#BGB#&&###@@@PBBGP5G&@@@@@@@&#&#BBB#&@@@@@@@@@@^5@@@@@@@@G?@@GB#.\0A\00", align 1
@.str.17 = private unnamed_addr constant [100 x i8] c" .B@PY@B?@@@@@@@@@@P:&@@@5~^G@@P!:.P55G#GBP5G&@@&PP5  ~    :P~    :J#@B.    7#@J.&@@@@@@@@#7@@@PB5\0A\00", align 1
@.str.18 = private unnamed_addr constant [104 x i8] c" J@PY@@JP@@@@@@@@@@!!@@@?   P5^   :J5G#GB##P5G&@@##! :!                .?B^     :Y.?@@@@@@@@@G!@@~ ^!5\0A\00", align 1
@.str.19 = private unnamed_addr constant [103 x i8] c":&BJ@@@?B@&JB@@@@@@^?@&~   .:   .J&@G5G#GJY#@@@J.^.                     ..       :#@@@@@&#@@?Y@@?   ~\0A\00", align 1
@.str.20 = private unnamed_addr constant [100 x i8] c"?@?#GGP!B@J Y@@@@@@^?&^        ^5@#G#&&PY#@@@@G^   .^!7?JJJJ?!~^.                 P@@@@@@G^&#^&@@Y\0A\00", align 1
@.str.21 = private unnamed_addr constant [100 x i8] c"GYY7    G&. ?@@@@@@!~!        :&#YPGBG!P@@@@G.:75B&@@@@@@@@@@&5BP!              J@@@@@@@P  .   P@5\0A\00", align 1
@.str.22 = private unnamed_addr constant [100 x i8] c"P^.     Y5  ~@@@@@@Y          5@#5&@@?G@@@@G^&@@@@@@&BBGGG#@@@GY@@J            ?@@@@@@@B:      :&5\0A\00", align 1
@.str.23 = private unnamed_addr constant [98 x i8] c":       ~~   P@@@@@B.        .P#P&&B?5@@@@@&YJ:           !GP#@@@&:         Y@@@@@@@Y.        JJ\0A\00", align 1
@.str.24 = private unnamed_addr constant [102 x i8] c"                ~B@@@@7         P#YBB#!&@@@@@JB@@BY!^.      ?@&YB@@@^          P@@@@@@Y^          :~\0A\00", align 1
@.str.25 = private unnamed_addr constant [81 x i8] c"                  7G&@@~       Y@P?YB@GPPG#&@@@@@@@@@@@@@@@&GJ^         !@@5!?:\0A\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"                    :7##^     ~@@@@#!^!5BBGGGGBB####BBG5J7^.           7BY~\0A\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"                       ~7.    5@@@@P     .^~!!!!!~^^:.                .~.\0A\00", align 1
@.str.28 = private unnamed_addr constant [74 x i8] c"                              G@@@@^                                    \0A\00", align 1
@.str.29 = private unnamed_addr constant [77 x i8] c"                              Y@@@&:                                     :.\0A\00", align 1
@.str.30 = private unnamed_addr constant [77 x i8] c"                              ^&@@@!                                    !5.\0A\00", align 1
@.str.31 = private unnamed_addr constant [76 x i8] c"                               7@@@#^                               ^75B#~\0A\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"                                7&@@#!                             .~J#@J\0A\00", align 1
@.str.33 = private unnamed_addr constant [75 x i8] c"                                 ^P@@@G!.                         ..~P?J:\0A\00", align 1
@.str.34 = private unnamed_addr constant [72 x i8] c"                                   ~5&@@&57^.                   .^G&#^\0A\00", align 1
@.str.35 = private unnamed_addr constant [71 x i8] c"                                     .!YB&@@#G5?7~^::...::^~!7J55Y7!^\0A\00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"                                         :~7YPB#&&&&&###BBGPY?!:\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [122 x i8] c"Wyvern: Hark, ye low socio-economic peasants! I, Wyvern, the grand custodian of the Wyvern Gates, demand your attention.\0A\00", align 1
@.str.38 = private unnamed_addr constant [110 x i8] c"        If you yearn to traverse and access the realms beyond, you shall relinquish unto me the sacred flag!\0A\00", align 1
@.str.39 = private unnamed_addr constant [120 x i8] c"        Speak now, what secrets does the flag conceal, or brace yourselves for the roaring inferno of my displeasure!\0A\0A\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"Flag:   \00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [134 x i8] c"\0AWyvern: Astonishing! You've managed to wield the correct flag. Your triumph grants you passage through the formidable Wyvern Gates.\0A\00", align 1
@.str.43 = private unnamed_addr constant [63 x i8] c"        Proceed forthwith and savor the victories that await!\0A\00", align 1
@.str.44 = private unnamed_addr constant [131 x i8] c"\0AWyvern: Foolish mortal! This flag you present is but a mockery. You shall not pass through the Wyvern Gates with such ignorance!\0A\00", align 1
@.str.45 = private unnamed_addr constant [57 x i8] c"        PREPARE TO DIEEEEEEEEEEEEEEEEEEEEEEEEEE!!!!!!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i16* @encode(i8* %inputBuf, i32 %bufLen) #0 !dbg !29 {
entry:
  %inputBuf.addr = alloca i8*, align 8
  %bufLen.addr = alloca i32, align 4
  %cipherLen = alloca i32, align 4
  %myCipher = alloca i16*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %inputBuf, i8** %inputBuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %inputBuf.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 %bufLen, i32* %bufLen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bufLen.addr, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %cipherLen, metadata !38, metadata !DIExpression()), !dbg !39
  %0 = load i32, i32* %bufLen.addr, align 4, !dbg !40
  %div = sdiv i32 %0, 2, !dbg !41
  store i32 %div, i32* %cipherLen, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i16** %myCipher, metadata !42, metadata !DIExpression()), !dbg !43
  %1 = load i32, i32* %cipherLen, align 4, !dbg !44
  %conv = sext i32 %1 to i64, !dbg !44
  %mul = mul i64 %conv, 2, !dbg !45
  %call = call noalias i8* @malloc(i64 %mul) #6, !dbg !46
  %2 = bitcast i8* %call to i16*, !dbg !47
  store i16* %2, i16** %myCipher, align 8, !dbg !43
  %3 = load i16*, i16** %myCipher, align 8, !dbg !48
  %cmp = icmp eq i16* %3, null, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !52
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)), !dbg !54
  call void @exit(i32 -1) #7, !dbg !55
  unreachable, !dbg !55

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %i, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %j, metadata !59, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %j, align 4, !dbg !60
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !dbg !62
  %6 = load i32, i32* %bufLen.addr, align 4, !dbg !64
  %cmp3 = icmp slt i32 %5, %6, !dbg !65
  br i1 %cmp3, label %for.body, label %for.end, !dbg !66

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %inputBuf.addr, align 8, !dbg !67
  %8 = load i32, i32* %i, align 4, !dbg !69
  %idxprom = sext i32 %8 to i64, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom, !dbg !67
  %9 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv5 = zext i8 %9 to i32, !dbg !67
  %shl = shl i32 %conv5, 8, !dbg !70
  %10 = load i8*, i8** %inputBuf.addr, align 8, !dbg !71
  %11 = load i32, i32* %i, align 4, !dbg !72
  %add = add nsw i32 %11, 2, !dbg !73
  %idxprom6 = sext i32 %add to i64, !dbg !71
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %idxprom6, !dbg !71
  %12 = load i8, i8* %arrayidx7, align 1, !dbg !71
  %conv8 = zext i8 %12 to i32, !dbg !71
  %or = or i32 %shl, %conv8, !dbg !74
  %conv9 = trunc i32 %or to i16, !dbg !75
  %13 = load i16*, i16** %myCipher, align 8, !dbg !76
  %14 = load i32, i32* %j, align 4, !dbg !77
  %idxprom10 = sext i32 %14 to i64, !dbg !76
  %arrayidx11 = getelementptr inbounds i16, i16* %13, i64 %idxprom10, !dbg !76
  store i16 %conv9, i16* %arrayidx11, align 2, !dbg !78
  %15 = load i8*, i8** %inputBuf.addr, align 8, !dbg !79
  %16 = load i32, i32* %i, align 4, !dbg !80
  %add12 = add nsw i32 %16, 1, !dbg !81
  %idxprom13 = sext i32 %add12 to i64, !dbg !79
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %idxprom13, !dbg !79
  %17 = load i8, i8* %arrayidx14, align 1, !dbg !79
  %conv15 = zext i8 %17 to i32, !dbg !79
  %shl16 = shl i32 %conv15, 8, !dbg !82
  %18 = load i8*, i8** %inputBuf.addr, align 8, !dbg !83
  %19 = load i32, i32* %i, align 4, !dbg !84
  %add17 = add nsw i32 %19, 3, !dbg !85
  %idxprom18 = sext i32 %add17 to i64, !dbg !83
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %idxprom18, !dbg !83
  %20 = load i8, i8* %arrayidx19, align 1, !dbg !83
  %conv20 = zext i8 %20 to i32, !dbg !83
  %or21 = or i32 %shl16, %conv20, !dbg !86
  %conv22 = trunc i32 %or21 to i16, !dbg !87
  %21 = load i16*, i16** %myCipher, align 8, !dbg !88
  %22 = load i32, i32* %j, align 4, !dbg !89
  %add23 = add nsw i32 %22, 1, !dbg !90
  %idxprom24 = sext i32 %add23 to i64, !dbg !88
  %arrayidx25 = getelementptr inbounds i16, i16* %21, i64 %idxprom24, !dbg !88
  store i16 %conv22, i16* %arrayidx25, align 2, !dbg !91
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !93
  %add26 = add nsw i32 %23, 4, !dbg !93
  store i32 %add26, i32* %i, align 4, !dbg !93
  %24 = load i32, i32* %j, align 4, !dbg !94
  %add27 = add nsw i32 %24, 2, !dbg !94
  store i32 %add27, i32* %j, align 4, !dbg !94
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %25 = load i16*, i16** %myCipher, align 8, !dbg !98
  ret i16* %25, !dbg !99
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encrypt1(i8* %inputBuf, i8* %key, i32 %start, i32 %end, i32 %step) #0 !dbg !100 {
entry:
  %inputBuf.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i8, align 1
  store i8* %inputBuf, i8** %inputBuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %inputBuf.addr, metadata !103, metadata !DIExpression()), !dbg !104
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !107, metadata !DIExpression()), !dbg !108
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 %step, i32* %step.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %step.addr, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !113, metadata !DIExpression()), !dbg !114
  store i32 0, i32* %counter, align 4, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %i, metadata !115, metadata !DIExpression()), !dbg !117
  %0 = load i32, i32* %start.addr, align 4, !dbg !118
  store i32 %0, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !120
  %2 = load i32, i32* %end.addr, align 4, !dbg !122
  %cmp = icmp ne i32 %1, %2, !dbg !123
  br i1 %cmp, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %temp, metadata !125, metadata !DIExpression()), !dbg !128
  %3 = load i8*, i8** %key.addr, align 8, !dbg !129
  %4 = load i32, i32* %counter, align 4, !dbg !130
  %idxprom = sext i32 %4 to i64, !dbg !129
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom, !dbg !129
  %5 = load i8, i8* %arrayidx, align 1, !dbg !129
  store i8 %5, i8* %temp, align 1, !dbg !128
  %6 = load i8*, i8** %inputBuf.addr, align 8, !dbg !131
  %7 = load i32, i32* %i, align 4, !dbg !132
  %idxprom1 = sext i32 %7 to i64, !dbg !131
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1, !dbg !131
  %8 = load i8, i8* %arrayidx2, align 1, !dbg !131
  %9 = load i8*, i8** %key.addr, align 8, !dbg !133
  %10 = load i32, i32* %counter, align 4, !dbg !134
  %idxprom3 = sext i32 %10 to i64, !dbg !133
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 %idxprom3, !dbg !133
  store i8 %8, i8* %arrayidx4, align 1, !dbg !135
  %11 = load i8, i8* %temp, align 1, !dbg !136
  %12 = load i8*, i8** %inputBuf.addr, align 8, !dbg !137
  %13 = load i32, i32* %i, align 4, !dbg !138
  %idxprom5 = sext i32 %13 to i64, !dbg !137
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 %idxprom5, !dbg !137
  store i8 %11, i8* %arrayidx6, align 1, !dbg !139
  %14 = load i8*, i8** %key.addr, align 8, !dbg !140
  %15 = load i32, i32* %counter, align 4, !dbg !141
  %idxprom7 = sext i32 %15 to i64, !dbg !140
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %idxprom7, !dbg !140
  %16 = load i8, i8* %arrayidx8, align 1, !dbg !140
  %conv = zext i8 %16 to i32, !dbg !140
  %17 = load i8*, i8** %inputBuf.addr, align 8, !dbg !142
  %18 = load i32, i32* %i, align 4, !dbg !143
  %idxprom9 = sext i32 %18 to i64, !dbg !142
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 %idxprom9, !dbg !142
  %19 = load i8, i8* %arrayidx10, align 1, !dbg !144
  %conv11 = zext i8 %19 to i32, !dbg !144
  %xor = xor i32 %conv11, %conv, !dbg !144
  %conv12 = trunc i32 %xor to i8, !dbg !144
  store i8 %conv12, i8* %arrayidx10, align 1, !dbg !144
  %20 = load i32, i32* %counter, align 4, !dbg !145
  %add = add nsw i32 %20, 1, !dbg !146
  %rem = srem i32 %add, 5, !dbg !147
  store i32 %rem, i32* %counter, align 4, !dbg !148
  br label %for.inc, !dbg !149

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %step.addr, align 4, !dbg !150
  %22 = load i32, i32* %i, align 4, !dbg !151
  %add13 = add nsw i32 %22, %21, !dbg !151
  store i32 %add13, i32* %i, align 4, !dbg !151
  br label %for.cond, !dbg !152, !llvm.loop !153

for.end:                                          ; preds = %for.cond
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encrypt2(i8* %inputBuf, i8* %key, i32 %start, i32 %end, i32 %step) #0 !dbg !156 {
entry:
  %inputBuf.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %inputBuf, i8** %inputBuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %inputBuf.addr, metadata !157, metadata !DIExpression()), !dbg !158
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 %end, i32* %end.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %end.addr, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 %step, i32* %step.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %step.addr, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 0, i32* %counter, align 4, !dbg !168
  call void @llvm.dbg.declare(metadata i32* %i, metadata !169, metadata !DIExpression()), !dbg !171
  %0 = load i32, i32* %start.addr, align 4, !dbg !172
  store i32 %0, i32* %i, align 4, !dbg !171
  br label %for.cond, !dbg !173

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !174
  %2 = load i32, i32* %end.addr, align 4, !dbg !176
  %cmp = icmp ne i32 %1, %2, !dbg !177
  br i1 %cmp, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %key.addr, align 8, !dbg !179
  %4 = load i32, i32* %counter, align 4, !dbg !181
  %idxprom = sext i32 %4 to i64, !dbg !179
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom, !dbg !179
  %5 = load i8, i8* %arrayidx, align 1, !dbg !179
  %conv = zext i8 %5 to i32, !dbg !179
  %6 = load i8*, i8** %inputBuf.addr, align 8, !dbg !182
  %7 = load i32, i32* %i, align 4, !dbg !183
  %idxprom1 = sext i32 %7 to i64, !dbg !182
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1, !dbg !182
  %8 = load i8, i8* %arrayidx2, align 1, !dbg !184
  %conv3 = zext i8 %8 to i32, !dbg !184
  %xor = xor i32 %conv3, %conv, !dbg !184
  %conv4 = trunc i32 %xor to i8, !dbg !184
  store i8 %conv4, i8* %arrayidx2, align 1, !dbg !184
  %9 = load i32, i32* %counter, align 4, !dbg !185
  %add = add nsw i32 %9, 1, !dbg !186
  %rem = srem i32 %add, 5, !dbg !187
  store i32 %rem, i32* %counter, align 4, !dbg !188
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %step.addr, align 4, !dbg !190
  %11 = load i32, i32* %i, align 4, !dbg !191
  %add5 = add nsw i32 %11, %10, !dbg !191
  store i32 %add5, i32* %i, align 4, !dbg !191
  br label %for.cond, !dbg !192, !llvm.loop !193

for.end:                                          ; preds = %for.cond
  ret void, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check(i8* %inputBuf) #0 !dbg !196 {
entry:
  %retval = alloca i32, align 4
  %inputBuf.addr = alloca i8*, align 8
  %bufLen = alloca i32, align 4
  %myCipher = alloca i16*, align 8
  store i8* %inputBuf, i8** %inputBuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %inputBuf.addr, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata i32* %bufLen, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load i8*, i8** %inputBuf.addr, align 8, !dbg !203
  %call = call i64 @strlen(i8* %0) #8, !dbg !204
  %conv = trunc i64 %call to i32, !dbg !204
  store i32 %conv, i32* %bufLen, align 4, !dbg !202
  %1 = load i32, i32* %bufLen, align 4, !dbg !205
  %rem = srem i32 %1, 4, !dbg !207
  %cmp = icmp ne i32 %rem, 0, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !210
  br label %return, !dbg !210

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %inputBuf.addr, align 8, !dbg !212
  %3 = load i32, i32* %bufLen, align 4, !dbg !213
  call void @encrypt1(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @key1, i64 0, i64 0), i32 0, i32 %3, i32 1), !dbg !214
  %4 = load i8*, i8** %inputBuf.addr, align 8, !dbg !215
  %5 = load i32, i32* %bufLen, align 4, !dbg !216
  %sub = sub nsw i32 %5, 1, !dbg !217
  call void @encrypt2(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @key2, i64 0, i64 0), i32 %sub, i32 -1, i32 -1), !dbg !218
  %6 = load i8*, i8** %inputBuf.addr, align 8, !dbg !219
  %7 = load i32, i32* %bufLen, align 4, !dbg !220
  call void @encrypt1(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @key3, i64 0, i64 0), i32 0, i32 %7, i32 1), !dbg !221
  %8 = load i8*, i8** %inputBuf.addr, align 8, !dbg !222
  %9 = load i32, i32* %bufLen, align 4, !dbg !223
  call void @encrypt2(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @key4, i64 0, i64 0), i32 0, i32 %9, i32 1), !dbg !224
  call void @llvm.dbg.declare(metadata i16** %myCipher, metadata !225, metadata !DIExpression()), !dbg !226
  %10 = load i8*, i8** %inputBuf.addr, align 8, !dbg !227
  %11 = load i32, i32* %bufLen, align 4, !dbg !228
  %call2 = call i16* @encode(i8* %10, i32 %11), !dbg !229
  store i16* %call2, i16** %myCipher, align 8, !dbg !226
  %12 = load i16*, i16** %myCipher, align 8, !dbg !230
  %13 = bitcast i16* %12 to i8*, !dbg !230
  %call3 = call i32 @memcmp(i8* %13, i8* bitcast ([16 x i16]* @flag to i8*), i64 16) #8, !dbg !232
  %tobool = icmp ne i32 %call3, 0, !dbg !232
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !233

if.then4:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !234
  br label %return, !dbg !234

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !236
  br label %return, !dbg !236

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !237
  ret i32 %14, !dbg !237
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !238 {
entry:
  %retval = alloca i32, align 4
  %inputBuf = alloca [64 x i8], align 16
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [64 x i8]* %inputBuf, metadata !241, metadata !DIExpression()), !dbg !245
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0)), !dbg !246
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0)), !dbg !247
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0)), !dbg !248
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0)), !dbg !249
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0)), !dbg !250
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0)), !dbg !251
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.7, i64 0, i64 0)), !dbg !252
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.8, i64 0, i64 0)), !dbg !253
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.9, i64 0, i64 0)), !dbg !254
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0)), !dbg !255
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0)), !dbg !256
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.12, i64 0, i64 0)), !dbg !257
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0)), !dbg !258
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.14, i64 0, i64 0)), !dbg !259
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.15, i64 0, i64 0)), !dbg !260
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.16, i64 0, i64 0)), !dbg !261
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.17, i64 0, i64 0)), !dbg !262
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.18, i64 0, i64 0)), !dbg !263
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.19, i64 0, i64 0)), !dbg !264
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.20, i64 0, i64 0)), !dbg !265
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.21, i64 0, i64 0)), !dbg !266
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.22, i64 0, i64 0)), !dbg !267
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.23, i64 0, i64 0)), !dbg !268
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.24, i64 0, i64 0)), !dbg !269
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.25, i64 0, i64 0)), !dbg !270
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i64 0, i64 0)), !dbg !271
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0)), !dbg !272
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.28, i64 0, i64 0)), !dbg !273
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.29, i64 0, i64 0)), !dbg !274
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.30, i64 0, i64 0)), !dbg !275
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.31, i64 0, i64 0)), !dbg !276
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i64 0, i64 0)), !dbg !277
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0)), !dbg !278
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.34, i64 0, i64 0)), !dbg !279
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.35, i64 0, i64 0)), !dbg !280
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.36, i64 0, i64 0)), !dbg !281
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.37, i64 0, i64 0)), !dbg !282
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.38, i64 0, i64 0)), !dbg !283
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.39, i64 0, i64 0)), !dbg !284
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0)), !dbg !285
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %inputBuf, i64 0, i64 0, !dbg !286
  %call40 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %arraydecay), !dbg !287
  %arraydecay41 = getelementptr inbounds [64 x i8], [64 x i8]* %inputBuf, i64 0, i64 0, !dbg !288
  %call42 = call i32 @check(i8* %arraydecay41), !dbg !290
  %cmp = icmp eq i32 %call42, 0, !dbg !291
  br i1 %cmp, label %if.then, label %if.else, !dbg !292

if.then:                                          ; preds = %entry
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.42, i64 0, i64 0)), !dbg !293
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.43, i64 0, i64 0)), !dbg !295
  br label %if.end, !dbg !296

if.else:                                          ; preds = %entry
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.44, i64 0, i64 0)), !dbg !297
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.45, i64 0, i64 0)), !dbg !299
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !300
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "key1", scope: !2, file: !3, line: 6, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "wyvern.c", directory: "/home/sasha/WorkingDirectory/dreamhack/VHC_CTF_2023/rev/L33t L3th4l V0rt3x M0n5t3r")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!0, !10, !16, !18, !20}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "key2", scope: !2, file: !3, line: 7, type: !12, isLocal: false, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 48, elements: !14)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{!15}
!15 = !DISubrange(count: 6)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "key3", scope: !2, file: !3, line: 8, type: !12, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "key4", scope: !2, file: !3, line: 9, type: !12, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "flag", scope: !2, file: !3, line: 10, type: !22, isLocal: false, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 16)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 10.0.0-4ubuntu1 "}
!29 = distinct !DISubprogram(name: "encode", scope: !3, file: !3, line: 12, type: !30, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{!6, !32, !33}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "inputBuf", arg: 1, scope: !29, file: !3, line: 12, type: !32)
!35 = !DILocation(line: 12, column: 39, scope: !29)
!36 = !DILocalVariable(name: "bufLen", arg: 2, scope: !29, file: !3, line: 12, type: !33)
!37 = !DILocation(line: 12, column: 53, scope: !29)
!38 = !DILocalVariable(name: "cipherLen", scope: !29, file: !3, line: 14, type: !33)
!39 = !DILocation(line: 14, column: 9, scope: !29)
!40 = !DILocation(line: 14, column: 21, scope: !29)
!41 = !DILocation(line: 14, column: 28, scope: !29)
!42 = !DILocalVariable(name: "myCipher", scope: !29, file: !3, line: 15, type: !6)
!43 = !DILocation(line: 15, column: 21, scope: !29)
!44 = !DILocation(line: 15, column: 56, scope: !29)
!45 = !DILocation(line: 15, column: 66, scope: !29)
!46 = !DILocation(line: 15, column: 49, scope: !29)
!47 = !DILocation(line: 15, column: 32, scope: !29)
!48 = !DILocation(line: 17, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !29, file: !3, line: 17, column: 9)
!50 = !DILocation(line: 17, column: 18, scope: !49)
!51 = !DILocation(line: 17, column: 9, scope: !29)
!52 = !DILocation(line: 18, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !3, line: 17, column: 27)
!54 = !DILocation(line: 18, column: 9, scope: !53)
!55 = !DILocation(line: 19, column: 9, scope: !53)
!56 = !DILocalVariable(name: "i", scope: !57, file: !3, line: 22, type: !33)
!57 = distinct !DILexicalBlock(scope: !29, file: !3, line: 22, column: 5)
!58 = !DILocation(line: 22, column: 14, scope: !57)
!59 = !DILocalVariable(name: "j", scope: !57, file: !3, line: 22, type: !33)
!60 = !DILocation(line: 22, column: 21, scope: !57)
!61 = !DILocation(line: 22, column: 10, scope: !57)
!62 = !DILocation(line: 22, column: 28, scope: !63)
!63 = distinct !DILexicalBlock(scope: !57, file: !3, line: 22, column: 5)
!64 = !DILocation(line: 22, column: 32, scope: !63)
!65 = !DILocation(line: 22, column: 30, scope: !63)
!66 = !DILocation(line: 22, column: 5, scope: !57)
!67 = !DILocation(line: 23, column: 24, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !3, line: 22, column: 56)
!69 = !DILocation(line: 23, column: 33, scope: !68)
!70 = !DILocation(line: 23, column: 36, scope: !68)
!71 = !DILocation(line: 23, column: 44, scope: !68)
!72 = !DILocation(line: 23, column: 53, scope: !68)
!73 = !DILocation(line: 23, column: 55, scope: !68)
!74 = !DILocation(line: 23, column: 42, scope: !68)
!75 = !DILocation(line: 23, column: 23, scope: !68)
!76 = !DILocation(line: 23, column: 9, scope: !68)
!77 = !DILocation(line: 23, column: 18, scope: !68)
!78 = !DILocation(line: 23, column: 21, scope: !68)
!79 = !DILocation(line: 24, column: 28, scope: !68)
!80 = !DILocation(line: 24, column: 37, scope: !68)
!81 = !DILocation(line: 24, column: 39, scope: !68)
!82 = !DILocation(line: 24, column: 44, scope: !68)
!83 = !DILocation(line: 24, column: 52, scope: !68)
!84 = !DILocation(line: 24, column: 61, scope: !68)
!85 = !DILocation(line: 24, column: 63, scope: !68)
!86 = !DILocation(line: 24, column: 50, scope: !68)
!87 = !DILocation(line: 24, column: 27, scope: !68)
!88 = !DILocation(line: 24, column: 9, scope: !68)
!89 = !DILocation(line: 24, column: 18, scope: !68)
!90 = !DILocation(line: 24, column: 20, scope: !68)
!91 = !DILocation(line: 24, column: 25, scope: !68)
!92 = !DILocation(line: 25, column: 5, scope: !68)
!93 = !DILocation(line: 22, column: 42, scope: !63)
!94 = !DILocation(line: 22, column: 50, scope: !63)
!95 = !DILocation(line: 22, column: 5, scope: !63)
!96 = distinct !{!96, !66, !97}
!97 = !DILocation(line: 25, column: 5, scope: !57)
!98 = !DILocation(line: 27, column: 12, scope: !29)
!99 = !DILocation(line: 27, column: 5, scope: !29)
!100 = distinct !DISubprogram(name: "encrypt1", scope: !3, file: !3, line: 30, type: !101, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !32, !32, !33, !33, !33}
!103 = !DILocalVariable(name: "inputBuf", arg: 1, scope: !100, file: !3, line: 30, type: !32)
!104 = !DILocation(line: 30, column: 30, scope: !100)
!105 = !DILocalVariable(name: "key", arg: 2, scope: !100, file: !3, line: 30, type: !32)
!106 = !DILocation(line: 30, column: 55, scope: !100)
!107 = !DILocalVariable(name: "start", arg: 3, scope: !100, file: !3, line: 30, type: !33)
!108 = !DILocation(line: 30, column: 64, scope: !100)
!109 = !DILocalVariable(name: "end", arg: 4, scope: !100, file: !3, line: 30, type: !33)
!110 = !DILocation(line: 30, column: 75, scope: !100)
!111 = !DILocalVariable(name: "step", arg: 5, scope: !100, file: !3, line: 30, type: !33)
!112 = !DILocation(line: 30, column: 84, scope: !100)
!113 = !DILocalVariable(name: "counter", scope: !100, file: !3, line: 31, type: !33)
!114 = !DILocation(line: 31, column: 9, scope: !100)
!115 = !DILocalVariable(name: "i", scope: !116, file: !3, line: 33, type: !33)
!116 = distinct !DILexicalBlock(scope: !100, file: !3, line: 33, column: 5)
!117 = !DILocation(line: 33, column: 14, scope: !116)
!118 = !DILocation(line: 33, column: 18, scope: !116)
!119 = !DILocation(line: 33, column: 10, scope: !116)
!120 = !DILocation(line: 33, column: 25, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !3, line: 33, column: 5)
!122 = !DILocation(line: 33, column: 30, scope: !121)
!123 = !DILocation(line: 33, column: 27, scope: !121)
!124 = !DILocation(line: 33, column: 5, scope: !116)
!125 = !DILocalVariable(name: "temp", scope: !126, file: !3, line: 34, type: !127)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 33, column: 46)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DILocation(line: 34, column: 14, scope: !126)
!129 = !DILocation(line: 34, column: 21, scope: !126)
!130 = !DILocation(line: 34, column: 25, scope: !126)
!131 = !DILocation(line: 35, column: 24, scope: !126)
!132 = !DILocation(line: 35, column: 33, scope: !126)
!133 = !DILocation(line: 35, column: 9, scope: !126)
!134 = !DILocation(line: 35, column: 13, scope: !126)
!135 = !DILocation(line: 35, column: 22, scope: !126)
!136 = !DILocation(line: 36, column: 23, scope: !126)
!137 = !DILocation(line: 36, column: 9, scope: !126)
!138 = !DILocation(line: 36, column: 18, scope: !126)
!139 = !DILocation(line: 36, column: 21, scope: !126)
!140 = !DILocation(line: 38, column: 24, scope: !126)
!141 = !DILocation(line: 38, column: 28, scope: !126)
!142 = !DILocation(line: 38, column: 9, scope: !126)
!143 = !DILocation(line: 38, column: 18, scope: !126)
!144 = !DILocation(line: 38, column: 21, scope: !126)
!145 = !DILocation(line: 39, column: 20, scope: !126)
!146 = !DILocation(line: 39, column: 28, scope: !126)
!147 = !DILocation(line: 39, column: 33, scope: !126)
!148 = !DILocation(line: 39, column: 17, scope: !126)
!149 = !DILocation(line: 40, column: 5, scope: !126)
!150 = !DILocation(line: 33, column: 40, scope: !121)
!151 = !DILocation(line: 33, column: 37, scope: !121)
!152 = !DILocation(line: 33, column: 5, scope: !121)
!153 = distinct !{!153, !124, !154}
!154 = !DILocation(line: 40, column: 5, scope: !116)
!155 = !DILocation(line: 41, column: 1, scope: !100)
!156 = distinct !DISubprogram(name: "encrypt2", scope: !3, file: !3, line: 43, type: !101, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!157 = !DILocalVariable(name: "inputBuf", arg: 1, scope: !156, file: !3, line: 43, type: !32)
!158 = !DILocation(line: 43, column: 30, scope: !156)
!159 = !DILocalVariable(name: "key", arg: 2, scope: !156, file: !3, line: 43, type: !32)
!160 = !DILocation(line: 43, column: 55, scope: !156)
!161 = !DILocalVariable(name: "start", arg: 3, scope: !156, file: !3, line: 43, type: !33)
!162 = !DILocation(line: 43, column: 64, scope: !156)
!163 = !DILocalVariable(name: "end", arg: 4, scope: !156, file: !3, line: 43, type: !33)
!164 = !DILocation(line: 43, column: 75, scope: !156)
!165 = !DILocalVariable(name: "step", arg: 5, scope: !156, file: !3, line: 43, type: !33)
!166 = !DILocation(line: 43, column: 84, scope: !156)
!167 = !DILocalVariable(name: "counter", scope: !156, file: !3, line: 44, type: !33)
!168 = !DILocation(line: 44, column: 9, scope: !156)
!169 = !DILocalVariable(name: "i", scope: !170, file: !3, line: 46, type: !33)
!170 = distinct !DILexicalBlock(scope: !156, file: !3, line: 46, column: 5)
!171 = !DILocation(line: 46, column: 14, scope: !170)
!172 = !DILocation(line: 46, column: 18, scope: !170)
!173 = !DILocation(line: 46, column: 10, scope: !170)
!174 = !DILocation(line: 46, column: 25, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 46, column: 5)
!176 = !DILocation(line: 46, column: 30, scope: !175)
!177 = !DILocation(line: 46, column: 27, scope: !175)
!178 = !DILocation(line: 46, column: 5, scope: !170)
!179 = !DILocation(line: 47, column: 24, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !3, line: 46, column: 46)
!181 = !DILocation(line: 47, column: 28, scope: !180)
!182 = !DILocation(line: 47, column: 9, scope: !180)
!183 = !DILocation(line: 47, column: 18, scope: !180)
!184 = !DILocation(line: 47, column: 21, scope: !180)
!185 = !DILocation(line: 48, column: 20, scope: !180)
!186 = !DILocation(line: 48, column: 28, scope: !180)
!187 = !DILocation(line: 48, column: 33, scope: !180)
!188 = !DILocation(line: 48, column: 17, scope: !180)
!189 = !DILocation(line: 49, column: 5, scope: !180)
!190 = !DILocation(line: 46, column: 40, scope: !175)
!191 = !DILocation(line: 46, column: 37, scope: !175)
!192 = !DILocation(line: 46, column: 5, scope: !175)
!193 = distinct !{!193, !178, !194}
!194 = !DILocation(line: 49, column: 5, scope: !170)
!195 = !DILocation(line: 50, column: 1, scope: !156)
!196 = distinct !DISubprogram(name: "check", scope: !3, file: !3, line: 53, type: !197, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!197 = !DISubroutineType(types: !198)
!198 = !{!33, !32}
!199 = !DILocalVariable(name: "inputBuf", arg: 1, scope: !196, file: !3, line: 53, type: !32)
!200 = !DILocation(line: 53, column: 27, scope: !196)
!201 = !DILocalVariable(name: "bufLen", scope: !196, file: !3, line: 55, type: !33)
!202 = !DILocation(line: 55, column: 9, scope: !196)
!203 = !DILocation(line: 55, column: 25, scope: !196)
!204 = !DILocation(line: 55, column: 18, scope: !196)
!205 = !DILocation(line: 57, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !196, file: !3, line: 57, column: 9)
!207 = !DILocation(line: 57, column: 16, scope: !206)
!208 = !DILocation(line: 57, column: 20, scope: !206)
!209 = !DILocation(line: 57, column: 9, scope: !196)
!210 = !DILocation(line: 59, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 58, column: 5)
!212 = !DILocation(line: 62, column: 14, scope: !196)
!213 = !DILocation(line: 62, column: 33, scope: !196)
!214 = !DILocation(line: 62, column: 5, scope: !196)
!215 = !DILocation(line: 63, column: 14, scope: !196)
!216 = !DILocation(line: 63, column: 30, scope: !196)
!217 = !DILocation(line: 63, column: 37, scope: !196)
!218 = !DILocation(line: 63, column: 5, scope: !196)
!219 = !DILocation(line: 64, column: 14, scope: !196)
!220 = !DILocation(line: 64, column: 33, scope: !196)
!221 = !DILocation(line: 64, column: 5, scope: !196)
!222 = !DILocation(line: 65, column: 14, scope: !196)
!223 = !DILocation(line: 65, column: 33, scope: !196)
!224 = !DILocation(line: 65, column: 5, scope: !196)
!225 = !DILocalVariable(name: "myCipher", scope: !196, file: !3, line: 66, type: !6)
!226 = !DILocation(line: 66, column: 21, scope: !196)
!227 = !DILocation(line: 66, column: 39, scope: !196)
!228 = !DILocation(line: 66, column: 49, scope: !196)
!229 = !DILocation(line: 66, column: 32, scope: !196)
!230 = !DILocation(line: 68, column: 16, scope: !231)
!231 = distinct !DILexicalBlock(scope: !196, file: !3, line: 68, column: 9)
!232 = !DILocation(line: 68, column: 9, scope: !231)
!233 = !DILocation(line: 68, column: 9, scope: !196)
!234 = !DILocation(line: 70, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !231, file: !3, line: 69, column: 5)
!236 = !DILocation(line: 73, column: 5, scope: !196)
!237 = !DILocation(line: 74, column: 1, scope: !196)
!238 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !239, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!239 = !DISubroutineType(types: !240)
!240 = !{!33}
!241 = !DILocalVariable(name: "inputBuf", scope: !238, file: !3, line: 77, type: !242)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 64)
!245 = !DILocation(line: 77, column: 19, scope: !238)
!246 = !DILocation(line: 78, column: 5, scope: !238)
!247 = !DILocation(line: 79, column: 5, scope: !238)
!248 = !DILocation(line: 80, column: 5, scope: !238)
!249 = !DILocation(line: 81, column: 5, scope: !238)
!250 = !DILocation(line: 82, column: 5, scope: !238)
!251 = !DILocation(line: 83, column: 5, scope: !238)
!252 = !DILocation(line: 84, column: 5, scope: !238)
!253 = !DILocation(line: 85, column: 5, scope: !238)
!254 = !DILocation(line: 86, column: 5, scope: !238)
!255 = !DILocation(line: 87, column: 5, scope: !238)
!256 = !DILocation(line: 88, column: 5, scope: !238)
!257 = !DILocation(line: 89, column: 5, scope: !238)
!258 = !DILocation(line: 90, column: 5, scope: !238)
!259 = !DILocation(line: 91, column: 5, scope: !238)
!260 = !DILocation(line: 92, column: 5, scope: !238)
!261 = !DILocation(line: 93, column: 5, scope: !238)
!262 = !DILocation(line: 94, column: 5, scope: !238)
!263 = !DILocation(line: 95, column: 5, scope: !238)
!264 = !DILocation(line: 96, column: 5, scope: !238)
!265 = !DILocation(line: 97, column: 5, scope: !238)
!266 = !DILocation(line: 98, column: 5, scope: !238)
!267 = !DILocation(line: 99, column: 5, scope: !238)
!268 = !DILocation(line: 100, column: 5, scope: !238)
!269 = !DILocation(line: 101, column: 5, scope: !238)
!270 = !DILocation(line: 102, column: 5, scope: !238)
!271 = !DILocation(line: 103, column: 5, scope: !238)
!272 = !DILocation(line: 104, column: 5, scope: !238)
!273 = !DILocation(line: 105, column: 5, scope: !238)
!274 = !DILocation(line: 106, column: 5, scope: !238)
!275 = !DILocation(line: 107, column: 5, scope: !238)
!276 = !DILocation(line: 108, column: 5, scope: !238)
!277 = !DILocation(line: 109, column: 5, scope: !238)
!278 = !DILocation(line: 110, column: 5, scope: !238)
!279 = !DILocation(line: 111, column: 5, scope: !238)
!280 = !DILocation(line: 112, column: 5, scope: !238)
!281 = !DILocation(line: 113, column: 5, scope: !238)
!282 = !DILocation(line: 115, column: 5, scope: !238)
!283 = !DILocation(line: 116, column: 5, scope: !238)
!284 = !DILocation(line: 117, column: 5, scope: !238)
!285 = !DILocation(line: 119, column: 5, scope: !238)
!286 = !DILocation(line: 122, column: 17, scope: !238)
!287 = !DILocation(line: 122, column: 5, scope: !238)
!288 = !DILocation(line: 124, column: 15, scope: !289)
!289 = distinct !DILexicalBlock(scope: !238, file: !3, line: 124, column: 9)
!290 = !DILocation(line: 124, column: 9, scope: !289)
!291 = !DILocation(line: 124, column: 25, scope: !289)
!292 = !DILocation(line: 124, column: 9, scope: !238)
!293 = !DILocation(line: 126, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !3, line: 125, column: 5)
!295 = !DILocation(line: 127, column: 9, scope: !294)
!296 = !DILocation(line: 128, column: 5, scope: !294)
!297 = !DILocation(line: 131, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !3, line: 130, column: 5)
!299 = !DILocation(line: 132, column: 9, scope: !298)
!300 = !DILocation(line: 135, column: 5, scope: !238)
