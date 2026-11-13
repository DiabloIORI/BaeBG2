BEGIN ZDBAE25

// Summon Dialogue
IF ~Global("ZDBAE25Summoned","GLOBAL",1)~ ZDBAE25_1
    SAY ~啊！这翻涌的暗影、这刺鼻的气味……管它是哪儿呢。<CHARNAME>，劳驾告诉我，我是不是一头闯进了什么混沌位面？~
    ++ ~也说不上差得太远。这是我的口袋位面，贝洛斯，我需要你帮忙。~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_2
    ++ ~归队，卓尔。路上我再解释。~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_3
    ++ ~待在这儿。回头我会用上你的本事。~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",2)~ + ZDBAE25_3_1
END

IF ~~ ZDBAE25_2
    SAY ~我离一桩宇宙级的契约只差片刻——那可是既狡诈又残酷的协定——你却异想天开地把我硬拽了来。真是麻烦得要命！~
    IF ~~ THEN REPLY ~我并不知情。可若我们一起上路，我会补偿你的损失。~ GOTO ZDBAE25_4
    IF ~~ THEN REPLY ~我没工夫陪你演戏。待在这儿，我回头再来找你。~ GOTO ZDBAE25_3_1
END

IF ~~ ZDBAE25_3
    SAY ~好吧，我就以我的光彩，为你们这支寒酸的队伍增辉。~
    IF ~~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ ZDBAE25_4
    SAY ~你当然该如此。好吧，我就以我的光彩，为你们这支寒酸的队伍增辉。~
    IF ~~ DO ~SetGlobal("ZDBAE25Summoned","GLOBAL",3) JoinParty()~ EXIT
END

IF ~~ ZDBAE25_3_1
    SAY ~你竟敢把我关在这毫无光彩的巢穴里？哦，好吧，可你要知道，我很恼火。~
    IF ~~ DO ~MoveToPointNoInterrupt([1517.1517]) Face(1)~ EXIT
END

// Join Dialogue
IF ~Global("ZDBAE25Summoned","GLOBAL",2)~ THEN BEGIN ZDBAE25_5
    SAY ~你总算回心转意了？我这一身本事，在这沉闷的地界简直是可悲的浪费。~
    IF ~~ THEN REPLY ~我需要你的本事，贝洛斯，加入我。~ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
    IF ~~ THEN REPLY ~再等一会儿。~ GOTO ZDBAE25_6
END

IF ~~ ZDBAE25_6
    SAY ~这桩乏味的小事，我暂且忍着——不过我的耐心有限。~
    IF ~~ EXIT
END
