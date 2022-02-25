import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zema/Components/home_page.dart';

class RuleDrawer extends StatefulWidget {
  const RuleDrawer({Key? key}) : super(key: key);

  @override
  _RulePageState createState() => _RulePageState();
}

class _RulePageState extends State<RuleDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "ህግና ደንብ",
              style: TextStyle(fontSize: 17),
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                icon: Icon(Icons.arrow_back))),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('መግቢያ'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'የቡታጅራ ቁ 2 ሙ/ወ/ቤ/ክ እንደ ቤ/ክ ከተመሰረተ ረጅም ጊዜ ባታስቆጥርም ብዙ እርምጃዊች ተጉዛ አዎንታዊ ተፅዕኖ አበርክታለች ይች ቤተ ክርስቲያን በርካታ የአገልግሎት ዘርፍ ያሏት ሲሆን ከነዚህም መካከል የዝማሬ አገልግሎት ዘርፍ ግንባር ቀደሙ ነው በዚች ቤተ ክርስቲያን ውስጥ አራት የዝማሬ ቡድኖች ይገኛል በመሆኑም የቤተ ክርስቲያን ቀዳሚው ራዕይ በአደራ የተሰጠንን ወንጌል በመስበክና በማሰራጨት ለብዙዎች ነብሳት መዳን በፈር ቀዳጅነት ማሳረፍ ነው ለዚህ ይረዳን ዘንድ ቤተ ክርስቲያኒቱ ለአላማ መሰረት የሆነውን መልካም ትውልድ መቅረጽ ላይ ስትሰራ ቆይታለች ----እየሰራችም ::ከነዚህም መካከል እግዚአብሔር የሚፈሩ በቅድስና የሚመሩ አገልጋይ ለምድሪቱ ማበርከት አለማዊ ዘፈኖች በተንሰራፋበት በዚች አለም ውስጥ አንደበታቸው ያልተቃኘ ለእግዚአብሔር ብቻ የሚዘምሩ ዘማሪያን ለማፍራት ዘመኑን ከግንዛቤ በማስገባት ቤተ ክርስቲያኒቱ በቅዱስ ቃሉ መሠረት ትውልዱ ዘመኑን እንዲዋጅ ማለትም ከዘረኝነት :ከክፋት :ከአመፅ ወዘተ ከመሳሰሉትየዘመኑን ክፋቶች ሳያስተናግዱ እውነተኛው እየሱስ ክርስቶስ የሚመስሉ ትውልድ መቅረጹዋን አላቆመችም ከዚያ ባሻገር ከምንም በላይ ለክርስቶስ ምጽዋት የተዘጋጁ እንዲሆኑ ያለ ማቁዋረጥ እየዳከረች ትገኛለች :: ሆኖም ይህን ተፅዕኖዋን በዝማሬ ቡድኖች ላይ በላቀ ሁኔታ እያሳየች ነው :: የዝማሬ ቡድኑ እንደ ቡድን ተመስርቶ እግዚአብሔርን ሲያገለግል የግል መስተዳድር ቢኖሩትም የራሱ የሆነ አመታዊ እቅድ ይኖረው ዘንድ እናም በተዘጋጀው እቅድ ተገዢ በመሆን በመሆን ለማገልገል ወስነናል',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('አላማ'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'ታላቁ የክርስቶስ ወንጌል ከ መጽሐፍ ቅዱስ ጋር በማስማማት የጊዜውን መልዕክት በዝማሬ ማስተላለፍ እግዚአብሔር የሚገውን አምልኮ በዝማሬ መስጠት'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('ግብ'),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'ዘማሪዎችን በአገልግሎት እግዚአብሔር በመፍራት በጽድቅና በቅድስና እና በታማኝነት የሚያገለግሉ እንዲሁም በቤተክርስቲያን ውስጥ ዘማሪ አለ እንዲባል ሳይሆን ከስም ያለፈ በተግባርገ ተፅዕኖ ፈጣሪዎች የሆኑ የተቀቡ ዘማሪያንን እንዲፈሩ የሁል ጊዜ ጥረት ነው'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('ዋና ዋና ተግባራት'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'በዋናነት እና በግንባር ቀደምነት በዝማሬ መልዕክት ማስተላለፍ ማገልገል ሲሆን ከዚህ በመቀጠል በዚህ ዕቅድ ውስጥ የተካተቱት ዋናዋና ተግባራት አሉ እነርሱም \n 1. የትምህርት ጊዜ \n 2. ስብሰባ ጊዜ \n 3. በጎ አድራጎት \n 4. ወንጌል ስርጭት \n 5. የጽዳት ጊዜ \n 6. የመዝሙር መፃፊያ ጊዜ \n 7. የተራራ ፀሎት \n 8. የአዳር ፀሎት \n 9. የፆም ፀሎት \n 10. አመታዊ በዓል'),
                  SizedBox(
                    height: 30,
                  )
                ]),
          ),
        ));
  }
}
