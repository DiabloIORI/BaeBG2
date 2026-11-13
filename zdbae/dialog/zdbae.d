BEGIN ZDBAE

// Joining dialogue
IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_BEGIN","GLOBAL",0) Global("ZDBAE_SHUTUP","GLOBAL",0)~ THEN BEGIN ZDBAE1
  SAY ~好呀，好呀，好呀，我们眼前这又是什么稀奇古怪的奇景？又一张淹没在芸芸平庸之辈里的面孔。你正站在难以言喻的艺人贝洛斯面前。~
  IF ~~ THEN REPLY ~幸会，我是<CHARNAME>。~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE2
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY ~贝洛斯，我们以前一起旅行过。你总该记得我吧？~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE3
  IF ~Global("BA_BEGIN","GLOBAL",1)~ THEN REPLY ~这不是我最不待见的自大狂吗。你不记得我了，卓尔？~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1)~ GOTO ZDBAE3
  IF ~~ THEN REPLY ~不管你在打什么鬼主意，我都不掺和。~ DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",1) SetGlobal("ZDBAE_SHUTUP","GLOBAL",1)~ GOTO ZDBAEFU
END

IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_BEGIN","GLOBAL",1) Global("ZDBAE_SHUTUP","GLOBAL",1)~ THEN BEGIN ZDBAES
  SAY @6 // ~呃？你 想 要 什 么？~ [zdbaef]
  IF ~~ THEN REPLY ~我用得上你的本事。也许你愿意加入我？~ GOTO ZDBAE5
  IF ~~ THEN REPLY ~我要你死，卓尔！~ DO ~SetGlobal("ZDBAE_REVEAL","GLOBAL",1)~ GOTO ZDBAE100
  IF ~~ THEN REPLY ~我对你那套耍猴戏不感兴趣。~ GOTO ZDBAEC
END

// Confused
IF ~~ BEGIN ZDBAEC
  SAY ~可是，可是——我那马与狼的滑稽歌舞大戏吸引着各地卓尔名流！总之，等你厌倦了这些乏味的拒绝，我还留在这儿。~
  IF ~~ THEN EXIT
END

// Hello
IF ~~ THEN BEGIN ZDBAE2
  SAY ~<CHARNAME>，告诉我，这就是你们所谓的变态娱乐？可怜！演得真烂！可悲！多么微不足道的一场坑斗。~
  IF ~~ THEN REPLY ~你若想要真正的娱乐，也许可以考虑加入我？~ GOTO ZDBAE5
  IF ~~ THEN REPLY ~我可没耐心听这些废话。~ DO ~SetGlobal("ZDBAE_SHUTUP","GLOBAL",1)~ GOTO ZDBAEFU
END

IF ~~ THEN BEGIN ZDBAEFU
  SAY ~我保证，那是你的损失！~
  IF ~~ THEN EXIT
END

// Remember
IF ~~ THEN BEGIN ZDBAE3
  SAY ~啊，当然！谁能忘记一张如你这般……精巧独特的面孔？总之请放心，我绝不会错过有你相伴的愉快乐趣，沉醉在那份荣耀之中，也就是……我。~
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY ~你该记得的。毕竟，我曾是你的冠军。~ GOTO ZDBAE4
  IF ~~ THEN REPLY ~你压根不记得我了，是吧？~ GOTO ZDBAE4
END

IF ~~ THEN BEGIN ZDBAE4
  SAY ~我欢乐的伙伴，别在细枝末节上绕圈子。我可是位有见识、品味绝妙的潇洒卓尔！~
  IF ~~ THEN REPLY ~我看你的本事或许有用。也许你会考虑加入我？~ GOTO ZDBAE5
  IF ~~ THEN REPLY ~我不需要你作伴，贝洛斯。~ GOTO ZDBAEFU
END

// Reject
IF ~~ THEN BEGIN ZDBAE5
  SAY ~不，不，不。我渴望的是辉煌与场面，不是跟……你刚说你叫什么来着？跟那帮寻常乌合之众厮混。你该做的，是亲眼看着这座竞技场落入我耀眼无匹的统治之下！~
  IF ~~ THEN GOTO ZDBAE7
END

// Reveal
IF ~~ THEN BEGIN ZDBAE7
  SAY ~看哪！你们的 艺 人 ！~
  IF ~~ THEN DO ~SetGlobal("ZDBAE_BEGIN","GLOBAL",2) SetGlobal("ZDBAE_REVEAL","GLOBAL",1)~ EXIT
END

// Rescue
IF ~!Global("ZDBAE_HOSTILE","GLOBAL",1) Global("ZDBAE_REVEAL","GLOBAL",2)~ THEN BEGIN ZDBAE8
  SAY ~再想一想，我改主意了。我终究还是要加入你这人多势众的队伍。这些误入歧途的群众似乎相当不明真相，你不觉得吗？我们快走吧，免得“辉煌的贝洛斯”落成“挨揍的贝洛斯”。~
  IF ~~ THEN REPLY ~我接受这个松散的前提；但愿你的牙口跟你的大话一样厉害。~ GOTO ZDBAE11
  IF ~~ THEN REPLY ~我想看这些人怎么收拾你，会让我更开心。~ GOTO ZDBAE100
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY ~我对你信任很薄，但为了你的法术，我忍你同行。~ GOTO ZDBAE11
  IF ~Global("BA_ATTACKED","LOCALS",1)~ THEN REPLY ~我们上回一起旅行，对你来说结局可不好。~ GOTO ZDBAE10
END

// Uncertain
IF ~~ THEN BEGIN ZDBAE10
  SAY ~过去的事就让它过去吧，俗话说得好，嗯？~
  IF ~~ THEN REPLY ~我对你信任很薄，但为了你的法术，我忍你同行。~ GOTO ZDBAE11
  IF ~~ THEN REPLY ~我想看这些人怎么收拾你，会让我更开心。~ GOTO ZDBAE100
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY ~你曾把我困在你的坑里，贝洛斯。看看你在这座坑里表现如何。~ GOTO ZDBAE100
END

// Joins
IF ~~ THEN BEGIN ZDBAE11
  SAY ~那就轻快些跟上，我这位撞上好运的搭档！我们有一场盛大的演出要上演：众人将为贝洛斯的魔法惊叹！~
  IF ~~ THEN DO ~SetGlobal("ZDBAE_JOINED","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN ZDBAE100
  SAY @50 // ~哦， 拜 托 ！~ [zdbae54]
  IF ~~ THEN DO ~
    SetGlobal("ZDBAE_HOSTILE","GLOBAL",1)
    ActionOverride("ZDBAE",ChangeAIScript("mage18c",CLASS))
    Enemy()~ EXIT
END

// Copper Coronet (AR0406)
// Response: If I may have your attention once again, gentlefolk of Athkatla! Lehtinan is proud to provide for your amusement once again! Bring your attention to the pit as we see two combatants fighting for their very lives!
INTERJECT ANNO1 0 ZDBAEINTRO0
  == ZDBAE IF ~~ THEN
  ~喔嚯嚯嚯嚯！这下有看头了！~
END ANNO1 1
