BEGIN ZDBAEB

// Aerie 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEAerie1","GLOBAL",0)~
THEN BAERIE ZDBAEAerie1
~贝洛斯，你的法术……非常强大。你就不曾担心它们会招来什么浩劫吗？~
DO ~SetGlobal("ZDBAEAerie1","GLOBAL",1)~
== ZDBAEB ~浩劫？哈！那些欣赏不来我魔法表演中那催眠般飓风的人，我何必为他们操心？~
== BAERIE ~我……我只是觉得我们该小心些。魔法不是可以随便对待的东西。一颗乱飞的火球很容易伤到人。~
== BAERIE ~我们该把力量用在正事上。去保护、治疗、帮助他人。~
== ZDBAEB ~你要限制自己就限制吧，可我不会。我的力量像奔腾的大河，不是什么秀气的小溪。~
EXIT

// Anomen 1, Lawful Neutral, hasn't been knighted
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",LAWFUL_NEUTRAL)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
~这回又是什么，贝洛斯？又要拿我开个小小的玩笑？~
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB ~玩笑？不，我这位道貌岸然的扈从。是提问！~
== BANOMEN ~哼。问吧，问完就完事。~
== ZDBAEB ~是青春期哪种幻痛，把你推上这条自命不凡的圣武士之路？~
== BANOMEN ~绝没有你暗示的那么不堪！我只想证明自己的价值，做一个不因境遇而折断的男子。~
== ZDBAEB ~可你信的，是套着绳索、立着律法的教派。你求独立，可每一条新戒律都在削它。~
== ZDBAEB ~你再踏错一步，他们就会把你的位阶、徽服、敬意，连你那位主顾，一并剥个干净。~
== BANOMEN ~够了！我不想再听你这些恶心的言论！到别处去散播你的亵渎吧！~
== BKELDOR IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID) InParty("KELDORN")~ THEN ~冷静，阿诺门。这卓尔说得刻薄，可话里有真意。我们的教团确然严苛，但最沉重的担子是为了众人的福祉而挑。纪律给了我们保护无助者的力量。~
== BANOMEN IF ~!StateCheck("KELDORN", CD_STATE_NOTVALID) InParty("KELDORN")~ THEN ~当然，凯尔东爵士。多谢您的指引。~
== ZDBAEB ~啊，好高尚，可脑子里只有个“贵”字。我是说——心胸窄到只剩“贵”。~
EXIT

// Anomen 1, Lawful Good, knighted
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",LAWFUL_GOOD)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
~这回又是什么，贝洛斯？又要拿我开个小小的玩笑？~
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB ~玩笑？不，我这条守序的膝下犬。是提问！~
== BANOMEN ~我能感到你的恶意。省省你的口水，卓尔。我是海姆的骑士，誓守职责与荣誉。~
== ZDBAEB ~真敏感，真乏味到极点。好吧，我把这份逗趣挪到别处去。~
EXIT

