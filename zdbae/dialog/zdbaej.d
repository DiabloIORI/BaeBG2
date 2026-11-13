BEGIN ZDBAEJ

// Real HouseWives of Athkatla
IF ~Global("ZDBaeBoots","GLOBAL",1)~ THEN ZDBAETOSSACOINTOYOURBAELOTH
  SAY ~啊啊，这集市的热闹！小玩意儿、宝贝，还有一大堆勾人的小玩意儿。可惜我的靴子跟着咱们四处游荡，都磨薄了。也许你该花上一两枚金币，好好养护你最珍贵的好伙计？~
  ++ ~你这么大费周章地摆姿态，就为了告诉我你的靴子要散架了！~ + ZDBAEBOOTS1
  ++ ~那我看看给你买双新的吧。~ + ZDBAEBOOTS1
  ++ ~你是来施法的，贝洛斯，不是拿没完没了的废话烦我。~ DO ~SetGlobal("ZDBAEBoots","GLOBAL",2)~ EXIT
END

IF ~Global("ZDBAEBoots","GLOBAL",2)~ ZDBAEBOOTS1
  SAY ~正是如此！还有什么比贝洛斯·巴瑞提尔败在一双破鞋底上更惨的悲剧？~
  IF ~~ DO ~AddJournalEntry(@1000001, QUEST) SetGlobal("ZDBAEBoots","GLOBAL",3)~ EXIT
END

IF ~Global("ZDAuctionTrigger", "GLOBAL", 6)~ ZDBAETRHWOABET
  SAY ~当真？！你那高贵的脑袋里转的是什么数字？~
  IF ~PartyGoldGT(10000)~ REPLY ~一万金币。~ DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",7)~ GOTO ZDBAEBIGMONEY10
  IF ~PartyGoldGT(5000)~ REPLY ~五千金币。~ DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",7)~ GOTO ZDBAEBIGMONEY5
  IF ~PartyGoldGT(2500)~ REPLY ~两千五百金币。~ DO ~SetGlobal("ZDAuctionTrigger","GLOBAL",7)~ GOTO ZDBAEBIGMONEY2.5
  IF ~~ REPLY ~算了，当我什么都没说。~ EXIT
END

IF ~Global("ZDAuctionTrigger","GLOBAL",7)~ ZDBAEBIGMONEY10
  SAY ~哦哦，让我来取悦你. 先生，我出价——一万金币。~
  IF ~~ EXTERN ZDAUCTIO ZDDAUCTIGOT10
END

IF ~Global("ZDAuctionTrigger","GLOBAL",7)~ ZDBAEBIGMONEY5
  SAY ~好极了，让精英们看清点！五千金币！~
  IF ~~ EXTERN ZDAUCTIO ZDDAUCTIGOT5
END

IF ~Global("ZDAuctionTrigger","GLOBAL",7)~ ZDBAEBIGMONEY2.5
  SAY ~啊啊，多么撩人的一笔献金！我出价——两千五百金币。~
  IF ~~ EXTERN ZDAUCTIO ZDDAUCTIGOT5
END

/* Obligatory Celvan Limerick */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAECelvan","AR0300",0)~
THEN CELVAN ZDBAECELV
~他操办黑坑，风光得没边，
术士之里，无人可与他并肩。
可只要他开了口，
从黄昏唠到天明，
你只盼他早早断了那口气。~
DO ~SetGlobal("ZDBAECelvan","AR0300",1)~
== ZDBAEJ ~喔嚯！这游戏两个人也能玩！~
== ZDBAEJ ~区区侏儒口舌伶俐，
想拿我寻个开心。
只要一句玩笑越过界，
我就让你在我的舞台上当主角。
现在滚，不然我就捅下去……~
END CELVAN 1


/* interjections */
// Government District
// Viconia intro
I_C_T VICG1 1 ZDBAEMOB1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~咱们还是先躲开吧，好不好？免得他们那股正气凛然的怒火转过来冲我们。~
END

I_C_T VICG1 2 ZDBAEMOB2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~还得我再说一遍吗，<CHARNAME>？不，不，那可太乏味了。~
END

I_C_T VICG1 5 ZDBAEMOB4
== VICG1 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~看！那边，我又发现一个！~
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~见鬼，真烦。~
== VICG2 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~这事越闹越大了！现在有两个了！~
== VICG1 IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~那入侵算是真来了。~
END

