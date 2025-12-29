import '../../core/models.dart';

SiteData getHattusaData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'hattusa',
    title: isTr ? 'Hattuşa (Çorum)' : 'Hattusa',
    introText: isTr
        ? 'Geç Tunç Çağı\'nda Anadolu\'nun süper gücü olan Hitit İmparatorluğu\'nun başkentidir. UNESCO Dünya Mirası listesinde yer alan kent, anıtsal kapıları, devasa surları ve binlerce kil tabletin bulunduğu arşivleriyle antik dünyanın en önemli diplomatik merkezlerinden biridir.'
        : 'The capital of the Hittite Empire, the superpower of Anatolia in the Late Bronze Age. Located on the UNESCO World Heritage list, the city is one of the most important diplomatic centers of the ancient world with its monumental gates, massive walls, and archives containing thousands of clay tablets.',
    timeline: [
      TimelineData(label: isTr ? 'Hatti' : 'Hatti', targetBlockId: 'ht1'),
      TimelineData(label: isTr ? 'Hitit' : 'Hittite', targetBlockId: 'ht2'),
      TimelineData(label: isTr ? 'Büyük Krallık' : 'Great Kingdom', targetBlockId: 'ht3'),
      TimelineData(label: '0', isYearZero: true),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'ht1',
            imagePath: 'assets/images/hattusa1.jpg',
            title: isTr ? 'I. Aşağı Şehir ve Aslanlı Kapı' : 'I. Lower City & Lion Gate',
            text: isTr
                ? 'MÖ 17. yüzyılda Hattuşili I tarafından kurulan başkentin en eski bölgesidir. Aslanlı Kapı, kenti kötülüklerden koruduğuna inanılan iki aslan heykeliyle Hitit taş işçiliğinin sembolüdür.'
                : 'The oldest part of the capital founded by Hattusili I in the 17th century BC. The Lion Gate, with two lion statues believed to protect the city from evil, is a symbol of Hittite stonemasonry.',
          ),
          ContentBlockModel(
            id: 'ht2',
            imagePath: 'assets/images/hattusa2.jpg',
            title: isTr ? 'II. Büyük Tapınak ve Yazılıkaya' : 'II. Great Temple & Yazilikaya',
            text: isTr
                ? 'Fırtına Tanrısı Teşup ve Güneş Tanrıçası Arinna\'ya adanan Büyük Tapınak, kentin en büyük dini kompleksidir. Yakındaki Yazılıkaya Açık Hava Tapınağı ise kayalara oyulmuş 90\'dan fazla tanrı kabartmasıyla Hitit panteonunu sergiler.'
                : 'Dedicated to the Storm God Teshup and the Sun Goddess Arinna, the Great Temple is the city\'s largest religious complex. The nearby Yazilikaya Open Air Sanctuary displays the Hittite pantheon with over 90 rock-cut deity reliefs.',
          ),
          ContentBlockModel(
            id: 'ht3',
            imagePath: 'assets/images/hattusa3.jpg',
            title: isTr ? 'III. Yerkapı ve Sfenksli Kapı' : 'III. Yerkapi & Sphinx Gate',
            text: isTr
                ? 'Kentin güney ucundaki yapay bir set üzerinde yer alır. Altındaki 71 metre uzunluğundaki potern (tünel), askeri ve ritüel amaçlı kullanılmıştır. Sfenksli Kapı ise Mısır etkilerini yansıtır.'
                : 'Located on an artificial embankment at the southern end of the city. The 71-meter-long postern (tunnel) underneath was used for military and ritual purposes. The Sphinx Gate reflects Egyptian influences.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Hitit Başkenti ve Topografik Kesit'
                : 'Hittite Capital and Topographical Section',
            mainImage: 'assets/images/hattusa_s.jpg',
            abstractText: isTr
                ? 'Hattuşa kesiti, kentin engebeli araziye nasıl yayıldığını gösterir. Vadi tabanındaki su kaynaklarından (Aşağı Şehir) başlayıp, doğal kayalıklar üzerine kurulan Kraliyet Sarayı\'na (Büyükkale) kadar uzanan dikey bir hiyerarşi mevcuttur.'
                : 'The Hattusa section shows how the city spread over rugged terrain. There is a vertical hierarchy starting from water sources in the valley floor (Lower City) extending to the Royal Palace (Buyukkale) built on natural rocks.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Hatti ve Erken Tunç Çağı Tabanı' : '1. Hatti and Early Bronze Age Base',
                content: [
                  {
                    'bold': isTr ? 'Kalkolitik ve Hatti Seviyeleri (Kahverengi):' : 'Chalcolithic and Hatti Levels (Brown):',
                    'text': isTr
                        ? ' Kesitin en altındaki koyu katmanlar, Hititler gelmeden önceki yerli halk Hatti\'lerin yerleşimini gösterir. Büyük Tapınak gibi anıtsal yapılar bu eski kültür katmanlarının üzerine inşa edilmiştir.'
                        : ' The dark layers at the bottom of the section show the settlement of the indigenous Hatti people before the Hittites arrived. Monumental structures like the Great Temple were built upon these old cultural layers.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Hitit İmparatorluk Mimarisi' : '2. Hittite Imperial Architecture',
                content: [
                  {
                    'bold': isTr ? 'Siklopeyen Duvarlar:' : 'Cyclopean Walls:',
                    'text': isTr
                        ? ' Aslanlı Kapı (sol) ve Büyük Tapınak (orta) gibi yapılar, harçsız devasa taş blokların (Siklopeyen teknik) birbirine kenetlenmesiyle inşa edilmiştir. Bu teknik, deprem bölgesindeki kentin ayakta kalmasını sağlamıştır.'
                        : ' Structures like the Lion Gate (left) and Great Temple (center) were built by interlocking massive mortarless stone blocks (Cyclopean technique). This technique ensured the city\'s survival in an earthquake zone.'
                  },
                  {
                    'bold': isTr ? 'Büyükkale (Sağ - En Üst):' : 'Buyukkale (Right - Top):',
                    'text': isTr
                        ? ' Doğal anakaya üzerine oturan Kraliyet Sitadeli, kentin stratejik zirvesidir. Kesitte görüldüğü gibi, saray kompleksi şehrin geri kalanından fiziksel olarak ayrılmış ve yükseltilmiştir.'
                        : ' Sitting on natural bedrock, the Royal Citadel is the strategic summit of the city. As seen in the section, the palace complex is physically separated and elevated from the rest of the city.'
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