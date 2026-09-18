create table class(
	cno        char(4)           not null     PRIMARY KEY,
	cname      varchar(20)       not null,
	cmajor     varchar(20)       not null
);


insert into class values('C001','20大数据','大数据');
insert into class values('C002','20软件工程b','软件工程');
insert into class values('F001','22翻译','翻译');
insert into class values('F002','21英语师范a','英语（师范）');
insert into class values('P001','23物理师范b','物理（师范）');
insert into class values('M003','20金融数学a','金融数学');

create table user(
	uid        char(10)          not null     PRIMARY KEY,
	upwd       varchar(20)       not null,
	uname      varchar(20)       not null,
	usex       enum("男","女")   not null,
	uage       int               not null     check(uage > 0),
	uiphone    char(11)          not null,
	cno        char(4)           not null,
	uimg       varchar(100)      not null,
	FOREIGN KEY (cno) REFERENCES  class(cno)
);



insert into user values('2055222181','a2055222181','张三三','男',22,'12340001234','C002','nan1.png');
insert into user values('2055222172','a2055222172','陶媛媛','女',21,'12140001214','C002','nv1.png');

insert into user values('2255111099','a2255111099','李渊','男',20,'12350001235','F001','nan2.png');
insert into user values('2255111100','a2255111100','张倩倩','女',20,'12360001236','F001','nv2.png');

insert into user values('2055112101','a2055112101','伍六七','男',22,'14360001436','C001','nan3.png');
insert into user values('2055112161','a2055112161','王梅','女',22,'14361001438','C001','nv3.png');

insert into user values('2155113001','a2155113001','王亚男','男',20,'12260001226','F002','nan4.png');
insert into user values('2155113110','a2155113110','李玉灵','女',21,'14261001417','F002','nv4.png');

insert into user values('2355112201','a2355112201','庄凯','男',19,'18310001831','P001','nan5.png');
insert into user values('2355112211','a2355112211','程冰冰','女',20,'13331001333','P001','nv5.png');

insert into user values('2055101302','a2055101302','汪文海','男',23,'17660001766','M003','nan6.png');
insert into user values('2055101208','a2055101208','王秀秀','女',22,'18810001881','M003','nv6.png');

select * from user where uid='2255111099'

create table treepost(
	trno        int        not null    AUTO_INCREMENT  PRIMARY KEY,
	uid         char(10)   not null,
	trucontent  varchar(1000)  not null,
	trtime      DATETIME   not null,
	FOREIGN KEY (uid) REFERENCES  user(uid)
);


insert into treepost(uid,trucontent,trtime) values('2055101302','告诉你一个秘密：当你感觉焦虑难过的时候，千万不要啥也不干，忍一忍该干啥干啥，马上就好了。要知道，情绪就是能量，你要允许它来，允许它走，如果你持续跟一个坏的情绪去抗衡，去对抗，那只会吸引来更多低能量的人事物来到你的生命当中。','2024-03-01 14:30:00');
insert into treepost(uid,trucontent,trtime) values('2055112101','我被友情内耗的很严重，我会被朋友的一句话，几天都在一个情绪里走不出来，我会因为感情的疏远而先疏远，我很害怕又很焦虑，该怎么办？','2024-03-11 11:30:08');
insert into treepost(uid,trucontent,trtime) values('2055222181','相当焦虑，非常在意别人对我的想法，然后就会睡不着，很不自信，很善妒，没有共情，很敏感，很想做到钝感力……感觉也影响到别人了……明知道这是有问题的，但是排解不了','2024-03-20 09:38:07');



create table treereply(
	replyno   int        not null    AUTO_INCREMENT  PRIMARY KEY,
	trno    int        not null,
	uid         char(10)   not null,
	repcontent  varchar(1000)  not null,
	reptime     DATETIME   not null,
	FOREIGN KEY (uid) REFERENCES  user(uid),
	FOREIGN KEY (trno) REFERENCES  treepost(trno)
)


insert into treereply(trno,uid,repcontent,reptime) values(1,'2055112101','我到底什么时候能瘦下来？','2024-03-01 15:31:10');
insert into treereply(trno,uid,repcontent,reptime) values(1,'2155113110','自我暗示！！空了就暗示自己很棒，对自己都只说正能量的话，一定要多说，真的有用','2024-03-01 14:38:01');
insert into treereply(trno,uid,repcontent,reptime) values(2,'2155113110','说实话人际关系这个东西你越在乎就越容易失去，但是我没办法不在乎啊，我的好朋友和另一个人越玩越好，我如果隔断她们的往来会让我自己也觉得这一做法欠考虑，而且我能这么做另一个人照样能这么做，那被抛弃的最终有没有可能是我呢？','2024-03-11 12:10:00');
insert into treereply(trno,uid,repcontent,reptime) values(2,'2055101208','我觉得宝宝，你应该去花时间完善自己，比如想减肥就减肥，想唱歌就唱歌，想买东西就买东西，大胆表达喜怒哀乐，展现真实的你，会让你更快乐，把时间花在你自己身上，而不是把时间浪费在会让你内耗的事情上，给你说的，也是给我说的，一起加油！','2024-03-12 13:30:10');
insert into treereply(trno,uid,repcontent,reptime) values(3,'2255111100','不要怕别人的眼光，打破束缚着自己的条条框框。','2024-03-21 10:28:11');
insert into treereply(trno,uid,repcontent,reptime) values(3,'2055222172','不要去过多思虑改变不了的事，不要怕改变，因为很多事的结果都是：那没事儿了。','2024-03-20 09:50:00');



create table teacher(
	tid      char(5)    not null    PRIMARY KEY, 
	tpwd     varchar(20) not null,
	tname    varchar(20) not null,
	tsex     enum("男","女")   not null,
	tage     int               not null     check(tage > 0),
	tiphone  char(11)          not null,
	qualification   varchar(200)  not null,
	timg     varchar(100)      not null
);

insert into teacher values('c1011','c123456','李月涵','女',30,'18710001871','应用心理学专业硕士  2年心理辅导经验  接待超100人咨询','E:/touxiang/teacher1.png');
insert into teacher values('p1013','p123456','庄菲菲','女',32,'16790001679','心理学专业硕士    3年心理辅导经验   接待超200人咨询','E:/touxiang/teacher2.png');
insert into teacher values('m3021','m123456','汪凯路','男',33,'18620001862','心理学专业博士    3年心理辅导经验   接待超200人咨询','E:/touxiang/teacher3.png');
insert into teacher values('f0212','f123456','曾漫','女',38,'19340001934','应用心理学博士      6年心理辅导教育   接待超500人咨询','E:/touxiang/teacher4.png');


create table testform(
	tfid    int   not null    AUTO_INCREMENT  PRIMARY KEY,
	tfname  varchar(100)  not null,
	tfimg   varchar(200)  not null
)