I_C_T VICONI 11 ZDBAEMOB3
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~真麻烦！……不过遭殃的是她，不是我。~
END

// Corneil, Cowled Wizard selling licences
I_C_T CORNEIL 6 ZDBAECORN1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~听这些斗篷法师挥舞他们那一纸空文。施法的执照……多么平庸得叫人难受。我，贝洛斯·巴瑞提尔，早已越过他们那些乏味的藩篱。~
END

// Temple District (AR0900)
// Response: Listen to me, my brothers and sisters... heed my words. We have been chosen as the recipient of a most holy miracle, one that should neither be dismissed nor ignored!
INTERJECT CSGAAL 0 ZDBAEGAAL0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  ~喔嚯嚯嚯嚯！这下有看头了！~
END CSGAAL 1
// Response: I say that the churches lie to you! They claim their gods are present when they do nothing other than require your coin to fill their pockets!
INTERJECT_COPY_TRANS CSGAAL 3 ZDBAEGAAL1
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  ~而我，我说该听我——光耀的贝洛斯！炫目的贝洛斯！贝洛斯……总之，别听这个瞎眼蝙蝠的，不管他那些让人犯迷糊的说辞多么花哨。~
END
// Response: Come, then! Those of you who wish to become the truly faithful, to witness the magnificence of the Unseeing Eye and the truth he brings... come with me!
INTERJECT_COPY_TRANS CSGAAL 10 ZDBAEGAAL10
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
  ~跟他走，走向平庸；跟我走，走向辉煌。当然，由你选。~
END

// Market District
// Circus, Aerie introduction
// Thanks for being vague when telling us you sense something is off, Baeloth
I_C_T AERIE 30 ZDBAECIRC1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~魔网在她周身盘绕旋转。这么乱的纹样，得有个机敏的指挥才行。不过你把我 留 在身边，想必就是这个道理。~
END

// Docks District
// Buy Jaheria a gift (dshop02.d)
// ~<CHARNAME>! You do not need to...
INTERJECT_COPY_TRANS JAHEIRAJ 247 ZDBAEJAHINTER0
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN
~不可，<CHARNAME>，不可！你 万 万 不必如此。说不定你那满袋财宝，更该花在更愉快、更狡黠、更带邪趣的用途上？嗯？比如花在这位胆大又潇洒的卓尔身上——他的魅力就像天穹画卷本身一样摄人心魄？~
  == JAHABOAM IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN ~呃，我看我这儿没有别的能给这位先生了。~
  == ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN ~呸！我竟要被一个秃顶肥硕的中间商小看？何其恶心的荒唐！见鬼！嘘你！先生，愿你遭瘟！~
END

// Spellhold
// Yoshimo's Betrayal
I_C_T YOSHJ 113 ZDBAEYOSB
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ THEN ~按任何卓尔的标准看，都是平庸无奇的背叛。确实又累人又乏味。~
END

// Lonk is dealt with so we're gathering the team & charging Irenicus
I_C_T PLAYER1 15 ZDBAELONK
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE", CD_STATE_NOTVALID)~ ~你放出来的这批炮灰可真不错。那我们就把他们一股脑扔进乱战里？~
END

// Slayer Change
I_C_T PLAYER1 3 ZDBAESLAY1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~好哇！何等野蛮的奇观！我要求加演一场！~
END

// Underdark
// Upon entry, speaking with Carlig, only if Viconia isn't present because we're stealing her drow-language line & reusing it for our own purposes
I_C_T UDDUER01 0 ZDBAECARLIG
== ZDBAEJ IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~Lil waela lueth waela ragar brorna lueth wund nind, kyorlin elghinn! Sarn! Usstan uil Baeloth!~
== UDDUER01 IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~当……当然，贝洛斯大人。我愿为您效劳，任何事都行。~
== UDDUER02 IF ~NumInPartyGT(2) !InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~等等，等等！卡尔利格，他身上没有我知道的任何家族徽记。看看他的同伴！他是个被放逐者！~
== UDDUER02 IF ~!NumInPartyGT(2) !InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~等等，等等！卡尔利格，他身上没有我知道的任何家族徽记。看看他的同伴！他是个被放逐者！~
== UDDUER01 IF ~!InParty("VICONIA")  InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~不直接隶属某个家族的人，可不常从这里过。~
END