// Anomen 1, Chaotic Neutral, failed test
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("ANOMEN")
    See("ANOMEN")
    !StateCheck("ANOMEN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Alignment("Anomen",CHAOTIC_NEUTRAL)
    Global("ZDBAEAnomen1","GLOBAL",0)~
THEN BANOMEN ZDBAEAnomen1
~这回又是什么，贝洛斯？又要拿我开个小小的玩笑？~
DO ~SetGlobal("ZDBAEAnomen1","GLOBAL",1)~
== ZDBAEB ~玩笑？不，我这位满怀苦闷的难兄难弟。纯属好奇！告诉我，是青春期哪种幻痛，驱使你去侍奉那帮自命不凡的圣武士？~
== BANOMEN ~你以为我还敬重他们？我唾弃他们的誓约！他们管绝对服从叫纪律，可那不过是条拴狗绳。~
== ZDBAEB ~……一处狗舍，一个教派，一座关懦夫的笼子。~
== BANOMEN ~是啊。让他们被自己的骄傲噎死，愿他们那套宝贝戒律把他们全都勒死。~
== ZDBAEB ~戴镣的扈从终于卸下了锁链！~
EXIT

// Cernd 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAECernd1","GLOBAL",0)~
THEN BCERND ZDBAECernd1
~我在想，贝洛斯，自然在幽暗地域深处是什么模样？~
DO ~SetGlobal("ZDBAECernd1","GLOBAL",1)~
== ZDBAEB ~是黑暗中发光的菌菇森林，是一口吞掉蠢货的石头洞窟。~
== ZDBAEB ~那片地界里每个活物都渴求征服。在幽暗地域活下来，就等于屠杀！~
== BCERND ~你满口暴力与纷争。你真觉得这些是自然之理？~
== ZDBAEB ~地表的树木为了阳光互相绞杀。野兽为血、或只为无聊而厮打。至于文明？呸！一层薄薄的门面，一露出饥荒的影子就被扒光。~
== ZDBAEB ~若自然不是冲突，又是什么，嗯？~
EXIT

// Dorn 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("DORN")
    See("DORN")
    !StateCheck("DORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEDorn1","GLOBAL",0)~
THEN DORNJ ZDBAEDorn1
~卓尔，你干吗非要来烦我？~
DO ~SetGlobal("ZDBAEDorn1","GLOBAL",1)~
== ZDBAEB ~啊，我想探明你的志向。你到底想要什么，多恩·伊尔汗？~
== DORNJ ~血。力量。复仇。~
== ZDBAEB ~好一个勾人的三合一！也许我们优先之事正相合？我提议让您在竞技场中大展身手——由我，伟大的艺人贝洛斯，亲自张罗并捧场！~
== DORNJ ~一坑的鼠辈和半吊子拳手？呸！我要的是配得上被杀的对手。~
== ZDBAEB ~我会找到他们的，我这位披甲的伙伴——等我的、呃——产业恢复往日辉煌之后！~
== DORNJ ~那就等你拿得出言语之外的东西再来找我。替空口许诺杀人，我已经杀烦了。~
EXIT

// Edwin 1, setting up the beginning of their rivalry, Baeloth needs to *know* Edwin can't help him so he can tease the HECK out of him instead
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("EDWIN",MALE)
    InParty("EDWIN")
    See("EDWIN")
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin1","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin1
~看哪！声名远扬、光华最盛的红袍法师！~
DO ~SetGlobal("ZDBAEEdwin1","GLOBAL",1)~
== BEDWIN ~是，是，贝洛斯。认出我的天才，是我对这队人最低的期待。（他这会儿又在打什么主意？）~
== ZDBAEB ~我 听 得 见 你 说 话 ！~
== BEDWIN ~不，你听不见！~
== ZDBAEB ~不管怎样，我做研究时就查明，塞尔有一座费伦最上等的斗技场。我很想请人引荐。以你的地位，总该办得到吧？~
== BEDWIN ~我凭什么要理你这点小要求？~
== ZDBAEB ~我自己也颇有奥术本事，还有多年把奴隶拽回服从的经验，甚至让他们决斗到死！真的，我可以分享些诀窍！~
== BEDWIN ~哼。也许吧。这主意有点……潜力。给我点好处，我或许会考虑。（该死的失宠！这样的机会可不常有……）~
== ZDBAEB ~啊，失宠了，是吗？~
== BEDWIN ~闭嘴，卓尔，我没兴趣再纵着你！~
EXIT

// Haer'dalis 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HAERDALIS")
    See("HAERDALIS")
    !StateCheck("HAERDALIS", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEHaerDalis1","GLOBAL",0)~
THEN ZDBAEB ZDBAEHaerDalis1
~贝洛斯，你的讲辞是排练过的，还是才华自发现形？~
DO ~SetGlobal("ZDBAEHaerDalis1","GLOBAL",1)~
== ZDBAEB ~排练？哈！我宏大的独白都是当场成形的！我才不需要什么琐碎的预备。~
== BHAERDA ~那么看来你我本是同类，你与我。都在求取人群的赞赏，都在俘获人群时暗自欢喜。~
== ZDBAEB ~确实！浮夸、自负与表演上的伙伴！~
EXIT

// Hexxat 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("HEXXAT")
    See("HEXXAT")
    !StateCheck("HEXXAT", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEHexxat1","GLOBAL",0)~
THEN BHEXXAT ZDBAEHexxat1
~你的眼睛干吗老黏在我身上，卓尔？怕我把你吸干？~
DO ~SetGlobal("ZDBAEHexxat1","GLOBAL",1)~
== ZDBAEB ~怕？想都别想！我只是在想，你在我的竞技场里会演出得多么精彩。~
== ZDBAEB ~人群会欢呼，我的金库会胀满，而你还能借那场神圣的流血解你的渴。~
== BHEXXAT ~那换个念头，想想我不配合的时候会怎样。~
== ZDBAEB ~……就当我这提议很不情愿地作废吧。~
EXIT

/* Imoen 1, this is both deeply unsettling & also wholesome
Dave WHY?! */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("IMOEN2")
    See("IMOEN2")
    !StateCheck("IMOEN2", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEImoen21","GLOBAL",0)~
THEN ZDBAEB ZDBAEImoen21
~爱蒙，哭什么呢？你平日那张快活的脸，居然还能把我逗笑！~
DO ~SetGlobal("ZDBAEImoen21","GLOBAL",1)~
== BIMOEN2 ~你猜猜？我被人做实验、被折磨，连灵魂都被人偷走过……~
== BIMOEN2 ~我尽量抬起头来，可近来实在不容易。~
== ZDBAEB ~你倒叫我很好奇：艾瑞尼卡斯都给你留了什么伤？伤在哪儿？~
== BIMOEN2 ~你倒是会往伤口上撒盐！你干吗在意这个？~
== ZDBAEB ~我若知道他做了什么，就能更好地设法解掉它，亲爱的。~
== ZDBAEB ~再说，降服奴隶几乎是我的本行。要我说，抓你那位做得过火了。~
== BIMOEN2 ~谢谢……大概吧。我也没享受他的折磨！~
== ZDBAEB ~折磨有个界限，越过它就成了琐碎无用之物，再也训练不出服从。真正懂残酷的行家，知道这条线在哪儿。~
== BIMOEN2 ~这话竟意外地有见地。不过跟你聊了几句，我心情好了点。能再一起走一段吗？~
== ZDBAEB ~当然。让我来取悦你！~
EXIT

// Jaheria 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAHEIRA")
    See("JAHEIRA")
    !StateCheck("JAHEIRA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEJaheira1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJaheira1
~啊，贾希拉！随时备着一句训斥。你的舌头可比你手边那件兵器还利。~
DO ~SetGlobal("ZDBAEJaheira1","GLOBAL",1)~
== BJAHEIR ~你再试探我的耐性，卓尔，说不定就会尝到它的刺痛。~
EXIT

// Jan 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAN")
    See("JAN")
    !StateCheck("JAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEJan1","GLOBAL",0)~
THEN ZDBAEB ZDBAEJan1
~啊，扬！我有个提议，也许能勾起你的兴趣。~
DO ~SetGlobal("ZDBAEJan1","GLOBAL",1)~
== BJAN ~提议？我一向乐意听取潜在生意伙伴的话。~
== BJAN ~要知道，我的倾听本事可是远近闻名，我那位隔了两代的表亲就说过。我跟你说过他吗？他在贝里戈斯特附近有个萝卜农场。可怜人，他挑买卖总是挑最差的。~
== BJAN ~你看，人们只对蘑菇感兴趣，就是幽暗地域深处那种晒干的。你这么个卓尔，肯定熟得很。不过对，我刚说，他就在……的时候还夸我倾听的本事无可挑剔。~
== ZDBAEB ~……~
== BJAN ~怎么突然不吭声了？我的话总该有点回应吧！哦，你的提议！好吧，我洗耳恭听。~
== ZDBAEB ~是啊，我这位浅皮肤的斯维尔夫内布林。~
== BJAN ~……~
== ZDBAEB ~瞧！这回轮到我让你一时说不出话。多么精彩的对局，你不觉得吗？~
EXIT

// Keldorn 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KELDORN")
    See("KELDORN")
    !StateCheck("KELDORN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKeldorn1","GLOBAL",0)~
THEN BKELDOR ZDBAEKeldorn1
~你跟一位圣武士同行，就不怕受罚、不怕被评判？~
DO ~SetGlobal("ZDBAEKeldorn1","GLOBAL",1)~
== ZDBAEB ~有什么光彩夺目的理由，让你非得制裁我不可吗？~
== BKELDOR ~既听了些你的过往，我有什么理由 不 制裁你？~
== ZDBAEB ~我不邪恶！我只是“检测”起来像罢了。~
== BKELDOR ~艰难的出身常叫人做出糊涂选择。这点我认了，贝洛斯，可你要听我警告。~
== BKELDOR ~步步小心，别再让你的举动伤人，免得你那些把戏招来真正的后果。~
== ZDBAEB ~后果？可落不到我这粗糙的良心上！哦不。~
EXIT

// Korgan 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KORGAN")
    See("KORGAN")
    !StateCheck("KORGAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKorgan1","GLOBAL",0)~
THEN ZDBAE ZDBAEKorgan1
~你可曾想过到我的竞技场里，干一番混乱与屠戮的行当？~
DO ~SetGlobal("ZDBAEKorgan1","GLOBAL",1)~
== BKORGAN ~血和金子一样多，是吧？是啊，我也许有兴趣。你出什么价，卓尔？~
== ZDBAEB ~除了名声与热烈掌声？也许……啊！五百金币！~
== BKORGAN ~五百？呸！酒馆里打一架都比这赚得多。你养不起我。~
== ZDBAEB ~眼下还不行，我这位自信过头的伙伴，可财运无常。明天的财宝说不定就能把秤砣压过来！~
EXIT

// Mazzy 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MAZZY")
    See("MAZZY")
    !StateCheck("MAZZY", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEMazzy1","GLOBAL",0)~
THEN ZDBAEB ZDBAEMazzy1
~啊！一个半身人。有一瞬间我还把你当成了个头颅没长开的浅皮肤斯维尔夫内布林。~
DO ~SetGlobal("ZDBAEMazzy1","GLOBAL",1)~
== BMAZZY ~我可不喜欢被人讥笑，贝洛斯。~
== ZDBAEB ~讥笑？绝无！我只是在惊叹我们这非同寻常的同伙之谊。<CHARNAME> 交的朋友可真古怪。~
== BMAZZY ~你把不得已当成了友谊。我们同行，只因 <CHARNAME> 的选择。~
== ZDBAEB ~那就管我们叫险境中的伙伴吧，哪怕立场上不是。~
EXIT

// Minsc 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("MINSC")
    See("MINSC")
    !StateCheck("MINSC", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEMinsc1","GLOBAL",0)~
THEN BMINSC ZDBAEMinsc1
~看见布布怎么嗅你了吗，黑暗的家伙？他的鼻子认得邪恶！~
DO ~SetGlobal("ZDBAEMinsc1","GLOBAL",1)~
== ZDBAEB ~也许他会改主意？瞧，我带了蜜渍榛子！你这位毛茸茸的朋友说不定觉得好吃。~
== BMINSC ~你别想用甜食买通布布的信任！仓鼠的正义感不可动摇！~
== ZDBAEB ~“买”这词太粗了。我更喜欢称之为“培养情谊”。~
== BMINSC ~他对你不高兴。布布不高兴，明斯克就不高兴。~
== ZDBAEB ~好一副仓鼠与绅士同框的骇人怒容。我到那边站一会儿，行吗？~
EXIT

// Nalia 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NALIA")
    See("NALIA")
    !StateCheck("NALIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAENalia1","GLOBAL",0)~
THEN ZDBAEB ZDBAENalia1
~娜莉亚，一直叫我纳闷的是，你对周旋于提名晋身那套门道一窍不通。我还以为你算贵族中人呢？~
DO ~SetGlobal("ZDBAENalia1","GLOBAL",1)~
== BNALIA ~我确是，可我也不敢说我乐在其中。~
== ZDBAEB ~怎么会有人不喜欢别人依法伺候自己？~
== BNALIA ~我该为一件我没选过的事自豪吗？为一件只因我生下来就有的东西自豪吗？~
== BNALIA ~日复一日，我眼见世上的不公。我的命并不比别人的更值钱。~
== ZDBAEB ~啊，高尚的娜莉亚，总被她那过盛的仁心绊住脚。哈！~
== BNALIA ~给我的命赋予价值的是我的作为。贵族身份并不能界定我是谁、我能做什么。~
EXIT

// Neera 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("NEERA")
    See("NEERA")
    !StateCheck("NEERA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAENeera1","GLOBAL",0)~
THEN ZDBAEB ZDBAENeera1
~半精灵，你的狂野魔法是一座壮丽的大漩涡。~
DO ~SetGlobal("ZDBAENeera1","GLOBAL",1)~
== BNEERA ~哈！换一边忽悠去。平常人只求我别在他们旁边炸了。~
== ZDBAEB ~你把混沌当作诅咒，也当作掩护。每一次施法失误，都给日后的意外披上一件可信的推托外衣。~
== BNEERA ~……所以你欣赏我，是因为我能搞砸再假装不怪我？~
== BNEERA ~果然。不过，好吧，这大概也算个好处。~
EXIT

// Rasaad 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("RASAAD")
    See("RASAAD")
    !StateCheck("RASAAD", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAERasaad1","GLOBAL",0)~
THEN BRASAAD ZDBAERasaad1
~贝洛斯，你干吗这么盯着我看？~
DO ~SetGlobal("ZDBAERasaad1","GLOBAL",1)~
== ZDBAEB ~因为你叫我困惑。不披甲，不施法，却不知怎的还活着。~
== BRASAAD ~我不必仰仗甲胄，也不必仰仗法术。我的身体就是武器，我的修行就是盾。~
== ZDBAEB ~对着火球和恶魔，这盾薄得很。这两样都不停下来打坐。~
== BRASAAD ~它们也不会选择慈悲。所以我必须选择。~
EXIT

// Valygar 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VALYGAR")
    See("VALYGAR")
    !StateCheck("VALYGAR", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEValygar1","GLOBAL",0)~
THEN BVALYGA ZDBAEValygar1
~我不信你这类人，贝洛斯。魔法会腐蚀人心，而你还沉溺于自己的力量。~
DO ~SetGlobal("ZDBAEValygar1","GLOBAL",1)~
== ZDBAEB ~术法在我的血脉里歌唱、翻沸。压住它，就像想把闪电装进瓶子。~
== BVALYGA ~而它一旦爆发——它总会爆发——付代价的是无辜的旁人。~
== BVALYGA ~我会紧盯着你。每一步，每一个法术。~
EXIT

// Viconia 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VICONIA")
    See("VICONIA")
    !StateCheck("VICONIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEViconia1","GLOBAL",0)~
THEN BVICONI ZDBAEViconia1
~你这下贱的“贾鲁克”，又在打什么主意？~
DO ~SetGlobal("ZDBAEViconia1","GLOBAL",1)~
== ZDBAEB ~我们俩都是地表的弃子。别的不说，“艾尔格凯雷斯”，在流放这件事上我们是平等的。~
== BVICONI ~别把流放当成高升。~
== ZDBAEB ~饶了我吧，那些女祭司令人窒息的争执，还有她们那点可怜又可笑的姿态。~
EXIT

// Wilson 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("WILSON")
    See("WILSON")
    !StateCheck("WILSON", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEWILSON1","GLOBAL",0)~
THEN ZDBAEB ZDBAEWILSON1
~一头熊当战斗兄弟。我该赐你什么角色呢，嗯？~
DO ~SetGlobal("ZDBAEWILSON1","GLOBAL",1)~
== WILSON ~哼哧。~
== ZDBAEB ~不如叫……“熊族篡位者”！你在我的竞技场里碾碎挑战者时，人群会轰然喝彩。~
== WILSON ~嗷！~
== ZDBAEB ~扫兴的家伙。~
EXIT

// Yoshimo 1
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("YOSHIMO")
    See("YOSHIMO")
    !StateCheck("YOSHIMO", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEYoshimo1","GLOBAL",0)~
THEN BYOSHIM ZDBAEYoshimo1
~贝洛斯，你这种人很难被忽略。你总是来一手华丽的花招，从不肯轻声细语。~
DO ~SetGlobal("ZDBAEYoshimo1","GLOBAL",1)~
== ZDBAEB ~含蓄是给贼的，不是给术士的。~
== BYOSHIM ~影子也许不够热闹，朋友，可它能保命。~
== ZDBAEB ~阴谋、毒药、幽暗地域的女祭司，我都活过来了。地表这点危险吓不住我。~
== BYOSHIM ~自信是把好盾……直到第一把刀绕过它。~
EXIT

// Aerie 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("AERIE")
    See("AERIE")
    !StateCheck("AERIE", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEAerie2","GLOBAL",0)~
THEN ZDBAEB ZDBAEAerie2
~哦哦……我的族人里有很多这样的故事。地下实在不适合埃瓦瑞尔……~
DO ~SetGlobal("ZDBAEAerie2","GLOBAL",1)~
== BAERIE ~尤其是幽暗地域……我……我想不出怎么在那里生活。~
== ZDBAEB ~恐惧缚住心神，我这位胆小的朋友。我的家乡对勇敢又机敏的人，有的是机会。~
== ZDBAEB ~也许你愿意参加我那危险的——我是说，极其愉快的——竞技场？它眼下是片废墟，可一旦重建，各界都会传颂艺人贝洛斯的天才。~
== BAERIE ~不、不了，谢谢。~
== ZDBAEB ~那么，一点小小的资助大概也就够了？就算是我这样的天纵之才，建造与创造也要用钱。~
== BAERIE ~我……我看这场谈话该结束了。~
== ZDBAEB ~可惜。~
EXIT

// Cernd 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("CERND")
    See("CERND")
    !StateCheck("CERND", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAECernd1","GLOBAL", 1)
    Global("ZDBAECernd2","GLOBAL",0)~
THEN CERNDJ ZDBAECernd1
~我一直在琢磨你关于自然的那番话。你如何看待地表的自然？~
DO ~SetGlobal("ZDBAECernd2","GLOBAL",1)~
== ZDBAEB ~看作同一部野蛮交响乐的阳光舞台。~
== CERNDJ ~你说得仿佛一切尽是争斗与挣扎。这就是你的谬误，贝洛斯——你旧日那套道理越出了幽暗地道的范围。你只看见树木为阳光互相绞杀……~
== CERNDJ ~可自然也在循环中繁盛。河流滋养森林，捕食者控制猎物的数目。和谐同样要紧。~
== ZDBAEB ~也许你们的地表没我想的那么野蛮——不过也只差那么一点点。~
EXIT

// Edwin 2 - The Age-Old Sorcerer vs Mage rivalry
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("Edwin",MALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin1","GLOBAL",1)
    Global("ZDBAEEdwin2","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin2
~你在奥术上那些笨手笨脚的试探，进展如何？~
DO ~SetGlobal("ZDBAEEdwin2","GLOBAL",1)~
== BEDWIN ~跟你不同，卓尔，我的本事没有边界。精通魔法靠的是才智，这一项你明白无误地缺。~
== ZDBAEB ~我不需要什么脆纸书页，也不需要乏味的死记硬背，就能弯折魔网。 我 的魔法就是本能本身！~
== BEDWIN ~你所谓的本能，不过是做戏。只配唬弄傻子。~
== ZDBAEB ~从廉价货堆里的贝洛斯嘴里，竟冒出这么精彩的胡话。~
EXIT

// Jan 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("JAN")
    See("JAN")
    !StateCheck("JAN",CD_STATE_NOTVALID)
    !StateCheck("ZDBAE",CD_STATE_NOTVALID)
    Global("ZDBAE25BJAN1","GLOBAL",0)~
THEN ZDBAE25B ZDBAE25BJAN1
~扬，你的故事闷得要命。花样呢？惊险呢？风彩呢？~
DO ~SetGlobal("ZDBAE25BJAN1","GLOBAL",1)~
== BJAN25 ~我不需要添油加醋；我讲的每则故事都是真的。连奥拉布瑟树人跟他那些发光萝卜的故事也是。~
== ZDBAE25B ~发光萝卜？一看就猜得到！你还没说，我就预见每一处转折了。准备领教我的预知吧！~
== BJAN25 ~可你看，那些萝卜亮得能轻易晃瞎人眼。那是个上好的卓尔驱避剂，而且……而且……嗯……~
== BJAN25 ~该死。~
== ZDBAE25B ~被我这些迷人的话给绕住了。哈！这场小游戏里领先的是我，侏儒。~
EXIT

// Korgan 2
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("KORGAN")
    See("KORGAN")
    !StateCheck("KORGAN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEKorgan2","GLOBAL",0)~
THEN BKORGAN ZDBAEKorgan2
~你晓得的，我渴着厮杀。你的故事把我浸在那股甜美的怒意里，撑到下一场架。~
DO ~SetGlobal("ZDBAEKorgan2","GLOBAL",1)~
== ZDBAEB ~没有免费的鲜血了，我阴沉的朋友。上回你说我养不起你。如今看来，是你养不起我。~
== ZDBAEB ~不过，你要是重新考虑我的提议，我还会给你编更多故事。或者更好——你自己在竞技场的沙地上写罢。~
== BKORGAN ~魔鬼的交易，贝洛斯。这不是我能立刻答的。可你要是用金子把它镀一镀，我还能再试一次。~
EXIT

/* Edwin 3 - Enter Edwina, Stage Right */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    Gender("Edwin",FEMALE)
    !StateCheck("EDWIN", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEEdwin3","GLOBAL",0)~
THEN ZDBAEB ZDBAEEdwin3
~哎哟！多么奇妙的变形！~
DO ~SetGlobal("ZDBAEEdwin3","GLOBAL",1)~
== BEDWIN ~闭嘴！这份屈辱是暂时的。完全是暂时的。~
== ZDBAEB ~暂时的、勾人的、又好笑到极点！用上你那些女人家的手段，魔网织起来会不一样吗？~
== BEDWIN ~我会了结你，贝洛斯！慢慢地、一丝不苟地，细细品味你受苦的每一刻。~
== ZDBAEB ~如今连你的威胁听着都更悦耳了。~
EXIT

/* Viconia 3, if she's in a romance */
CHAIN
IF ~InParty("ZDBAE")
    See("ZDBAE")
    InParty("VICONIA")
    See("VICONIA")
    !StateCheck("VICONIA", CD_STATE_NOTVALID)
    !StateCheck("ZDBAE", CD_STATE_NOTVALID)
    Global("ZDBAEViconia3","GLOBAL",0)
    OR(2)
    Global("ViconiaRomanceActive","GLOBAL",1)
    Global("ViconiaRomanceActive","GLOBAL",2)~
THEN BVICONI ZDBAEViconia3
~让我说清一件事，“贾鲁克”：不管你养出过什么妄想，我们之间从来就没半点可能。~
DO ~SetGlobal("ZDBAEViconia3","GLOBAL",1)~
== ZDBAEB ~何其恶臭的臆断！我调情的是混沌，不是必死。~
== ZDBAEB ~不过看你追求一个地表人，倒一直是不愁没戏看的乐子。~
== BVICONI ~认清你的位置，巴瑞提尔。再多一句，我就把你自己的舌头塞给你吃！~
== ZDBAEB ~就这个！卓尔那份经典的魅力。<CHARNAME> 想必是被彻底迷住了……也可能是被敲晕了。~
EXIT