create table testResult(
	uid            char(10)   not null,
	tfid           int        not null,
	genIndex       float     not null,
	positivenum    int       not null,
	positivelevel   float    not null,
	somavg         float     not null,
	obseavg        float     not null,
	interavg       float     not null,
	depressavg   float  not null,
	anxietyavg   float   not null,
	hostavg   float  not null,
	photicavg  float not null,
	paravg     float  not null,
	psychoavg  float  not null,
	otheravg   float  not null,
	primary key(uid,tfid)
)

create table question(
	id     int   not null AUTO_INCREMENT  PRIMARY KEY,
	tfid   int   not null,
	ismultiple  TINYINT NOT NULL DEFAULT 0,
	qname  varchar(200)  not null,
	score  int  not null
)

insert into question(tfid,ismultiple,qname,score) values(1,0,'头痛?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'神经过敏，心中不踏实?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'头脑中有不必要的想法或字句盘旋?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'头昏或昏倒?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'对异性的兴趣减退?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'对旁人责备求全?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到别人能控制你的思想?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'责怪别人制造麻烦?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'忘记性大?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'担心自己的衣饰整齐及仪态的端正?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'容易烦恼和激动?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'胸痛?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'害怕空旷的场所或街道?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到自己的精力下降，活动减慢?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'想结束自己的生命?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'听到旁人听不到的声音?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'发抖?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到大多数人都不可信任?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'胃口不好?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'容易哭泣?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'同异性相处时感到害羞不自在?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到受骗，中了圈套或有人想抓您?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'无缘无故地突然感到害怕?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'自己不能控制地大发脾气?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'怕单独出门?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'经常责怪自己?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'腰痛?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到难以完成任务?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到孤独?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到苦闷?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'过分担忧?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'对事物不感兴趣?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到害怕?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'我的感情容易受到伤害?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'旁人能知道您的私下想法?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'感到别人不理解您不同情你?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到人们对你不友好，不喜欢您?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'做事必须做得很慢以保证做得正确?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'心跳得很厉害?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'恶心或胃部不舒服?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'感到比不上他人?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'肌肉酸痛?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到有人在监视您谈论您?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'难以入睡?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'做事必须反复检查?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'难以作出决定?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'怕乘电车、公共汽车、地铁或火车?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'呼吸有困难?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'一阵阵发冷或发热 ?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'因为感到害怕而避开某些东西，场合或活动?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'脑子变空了?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'身体发麻或刺痛?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'喉咙有梗塞感?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到对前途没有希望?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'不能集中注意力?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'感到身体的某一部分较弱无力?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到紧张或容易紧张?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到手或脚发沉?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'想到有关死亡的事?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'吃得太多?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'当别人看着您或谈论您时感到不自在?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'有一些不属于您自己的想法?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'有想打人或伤害他人的冲动?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'醒得太早?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'必须反复洗手、点数目或触摸某些东西?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'睡得不稳不深?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'有想摔坏或破坏东西的冲动?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'有一些别人没有的想法或念头?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到对别人神经过敏?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'在商店或电影院等人多的地方感到不自在?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'感到任何事情都很难做?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'一阵阵恐惧或惊恐?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到在公共场合吃东西很不舒服?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'经常与人争论?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'单独一人时神经很紧张?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'别人对您的成绩没有作出恰当的评价?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'即使和别人在一起也感到狐单?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到坐立不安心神不宁?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到自己没有什么价值?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到熟悉的东西变成陌生或不象是真的?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'大叫或摔东西?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'害怕会在公共场合昏倒?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到别人想占您的便宜?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'为一些有关“性”的想法而很苦恼?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'认为应该因为自己的过错而受到惩罚?',0);

insert into question(tfid,ismultiple,qname,score) values(1,0,'感到要赶快把事情做完?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到自己的身体有严重问题?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'从未感到和其他人很亲近?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到自己有罪?',0);
insert into question(tfid,ismultiple,qname,score) values(1,0,'感到自己的脑子有毛病?',0);


create table qoption (
	id   int   not null AUTO_INCREMENT  PRIMARY KEY,
	oname varchar(200)  not null,
	checked TINYINT NOT NULL DEFAULT 0,
	sweight  int    not null,
	letter   varchar(20)  not null,
	qid  int not null
)


insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',1);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',1);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',1);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',1);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',1);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',2);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',2);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',2);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',2);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',2);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',3);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',3);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',3);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',3);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',3);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',4);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',4);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',4);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',4);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',4);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',5);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',5);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',5);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',5);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',5);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',6);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',6);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',6);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',6);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',6);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',7);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',7);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',7);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',7);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',7);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',8);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',8);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',8);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',8);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',8);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',9);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',9);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',9);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',9);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',9);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',10);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',10);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',10);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',10);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',10);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',11);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',11);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',11);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',11);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',11);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',12);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',12);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',12);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',12);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',12);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',13);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',13);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',13);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',13);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',13);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',14);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',14);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',14);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',14);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',14);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',15);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',15);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',15);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',15);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',15);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',16);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',16);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',16);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',16);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',16);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',17);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',17);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',17);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',17);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',17);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',18);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',18);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',18);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',18);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',18);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',19);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',19);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',19);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',19);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',19);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',20);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',20);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',20);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',20);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',20);



insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',21);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',21);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',21);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',21);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',21);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',22);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',22);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',22);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',22);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',22);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',23);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',23);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',23);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',23);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',23);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',24);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',24);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',24);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',24);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',24);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',25);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',25);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',25);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',25);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',25);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',26);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',26);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',26);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',26);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',26);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',27);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',27);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',27);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',27);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',27);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',28);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',28);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',28);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',28);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',28);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',29);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',29);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',29);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',29);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',29);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',30);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',30);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',30);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',30);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',30);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',31);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',31);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',31);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',31);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',31);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',32);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',32);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',32);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',32);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',32);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',33);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',33);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',33);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',33);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',33);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',34);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',34);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',34);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',34);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',34);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',35);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',35);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',35);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',35);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',35);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',36);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',36);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',36);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',36);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',36);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',37);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',37);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',37);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',37);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',37);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',38);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',38);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',38);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',38);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',38);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',39);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',39);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',39);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',39);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',39);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',40);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',40);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',40);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',40);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',40);




insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',41);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',41);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',41);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',41);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',41);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',42);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',42);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',42);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',42);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',42);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',43);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',43);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',43);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',43);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',43);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',44);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',44);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',44);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',44);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',44);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',45);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',45);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',45);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',45);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',45);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',46);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',46);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',46);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',46);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',46);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',47);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',47);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',47);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',47);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',47);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',48);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',48);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',48);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',48);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',48);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',49);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',49);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',49);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',49);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',49);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',50);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',50);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',50);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',50);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',50);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',51);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',51);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',51);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',51);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',51);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',52);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',52);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',52);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',52);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',52);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',53);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',53);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',53);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',53);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',53);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',54);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',54);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',54);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',54);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',54);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',55);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',55);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',55);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',55);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',55);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',56);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',56);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',56);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',56);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',56);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',57);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',57);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',57);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',57);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',57);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',58);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',58);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',58);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',58);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',58);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',59);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',59);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',59);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',59);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',59);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',60);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',60);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',60);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',60);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',60);





insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',61);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',61);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',61);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',61);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',61);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',62);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',62);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',62);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',62);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',62);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',63);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',63);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',63);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',63);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',63);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',64);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',64);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',64);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',64);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',64);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',65);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',65);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',65);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',65);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',65);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',66);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',66);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',66);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',66);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',66);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',67);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',67);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',67);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',67);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',67);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',68);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',68);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',68);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',68);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',68);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',69);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',69);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',69);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',69);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',69);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',70);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',70);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',70);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',70);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',70);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',71);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',71);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',71);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',71);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',71);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',72);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',72);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',72);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',72);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',72);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',73);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',73);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',73);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',73);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',73);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',74);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',74);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',74);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',74);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',74);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',75);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',75);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',75);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',75);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',75);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',76);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',76);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',76);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',76);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',76);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',77);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',77);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',77);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',77);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',77);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',78);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',78);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',78);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',78);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',78);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',79);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',79);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',79);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',79);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',79);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',80);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',80);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',80);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',80);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',80);




insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',81);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',81);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',81);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',81);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',81);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',82);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',82);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',82);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',82);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',82);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',83);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',83);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',83);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',83);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',83);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',84);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',84);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',84);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',84);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',84);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',85);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',85);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',85);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',85);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',85);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',86);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',86);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',86);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',86);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',86);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',87);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',87);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',87);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',87);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',87);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',88);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',88);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',88);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',88);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',88);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',89);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',89);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',89);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',89);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',89);

insert into qoption(oname,checked,sweight,letter,qid) values('没有',0,0,'A',90);
insert into qoption(oname,checked,sweight,letter,qid) values('轻度',0,1,'B',90);
insert into qoption(oname,checked,sweight,letter,qid) values('中度',0,2,'C',90);
insert into qoption(oname,checked,sweight,letter,qid) values('偏重',0,3,'D',90);
insert into qoption(oname,checked,sweight,letter,qid) values('严重',0,4,'E',90);




create table newsinfo(
 nno  int  AUTO_INCREMENT  PRIMARY KEY,
 ntitle  varchar(100)   not null,
 ncontent   varchar(10000)   not null,
 nauthor   varchar(20)  not null,
 ntime    date          not null,
 newsimg   varchar(30)  not null
);



insert into newsinfo(ntitle,ncontent,nauthor,ntime,newsimg) values('首届全国社会心理服务体系建设经验交流大会在滨州市开幕','&ensp;&ensp;&ensp;&ensp;央广网滨州3月22日消息（记者唐磊）3月20日—3月22日，首届全国社会心理服务体系建设经验交流大会在山东省滨州市召开。此次大会以“奋进新征程，激发心力量”为主题，由国家心理健康和精神卫生防治中心、中央社会工作部志愿服务促进中心、华夏时报社共同主办。  &ensp;&ensp;&ensp;&ensp;开幕式致辞结束后，国家心理健康和精神卫生防治中心党委书记、主任姚宏文，北京师范大学理学部教授、认知神经科学与学习国家重点实验室学术委员会主任、北京师范大学原校长董奇，国际标准化组织（ISO）第27届主席张晓刚，分别围绕“守正创新、继往开来，持续推进社会心理服务体系高质量发展”“社会心理服务体系建设与学生心理健康发展：成效与建议”“国际标准发展趋势与中国高质量发展”作主旨报告。  &ensp;&ensp;&ensp;&ensp;在开幕式致辞和主旨报告之后，华夏时报社党委书记、社长、总编辑冯慧君主持了《滨州市“心安城市”建设指标体系》解读发布、“中国社会心理服务创新实践基地”授牌、滨州市“心安城市”创建启动仪式。  &ensp;&ensp;&ensp;&ensp;据了解，3月20日，会议上午举办开幕式和主旨报告，下午邀请14个地区党政部门领导分享社会心理服务体系建设试点成效，并为全国社会心理服务体系建设优秀案例入选单位颁发了证书。21日全天至22日上午，会议围绕社会心理服务赋能城市高质量发展、中国式社会心理服务话语体系构建、社会心理服务网络及能力建设、创新社会治理、人才队伍培育、社会心理服务行业规范发展、科普宣传与志愿服务、心理援助及危机干预，以及儿童青少年、职业人群、老年人、残疾人等重点人群社会心理服务模式，设置了32场社会心理服务创新发展圆桌对话会。  &ensp;&ensp;&ensp;&ensp;大会同期，在滨州市黄河三角洲交易中心（国际博览中心）举办社会心理服务产业展览。主要展示社会心理服务在社会治理、智慧城市、卫生健康、教育、民政等领域、行业中的深度应用，展示社会心理行业相关服务和产品，展示各地区社会心理服务体系建设工作成果和经验等。','李舜','2024-03-24','new1.png');