// Svirfneblin City Leader
// Once again reusing lines otherwise pulled for Viconia
EXTEND_TOP UDSVIR03 0 // Extend Top bad, I know, not sure if there's a better way to make this work though
IF ~!InParty("VICONIA") InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~
EXTERN UDSVIR03 ZDBAEDUER1
END

CHAIN UDSVIR03 ZDBAEDUER1
~你竟带着一个卓尔的黑暗同行，真叫人惊讶。我无意冒犯，可确实令人惊讶。~
== ZDBAEJ ~你们这些斯维尔夫内布林总爱说些显而易见得过分的废话！我的到来是让你眼花缭乱、满心欢喜？还是让你受了威胁？~
END
IF ~~ DO ~EraseJournalEntry(57761)~ EXTERN UDSVIR03 3

EXTEND_TOP UDSVIR03 16 // Extend Top bad, I know, not sure if there's a better way to make this work though
IF ~!InParty("VICONIA") InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID)~
EXTERN UDSVIR03 ZDBAEDUER2
END

CHAIN UDSVIR03 ZDBAEDUER2
~恕我直言，卓尔大人，我看你身上没戴任何我认得的家族标记。进去对你也未必更好，尤其是带着你现在这些同伴。~
== ZDBAEJ ~侏儒，你低估了我的机敏，也低估了我的人脉。不过说说你那条稳妥的路子吧。~
END
IF ~~ EXTERN UDSVIR03 18

I_C_T UDSVIR03 23 ZDBAEDEUR3
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~那我们要打交道的，就是那位臭名昭著的中间人了？真乏味。~
END

// Svirfneblin Innkeeper
I_C_T UDSVIR04 5 ZDBAEGNOMEINN
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~说得真敏锐。这可怜地方配不上我……不过话说回来，多数地方都配不上。~
END

// Svirfneblin Slaughter
I_C_T UDSVIR08 1 ZDBAEDEEPGNOMES
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~把斯维尔夫内布林砸个稀烂，听着就妙！去杀！~
END

