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
    name: "Classic Cambridge",
    //price: 177,
    photos: [AppImages.watch20],
  ),
  Product(
    id: 5,
    name: "Turtlejam",
    //price: 179,
    photos: [AppImages.watch20],
  ),
  Product(
    id: 6,
    name: "Turtlejam",
    //price: 179,
    photos: [AppImages.watch20],
  )
];

List<Product> products1 = [
Product(
id: 7,
name: "Kakka",
//price: 179,
photos: [AppImages.logo, AppImages.watch10],
)];