insert into newsinfo(ntitle,ncontent,nauthor,ntime,newsimg) values('守护“心”健康——全国社会心理服务体系建设观察','&ensp;&ensp;&ensp;&ensp;心理健康和精神卫生不仅是医疗卫生问题，更是民生和社会问题，关乎个人身心健康和社会和谐。我国社会心理服务体系建设情况如何？怎样发挥作用？未来如何发力？3月20日至22日，国家心理健康和精神卫生防治中心等单位在山东省滨州市举办首届“全国社会心理服务体系建设经验交流大会”，记者就相关问题进行了采访。  1.让更多人在“家门口”享受心理服务  &ensp;&ensp;&ensp;&ensp;科普讲座、沙龙、团体辅导……在全国社会心理服务体系建设试点北京市西城区，15个街道实现“街道级社会心理服务中心全覆盖”，各式各样的社会心理服务活动定期开展，为社区居民普及心理健康知识、疏导心理健康问题。  &ensp;&ensp;北京市西城区社会心理服务指导中心督导专家孙雅丽介绍，为让更多人在“家门口”享受心理服务，辖区内每个街道都配有至少两名心理服务专业人员。中心对街道社会工作者开展心理服务培训，让心理学专业知识更好融入社会工作，帮助有需要的居民及时获得心理健康服务。  &ensp;&ensp;&ensp;&ensp;2018年，国家卫生健康委等十部门联合印发《全国社会心理服务体系建设试点工作方案》，提出将心理健康服务融入社会治理体系、精神文明建设，融入平安中国、健康中国建设。  &ensp;&ensp;&ensp;&ensp;全国社会心理服务体系建设专家闫洪丰认为，与“心理治疗”“心理咨询”“心理干预”等概念更多强调“被动解决”不同，“社会心理服务体系建设”更多关注源头发力、主动预防、系统解决，并提供全方位、多层次的社会支持，面向的是全社会、全人群、全周期。  &ensp;&ensp;&ensp;&ensp;山东省136个县市区建立社会心理服务体系；吉林省长春市成立心理危机干预专家组等，提供24小时心理援助服务；云南省临沧市842个行政村建立社会心理服务工作室……据统计，试点工作开展以来，试点地区96%的村和社区、100%的高校和约95%的中小学已设立心理辅导室或社会工作室，100%的精神专科医院设立心理门诊，40%的二级以上综合医院开设心理门诊。  &ensp;&ensp;&ensp;&ensp;“力量下沉、重心下移是推动社会治理的‘重头戏’，也是推动社会心理服务建设的‘硬道理’。”国家心理健康和精神卫生防治中心主任姚宏文说。  2.“校家社”联动,关注青少年心理健康。  &ensp;&ensp;&ensp;&ensp;在山东省滨州市，心理教育已成为中小学定期开展的一门课程，学生们在互动中了解内心感受，学习心理知识。同时，每月一期的“在线直播家庭教育讲座”向家长普及教育心理知识，为学生身心健康成长营造良好环境。  &ensp;&ensp;&ensp;&ensp;近年来，学生心理健康受到越来越多关注。2023年教育部等17部门印发《全面加强和改进新时代学生心理健康工作专项行动计划（2023—2025年）》，推动完善学校、家庭、社会和相关部门协同联动的学生心理健康工作格局。  &ensp;&ensp;&ensp;&ensp;开发培训课程体系，研制监测预警工具包，出版中小学生自我心理调节等指导用书，组织开展全国精神心理科普公益大赛及社会心理服务情景剧展演等活动……呵护青少年心理健康，国家心理健康和精神卫生防治中心在行动。  &ensp;&ensp;&ensp;&ensp;“推进儿童青少年的社会心理服务体系建设需要建立朋辈支持系统，分级分类管理系统，家庭、学校和社区组成的协同系统以及地域性的自然与文化润心系统。”中国科学院心理研究所研究员刘正奎说，社会心理服务要对孩子在成长过程中产生的困惑、矛盾及时给予支持。  &ensp;&ensp;&ensp;&ensp;北京师范大学认知神经科学与学习国家重点实验室教授董奇说，当前，仍存在部分群众有“病耻感”、教师的心理健康教育意识和专业能力不足、家校医等协同度有待提高等问题，下一步需要依托科学客观的认识、理智的对待和有效的干预，更好促进青少年心理健康。  3.建设适合我国国情的社会心理服务体系  &ensp;&ensp;&ensp;&ensp;“健全社会心理服务行业规范和标准”“加强社会心理服务人才队伍建设”“加快构建符合我国国情实际、融贯中华优秀传统文化的社会心理服务理论体系、学科体系和话语体系”……会上，聚焦社会心理服务体系建设未来发展方向，专家畅所欲言。  &ensp;&ensp;&ensp;&ensp;姚宏文表示，国家心理健康和精神卫生防治中心将完善专家资源库，构建心理健康和精神卫生标准体系、心理健康促进监测评估体系、心理援助应急体系，打造集科研、宣传、培训、信息化、交流合作于一体的社会心理服务平台，开展专业技术能力培训等。  &ensp;&ensp;&ensp;&ensp;“社会工作者是社会心理服务体系建设的中坚力量。”中国社会工作联合会会长陈存根表示，联合会将充分发挥专业社会工作优势，推动建设一站式基层社会心理服务平台，助力建立健全各领域社会心理服务网络，加强社会工作者队伍技能培训。  &ensp;&ensp;&ensp;&ensp;中国科学院院士、北京大学第六医院院长陆林表示，当前社会心理服务体系建设试点工作进入经验总结和推广阶段，希望能将一些先进城市、先进试点的做法在全国进行推广，更好地守护十四亿多人的“心”健康。','徐鹏航、李恒','2024-03-24','new2.png');


insert into newsinfo(ntitle,ncontent,nauthor,ntime,newsimg) values('2024年全国心理健康和精神卫生防治工作交流会在山东济南召开','&ensp;&ensp;&ensp;&ensp;3月19日，2024年全国心理健康和精神卫生防治工作交流会在山东济南召开。会议坚持以习近平新时代中国特色社会主义思想为指导，深入贯彻党的二十大提出的“重视心理健康和精神卫生”战略部署，认真落实全国卫生健康工作会议、全国医政工作会议精神，分析当前的新形势新任务新要求，研讨下一步发展目标、工作重点和解题思路，共同推动新时代心理健康和精神卫生事业高质量发展。国家卫生健康委医政司医疗管理处处长张文宝出席会议并讲话。  &ensp;&ensp;&ensp;&ensp;国家卫生健康委医政司医疗管理处处长张文宝指出，要认真贯彻落实党中央、国务院和委党组的决策部署，持续推进心理健康和精神卫生工作。各地要紧密工作联系，把握工作重点，明确目标责任，着力推进心理援助热线建设和心理咨询服务管理相关工作，持续加强科普宣传，引导公众正确认知。  &ensp;&ensp;&ensp;&ensp;国家心理健康和精神卫生防治中心党委书记、主任姚宏文代表中心作工作报告。过去一年，心理健康和精神卫生防治工作坚持以习近平新时代中国特色社会主义思想为指导，全力服务卫生健康工作大局，在加强基础研究、强化科研攻关、促进体系建设、增强平台效能以及提升队伍能力等方面取得了新进展、新成效。2024年，中心将坚持贯彻新时代党的卫生健康工作方针，全面落实全国卫生健康工作会议、全国医政工作会议重点任务，进一步推动研究成果转化、完善服务体系建设、深化领域融合发展、培育高素质从业人才，促进心理健康和精神卫生防治事业全面发展。  &ensp;&ensp;&ensp;&ensp;会上，上海、浙江、安徽、山东、湖北、湖南、广东、甘肃等地作心理健康和精神卫生重点工作交流发言，各地方围绕精神专科医疗服务、严重精神障碍诊疗管理、社会心理服务体系推广、心理援助热线建设以及心理咨询、心理治疗规范服务等方面进行深入研讨，就推动全国心理健康和精神卫生高质量发展提出了许多富有建设性的意见和建议。  &ensp;&ensp;&ensp;&ensp;中心副主任黄长群作总结讲话，副主任王钢主持相关环节会议，各省、自治区、直辖市、新疆生产建设兵团卫健委、精卫中心或项目办负责同志80余人参加会议。','国家心理健康和精神卫生防治中心','2024-03-22','new3.png');

