BEGIN ZDBAE25P

// Kickout Dialogue
IF ~Global("ZDBAE25KickedOut","GLOBAL",0)~ THEN BEGIN ZDBAEJ1
  SAY ~不！不！不、不、不！别把我丢在这儿，你这蠢透了的混蛋！别让我死在那些白皮肤蛮子手里！~ [ZDBAE52]
  IF ~~ THEN REPLY ~好吧，你的哀叫管用了。你可以留下。~  DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY ~就在这儿等着。回头我或许会来叫你。~ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",1)~ EXIT
END

// Rejoin Dialogue
IF ~Global("ZDBAE25KickedOut","GLOBAL",1)~ THEN BEGIN ZDBAE25_5
    SAY ~你总算回心转意了？我这一身本事，在这沉闷的地界简直是可悲的浪费。~
    IF ~~ THEN REPLY ~我需要你的本事，贝洛斯，加入我。~ DO ~SetGlobal("ZDBAE25KickedOut","GLOBAL",0) JoinParty()~ EXIT
    IF ~~ THEN REPLY ~再等一会儿。~ GOTO ZDBAE25_6
END

IF ~~ ZDBAE25_6
    SAY ~这桩乏味的小事，我暂且忍着——不过我的耐心有限。~
    IF ~~ EXIT
END