// Elven City
// Tree of Life approach
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("ZDBAE") InMyArea("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) Global("ZDBAETreeOfLife","GLOBAL",0)~
EXTERN PLAYER1 ZDBAETREE1
END

CHAIN PLAYER1 ZDBAETREE1
~贝洛斯·巴瑞提尔，这位卓尔术士，一个意想不到的盟友，曾向你的敌人掷出火焰、倾泻怒火。可他真准备好迎接眼前的战斗了吗？~
DO ~SetGlobal("ZDBAETreeOfLife","GLOBAL",1)~
END
++ ~贝洛斯，我们已是朋友，所以你不必再跟着我了。这不是你的战斗。~ EXTERN ZDBAEJ ZDBAETREE2
++ ~我们可能活不下来。你要是胆小到不敢打完这一仗，就掉头逃吧。~ EXTERN ZDBAEJ  ZDBAETREE2
++ ~快到终局了。我得知道你准备好了。没有回头路。~ EXTERN ZDBAEJ ZDBAETREE2


CHAIN ZDBAEJ ZDBAETREE2
~我正给这些装腔作势的精灵准备一颗格外灼人的火球。他们到底怎么把我的族人逼到地下去的，实在难以理解。~
== ZDBAEJ ~不过，是，是，我听见了。我已决意留下。聚光灯在呼唤，我绝不会错过自己的上场时机！~
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead
I_C_T PLAYER1 16 ZDBAEIREN1
  == ZDBAEJ IF ~InParty("ZDBAE") Range("ZDBAE",15) !StateCheck("ZDBAE",CD_STATE_NOTVALID)~ THEN ~显然，这是迟早的事。有我这般高超的术法，我们的胜利早已注定。……啊！这是什么怪异、不，邪恶的感觉？~
END

// Entering the Hells
I_C_T PLAYER1 25 ZDBAEHELL1
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~地狱，是吗？对下一场致命的决斗来说，这可真是个愉快的开场！~
END

// Battling Irenicus in the Hells
I_C_T HELLJON 7 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~战或逃，你终将倒下！~
END

I_C_T HELLJON 8 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~战或逃，你终将倒下！~
END

I_C_T HELLJON 9 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~战或逃，你终将倒下！~
END

I_C_T HELLJON 10 ZDBAEHELL2
== ZDBAEJ IF ~InParty("ZDBAE") !StateCheck("ZDBAE",CD_STATE_NOTVALID) InMyArea("ZDBAE")~ THEN ~战或逃，你终将倒下！~
END

/* friendship arc */

// 1 - General check-in & check up (shortly after recruitment, pre-Spellhold)
CHAIN IF ~Global("ZDBaeFriendshipTalks","GLOBAL",2)~ THEN ZDBAEJ BAEFT1
  ~铜冠旅店啊，多么被浪费的潜力。一座有名号的竞技场，却没有一位够格的主顾。饥饿人群的咆哮、即将被杀者的惨叫——我的统治本该名扬天下！~
  DO ~SetGlobal("ZDBaeFriendshipTalks","GLOBAL",3) RealSetGlobalTimer("ZDBaeFriendshipTalksTimer","GLOBAL",3600)~
  == ZDBAEJ ~可惜，我重返主持斗技场的凯旋之路戛然而止。不过时运偏爱灵活之人。计划会夭折，可能性却长存！告诉我，<CHARNAME>，是什么任务推动我们这队人前行？~
END
  + ~NumInPartyGT(2)~ + ~爱蒙被斗篷法师掳走了，我们正设法把她救回来。~ EXTERN ZDBAEJ BAEFT1.1
  + ~!NumInPartyGT(2)~ + ~爱蒙被斗篷法师掳走了，我正设法把她救回来。~ EXTERN ZDBAEJ BAEFT1.1
  // Should be OR(2) & also check for SOD completion
  + ~Global("BPINBG","GLOBAL",1)~ + ~我被一个叫艾瑞尼卡斯的法师抓去折磨过。我要找到他，让他为这份狂妄付出代价。~ EXTERN ZDBAEJ BAEFT1.2
  + ~!Global("BPINBG","GLOBAL",1)~ + ~我被一个名叫艾瑞尼卡斯的法师抓去折磨过。我要找到他，让他为这份狂妄付出代价。~ EXTERN ZDBAEJ BAEFT1.3
  ++ ~乖乖跟上就是了，贝洛斯，我没打算解释我的计划。~ EXTERN ZDBAEJ BAEFT1.4

CHAIN ZDBAEJ BAEFT1.1
~那些算计人的斗篷法师？你敢跟他们作对，我为你鼓掌。任何能叫他们难堪的由头，我都乐意拥护。想想看，居然想给我的魔法设限！~
== ZDBAEJ ~哦对，爱蒙。是，是，我们大概也把她一并救出来。~ EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.2
~又被抓了一次？这习惯可太糟，你该改改。不过这位艾瑞尼卡斯倒叫我起了兴趣。他既有力量，又狂妄到敢掳走你？你若想看他受苦，就需要强有力的帮手，当然，还有我辉煌的魔法。~ EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.3
~能燃起你这般复仇之心的，艾瑞尼卡斯想必是个既有权势又满怀恶意的法师。别担心，有我随行，报偿只是时间问题。~ EXTERN ZDBAEJ BFAEFT1.5

CHAIN ZDBAEJ BAEFT1.4
~那就当这场谈话休庭吧。~
END

CHAIN ZDBAEJ BFAEFT1.5
~我把命运押在你身上，选得真是明智。别发愁，我会想个合适的法子让你报答我。有我相伴的乐趣，可是有价钱的。~
END
  + ~!NumInPartyGT(2)~ + ~贝洛斯，你能自由行走，全因我的庇护。~ EXTERN ZDBAEJ BAEFT1.6
  + ~NumInPartyGT(2)~ + ~贝洛斯，你能自由行走，全因我们的庇护。~ EXTERN ZDBAEJ BAEFT1.6
  ++ ~从你嘴里，我还能指望别的什么。~ EXTERN ZDBAEJ BAEFT1.6
  ++ ~你再提要求，我就把你塞进铜冠旅店的笼子里去。~ EXTERN ZDBAEJ BAEFT1.6
  ++ ~那我猜，你的沉默是我负担不起的奢侈品了？~ EXTERN ZDBAEJ BAEFT1.6

CHAIN ZDBAEJ BAEFT1.6
~好了，出发！我懒得再说话，只想找点别的戏码过过瘾！~
END