insert into newsinfo(ntitle,ncontent,nauthor,ntime,newsimg) values('奋进新征程，激发心力量，首届“全国心理服务体系建设经验交流大会”在滨州市开幕','&ensp;&ensp;&ensp;&ensp;3月20日—3月22日，首届全国社会心理服务体系建设经验交流大会在山东省滨州市召开。此次大会以“奋进新征程,激发心力量”为主题，由国家心理健康和精神卫生防治中心、中央社会工作部志愿服务促进中心、华夏时报社共同主办。中国社会工作联合会会长陈存根，山东省人民政府副省长陈平，国家卫生健康委医政司副司长邢若齐，中国科学院院士、北京大学第六医院院长陆林，北京师范大学理学部教授、认知神经科学与学习国家重点实验室学术委员会主任、北京师范大学原校长董奇，中国残联第八届执行理事会理事、中国康复研究中心党委书记、主任吴世彩，中共滨州市委书记宋永祥，国家心理健康和精神卫生防治中心党委书记、主任姚宏文，华夏时报党委书记、社长、总编辑冯慧君等领导、专家出席，中央政法委、中央社会工作部等中央和国家机关相关部门派代表参加会议，来自全国的社会心理服务相关行业学协会、试点地区的党政部门、科研及医疗机构、社会组织等1500余人现场参会。  &ensp;&ensp;&ensp;&ensp;受国家卫生健康委曹雪涛副主任委托，国家卫生健康委医政司副司长邢若齐出席会议并发表致辞。她表示，多年来各地方、各部门坚持和发展新时期“枫桥经验”，将心理健康服务与社会工作、城乡社区服务、志愿服务、思想政治工作、教育教学工作以及医疗卫生服务等相融合，边探索边总结边推广，不断健全党委领导、政府负责、部门联动、社会参与、专业支持的工作机制，为推动建立覆盖全人群，发挥各部门、各行业作用的社会心理服务模式积累了宝贵的经验。  &ensp;&ensp;&ensp;&ensp;国家心理健康和精神卫生防治中心党委书记、主任姚宏文介绍，2018年，国家卫生健康委、中央政法委、中宣部等10部门联合印发《全国社会心理服务体系建设试点工作方案》，在全国开展试点工作。试点开展以来，各试点地区紧紧依靠群众，勇于实干创新，在实践中不断探索社会心理服务体系建设的理论、方法、应用、模式，涌现出一大批先进经验和典型案例，在推进健康中国、平安中国、幸福中国建设中取得了不凡成效。此次大会旨在全面总结和展示这些经验成果，宣传推广实践创新经验，推进社会心理服务体系建设高质量发展。  &ensp;&ensp;&ensp;&ensp;山东省人民政府副省长陈平表示，人民健康是民族昌盛和国家富强的重要标志。近年来，山东省大力提升社会服务品质，全省136个县市区全部建立社会心理服务体系，省市县三级精神卫生中心均设立心理援助热线，二级以上综合医院、儿童专科医院、妇幼保健院开设精神门诊，1982家乡镇卫生院、社区卫生服务中心均设立心理咨询中心。  &ensp;&ensp;&ensp;&ensp;中共滨州市委书记宋永祥介绍了滨州市打造“心安城市”的实践与思考。他表示，滨州市认真学习贯彻习近平总书记提出的“健全社会心理服务体系”的重要指示要求，扎实推动滨州社会心理服务体系建设，经历“心源”“心语”“心安”的发展历程。“心源”阶段立足于解决“心源性”社会矛盾纠纷，实现了社会矛盾纠纷明显减少的效果。“心语”阶段立足于建设社会心理服务体系，实现了社会文明明显提升、好人好事明显增多的效果。“心安”阶段顺应群众更高品质的生活需求、更高层次的精神追求，坚持平安是基、心安是魂，心安是更高层次的平安，突出安身、安业、安居、安康、安心“五安”打造“心安城市”。  &ensp;&ensp;&ensp;&ensp;社会工作者是社会心理服务体系建设中的中坚力量，在国家社会工作、特别是在社会心理服务体系建设中的一支非常重要力量。中国社会工作联合会会长陈存根呼吁，“让我们在以习近平新时代中国特色社会主义思想指引下，共同推进社会心理服务体系建设，同中华优秀传统文化、社会治理体系、精神文明建设相结合，逐步走出一条具有中国特色的社会心理服务体系建设之路，让健康中国真正落地生根开花结果。”  &ensp;&ensp;&ensp;&ensp;中国残联第八届执行董事会理事、中国康复研究中心党委书记、主任吴世彩在致辞中表示，“残疾人事业是崇高的人道主义事业，新时代为残疾人人生出彩提供了广阔舞台。丰富而专业的思想智慧汇聚碰撞，一定会体现高质量发展和新质生产力的时代精神，一定会拓展新的视野与胸襟，帮助残疾人心理健康研究注入更多活力、更大动力。”  &ensp;&ensp;&ensp;&ensp;中国科学院院士、北京大学第六医院院长陆林指出，社会心理服务体系的建设对打造社会和谐、社会文明发展的生态环境具有重要意义。希望能把一些先进城市、先进试点地区的优秀经验做法在全国普及和推广。  &ensp;&ensp;&ensp;&ensp;国家心理健康和精神卫生防治中心党委书记、主任姚宏文，北京师范大学理学部教授、认知神经科学与学习国家重点实验室学术委员会主任、北京师范大学原校长董奇，国际标准化组织（ISO）第27届主席张晓刚，分别围绕“守正创新、继往开来，持续推进社会心理服务体系高质量发展”“社会心理服务体系建设与学生心理健康发展：成效与建议”“国际标准发展趋势与中国高质量发展”作主旨报告。  &ensp;&ensp;&ensp;&ensp;开幕式致辞和主旨报告之后，华夏时报社党委书记、社长、总编辑冯慧君主持了《滨州市“心安城市”建设指标体系》解读发布、中国社会心理服务创新实践基地”授牌、滨州市“心安城市”创建启动仪式。  &ensp;&ensp;&ensp;&ensp;据了解，3月20日，会议上午举办开幕式和主旨报告，下午邀请14个地区党政部门领导分享社会心理服务体系建设试点成效，并为全国社会心理服务体系建设优秀案例入选单位颁发了证书。21日全天至22日上午，会议围绕社会心理服务赋能城市高质量发展、中国式社会心理服务话语体系构建、社会心理服务网络及能力建设、创新社会治理、人才队伍培育、社会心理服务行业规范发展、科普宣传与志愿服务、心理援助及危机干预，以及儿童青少年、职业人群、老年人、残疾人等重点人群社会心理服务模式，设置了32场社会心理服务创新发展圆桌对话会。  &ensp;&ensp;&ensp;&ensp;大会同期，在滨州市黄河三角洲交易中心（国际博览中心）举办社会心理服务产业展览。主要展示社会心理服务在社会治理、智慧城市、卫生健康、教育、民政等领域、行业中的深度应用，展示社会心理行业相关服务和产品，展示各地区社会心理服务体系建设工作成果和经验等。','国家心理健康和精神卫生防治中心','2024-03-21','new4.png');

