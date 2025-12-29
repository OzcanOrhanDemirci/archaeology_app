import '../../core/models.dart';

SiteData getTroyData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'troy',
    title: isTr ? 'Troya (Truva)' : 'Troy',
    introText: isTr
        ? 'Troya, mitoloji ile tarihin kesiştiği, Hisarlık Tepesi üzerinde dokuz farklı katmandan oluşan efsanevi bir yerleşimdir. Homeros\'un İlyada destanına konu olan Truva Savaşı\'nın mekanı olarak bilinir ve modern arkeolojinin doğduğu yerlerden biri kabul edilir.'
        : 'Troy is a legendary settlement located on Hisarlik Hill, where mythology intersects with history, consisting of nine distinct layers. Known as the setting of the Trojan War in Homer\'s Iliad, it is considered one of the birthplaces of modern archaeology.',
    timeline: [
      TimelineData(label: isTr ? 'Tunç Çağı' : 'Bronze Age', targetBlockId: 't1'),
      TimelineData(label: isTr ? 'Troya II' : 'Troy II', targetBlockId: 't2'),
      TimelineData(label: isTr ? 'Troya VI' : 'Troy VI', targetBlockId: 't3'),
      TimelineData(label: isTr ? 'Savaş' : 'War', targetBlockId: 't4'),
      TimelineData(label: '0', isYearZero: true),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 't1',
            imagePath: 'assets/images/troy1.jpg',
            title: isTr ? 'I. Troya I (MÖ 3000-2600): İlk Yerleşim' : 'I. Troy I (3000-2600 BC): First Settlement',
            text: isTr
                ? 'İlk yerleşim dönemi, Erken Tunç Çağı karakteristiklerini taşır. Küçük bir kale yerleşimi olan bu tabaka, megaron planlı (uzun dikdörtgen yapılar) mimari örnekler içerir ve Ege dünyasıyla erken temasları belgeler.'
                : 'The earliest settlement period exhibits Early Bronze Age characteristics. This small fortified settlement comprises megaron-type architectural structures and documents early contacts with the Aegean world.',
          ),
          ContentBlockModel(
            id: 't2',
            imagePath: 'assets/images/troy2.jpg',
            title: isTr ? 'II. Troya II (MÖ 2600-2250): Priamos Hazinesi' : 'II. Troy II (2600-2250 BC): Priam\'s Treasure',
            text: isTr
                ? 'Schliemann\'ın yanlışlıkla "Priamos Hazinesi" olarak adlandırdığı zengin altın ve gümüş buluntuların ait olduğu dönemdir. Kronolojik olarak Truva Savaşı\'ndan bin yıl öncesine ait olsa da, bu dönem Troya\'nın zengin bir ticaret merkezi olduğunu kanıtlar.'
                : 'This period contains the rich gold and silver finds Schliemann wrongly identified as "Priam\'s Treasure." Although chronologically dating a thousand years before the Trojan War, this period proves Troy was a wealthy trade center.',
          ),
          ContentBlockModel(
            id: 't3',
            imagePath: 'assets/images/troy3.jpg',
            title: isTr ? 'III. Troya VI (MÖ 1700-1250): Güçlü Surlar' : 'III. Troy VI (1700-1250 BC): Strong Walls',
            text: isTr
                ? 'Anadolu ve Balkanlar arasında kültürel etkileşimin yoğun olduğu, depremle yıkılan katmandır. Homeros\'un tarifine en çok uyan, eğimli ve kusursuz taş işçiliğine sahip güçlü surlar bu döneme aittir.'
                : 'A period of intensive cultural interaction between Anatolia and the Balkans, destroyed by an earthquake. The strong walls with slanted, impeccable masonry that best fit Homer\'s description belong to this period.',
          ),
          ContentBlockModel(
            id: 't4',
            imagePath: 'assets/images/troy4.jpg',
            title: isTr ? 'IV. Troya VIIa (MÖ 1250-1180): Savaşın İzleri' : 'IV. Troy VIIa (1250-1180 BC): Traces of War',
            text: isTr
                ? 'Homeros\'un anlattığı Truva Savaşı\'na en olası aday olan katmandır. Arkeolojik olarak tespit edilen yoğun yangın izleri, ok uçları ve ani yıkım bulguları, efsanevi savaş hipotezini ve kentin kuşatma altında düştüğünü desteklemektedir.'
                : 'The most likely candidate for the Trojan War described by Homer. Archaeologically detected intense fire traces, arrowheads, and evidence of sudden destruction support the legendary war hypothesis and the city falling under siege.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Hisarlık Tepesi: Dokuz Katmanlı Yapısal Kesit'
                : 'Hisarlik Hill: Nine-Layered Structural Section',
            mainImage: 'assets/images/troy_s.jpg',
            abstractText: isTr
                ? 'Bu stratigrafik kesit, Troya\'nın bir "Höyük" (yapay tepe) olarak nasıl oluştuğunu gösterir. Binlerce yıl boyunca aynı noktada üst üste kurulan 9 farklı kent, Hisarlık Tepesi\'nin yüksekliğini yapay olarak artırmıştır. Kesit, yangın ve yıkım katmanları ile mimari evrim arasındaki ilişkiyi belgeler.'
                : 'This stratigraphic section demonstrates how Troy formed as a "Tell" (mound). Nine different cities built on top of each other over thousands of years artificially increased the height of Hisarlik Hill. The section documents the relationship between fire/destruction layers and architectural evolution.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Erken Tunç Çağı Dolgusu' : '1. Early Bronze Age Fill',
                content: [
                  {
                    'bold': isTr ? 'Troya I ve II (Gri/Turuncu):' : 'Troy I and II (Grey/Orange):',
                    'text': isTr
                        ? ' En alt katmanlar, doğrudan anakaya üzerine oturur. Bu dönemdeki yerleşim, surlarla çevrili küçük bir kale görünümündedir. Schliemann\'ın ünlü "Büyük Yarması" bu katmanları tahrip ederek anakayaya inmiştir.'
                        : ' The lowest layers sit directly on the bedrock. The settlement in this period resembles a small fortified citadel. Schliemann\'s famous "Great Trench" destroyed these layers to reach the bedrock.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Geç Tunç Çağı ve Savaş Katmanı' : '2. Late Bronze Age & War Layer',
                content: [
                  {
                    'bold': isTr ? 'Troya VI ve VII (Sarı/Kırmızı):' : 'Troy VI and VII (Yellow/Red):',
                    'text': isTr
                        ? ' Kesitin orta kısmındaki geniş sarı ve kırmızı bantlar. Kırmızı şerit, Troya VIIa\'nın büyük bir yangınla (Savaş?) sona erdiğini işaret eden yanık tabakasıdır. Eğimli sur duvarları bu evrenin dış çeperini oluşturur.'
                        : ' The broad yellow and red bands in the middle section. The red strip indicates the burnt layer marking the end of Troy VIIa by a great fire (The War?). Slanted fortification walls form the outer perimeter of this phase.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Klasik Dönem Üstyapısı' : '3. Classical Period Superstructure',
                content: [
                  {
                    'bold': isTr ? 'Troya VIII/IX (Gri/Kahverengi):' : 'Troy VIII/IX (Grey/Brown):',
                    'text': isTr
                        ? ' Tepenin en üst noktası. Athena Tapınağı ve Roma dönemi mermer yapıları, altlarındaki binlerce yıllık kerpiç ve taş yığınının üzerine düzlenerek inşa edilmiştir.'
                        : ' The highest point of the hill. The Temple of Athena and Roman period marble structures were built by leveling the ground atop thousands of years of mudbrick and stone accumulation.'
                  },
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}