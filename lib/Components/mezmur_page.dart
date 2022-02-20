// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'mezmur_data.dart';
import 'setting_page.dart';
import 'drawer.dart';

class MezmurPage extends StatefulWidget {
  const MezmurPage({Key? key}) : super(key: key);

  @override
  _MezmurPageState createState() => _MezmurPageState();
}

class _MezmurPageState extends State<MezmurPage> {
  static List<String> title = [
    'ምን እንላለን',
    'ጌታ ኢየሱስ ',
    'ክበር',
    'ሃሌሉያ',
    'አለ እግዚአብሔር',
    'ፍቅር ሞተች',
  ];

  static List<String> content = [
    'ምን እንላለን  አዝ:- ከምስጋና በቀር ምንሰዋው  የለንም ከመቀኘት በቀር ምንሰጠው የለንም. ምን እንላለን ቃላቶች አጠሩን ምን እንላለን ስራህ በለጠብን ምን እንላለን ከሺ ቃላት በላይ ምን እንላለን ውለታህ ሆነብን። ×2 1.በፍቅርህ መልህቅ አጥብቀህ የያዝከን በመዓዛ ሽታ ወዳንተ የሳብከን እጆቻችን ይዘህ ዛሬ ላይ ቆመናል ከዘላለምም ሞት ባንተ አምልጠናል። አዝ:- ምን እንላለን.. 2.ትከሻው ሰፊ ነው ሁሉን ይሸከማል ሃጢያታችን ሽሮ በህይወት ያኖራል ፍቅሩ አስገራሚ ፀጋው ሚደግፍ ነው እኛ ምናመልከው ሁሉን ቻይ አምላክ ነው። አዝ:- ምን እንላለን 3.ስር መሰረታችን በፍቅሩ ያፀና ለኛ ለልጆችህ ሆነኸን ከለላ በደል ሃጢያታችን ከኛ ተወግዶ ቅዱሳን ሆነናል መርገማችን ቀርቶ።',
    'ጌታ እየሱስ የኛ ጌታ ተደንቀናል በችሎታህ። የኛ ንጉስ የኛ ጌታ ተይዘናል በውለታህ፡፡(2) 1.ቆመን ተሰልፈን በሞት መስመር አውሬው ገድሎን ልንቀበር መርቶን እውር አርጎ ልባችንን ሲዝትብን ጠላታችን ብለን የሞተ ነው የኛ ነገር ተቤዥናቶ የሚያስጥለን እየሱስ ብለን ስንጮህ አንዴ ላፍታ ደረሰልን ድንገት መጣ ወድቆ ወድቆልናል ማነቋችን ገላገለን አምላካችን ፡፡ እንዴት (3) ለይረሳ ያ ውለታህ ሞታችንን ሞትከው በቂያችን ነው ይቅር ሌላ።(2) “(አዝማች...) ጌታ እየሱስ... 2.ወጀብ ተነስቶብን በጉዞአችን ወጥታ ወርዳ ህይወታችን ገብቶ ይዞን ሊሄድ ሊያሰጥመን ሲገዳደር ሲሟገተን ጌታ ጠፋን ብለን ስንጣራ ቃሉን ሰጠን የኛ ጀግና ሰላም እረፍት ሆነ እቤታችን , ተባረከ ማድጋችን። እንዴት(3)፡ *(አዝማች)..ጌታ እየሱስ : 4.መንገድ ተሰይሞ በልመና የወደቅን በጨለማ ተስፋው ቢሞት እንኳን በህይወቱ ሊከብር ነው በዚ ሁሉ ድንገት እያለፈ በመንደሩ ብሎ ይኸየናዝሬቱ ሰማውገፈፈ የፀለመው አየው ባይኑ ሰድልስሰው። እንዴት(ን)፡፡ *(አዝማች)ጌታ እየሱስ.',
    '"ደካማውም እኔ ብርቱ ነኝ ይበል።" (ኢዮ 3: 10) እኔ ብርቱ ነኝ። እችላለው ። ዛሬም እነደ ቀድሞ ሃይል አለኝ። ሃይሌም ብርታቴም እግዚያብሔር ነው:: ዕለት ዕለት እታደሳለሁ። እሮጣለሁ ። እሄዳለሁ። አልደክምም። በኢየሱስ ስም አሜን።',
    'አባት ሆይ አመሰግንሃለሁ ! !ዛሬ በሕይወቴ ላይ የአንተን ሁሉን ቻይነት የማውጅበት ቀን ነው። የማይከለከል ሃሳብ ያለህ አንተ ብቻ ነህ።አንተ እኔን እና የእኔ  የሆኑትን ነገሮች ሁሉ መቀየር ትችላለህ። በኢየሱሰ ስም አሜን።',
    'ዘጻ 16:8 ማልዶም ትጠግቡ ዘንድ እንጀራን እግዚአብሔር ይሰጣችኋል!! አባት ሆይ የሕይወት እንጀራ የሆነውን ኢየሱስን ሰጥተህ ስለ አጠገብከኝ አመሰግናለው! በየዓለቱ ቃልህን በማንበብ እና በመስማት መንፈሴን አነቃቃለሁ።የዓለት እንጀራዬን ስጠኝ ዛሬ  በኢየሱስ ስም አሜን!!',
    'እርሱ ስለ እኛ ነፍሱን አሳልፎ ሰጥቶአልና በዚህ ፍቅርን አውቀናል፤ (1 ዮሐ 3: 16)አባት ሆይ ፍቅርህን ስለ አሳወቀኝ አመሰግናለው። በልጅህ በኢየሱስ ክርስቶስ በኩል ፍቅርህን ስላሳየኸኝ አመሰግናለሁ። ሳልወድህ የወደድከኝ ፍፁም የሆነ ፍቅርህን በመስቀል ስለገለጥክ አመሰግንሀለሁ:: አንተ የፍቅር ትርጉም ነህ!!በአንተ ተወድጃለሁ፥የፍቅር አባት ነህ!!',
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
    return WillPopScope(
      onWillPop: () {
        exitDialog();
        return Future.value(false);
      },
      child: Scaffold(
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
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
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
      ),
    );
  }
}