insert into newsinfo(ntitle,ncontent,nauthor,ntime,newsimg) values('全国社会心理服务体系建设经验交流大会主席团专家委员会工作会议在北京召开','&ensp;&ensp;&ensp;&ensp;2024年3月1日，由国家心理健康和精神卫生防治中心主办的全国社会心理服务体系建设经验交流大会主席团专家委员会工作会议在北京召开。北京师范大学教授董奇，国家心理健康和精神卫生防治中心党委书记、主任姚宏文，副主任黄长群、王钢，华夏时报社党委副书记、纪委书记闫洪丰等领导和专家出席会议。  &ensp;&ensp;&ensp;&ensp;为全面总结和展示社会心理服务体系建设试点工作成果，宣传推广实践创新经验做法，推进社会心理服务体系建设高质量发展，国家心理健康和精神卫生防治中心、山东省滨州市人民政府、中央社会工作部志愿服务促进中心、华夏时报社定于2024年3月20日至22日在山东省滨州市举办全国社会心理服务体系建设经验交流大会。大会邀请全国医疗卫生、教育、司法、心理以及社会工作等部门及行业领域的领导和专家组成主席团专家委员会。大会主席团主席由陆林、董奇、姚宏文担任，副主席由苏彦捷、王刚、佐斌担任。专家委员会主任委员由刘正奎、闫洪丰、王高华担任，副主任委员由陈雪峰、乔志宏、谢斌、徐勇担任。专家委员会共计67人，本次会议参会61人，请假6人。  &ensp;&ensp;&ensp;&ensp;会议主要由主办方代表大会组委会向主席团专家委员会报告大会筹备进展情况，审议大会初步议程安排和圆桌对话会设置，并听取专家意见建议。  &ensp;&ensp;&ensp;&ensp;大会主席董奇教授指出，即将在山东省滨州市召开的全国社会心理服务体系建设经验交流大会，不仅是目前社会心理服务领域规模最大的会议，也是各行业、各领域贯彻落实党中央决策部署工作成果的集中展示，对进一步推进平安中国、健康中国建设具有重要意义。要体现国家对社心体系建设工作的引领作用。董奇教授要求，专家委员会专家要认真履职尽责，在确保会议内容科学准确、客观严谨并符合社会主义核心价值观的前提下，总结好试点工作先进经验和典型做法，提炼形成符合中国国情实际和传统文化的中国方案，为人民群众提供更便捷、管用、暖心的服务。同时，专家们也要严格遵循工作纪律。  &ensp;&ensp;&ensp;&ensp;大会主席姚宏文在会议总结中指出，解决目前心理相关问题的“牛鼻子”，重点是加快构建中国式社会心理服务话语体系，要围绕“建什么”“谁来建”“如何建”三个方面，研究提出具体方法和实现路径。希望专家委员会结合专业和工作专长，共同做好研究成果和实践经验的分享，共同推动社会心理服务事业的蓬勃发展。  &ensp&ensp参会专家聚焦如何办好全国社会心理服务体系建设经验交流大会进行了深入交流。','国家心理健康和精神卫生防治中心','2024-03-06','new5.png');



create table education(
	eno    int AUTO_INCREMENT  PRIMARY KEY,
	etitle   varchar(100)   not null,
	econtent   varchar(10000)   not null,
	etime     date          not null,
	eimg     varchar(200)   not null
)



insert into education(etitle,econtent,etime,eimg) values('先行者——心理健康校园行','&ensp;&ensp;&ensp;&ensp;2023年9月26日，正值第32个世界精神卫生日来临之际，为推动大学生心理健康工作，促进学生身心健康全面发展，国家心理健康和精神卫生防治中心、中国科学院大学联合主办的“先行者——心理健康校园行”活动启动仪式在中国科学院大学雁栖湖校区举办。国家心理健康和精神卫生防治中心副主任黄长群、中国科学院大学副校长金德鹏等领导出席，来自全国的43所参与高校师生代表通过线上参加启动仪式，在京高校的师生代表约100人参加现场活动。  &ensp;&ensp;&ensp;&ensp;中国科学院大学副校长金德鹏在致辞中表示，当前，青年学生肩负着实现国家富强、民族复兴、人民幸福的时代重任，使学生在变幻复杂的社会环境中，敢于面对困难、挫折与挑战，勇于担当时代的重任，是高校义不容辞的责任与目标。他倡议广大学生要勇立时代潮头，积极投身到实现中华民族伟大复兴的伟大征程中去，做新时代的追梦人，做新征程的先行者。  &ensp;&ensp;&ensp;&ensp;中心副主任黄长群表达了对参加本次活动高校的欢迎和感谢，并表示举办心理健康校园行活动的目的是希望以活动为载体，促进学生养成健康生活方式，提升学生心理健康知识和技能，广泛动员社会各界力量积极行动起来，关心关爱青少年健康成长，为培育学生成为德智体美劳全面发展的社会主义建设者和接班人保驾护航。随后黄长群副主任向参与活动的学生代表授旗并宣布“先行者——心理健康校园行活动”启动。  &ensp;&ensp;&ensp;&ensp;心理健康校园行活动于2022年9月首次由国家心理健康和精神卫生防治中心、中国科学院大学联合发起。通过组织学生开展校园运动打卡及特色活动促进学生心身共育，提高心理健康素养，增强心理韧性。活动以“先行者”作为主品牌，取义“先心智之明，健体魄之行”，传递了高校学生敢为人先、舍我其谁的气魄，彰显了青年才俊砥砺前行、团结协作的精神。每一个学生既是活动的参与者，也是健康的受益者，更是理念的传播者。即日起全国各参与高校将陆续启动本校活动，计划于2023年11月在中国科学院大学举办闭幕式以及高校心理健康知识竞答、心身共育论坛等活动。','2023-12-19','edup1.png');

