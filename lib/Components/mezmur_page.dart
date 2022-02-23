// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zema/Components/drawer.dart';
import 'package:zema/Components/mezmur_data.dart';


class MezmurPage extends StatefulWidget {
  const MezmurPage({Key? key}) : super(key: key);

  @override
  _MezmurPageState createState() => _MezmurPageState();
}

class _MezmurPageState extends State<MezmurPage> {
  static List<String> title = [
    'ክበር',
    'ጌታ ኢየሱስ'
    'ሃሌሉያ',
    'አለ እግዚአብሔር',
    'ፍቅር ሞተች',
    'ምን እንላለን',
    
  ];

  static List<String> content = [
    '\n\n ምክኒያት አለንና ልናመሰግንህ የለንም አንልም አፋችንን ሞልተን \n ሲሞላ ላንጨምር ሲጎድል ቀን ሰን \n ስናጣ ላንሄድ ውለታህን ረግጠን \n አይደለም በፍፁም በምንም ሁኔታ \n ለዚህ ዓለም ላንኖር ከንቱ ለሚጠፋ \n\n እናውቃለንና እናውቃለን ጌታ የተከፈለልን \n ከዚያ ከሞት ሀገር ካስፈሪው ጨለማ ነፃ ያወጣንን \n እንዴት ያስችለናል ታክቶናል አንልም ይሄ ይበቃናል \n በልባችን መቅረዝ ፍፁም ላይደበዝዝ ሲበራ ይኖራል \n\n ክበር(x2) ክበር እንበልህ \n ንገስ(x2) ንገስ እንበልህ \n\n እጃችን ተነስቶ ተማርከናል ላንተ \n ቃላችንን ሰጠን ቃልኪዳን ገብተናል \n ላንጥል ላናነሳ አታይም ወይ ብለን \n አንዴ በርቶልናል የማዳንን ብርሃን \n ካንተ ተለይቶ ወዴት ይደረሳል \n ፍቅርን የቀመሰ ካንተው ጋር ይቀራል \n\n መንፈስ ወርዶብናል ፈሷል በልባችን (x2) \n ሳይገርፋን አለቀስን ተነካ ውስጣችን (x2) \n ልክ እንዳበደ ሰው ፍፁም እንደሳተ(x2) \n እናመልክሀለን ዘላለም ህያው ነህ (x2) \n\n የወደቀ ማነው አንተን ተደግፎ \n የተረሳ ይምጣ አንተኑን ጠብቆ \n ጊዜው ጠብቀህ መጣህ እንደገና \n እዳ የሌለብህ የማንም ወረታ \n\n በባህር ውስጥ አለፍን ,ፍፁም አልሰጠምንም(2) \n በእሳት ውስጥ ,ከቶ አልተቃጠልንም(2) \n አሻግሮ አቆመን, ዛሬም እንደገና(2) \n እንዘምራለን, አይተነዋልና። \n ክበር/2/ ክበር እንበልክ \n ንገስ/2/ ንገስ እንበልክ። \n\n\n',
    '\n\n ጌታ እየሱስ የኛ ጌታ \n ተደንቀናል በችሎታህ። \n የኛ ንጉስ የኛ ጌታ \n ተይዘናል በውለታህ፡፡(2x) \n\n ቆመን ተሰልፈን በሞት መስመር \n አውሬው ገድሎን ልንቀበር \n መርቶን እውር አርጎ ልባችንን \n ሲዝትብን ጠላታችን \n ብለን የሞተ ነው የኛ ነገር \n ተቤዥናቶ የሚያስጥለን \n እየሱስ ብለን ስንጮህ አንዴ ላፍታ \n ደረሰልን ድንገት መጣ \n ወድቆ ወድቆልናል ማነቋችን \n ገላገለን አምላካችን:፡ \n\n እንዴት (3x) ለይረሳ ያ ውለታህ \n ሞታችንን ሞትከው በቂያችን ነው ይቅር ሌላ።(2x) \n\n (አዝማች...) ጌታ እየሱስ... \n\n ወጀብ ተነስቶብን በጉዞአችን \n ወጥታ ወርዳ ህይወታችን \n ገብቶ ይዞን ሊሄድ ሊያሰጥመን \n ሲገዳደር ሲሟገተን \n ጌታ ጠፋን ብለን ስንጣራ \n ቃሉን ሰጠን የኛ ጀግና \n ሰላም እረፍት ሆነ እቤታችን  ተባረከ ማድጋችን። \n\n እንዴት(3x) \n\n (አዝማች)..ጌታ እየሱስ \n\n መንገድ ተሰይሞ በልመና \n የወደቅን በጨለማ \n ተስፋው ቢሞት እንኳን በህይወቱ \n ሊከብር ነው በዚ ሁሉ \n ድንገት እያለፈ በመንደሩ \n ብሎ ይኸየናዝሬቱ \n ሰማውገፈፈ የፀለመው \n አየው ባይኑ ሰድልስሰው። \n እንዴት(ን)፡፡ \n\n (አዝማች)ጌታ እየሱስ \n\n\n',
    '\n\n ሰይጣን ደንፍቶ ሲያስፈራራን \n ብለን ስንጮኽ ወየው የጠፋን \n ተስፋ ያረግነው ሁሉ ሲቀየር \n ተንሸራተተ ወዳጅ ነኝ ያለ፡፡ \n\n ተቤዥቶን የሱ አደረገን \n እግዚአብሔር በልጁ አዳነን \n በእሳት ቅጥር ተሸፍነናል \n በደሙ ሀይል ተቤዥቶናል(2) \n\n የናዝሬቱ እየሱስ የኛ ጌታ \n ሞትን የገደለ የይሁድ አንበሳ(2) \n\n ሆሳና በአርያም በታች በምድር \n ምስጋና ስጡ ይነጠፍ ክብር(2) \n የናዝሬቱ እየሱስ የኛ ጌታ \n ሞትን የገደለ የይሁድ አንበሳ(2) \n\n ሀሌሉያ ልናመሰግን ዳግም ቆመናል እንድንዘምር \n ስማ ክፉ ጠላታችን አስመልጦናል ከ ፈርኦን በትር \n\n ክረምት አልፏል ያ መከራችን \n ፀደይ ሆነ በህይወታችን \n ላናነሳ ዳግም ላይፎክር \n ሰጥሞ ቀረ በኤርትራ ባህር \n\n የናዝሬቱ እየሱስ የኛ ጌታ \n ሞትን የገደለ የይሁድ አንበሳ(2) \n ሆሳና(2) \n\n ፍፁም አይሆንም ከእንግዲህ ወዲያ \n ባንተ ይታለፋል ቢኖር መከራ \n የደስታች ምንጭ አንተ ነህና \n የሰላም ንጉስ ለኛ ምትራራ \n\n የድል አርማ አውለብልበናል \n ለቤዛ ቀን እርሱ አትሞናል \n እንደርሳለን እስከ ፍፃሜ \n የተቤዠንታማኝ ነው ሁ(2) \n የናዝሬቱ እየሱስ የኛ ጌታ \n ሞትን የገደለ የይሁድ አንበሳ(2) \n ሆሳና(2) \n\n\n',
    '\n\n የለም ያለው ማነው እግዚአብሔር(2) \n አለ እግዚአብሔር በዙፋኑ ላይ በመቅደሱ ውስጥ በታላቅ ክብር \n አለ እግዚአብሔር በህዝቡ መሃል በቀባቸው እጅ ሲያልፍ በክብር \n\n ይመስላል አንዳንዴ ዙሪያው ሲጨላልም \n የተያዘው ጥሪት ያለቀ ሲመስል \n በሩን ሁሉም ዘግቶ ሚጠራ ሲጠፋ \n እጅ ከልብ ጋር ወርዶ እንደ ዋዛ \n\n ግን እግዚአብሔር አለ የሌለ የመሰለ \n ሁሉ ነገር ሲያልቅ አንድ ሲል ጀመረ።(2) \n\n የለም ያለው(3x) \n\n ሰላሳ ስምንት አመት አልጋ ወደቀ \n በደዌ በሽታ ብዙ የደቀቀ \n ቀድመውት የገብ ተፈውሰው ሄዱ \n እሱ ብቻ ቀረ ዘመን ያስቆጠረ፡፡ \n\n ይኸው ጌታ መጣ ጊዜውን ጠብቆ \n ተሸከም አልጋህን ታሪክ ተቀይሮ።(2) \n አመፀኛ ገፍቶት ለእውነት የኖረ \n ሳይሸቃቅጥ ቃሉን እሱን የጠበቀ \n በፍርድቤት ሙግት ፍትህ አጣው ያለ \n እውነተኛ ዳኛ ፈራጅ ነው እያለ \n\n አለ እግዚአብሔር ሰልፉን የሚረታ ተሸነፍኩን ብሎ ከቶ ያልተረታ \n አለ እግዚአብሔር አልፋና ኦሜጋ አዝማች ጦረኛችን ተዋጊያችን ጌታ። \n\n ሆ ሀይላችን ነው ጌታ \n ሆ ምህረቱ በዛ \n ሆ ተዋጊ ነው \n ሆ በጎነቱ በዛ \n አሳልፎናል ምድረበዳውን አልነደፈንም እባቡ ጊንጡ \n አሳልፎናል ያንን መከራ ጥላ ሆኖልን በምድረበዳ፡፡ ×2 \n\n\n',
    '\n\n ጌታ ሊመጣ ነው በክብር \n እየሱስ ሊገለጥ ነው በክብር \n\n ጦርነት የጦር ወሬ እጅግ ናኝቶ ጆሮአችን ሞልቷል \n መፈለግ መጠያየቅ ይኸው ጠፍቶ ጥላቻ በዝቷል \n በርሃብ በቸነፈር እልቂት ሆኖ ፍጥረት አልቋል \n\n እንግዲህ ተፈፅሟል ምልክቱ \n ለወንጌል የሮጣችሁ በሉ በርቱ \n በቃ ሊባል ጉስቁልና የአለም መከራ \n በጉ ብርሃን ሆኖልን ፂሆን ተራራ \n\n አዝ:- ጌታ \n\n መንግስታት ተገፋፍተው ለቅሶ በዝቶ አለም ተናጠች \n በጎ ሰው ከምድር አልቆ ይኸው በዙ ትዕቢተኞች \n የአመፅ ዝናብ ዘንቦ ባደባባይ ፍቅር ሞተች። \n\n እንግዲህ \n አዝ:- ጌታ.. \n\n  እራስ ወደዶች በዙ ተድላን የሚሹ ለሰው የማይሉ \n አመፀኛ ሀሜተኞች ተጠራርተው እያየሉ \n የአምልኮ መልክ ያላቸው ሀይሉን ፍፁም የሚክዱ \n\n እንግዲህ..... \n አዝ:- ጌታ \n\n በትጋት በመከራ ባያሌ ፅናት የሮጣችሁ \n ሀብትና ንብረታችሁን ስለ ወንጌል የተዋችሁ \n ከትውልድ ከዘራችሁ ከወገናችሁ የተለያችሁ \n እየሱስ በደጅ ነው ደስ ይበላችሁ \n እንደ ከዋክብት ብርሐን ትደምቃላችሁ። (x2) \n\n\n',
    '\n\n አዝ:- ከምስጋና በቀር ምንሰዋው  የለንም \n ከመቀኘት በቀር ምንሰጠው የለንም \n\n ምን እንላለን ቃላቶች አጠሩን \n ምን እንላለን ስራህ በለጠብን \n ምን እንላለን ከሺ ቃላት በላይ \n ምን እንላለን ውለታህ ሆነብን። ×2 \n\n በፍቅርህ መልህቅ አጥብቀህ የያዝከን \n በመዓዛ ሽታ ወዳንተ የሳብከን \n እጆቻችን ይዘህ ዛሬ ላይ ቆመናል \n ከዘላለምም ሞት ባንተ አምልጠናል። \n\n አዝ:- ምን እንላለን.. \n\n ትከሻው ሰፊ ነው ሁሉን ይሸከማል \n ሃጢያታችን ሽሮ በህይወት ያኖራል \n ፍቅሩ አስገራሚ ፀጋው ሚደግፍ ነው \n እኛ ምናመልከው ሁሉን ቻይ አምላክ ነው። \n\n አዝ:- ምን እንላለን \n\n ስር መሰረታችን በፍቅሩ ያፀና \n\n ለኛ ለልጆችህ ሆነኸን ከለላ \n\n  በደል ሃጢያታችን ከኛ ተወግዶ \n\n ቅዱሳን ሆነናል መርገማችን ቀርቶ። \n\n\n',
  ];
  final List<MezmurDataModel> MezmurData = List.generate(
      title.length, (index) => MezmurDataModel(title[index], content[index]));

  Future<dynamic>? exitDialog() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Are You Sure?"),
        content: const Text("Do you want to exit from the app?"),
        actions: [
          FlatButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: const Text("Yes"),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text("No"),
          ),
        ],
      ),
    );
  }

  Set<String> favouredTitle = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: title.length,
          itemBuilder: (BuildContext context, int index) {
            String titleName = title[index];
            bool isFavoured = favouredTitle.contains(titleName);
            return Center(
              child: InkWell(
                child: Container(
                  height: 70,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              //const Padding(padding: EdgeInsets.all(10)),

                              Text(
                                title[index],
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (isFavoured) {
                                      favouredTitle.remove(titleName);
                                    } else {
                                      favouredTitle.add(
                                        titleName,
                                      );
                                    }
                                  });
                                },
                                icon: Icon(
                                    isFavoured
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isFavoured ? Colors.green : null)),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MezmurDetail(
                            mezmurDataModel: MezmurData[index],
                          )));
                },
              ),
            );
          }),
      drawer: NavigationDrawerWidget(),
    );
  }
}

