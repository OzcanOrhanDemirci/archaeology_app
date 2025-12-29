import '../../core/models.dart';

SiteData getPergeData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'perge',
    title: 'Perge',
    introText: isTr
        ? 'Aksu Nehri (Kestros) yakınlarında kurulan Perge, Pamphylia bölgesinin en düzenli planlanmış kentlerinden biridir. Helenistik kuleleri, sütunlu caddeleri ve mermer heykeltıraşlığı ile ünlüdür. Aziz Paulus\'un misyonerlik gezilerinde uğradığı önemli bir Hristiyanlık merkezidir.'
        : 'Founded near the Kestros River, Perge is one of the most regularly planned cities of the Pamphylia region. Famous for its Hellenistic towers, colonnaded streets, and marble sculpture. It is a significant Christian center visited by St. Paul during his missionary journeys.',
    timeline: [
      TimelineData(label: isTr ? 'Hitit' : 'Hittite', targetBlockId: 'p1'),
      TimelineData(label: isTr ? 'Helenistik' : 'Hellenistic', targetBlockId: 'p2'),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 'p3'),
      TimelineData(label: '0', isYearZero: true),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'p1',
            imagePath: 'assets/images/perge1.jpg',
            title: isTr ? 'I. Tarihöncesi ve Hitit Bağlantısı' : 'I. Prehistory and Hittite Connection',
            text: isTr
                ? 'Kentin tarihi Tunç Çağı\'na kadar uzanır. Hitit İmparatorluk metinlerinde "Parha" adıyla geçen kentin Perge olduğu düşünülmektedir. Bu, kentin yerli Anadolu kökenli olduğunu kanıtlar.'
                : 'The city\'s history dates back to the Bronze Age. It is believed to be the city mentioned as "Parha" in Hittite Empire texts, proving its native Anatolian origins.',
          ),
          ContentBlockModel(
            id: 'p2',
            imagePath: 'assets/images/perge2.jpg',
            title: isTr ? 'II. Helenistik Kuleler' : 'II. Hellenistic Towers',
            text: isTr
                ? 'Kentin simgesi haline gelen yuvarlak planlı iki kule, MÖ 3. yüzyıla aittir. Antik dünyada savunma mimarisinin en zarif örneklerinden biri olan bu yapı, kentin ana giriş kapısını oluşturur.'
                : 'The two round towers, symbols of the city, date back to the 3rd century BC. One of the most elegant examples of defense architecture in the ancient world, forming the main city gate.',
          ),
          ContentBlockModel(
            id: 'p3',
            imagePath: 'assets/images/perge3.jpg',
            title: isTr ? 'III. Roma Barışı (Pax Romana)' : 'III. Pax Romana',
            text: isTr
                ? 'Roma İmparatorluk döneminde kent, anıtsal yapılarla donatılmıştır. Sütunlu Cadde, ortasından su kanalı geçen tasarımıyla ferahlık hissi verir. Stadyum ve Tiyatro bu dönemin zenginliğini yansıtır. Ünlü matematikçi Apollonius burada yaşamıştır.'
                : 'During the Roman Empire, the city was adorned with monumental structures. The Colonnaded Street creates a sense of spaciousness with a water channel running through its center. The Stadium and Theater reflect the wealth of this era.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Akropol ve Aşağı Şehir Yapısal Kesiti'
                : 'Structural Section of the Acropolis and Lower City',
            mainImage: 'assets/images/perge_s.jpg',
            abstractText: isTr
                ? 'Bu kesit, Perge\'nin kuzeydeki doğal plato (Akropol) ile güneydeki alüvyal düzlük (Aşağı Şehir) arasındaki yerleşim modelini gösterir. Roma dönemi mimarisinin Helenistik savunma hatları üzerine nasıl entegre edildiği ve su sisteminin kentsel planlamadaki rolü analiz edilmiştir.'
                : 'This section shows Perge\'s settlement pattern between the natural plateau (Acropolis) in the north and the alluvial plain (Lower City) in the south. It analyzes how Roman architecture integrated with Hellenistic defense lines and the role of the water system in urban planning.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Topografik Yerleşim' : '1. Topographical Settlement',
                content: [
                  {
                    'bold': isTr ? 'Anakaya ve Plato (Koyu Gri):' : 'Bedrock and Plateau (Dark Grey):',
                    'text': isTr
                        ? ' Kentin ilk yerleşimi (Akropol), savunması kolay olan kuzeydeki düzleştirilmiş tepe üzerindedir. Kesitin sağındaki Bizans Bazilikası ve Agora bu yüksek zemine oturur.'
                        : ' The initial settlement (Acropolis) is on the defensible flattened hill to the north. The Byzantine Basilica and Agora on the right of the section sit on this high ground.'
                  },
                  {
                    'bold': isTr ? 'Alüvyal Dolgu (Sarı):' : 'Alluvial Fill (Yellow):',
                    'text': isTr
                        ? ' Güneydeki stadyum ve tiyatro gibi devasa Roma yapıları, Aksu Nehri\'nin binlerce yılda oluşturduğu alüvyal düzlük üzerine inşa edilmiştir. Zemin statiğini sağlamak için güçlü tonozlu altyapılar kullanılmıştır.'
                        : ' Massive Roman structures like the stadium and theater in the south are built on the alluvial plain formed by the Aksu River. Strong vaulted infrastructures were used to ensure ground stability.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Helenistik Savunma Hattı' : '2. Hellenistic Defense Line',
                content: [
                  {
                    'bold': isTr ? 'Helenistik Kapı ve Kuleler (Turuncu):' : 'Hellenistic Gate & Towers (Orange):',
                    'text': isTr
                        ? ' Stratigrafinin merkezinde yer alan bu yapı grubu, Akropol ile Aşağı Şehir arasındaki geçiş noktasıdır. Roma döneminde savunma işlevini yitirip "Onur Avlusu"na dönüştürülmüştür.'
                        : ' Located in the center of the stratigraphy, this structure group is the transition point between the Acropolis and Lower City. In the Roman period, it lost its defensive function and turned into a "Court of Honor".'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Su Mühendisliği' : '3. Water Engineering',
                content: [
                  {
                    'bold': isTr ? 'Su Kanalı (Mavi Hat):' : 'Water Channel (Blue Line):',
                    'text': isTr
                        ? ' Kesitte Akropol\'den (sağdan) başlayıp kentin ortasından (Sütunlu Cadde) aşağı doğru akan su sistemi görülür. Bu açık kanal, Perge şehir planlamasının omurgasını oluşturur ve sıcak iklimde doğal klima etkisi yaratır.'
                        : ' The water system starting from the Acropolis (right) and flowing down through the city center (Colonnaded Street) is visible. This open channel forms the backbone of Perge\'s urban planning and creates a natural air conditioning effect.'
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