insert into education(etitle,econtent,etime,eimg) values('国家心理健康和精神卫生防治中心举办第二十一届“世界预防自杀日”暨心理危机干预活动月主题宣传活动','&ensp;&ensp;&ensp;&ensp;9月14日，国家心理健康和精神卫生防治中心（以下简称“中心”）联合世界卫生组织心理危机预防研究与培训合作中心、京津冀心理援助专科联盟，在河北保定举办第二十一届“世界预防自杀日”暨心理危机干预活动月主题宣传活动。中心党委书记、主任姚宏文，中心党委委员、副主任王钢参加本次活动。河北省卫生健康委医政医管处监察专员赵晓亮，保定市卫生健康委副主任刘京，以及来自全国相关领域的专家同道和京津冀三地专业技术人员100余人参加了此次主题宣传活动。  &ensp;&ensp;&ensp;&ensp;活动以“展现行动，创造希望——健康心灵•你我同行”为主题，旨在倡导全社会重视预防自杀工作，呼吁大众关注关爱自身及家人的心理健康，科学认识和看待心理健康问题，增强自杀风险的早期识别与干预水平，提高人们对不良生活事件的应对能力，进一步提升国民心理健康素养，培育自尊自信、理性平和、积极向上的社会心态。  &ensp;&ensp;&ensp;&ensp;中心党委书记、主任姚宏文指出，预防自杀问题需要全社会共同关注，要牢固树立自杀是可以预防的风险防范意识，进一步加强部门合作，开展相关科学研究，一起携手应对这一难题。河北省卫生健康委医政医管处监察专员赵晓亮表示，将以此次活动为契机，提高全省精神科诊疗水平，完善心理健康和精神卫生防治模式，持续提升居民心理健康素养。保定市卫生健康委副主任刘京表示，希望借助本次活动，有效对接京津优势医疗资源，促进保定市心理服务质量和水平全面提升。北京回龙观医院副院长李晓虹、天津市安定医院副院长徐广明、河北省精神卫生中心党委书记栗克清在活动上发言，均表示要进一步做好心理健康和精神卫生防治工作，全面守护人民群众的心理健康。  &ensp;&ensp;&ensp;&ensp;为倡导民众关注和重视心理健康，呼吁相关部门通力协作，主动采取有效措施，防范化解自杀风险，中心党委委员、副主任王钢现场宣读倡议书，呼吁广大心理健康和精神卫生工作者牢固树立防范风险预防自杀的意识，积极开展心理危机风险因素调查监测，持续增强危机干预和心理救援的本领，努力营造遵法守规的良好媒体氛围，主动开展规范易懂的科普宣教活动。随后，参加活动的领导和专家共同点亮心灯，宣布“心理危机干预活动月”正式启动。  &ensp;&ensp;&ensp;&ensp;本次活动还邀请北京回龙观医院副院长李晓虹作题为《自杀危机预防和干预展望》的专题报告，组织京津冀三地专家聚焦心理危机干预进行交流讨论，重点介绍心理危机出现的相关风险因素及应对措施等。  &ensp;&ensp;&ensp;&ensp;为总结推广各地心理危机干预和心理援助实践经验、特色亮点，中心从征集的心理健康和精神卫生典型案例中遴选出10个具有代表性的案例在本次活动中进行展示分享。同时，邀请中南大学湘雅二院精神病学科主任王小平、北京安定医院北京市心理卫生中心副主任西英俊、北京回龙观医院副院长李晓虹、天津市安定医院副院长徐广明、河北省精神卫生中心副院长赵素银等五位专家进行案例点评。  &ensp;&ensp;&ensp;&ensp;活动当天，中心组织京津冀精神专科医院的专家在保定市军校广场面向市民开展了心理健康义诊活动。姚宏文、王钢等一行参加义诊现场活动，与义诊专家及患者交流后，到河北省精神卫生中心（河北省第六人民医院）调研，重点了解当地心理援助热线以及儿童青少年心理健康和精神卫生工作的开展情况。','2023-09-16','edup2.png');

insert into education(etitle,econtent,etime,eimg) values('首届“音乐艺术促进心理健康”沉浸互动式艺术体验活动','&ensp;&ensp;&ensp;&ensp;为深入贯彻落实党的二十大报告中提出的“重视心理健康和精神卫生”，推进“健康中国”“文化强国”两个国家战略的创新融合实践，有效落实《全面加强和改进新时代学生心理健康工作专项行动计划（2023—2025年）》任务要求，由国家心理健康和精神卫生防治中心（以下简称“国家心理健康中心”）主办，上海音乐学院承办，上海体育大学、东华大学、中国传媒大学、南京脑科医院共同协办的首届“音乐艺术促进心理健康”沉浸互动式体验活动于2023年12月12日在上海音乐学院贺绿汀音乐厅举行。  &ensp;&ensp;&ensp;&ensp;共青团中央委员会、中国关心下一代工作委员会、教育部学生服务与素质发展中心及心理健康、精神卫生、文化艺术、新闻传媒等多领域专家学者，国内多所知名高校、医疗卫生和科研机构，以及相关社会团体、公益组织约300人受邀参加本次活动。  &ensp;&ensp;&ensp;&ensp;本次活动的主题为“一生的旋律”， 旨在通过将音乐、视频等多种艺术形式融合后与全生命周期的各阶段相互呼应，唤醒参与者内心深处的感受，激发对生命不同阶段的体验和感悟，以更好理解、欣赏和尊重生命的整个过程。倡导大众养成健康文明的生活方式，以文化艺术促进全生命周期的心理健康。  &ensp;&ensp;&ensp;&ensp;活动包含沉浸式艺术体验与互动式艺术体验两个环节。在沉浸式艺术体验环节，艺术家通过现场演奏、演唱等方式，结合相应的视频或画面，向观众展现代表六个不同生命阶段特点的艺术作品，通过文化艺术对心灵的抚慰作用，帮助参与者把内心深处的情感和体验释放出来，缓解心理压力、消除心理障碍、恢复身心健康，同时也帮助参与者体验伟大而平凡的生命旅程，感悟生命的壮丽和人生的意义，进而提高自我认知和自我探索的能力。  &ensp;&ensp;&ensp;&ensp;在互动式艺术体验环节，艺术家通过邀请观众进行演唱与音乐协奏互动，深度感受音乐艺术的魅力，帮助参与者调适情绪、提升自我认知和自我表达能力，培养团队意识和合作精神，锻炼创新思维和问题解决能力。在这个环节中，参与者不仅仅是艺术的观赏者，更是艺术的创造者和体验者。  &ensp;&ensp;&ensp;&ensp;本次活动除邀请教育、医疗卫生、文化艺术、传媒等专业机构从业人员现场体验外，还从上海、南京两地招募120位青少年学生志愿者同步开展科学研究。现场实时采集基于心理测量、可穿戴、微表情识别、生物反馈等设备的心理和生理数据，识别并分析青少年在活动中的主观感受和反应心理变化的客观生理指标，为后续开展研究分析，以及研发基于数据验证的、有益于心理健康促进的音乐作品提供循证依据，进而为未来推动儿童青少年心理健康促进探索创新实践之路。  &ensp;&ensp;&ensp;&ensp;此次活动受到参与者的广泛一致好评，新华社、人民网等多家媒体进行了现场采访报道。','2023-12-13','edup3.png');

