import '../utils/utils.dart';

class Product {
  int id;
  String name;
  List<String> photos;
  double start,end;
  String description = "Description";
  String rules = " ";//prev brand
  String contact,contactno,fee,oneprize,twoprize,datestring,venue;

  Product({
    this.id,
    this.name,
    this.start,
    this.end,
    this.photos,
    this.description,
    this.rules,
    this.contact,
    this.contactno,
    this.fee,
    this.oneprize,
    this.twoprize,
    this.datestring,
    this.venue

  });
}

List<Product> products = [
  Product(
    id: 1,
    name: "WESTERN GROUP DANCE ",
    start: 18.5,
    end: 21,
    photos: [AppImages.watch20],
    contact: "Naman",
    contactno: "8217299116",
    fee: "800",
    oneprize: "12000",
    twoprize: "8000",
    datestring:"13th 6.30pm-9pm ",
    venue: "Main Stage",
    description: "Teams from other colleges will come and perform their choreographies.",
    rules:"● A minimum of 10 and a maximum of 15 dancers in a team.\n● Time limit 6+2 minutes. \n● Prelims will be held, send your videos to danzaddix.bmsce@gmail.com before 6th march \n● The music tracks should be on a pen-drive. \n● No other styles of dancing are permitted other than Western. \n● Props are allowed, any kind of fluid heavy objects or flame are not permitted. \n● At no point of sequence, the stage should be left empty for more than a minute. \n● No profanity is to be displayed. \n● The music should be submitted one hour prior to the event. \n● Bollywood Dance is not allowed. \n● Judge’s decision is final"
  ),
  Product(
    id: 2,
    name: "SOLO DANCE",
    start: 18.5,
    end: 21,
    photos: [AppImages.watch20],
    description: "Solo performance from people of other colleges as well as our college . Any dance style is allowed .Those who fly solo have the strongest wings. Come to Utsav to find out who emerges as the legendary Zapdos.",
    rules:"\n● It is a solo event and any form of solo dance is permitted. \n● The time limit is 3+1 minutes. \n● Number of entries per college will be decided on spot. \n● The music must be submitted in a pen-drive only, and should be provided well in advance. \n● Obscenity of any kind is not allowed and will lead to immediate disqualification. \n● Judge’s decision is final.",
    contact: "Ayesha",
    contactno: "8050320785",
    fee: "200",
    oneprize: "1500 ",
    twoprize: "1000 ",
    datestring:"14th 10am-2pm  ",
    venue: "Stage 2 (indoor stadium) ",
  ),
  Product(
    id: 3,
    name: "TURTLE JAM 1v1 ",
    start: 18.5,
    end: 21,
    photos: [AppImages.watch20],
    description: "A break dance jamming event. 1v1 The floor’s your stage. And it’s up to your moves to set the stage on fire. Sparks sure will fly, as the best of the best street dance artists battle it out for fame and glory at Utsav’s TURTLE. Screaming crowds, crews pitted against each other & the epic one-on-one. This is something you just cannot miss!",
    rules:"● The participants will be given a maximum of 1 minutes time to showcase their moves. \n● The best will be selected for the final rounds by the judge. \n● The number of battles will be decided depending on the number of participants. \n● Props are allowed (any kind of fluid, heavy objects or flame are not permitted). \n● Any kind of obscenity will lead to disqualification.",
    contact: "Tanu ",
    contactno: "7411421114 ",
    fee: "500 ",
    oneprize: "8000 ",
    twoprize: "4000 ",
    datestring:"15th 9am-5pm ",
    venue: "Stage 2 (indoor stadium) ",
  ),
Product(
id: 4,
name: "TURTLE JAM 2v2",
start: 9.0,
end: 17.0,
photos: [AppImages.watch20],
description: "A break dance jamming event.2V2",
rules:"● The participants will be given a maximum of 2 minutes time to showcase their moves. \n● The best will be selected for the final rounds by the judge. \n● The number of battles will be decided depending on the number of participants. \n● Props are allowed (any kind of fluid, heavy objects or flame are not permitted),. \n● Any kind of obscenity will lead to disqualification. ",
contact: "Aishwarya",
contactno: "9845577227",
fee: "750",
oneprize: "15000",
twoprize: "7000",
datestring:"15th 9am-5pm",
venue: "Stage 2 (indoor stadium),",
),


Product(
id: 5,
name: "TURTLE JAM CREWvCREW",
start: 18.5,
end: 21,
photos: [AppImages.watch20],
description: "A break dance jamming event.Competition consists of two rounds. Round 1: Choreography. Round 2: Crew vs. Crew battle.",
rules:"● Time limit for Round 1 is 5+2 minutes. \n● The best crews will be selected for Round 2. \n● Team limit is a maximum of 12 members. \n● Music should be on a CD or a pen drive. \n● Music should be submitted one hour prior to the event. \n● Judges’ decision is final.",
contact: "Madhuri",
contactno: "7259712640",
fee: "1000",
oneprize: "25000",
twoprize: "15000",
datestring:"15th 9am-5pm ",
venue: "Stage 2 (indoor stadium),",
),


Product(
id: 6,
name: "EASTERN GROUP DANCE ",
start: 18.5,
end: 21,
photos: [AppImages.watch20],
description: "Teams from other colleges will come and perform their choreographies.",
rules:"● A minimum of 8 and maximum of 12 dancers in a team. \n● Time limit: 5+1 minutes. \n● Video screening will be held before the final performance on the stage. \n● Bollywood style & semi- classical is not allowed. \n● Only Indian style or contemporary dance form is allowed. \n● A maximum of 1 minute will be allowed for stage setting. \n● The music tracks should be on a pen drive only. \n● Props are allowed (any kind of fluid, heavy objects or flames are not permitted),. \n● No profanity is to be displayed. \n● The music should be submitted 1 hour prior to the event. \n● Judges’ decision is final. ",
contact: "Sharanya",
contactno: "9449164340",
fee: "800",
oneprize: "12000",
twoprize: "8000",
datestring:"13th 6.30pm-9pm",
venue: "Main Stage",
),


Product(
id: 7,
name: "SARGAM",
start: 9.0,
end: 13.5,
photos: [AppImages.watch20],
description: "Classical music solo singing. Bhairavi, Kalyani , Kambhoji , Hamsadhwani , Amruthavarshini ,Vasanta, Pooryadhanashri , Basant, Maand, Sohani ..the list goes on. Indian classical music is filled with beautiful expressions, intelligence,emotions and feelings. Is Raaga, Kalpana Swara, laya your comfort zone? This is the stage for your talent.",
rules:"● Classical Music Compositions only. \n● Film songs will not be considered. \n● Time limit : 7+3 minutes \n● Accompaniment of any form is allowed (not more than 2),.",
contact: "Saakshi Bhagavath",
contactno: "8971034836",
fee: "200",
oneprize: " 2000",
twoprize: "1000",
datestring:"14th 9am-1.30pm",
venue: "MV hall",
),

Product(
id: 8,
name: "VISTAAR",
start: 12.0,
end: 15.0,
photos: [AppImages.watch20],
description: "Group / band performing Indian music only.Get like minded musicians together .Endless jamming sessions, all night jams ,composing songs..are you the budding Indian band looking out for a stage? Here is a grand stage to show off your team effort.",
rules:"● A Team can have 4 – 8 members.\n● Compositions sung should be Indian in origin and language.(Own compositions have more weightage), \n● Maximum of 4 Instrumentalists are allowed. (Other than Vocalists with guitars), \n● Time limit: 10+5 minutes \n● Cross-college teams are allowed.",
contact: "Sangeetha",
contactno: "8197030945",
fee: "500",
oneprize: "5000",
twoprize: "3000",
datestring:"14th 12pm-3pm",
venue: "Audi 1",
),

Product(
id: 9,
name: "LAYAKARI",
start: 9.0,
end: 15.0,
photos: [AppImages.watch20],
description: "Instrumental Percussion Solo. The mesmerising rhythm of , Karaikudi Mani, Zakir Hussain, Palghat Mani Iyer, Yogesh Samsi, Shiva Mani, the art of playing a musical instrument is a gifted one. This is for the ones gifted with the art of rhythm.",
rules:"●Classical Music Compositions only. \n● Time limit : 7+3 minutes \n● Accompaniment of any form is allowed (not more than 1),.",
contact: "Ajay",
contactno: "9380794848",
fee: "200",
oneprize: "2000",
twoprize: "1000",
datestring:"14th 9am-3pm",
venue: "FDC Hall",
),

Product(
id: 10,
name: "GAMAKA",
start: 9.0,
end: 15.0,
photos: [AppImages.watch20],
description: "Instrumental Non Percussion Solo. Magical music of Ravishankar, Hariprasad Chaurasia, Lalgudi Jayaraman,U Srinivas, the art of playing a musical instrument is a gifted one. This is for the ones blessed with the art of instruments.",
rules:"● Classical Music Compositions only. \n● Film songs will not be considered. \n● Time limit : 7+3 minutes \n● Accompaniment of any form is allowed (not more than 1),.",
contact: "Snigdha",
contactno: "6362252422",
fee: "200",
oneprize: "2000",
twoprize: "1000",
datestring:"14th 9am-3pm",
venue: "FDC Hall",
),

Product(
id: 11,
name: "MISHRAM",
start: 9.0,
end: 15.0,
photos: [AppImages.watch20],
description: "Light / filmy vocal solo.  Have a good voice? Sonu Nigam, Shreya Ghoshal, Arjit Singh, SPB, are your favourites? ",
rules:"● Film songs, Bhaavageethe, Janapada Geethe, Tumri, Ghazal, Devaranama \n● Time limit : 4+1 minutes \n● Accompaniment of any form is allowed (not more than 1),. \n● Compositions sung can be Devotional songs, Film songs, Folk songs, Bhavageethes, Ghazals. ",
contact: "Avani",
contactno: "7204056566",
fee: "200",
oneprize: "2000",
twoprize: "1000",
datestring:"14th 9am-3pm",
venue: "FDC Hall",
),

Product(
id: 12,
name: "VOCAL SOLO",
start: 14.0,
end: 17.0,
photos: [AppImages.watch20],
description: "Solo singing (without karaoke),.",
rules:"● Individual event. \n● Maximum of 5 minutes (3+2), will be provided to each participant. \n● Performances should be in English only. \n● In case of your own composition, a copy of the lyrics should be submitted. \n● Pre-recorded music or sound tracks are NOT allowed. \n● Participants will be disqualified if vulgarity or foul language is found being used. \n● One accompanist is allowed. Participants should carry their own accompanying non-electrical/electronic instrument. Keyboard can be used in a piano tone only. \n● Judges’ decision will be final.",
contact: "Shweta",
contactno: "7259846039",
fee: "150",
oneprize: "2000",
twoprize: "1000",
datestring:"14th 2pm-5pm",
venue: "Audi 2",
),
Product(
id: 13,
name: "BATTLE OF BANDS",
start: 11.0,
end: 14.5,
photos: [AppImages.watch20],
description: "Rock band battle.",
rules:"● Maximum of 12 minutes (8+4), will be provided to each band including set up time. \n● Performances should be in English only. \n● In case of your own composition, a copy of lyrics should be provided. \n● Bands will be disqualified if obscenity or foul language is found being used. \n● Band members should carry their own musical instruments, drum set will be provided. \n● Bands are requested to be present at the venue 15 minutes before schedule. \n● Programmed music is not allowed. ",
contact: "Shantanu",
contactno: "8050220570",
fee: "800",
oneprize: "12000",
twoprize: "7000",
datestring:"14th 11am-2.30pm",
venue: "Main Stage",
),
Product(
id: 15,
name: """ESH""",
start: 14.5,
end: 16.5,
photos: [AppImages.watch20],
description: """Beatbox battle""",
rules:"""● Individual event. It’s a one man show \n● The event will be split into three rounds: Preliminary, Semis and the Finals \n● In the preliminary round, each beatboxer will be given 1 minute to showcase their piece \n● who wins the showcase, based on their judging criteria. \n● Top 4 participants will qualify to the semi final round after the preliminary round. The judges will deliberate accordingly, if there is a tie \n● Failure to arrive on stage when called up on the stage lead to disqualification """,
contact: """Prithvi""",
contactno: """8867783026""",
fee: """100""",
oneprize: """2000""",
twoprize: """1000""",
datestring:"""14th 2.30pm-4.30pm""",
venue: """Main stage""",
),
Product(
id: 16,
name: """WESTERN GROUP ACOUSTICS""",
start: 10,
end: 14,
photos: [AppImages.watch20],
description: """Western Group singing and instruments.""",
rules:"""● 2-10 Members are allowed to perform at this event.\n● This is a single round competition.\n● Bands playing acoustic and acapella are allowed\n● Time limit: (10+3), for a group performance. This time is inclusive of sound check\n● No electrical instruments would be allowed with the exception of electric bass. Onesynthesizer with only the piano sound is allowed per entry\n● The decision of the judges will be final and binding.""",
contact: """Raksha""",
contactno: """8105579957""",
fee: """400""",
oneprize: """4000""",
twoprize: """2000""",
datestring:"""15th 10am-2pm""",
venue: """Auditorium 1""",
),
Product(
id: 17,
name: """FASHION SHOW""",
start: 17,
end: 19.5,
photos: [AppImages.watch20],
description: """Celebrating the season of artistic expression , flaunt your sense of fashion and confidence onour stage.""",
rules: """● Number of participants should be 10-12 per team.\n● Time limit 6-8 minutes including narration.\n● Open theme.\n● Vulgarity and obscenity will lead to immediate disqualification.\n● Judges decision is final.\n● Background music should be submitted in a pen drive with your college name on it,one hour in advance.\n● On-spot registration is not allowed.""",
contact: """Bhavana.P.N""",
contactno: """8197495338""",
fee: """2500""",
oneprize: """25000""",
twoprize: """15000""",
datestring:"""14th 5pm-7.30pm""",
venue: """Main Stage""",
),
Product(
id: 18,
name: """MISSION IMPROV-ABLE""",
start: 11,
end: 13,
photos: [AppImages.watch20],
description: """Pravrutthi presents a theatre event like no other! Comedy! Drama! Suspense! Completelyon-the-spot topics! Random props! Crazy situations! Exclamation marks! We have it all! If youthink you and your friends have what it takes to “prov” your improv claims, come and register!""",
rules:"""● 3+2 in a team\n● Topic for Round 1 will be given on spot\n● Only 2 minutes given per team to discuss.\n● Each team has to perform for 3+2 minutes and all the members must be involved.\n● Details of round 2 will be informed on-spot.\n● Judge's decision will be final""",
contact: """Pradyumna""",
contactno: """9902776183""",
fee: """200""",
oneprize: """2500""",
twoprize: """1000""",
datestring:"""15th 11am-1pm""",
venue: """CSE SeminarHall""",
),
Product(
id: 19,
name: """INVINCIBLE""",
start: 14,
end: 16,
photos: [AppImages.watch20],
description: """This is the event where you bring out the face of the unbeatable actor hiding in you. So whatare you waiting for... Show your acting skills and be THE INVINCIBLE.""",
rules:"""● This is an individually performing event.\n● For the first round participants have to come prepared with a 2+1 min monologue (nolanguage barrier),\n● Participants on progression to the next round will be informed of details of the sameon spot.\n● The decision of the judges will be final.""",
contact: """Manu Shreyas""",
contactno: """8867572946""",
fee: """100""",
oneprize: """2000""",
twoprize: """1000""",
datestring:"""15th 2pm-4pm""",
venue: """Auditorium 2""",
),
Product(
id: 20,
name: """THE BEEP SHOW 'MAD ADS' """,
start: 18.5,
end: 21,
photos: [AppImages.watch20],
description: """The 'mad ads' event! The event where advertising and humorous acting is needed for thatbig W. This is the stage for those crazy people whose creativity meets madness. So what areyou thinking about? Get your teams and show off your talent in the ads.""",
    rules:"""● The team must contain 6+1 members. (1 narrator),\n● Time duration is 6+2 minutes.\n● No props are allowed.\n● Any language of your sort.\n● No vulgarity, any sort will lead to disqualification.\n● Teams must report to the venue 10 minutes prior to the event timings.\n● Judges' decision is final.""",
contact: """Karan""",
contactno: """9731441482""",
fee: """400""",
oneprize: """4500""",
twoprize: """2000""",
datestring:"""14th 2pm-5pm""",
venue: """Indoor stadium""",
),
Product(
id: 21,
name: """DUDE PERFECT""",
start: 14,
end: 17,
photos: [AppImages.watch20],
description: """Participants have to draw manga or anime characters on spot or create their own versions ofcharacters with a suitable name.""",
rules:"""● Participants are required to get their own stationary\n● Two hours duration\n● Participants need to draw a manga/anime character on spot\n● Phones cannot be used for reference purposes\n● A3 sheets will be provided.""",
contact: """Akshara Raju""",
contactno: """8105406213""",
fee: """100""",
oneprize: """2000""",
twoprize: """1000""",
datestring:"""14th 2pm-5pm""",
venue: """CR 304""",
),

Product(
id: 30 ,
name: "Mr. UTSAV",
start: 18.5,
end: 21,
photos: [AppImages.watch20],
description: """The judges will assess the athlete on the basis of:\n● physical proportions\n● symmetrical development\n● muscularity\n● posing routine\n● presentation ROUND 1: COMPULSORY POSES There will be 8 calls to the athletes for posing:
Pose one - Front double biceps
Pose two - Front lats spread
Pose three - Side chest
Pose four - Read lats spread
Pose five - Read double biceps
Pose six - Side triceps
Pose seven - abdominal and thighs
Pose eight - Most muscular
ROUND 2: FREE POSING ROUTINE (60SEC),
[Note: In order to give themselves time to warm up and change into their posing attire,
competitors should be in the backstage warm-up area at least 45 minutes prior to the start
time of the judging of their category. All competitors will be solely responsible for ensuring that
they are present and prepared to compete when their category is called onstage failing which
they may be eliminated from the competition. thex]""",
rules:"""
DRESS RULES
\n● Applying tan for the stage is necessary as it will be considered for judging.
\n● Competitors will wear an undergarment which are clean and decent. The colour and
fabric of the shorts will be left to the competitor’s discretion.
\n● The wear should be carefully chosen so that it interacts with your body shape to allow
unrestricted movement during posing routine . The use of padding anywhere in the
trunks is prohibited.
\n● Personal sponsors logos are not permitted on the wear.""",
contact: "Akhil,Karan Raj",
contactno: "9945107250, 7892423595",
fee: "300",
oneprize: "5000",
twoprize: "2500 ",
datestring:"13/03/2020",
venue: "Stage 2(indoor stadium),",
),

Product(
id: 31,
name: "ZENITH",
start: 11.0,
end: 14.0,
photos: [AppImages.watch20],
description:""" Whether it be this new decade or the last, the Universe and it's unknowns, mysteries and
beauty have always intrigued and fascinated mankind.
Come test your wits and precision in the battle of cognitive ability and see whether you have
what it takes to emerge victor in our event which comprises questions of simple yet analytical
nature!""",
rules:"""Round 1: The first round will be a timed round. Teams will be given a simple crossword and
will have to solve it before time runs out. No elimination.
Round 2: Timed round. Teams will be given puzzles and riddles they have to solve.
The cumulative scores of round 1 and round 2 will be used for elimination of teams.
Round 3: A live catchphrase+taboo round.
021
\n● Teams of 2.
\n● Cross college teams are allowed.
\n● The use of the internet for round 1 and round 2 will lead to immediate disqualification.
""",
contact: "Vallari Nyayapati,Ishaan Kumar,Vurity",
contactno: "99019 81854,96630 83857",
fee: "100 ",
oneprize: "2000",
twoprize: "1000",
datestring:"14/03/2020",
venue: "CR 402",
),

Product(
id:32 ,
name: "CHAKRAVYUHA",
start: 15,
end: 17,
photos: [AppImages.watch20],
description: "Combination of all events.",
rules:"""● Team of 3
\n● Preliminary round consists of crossword(padabandha), solving
\n● Top 5 teams will be selected to the further rounds
\n● Further rounds will be related to the topics such as culture, folklore ,film
industry(sandalwood), of karnataka.""",
contact: "Shravan,Bhoomija",
contactno: "9686475476,6362043248",
fee: "120",
oneprize: "1500",
twoprize: "1000",
datestring:"15/02/2020",
venue: "MESH",
),

Product(
id:33,
name: "CHARCHA SPARDHE",
start: 13,
end: 15,
photos: [AppImages.watch20],
description: "Debate",
rules:"● No of participant-1\n● Based on already mentioned topic the participant has to speak for or against it\n● 40-50 percent of the top participants will be selected for the next round\n● On spot topic will be given in the second round for debate with sufficient time of 25-30minutes to prepare.",
contact: "Surya vaibha,Yogish H G",
contactno: "9686460187,9916225204",
fee: "60",
oneprize: "1000 ",
twoprize: "500 ",
datestring:"15/02/2020",
venue: "MESH",
),

Product(
id: 34,
name: "ANTYAKSHARI.",
start: 13,
end: 15,
photos: [AppImages.watch20],
description: "Cini quiz.",
rules:""""● Team of 2
\n● General quiz related to music and cinema of sandalwood film industry in the
preliminary round
\n● Top 5 teams will be selected to the further rounds
\n● This event consists of 3-4 rounds after prelims
""",
contact: "Bharath,Mutturaj",
contactno:" 9632934225,9731979872",
fee: "120 ",
oneprize: "1500 ",
twoprize: "1000  ",
datestring:"14/02/2020",
venue: "MESH",
),

Product(
id:35,
name: "MOOKABHINAYA",
start: 10,
end: 13,
photos: [AppImages.watch20],
description: "dumb charades.",
rules:"""● Group of 3 members ,one of the member should enact other two should guess it
\n● There will be prelims.
\n● Top 5 groups will be selected to the next 4 rounds""",
contact: "Mahesh Moger,Vineeth",
contactno:"8867793693,9902382359",
fee: " 180",
oneprize: " 2000",
twoprize: " 1500 ",
datestring:"15th 10am-1pm",
venue: "MESH ",
),

  Product(
    id:36,
    name: """RASAPRASHNE (QUIZ), """,
    start: 11,
    end: 13,
    photos: [AppImages.watch20],
    description: """General quiz in kannada""",
    rules:"""● Team of 2
\n● This event consists of two rounds
\n● In the preliminary round written test of 20 questions will be asked
\n● Top 5 teams will be qualified for the last round.""",
    contact: """Nirmith KP,
Chandrashekhar KL""",
    contactno:"""8495867407,
8105037761
""",
    fee: """120 """,
    oneprize: """1500 """,
    twoprize: """ 1000 """,
    datestring:"""14th
11am-1pm""",
    venue: """MESH
 """,
  ),

  Product(
    id:37,
    name: """E.N.D. - ESCAPE INTO NUEVO DECENNIUM """,
    start: 13,
    end: 16,
    photos: [AppImages.watch20],
    description: """It's a team challenge where a team has to solve a series of puzzles based on logical thinking
crossed over with tech based clues within a given amount of time. The teams will be locked
inside a room where puzzles will be the same for all the participants. There will be no use of
the internet. It's a team of three event and the first team to solve the puzzle within a given
amount of time will win the competition.""",
    rules:"""A team can consist of a maximum 3 people.
\n● Participants are not allowed to discuss or share hints with other teams.
019
\n● The event will be of 2 hours and whichever team will reach the final clue within given
time will be the winner. Therefore, the event will stop at that point.
\n● The decision of the club coordinator will be final.
""",
    contact: """Anmol Kumar,
Saurabh Agarwal
""",
    contactno:"""8051729198,
8960584654""",
    fee: """100 """,
    oneprize: """ 2500""",
    twoprize: """- """,
    datestring:"""15th
1pm-4pm""",
    venue: """CR501-505 """,
  ),

  Product(
    id:38,
    name: """ CODE-A-THON""",
    start: 9,
    end: 13,
    photos: [AppImages.watch20],
    description: """Code-a-thon is a 3 hour coding competition which will be conducted on an online coding
platform. This contest is a great opportunity for those who have zeal for programming in a
competitive environment.""",
    rules:"""● Individual event.
\n● There will be a set 10 programming questions. Each correctly solved test case will
fetch some marks. At the end, a participant with the highest marks will be declared
the winner.
\n● Use of the internet for copying or reference is prohibited and will lead to
disqualification.
\n● The decision of the club coordinators will be final""",
    contact: """Priyanshi Saxena,
Shubham Raj""",
    contactno:"""7000179070,
9430061374
""",
    fee: """ 100""",
    oneprize: """ 2000""",
    twoprize: """1000  """,
    datestring:"""15th
9am-1pm""",
    venue: """ISE lab """,
  ),

  Product(
    id:39,
    name: """ONLINE CRYPT HUNT """,
    start: 13.5,
    end: 15.5,
    photos: [AppImages.watch20],
    description: """It is a treasure hunt in which each team will try to reach the treasure (complete answering all
the questions), in the minimum possible time. A team can proceed to the next question only
after it has completed solving the previous question. They can use the internet and whatever
resources are available at the time of the competition. The team which answers the most
number of questions in the least time possible wins""",
    rules:"""● A team can consist of a maximum of 2 people.
\n● Discussing answers or hints will lead to disqualification.
\n● Use of the internet and mobile phone is allowed.
\n● The decision of the club coordinator will be final. .""",
    contact: """Sakshi Srivastava
Venkatesh,
Subramanya Iyer
Giri""",
    contactno:"""8670794779,
7338503803
""",
    fee: """50 """,
    oneprize: """1500 """,
    twoprize: """ 1000 """,
    datestring:"""14th
1.30pm-3.30pm""",
    venue: """ISE Lab """,
  ),

  Product(
    id:40,
    name: """MOCK PLACEMENTS """,
    start: 9,
    end: 13.5,
    photos: [AppImages.watch20],
    description: """Mock Placement is an exciting brew of once aptitude test, communication skills for group
discussion and knowledge of personal interview. Put your skills to test and make yourself
aware of how the placement test would be.
The event will be of 3 rounds. Students will be eliminated after each round. The series of
rounds have been made analogous to the actual placement.""",
    rules:"""● Individual Event
\n● Participants will be eliminated after each round
\n● Cheating in any means will lead to disqualification.
\n● The decision of the judges in all round will be final.
""",
    contact: """Ashish Kumar
Tiwari,
Krutarth Dhimant
Pathak""",
    contactno:"""8296077392,
8141483231""",
    fee: """ 50""",
    oneprize: """1500  """,
    twoprize: """1000  """,
    datestring:"""14th
9am-1.30pm""",
    venue: """ISE Lab """,
  ),

  Product(
    id:41,
    name: """VIRTUAL GAMING EX """,
    start: 14,
    end: 17,
    photos: [AppImages.watch20],
    description: """Experience virtual gaming with various VR games .""",
    rules:"""-""",
    contact: """Prithvi,
Akshay""",
    contactno:"""8660708536,
8317363807
""",
    fee: """100 """,
    oneprize: """- """,
    twoprize: """ - """,
    datestring:"""13th
2pm-5pm""",
    venue: """CR 305 """,
  ),





  Product(
    id:42,
    name: """CALL OF DUTY MOBILE """,
    start: 9,
    end: 13,
    photos: [AppImages.watch20],
    description: """-""",
    rules:"""Standard rules apply.""",
    contact: """N.jayanth,
Sunil""",
    contactno:"""8073987012,
8904800850""",
    fee: """200  """,
    oneprize: """ 2500""",
    twoprize: """1000  """,
    datestring:"""15th
9am-1pm""",
    venue: """CR 405 """,
  ),




  Product(
    id:43,
    name: """PUBG MOB """,
    start: 9,
    end: 13,
    photos: [AppImages.watch20],
    description: """""",
    rules:"""Standard rules.""",
    contact: """Sanjeev,
Pranav Rao""",
    contactno:"""9481255911,
9900363398""",
    fee: """200 """,
    oneprize: """2500 """,
    twoprize: """1000  """,
    datestring:"""14th
9am-1pm""",
    venue: """CR 404 """,
  ),





  Product(
    id:44,
    name: """Counter Strike : Global Offensive """,
    start: 9,
    end: 12.5,
    photos: [AppImages.watch20],
    description: """""",
    rules:"""● 1st few rounds race to 5/7 (depending on teams registered), - map chosen through
toss
\n● semis 30 rounds, 1 map, veto
\n● Finals best of 3. 30 rounds., veto
\n● They can get their accessories. No configs allowed.
\n● 64 tick servers.
\n● Standard csgo rules.
\n● Mouse and other accessories needed are provided.
\n● Team event.""",
    contact: """Prithvi,
Yogesh""",
    contactno:"""8600708536,
7204908850""",
    fee: """500 """,
    oneprize: """5000 """,
    twoprize: """ 2000 """,
    datestring:"""14th
9am-12.30
pm""",
    venue: """CR 406 """,
  ),





  Product(
    id:45,
    name: """FIFA""",
    start: 9,
    end: 13,
    photos: [AppImages.watch20],
    description: """""",
    rules:"""● Standard FIFA rules.
\n● Controllers are provided.
""",
    contact: """Samarth,
Sunil""",
    contactno:"""9480450432,
8904800850
""",
    fee: """200  """,
    oneprize: """4000 """,
    twoprize: """1500  """,
    datestring:"""15th
9am-1pm""",
    venue: """CR 406 """,
  ),





  Product(
    id:46,
    name: """STRATEGIST’S DAY OUT """,
    start: 10,
    end: 13,
    photos: [AppImages.watch20],
    description: """'The key to winning a battle lies not only in strategizing but also in understanding your
opponents’ strategy.'
Does it excite you looking at your opponents and trying to figure out their next move?
Is strategizing one of your strong points?
Then we have just the right thing for you!
Get ready to have your strategic skills tested!
Pentagram the Mathematical society of BMSCE presents Strategists' Day Out.
An event consisting of games based on strategy, fun and logic with interesting twists in it. We
have something everyone will enjoy. So if you're up for some fun then this is the right place
for you.""",
    rules:"""● A maximum of 2 people in a team. A Team with only 1 member is also permitted.
016
\n● Calculators are not allowed.""",
    contact: """Manu Saraogi,
Anant Jain,
Gowtham""",
    contactno:"""9483016960,
9521412156,
8660788744""",
    fee: """100 """,
    oneprize: """1500 """,
    twoprize: """ 1000 """,
    datestring:"""14th
10am-1pm""",
    venue: """CR 402,403 """,
  ),



  Product(
    id:47,
    name: """MATH MANIA
 """,
    start: 14,
    end: 17,
    photos: [AppImages.watch20],
    description: """'I want to be the very best,
Like no one ever was.
To win them is my real test,
To take more is my cause!!'
Can you get em all?!
This event is about showing off your solving skills as you earn badges and hold on to them in
a twisted board game while facing off against others. Take on the wheel of fortune and lots
more with your team-mate!
It's going to be a lot of fun and we hope to see you there!""",
    rules:"""A team should have 2 members.
\n● Single participation is allowed but you need a teammate for extra round (no points for
this),
\n● No calculator allowed""",
    contact: """Mark Aashish,
Tanay,
Anukesh""",
    contactno:"""8892998425,
9752485840,
9380602223""",
    fee: """ 50""",
    oneprize: """1500 """,
    twoprize: """1000  """,
    datestring:"""15th
2pm-5pm""",
    venue: """CSE Seminar
Hall
 """,
  ),



  Product(
    id:48,
    name: """INFINITE AMAZE """,
    start: 14,
    end: 16.5,
    photos: [AppImages.watch20],
    description: """You find yourself lost in a mysterious, virtual world. Battle every puzzle, decode every cipher
and channel your inner mathematical genius to find a way through it all.The path you fear to
015
enter might hold the treasure you seek.. buckle up to be a- _mazed_""",
    rules:"""● No calculator and cellphones to be used
\n● It is a team of 2 people
\n● Decipher questions and earn the treasure
\n● The first team to fetch it will be declared winner followed by a runner""",
    contact: """Rishika,
Nikhil,
Dharmk""",
    contactno:"""9916536788,
9986743899,
8147680598""",
    fee: """ 100 """,
    oneprize: """1500 """,
    twoprize: """ 1000  """,
    datestring:"""14th
2pm-4.30pm""",
    venue: """CR 407, 408
 """,
  ),




  Product(
    id:49,
    name: """MOCK IPL AUCTION
 """,
    start: 14,
    end: 17,
    photos: [AppImages.watch20],
    description: """Invest and buy as in IPL Auction with the virtual money provided to you.
The event will follow the same rules and procedures as in the IPL auction""",
    rules:"""● Each team will be allotted virtual points with which they shall bid for the player of their
choice.
\n● Each player will have been allotted points based on their contribution to the team in
their present-day form (not shown to the participants),.
\n● The players will be graded in three categories namely batting, bowling and fielding.
\n● Each team will buy 15 players and the team will be evaluated based on the total
points and money left.
\n● Quiz before the event.""",
    contact: """Shashank,
Sharanya""",
    contactno:"""8073827758,
9739207066""",
    fee: """50 """,
    oneprize: """2000 """,
    twoprize: """ 1000 """,
    datestring:"""15th
2pm-5pm""",
    venue: """ISE Seminar
Hall """,
  ),




  Product(
    id:50,
    name: """THE BIG PITCHER! """,
    start: 13,
    end: 15,
    photos: [AppImages.watch20],
    description: """""",
    rules:"""ROUND 1: Participants will be provided with an imaginary product name. They have to come
up with a solid and catchy tagline (In English),. Tagline should not exceed 20 words and
should encapsulate everything necessary for the product.
ROUND 2:Participants will be provided with simple things which are used daily. Then they'll
be given 30 seconds time to come up with a sensible modification of that thing, which serves
the purpose better than the original.
ROUND 3:Participants have to sell the given product to the judge. They'll be blindfolded and
have to use their touch sense to analyse and sell the product.""",
    contact: """Pranjal Pandey,
LIKHIT""",
    contactno:"""9549297699,
7259819753""",
    fee: """50 """,
    oneprize: """2000 """,
    twoprize: """1000  """,
    datestring:"""14th
2pm-5pm""",
    venue: """ CR 303""",
  ),




  Product(
    id:51,
    name: """DIGITAL MARKETING WORKSHOP """,
    start: 13,
    end: 15,
    photos: [AppImages.watch20],
    description: """Digital Marketing undertaking includes Content Marketing, Influencer Marketing, Campaign,
e-commerce, social media marketing, display advertising. The primary objective is to provide
online presence to business through websites and social media. This can spread awareness
about brands and provide support to customers by handling their queries, which ultimately
014
leads to sales, customer acquisition and satisfaction""",
    rules:"""-""",
    contact: """Rachana,
Archishman""",
    contactno:"""7892935696,
9148087351
""",
    fee: """- """,
    oneprize: """- """,
    twoprize: """-  """,
    datestring:"""14th
2pm-5pm""",
    venue: """ CR 302""",
  ),




  Product(
    id:52,
    name: """PANORAMA """,
    start: 0,
    end: 24,
    photos: [AppImages.watch20],
    description: """Panorama is an offline/on-the-spot photography contest. It is open to all students and the
theme will be announced on the spot on the 14th of March, 2020 (Second Day of UTSAV),.""",
    rules:"""● The contest is open to all students.
\n● The theme will be announced on the spot.
\n● The participant must declare the gear (camera, lenses, flash(if any),), being used.
\n● The participant must report by 10 A.M. on 14th March, 2020 & the contest ends at
4P.M. on 15th March, 2020.
\n● Only basic retouching is allowed. If the image has been processed the original image
must be submitted in the RAW format along with the JPEG format of the processed
image.
\n● The submitted images must be taken within the college campus on the day(s), of the
competition.
\n● The entries must adhere to the contest theme.
\n● A maximum of 2 entries is allowed per student.
\n● The decision of the judges will be final.
\n● The last date to submit entries is 11:59 P.M. on 16th April, 2020.
\n● Mail your entries to bmsphotographyclub@gmail.com
\n● Mail your queries to bmsphotographyclub@gmail.com.
""",
    contact: """Hridya Dhulipala,
Navaneeth Suresh""",
    contactno:"""9113870781,
9945646228""",
    fee: """ 50 """,
    oneprize: """2000""",
    twoprize: """ 1000 """,
    datestring:"""14th
15th""",
    venue: """ """,
  ),


  Product(
    id:54,
    name: """PHOTOSTAGE 2020""",
    start: 9,
    end: 14,
    photos: [AppImages.watch20],
    description: """Photostage is a photography symposium where established and professional photographers
share their knowledge and experience with enthusiasts looking for inspiration""",
    rules:"""""",
    contact: """Aditya Belvadi,
Hridya Dhulipala""",
    contactno:"""9663110528,
9113870781""",
    fee: """100 """,
    oneprize: """ -""",
    twoprize: """ - """,
    datestring:"""14th
9am-2pm""",
    venue: """ """,
  ),




  Product(
    id:55,
    name: """POTPOURRI """,
    start: 13,
    end: 17,
    photos: [AppImages.watch20],
    description: """Relay of small events with knockout rounds.""",
    rules:"""● Taboo: Describe the word given without using a specific set of words.
\n● Whisper Challenge: Guess the word just by the lip syncing.
\n● Dumb Charades: Act out the movie / TV show without uttering a word.
\n● Interesting variations to follow, show up and test your skills!
\n● Teams of 3.""",
    contact: """Ritwik,
Divisha""",
    contactno:"""9453028706,
9342682281
""",
    fee: """150 """,
    oneprize: """2000""",
    twoprize: """1000  """,
    datestring:"""14th
1pm-5pm""",
    venue: """BSN Hall """,
  ),



  Product(
    id:56,
    name: """DEBATE MELANGE """,
    start: 10,
    end: 14,
    photos: [AppImages.watch20],
    description: """Different formats of debating/speaking such as extempore, turncoat, Devil's advocate in each
level, participants get knocked out in each round.""",
    rules:"""● Do you think you have what it takes to fight for or against your beliefs?
\n● If you do have a way with your words, and want to win big for it, this is the event for
you!
\n● Solo participation.
\n● Will have various rounds, format and procedure of the same to be announced on the
day of the event.""",
    contact: """Narasimha K,
Tanveer Ashiq""",
    contactno:"""8850316674,
7034823547""",
    fee: """100 """,
    oneprize: """ 2000""",
    twoprize: """1000  """,
    datestring:"""15th
10am-2pm""",
    venue: """BSN Hall
 """,
  ),






  Product(
    id:57,
    name: """ANIME QUIZ """,
    start: 13,
    end: 15,
    photos: [AppImages.watch20],
    description: """A quiz on anime.
A fun, light quiz on everything anime, dattebayo! (Don't worry, it's definitely not going to be
just mainstream anime.),""",
    rules:"""● Teams of 2
\n● Cross college teams allowed
\n● Prelim-Final format""",
    contact: """Vallari Nyayapati,
Aditya
Chakraborthy""",
    contactno:"""9901981854,
9986954529""",
    fee: """100""",
    oneprize: """2000 """,
    twoprize: """ 1000 """,
    datestring:"""14th
3pm-5pm""",
    venue: """Audi 1
 """,
  ),






  Product(
    id:58,
    name: """MANGA DRAWING COMPETITION
 """,
    start: 14,
    end: 17,
    photos: [AppImages.watch20],
    description: """Participants have to draw manga or anime characters on spot or create their own versions of
characters with a suitable name.""",
    rules:"""● Participants are required to get their own stationary
\n● Two hours duration
\n● Participants need to draw a manga/anime character on spot
010
\n● Phones cannot be used for reference purposes
\n● A3 sheets will be provided.""",
    contact: """Akshara Raju,
Vallari N""",
    contactno:"""8105406213,
9901981854
""",
    fee: """100 """,
    oneprize: """2000 """,
    twoprize: """  1000""",
    datestring:"""14th
2pm-5pm""",
    venue: """CR 304 """,
  ),


];