insert into education(etitle,econtent,etime,eimg) values('国家心理健康和精神卫生防治中心举办儿童青少年抑郁防治学术交流活动','&ensp;&ensp;&ensp;&ensp;汇集多领域、多学科专家实践经验与研究成果，运用多视角、多维度探索中国儿童青少年抑郁综合防治策略与实施路径。  &ensp;&ensp;&ensp;&ensp;2021年11月22日，由国家心理健康和精神卫生防治中心主办、北京师范大学心理学部承办的儿童青少年抑郁防治学术交流活动成功举行。本次活动邀请长期从事精神卫生诊疗、心理健康服务、科研与防治工作的国内知名专家进行线	上学术报告和学术交流，旨在深入了解我国儿童青少年抑郁的发生现状、开展成因分析，交流相关领域的基础研究和诊疗进展，总结儿童青少年抑郁预防、干预措施和防治政策，进而为国家开展儿童青少年抑郁防治提供政策建议。共有来自科研院所、高校、行业组织、医疗卫生机构和心理咨询机构等290余位专业人员在线参加活动。  &ensp;&ensp;&ensp;&ensp;国家心理健康和精神卫生防治中心副主任王钢和北师大心理学部党委书记乔志宏分别致辞。王钢副主任强调指出，党中央、国务院高度重视儿童青少年心理健康工作，国家卫生健康委将儿童青少年心理健康工作纳入全面推进健康中国建设的战略部署，积极推进工作任务落实。他希望本次学术交流活动能够充分发挥多领域、多学科专家的实践经验、研究成果与集体智慧，尝试从多视角、多维度探索建立适应我国国情、文化背景和社会经济发展现状的儿童青少年抑郁综合防治策略与实施路径。    一、学术报告  &ensp;&ensp;&ensp;&ensp;活动邀请了长期从事精神卫生诊疗、心理健康服务等工作的国内知名专家学者开展了一系列精彩报告。其中，北京师范大学心理学部部长罗跃嘉教授做了题为“儿童青少年抑郁症的脑科学研究进展”的专题报告。北京回龙观医院党委书记杨甫德做了题为“精神卫生领域在儿童青少年抑郁症防治上的政策、研究与工作进展”的专题报告。中国科学院心理研究所陈祉妍教授做了题为“中国儿童青少年抑郁水平现状、成因分析及预防建议”的专题报告。北京大学第六医院刘靖教授做了题为“儿童青少年抑郁症临床诊疗的进展与挑战”的专题报告。    二、圆桌论坛  &ensp;&ensp;&ensp;&ensp;（一）搭建社会心理服务体系，完善儿童青少年抑郁症防治。本场论坛由北京师范大学心理学部徐洁副教授主持，邀请中国残联直属机关党委办公室主任闫洪丰老师、北京市心理学科特级教师张景芳老师、广州中医药大学副教授沈家宏老师、渡过平台创始人张进老师、以及北京师范大学心理学部陈师韬老师共同研讨，围绕儿童青少年抑郁的影响因素、面临挑战和防治对策建议展开讨论，呼吁公众应理性客观看待抑郁等问题。  &ensp;&ensp;&ensp;&ensp;（二）临床干预视角下，儿童青少年抑郁治疗的进展及对策建议。本场论坛由同济大学附属精神卫生中心副主任医师陈发展博士主持，邀请北京回龙观医院心理科主任刘华清教授、首都医科大学附属北京儿童医院精神科主任崔永华教授、中南大学湘雅二医院主任医师罗学荣教授、北京师范大学心理学部蔺秀云教授以及北京大学心理与认知科学学院姚萍老师共同研讨，围绕着儿童青少年抑郁症的相关问题展开讨论，建议给予家长更多支持和指导，对养育理念进行矫正。  &ensp;&ensp;&ensp;&ensp;本次活动在会议内容丰富度和启发性方面得到参会者高度评价，会议整体满意率达99%。本次学术交流活动为进一步明确未来研究和实践发展方向，从多视角、多维度探索建立适应我国国情、文化背景和社会经济发展现状的儿童青少年抑郁综合防治策略与实施路径探索了思路、打下坚实基础。','2021-11-28','edup4.jpg');
insert into education(etitle,econtent,etime,eimg) values('奥运竞技与良好社会心态的培育','&ensp;&ensp;&ensp;&ensp;东京奥运会的赛事已经结束，而我们每个人却依然要在各自的人生“赛场”上继续拼搏。在这个过程中，如何培育自尊自信、理性平和、积极向上的良好心态呢?奥运健儿给了我们答案。    1.选择适合赛道  &ensp;&ensp;&ensp;&ensp;奥地利的安娜·基森霍夫曾是一名铁人三项运动员，但由于受伤她不得不放弃这项运动。但她转战自行车，利用自己数学博士后的计算优势，在没有团队的情况下夺取了奥运会金牌。  &ensp;&ensp;&ensp;&ensp;人人都是独一无二的，无视自身特点盲目追求“热门”只会使人身心俱疲。发掘自身优势资源，寻找适合自己的赛道，才是更好的选择。    2.坚持成就梦想  &ensp;&ensp;&ensp;&ensp;长期不懈的努力是成功最重要的诀窍。体操吊环冠军刘洋从5岁开始训练，经过22年的磨砺才登上奥运会的最高领奖台。  &ensp;&ensp;&ensp;&ensp;“台上一分钟，台下十年功”。想在人生赛场取得亮眼成绩，仅在最后关头努力远远不够，更要认真地迈好每一步。    3.强化心理素质  &ensp;&ensp;&ensp;&ensp;心理素质对运动员的表现影响极大。射击项目中杨倩稳住心态，靠最后一枪逆转局势夺得金牌。而美国体操名将在跳马项目失误后被压力压垮，选择了退赛。  &ensp;&ensp;&ensp;&ensp;长期或过度的应激反应不仅影响成绩，还会影响健康。要及时觉察自身情绪，学习恰当的应对策略来缓解压力，必要时应寻求专业心理工作者的帮助。    4.坚定精神力量  &ensp;&ensp;&ensp;&ensp;祖国的支持是运动员最强大的精神支柱。体操平衡木冠军管晨辰膝盖伤处的胶布上写着“中国加油”。杨浚瑄赛后发朋友圈写道“如果相信能够发生奇迹的话，那肯定是中国红”。  &ensp;&ensp;&ensp;&ensp;每个人都会受到其所处环境中社会文化的影响。我们要从中华文化这个宝库中汲取精神力量，积极寻求良好文化的熏陶，才能取得更大的进步。    5.团结铸就辉煌  &ensp;&ensp;&ensp;&ensp;团结可以放大个人的力量。中国女排在本届小组赛前三场失利的情况下，依旧团结拼搏，连胜两场都是3∶0，打出了风采。在赛艇、游泳、乒乓球、短跑接力等多项团体赛事中，中国运动员团结合作，都换来了亮眼的成绩。  &ensp;&ensp;&ensp;&ensp;这种团结不只是选手间的团结，更是全民族的团结。来自伟大祖国、伟大人民团结一致的力量助力奥运健儿取得了优异成绩，也必将助力每个中国人继续前行。    6.做最好的自己  &ensp;&ensp;&ensp;&ensp;相比于对手，很多运动员比赛时更关注自身。全红婵在赛后采访时说“每一次比赛你都想好，都想好该怎么去做，想着要怎么去跳。不要想其他的，就想自己的。”  &ensp;&ensp;&ensp;&ensp;人生并不是你死我活的厮杀，一味关注竞争只会让我们陷入无意义的内耗之中。找到属于自己的标尺，不断挑战自己、突破自己，才能有不竭的前进动力。    7.不被成见所困  &ensp;&ensp;&ensp;&ensp;竞技体育一向被认为是年轻人的领域，但很多运动员打破了这种“常识”。32岁的苏炳添在男子100米短跑中创下亚洲最好成绩，46岁的体操选手丘索维金娜仍奋战在东京奥运会赛场上，代表卢森堡出战的58岁的乒乓球运动员倪夏莲书写着参加五届奥运会的“不老传奇”，这些运动员凭努力将不可能变为可能。  &ensp;&ensp;&ensp;&ensp;如果我们相信身边人的“建议”或“常识”，那么我们的行为就会受影响，继而使这种预期变成真实情况。唯有努力突破成见，才可能创造奇迹。  结语  &ensp;&ensp;&ensp;&ensp;17天的体育盛会带给我们的不仅是视觉的享受，更是心灵的洗涤。奥运精神将帮助我们拥有更加强大的内心，助力每个人跑好自己的人生赛道。','2021-08-27','edup5.png');