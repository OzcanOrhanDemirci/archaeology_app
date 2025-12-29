import '../../core/models.dart';

SiteData getNemrutData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'nemrut',
    title: isTr ? 'Nemrut Dağı (Adıyaman)' : 'Mount Nemrut',
    introText: isTr
        ? 'Kommagene Kralı I. Antiochos\'un tanrılara ve atalarına adadığı bu anıtsal mezar (Hierothesion), 2150 metre yükseklikteki Nemrut Dağı\'nın zirvesindedir. Doğu ve Batı teraslarındaki devasa heykeller, Helenistik ve Pers sanatının eşsiz bir sentezidir.'
        : 'Dedicated by Commagene King Antiochus I to the gods and his ancestors, this monumental tomb (Hierothesion) is at the summit of Mount Nemrut at 2150 meters. The colossal statues on the East and West terraces are a unique synthesis of Hellenistic and Persian art.',
    timeline: [
      TimelineData(label: isTr ? 'MÖ 69' : '69 BC', targetBlockId: 'n1'),
      TimelineData(label: isTr ? 'İnşaat' : 'Construction', targetBlockId: 'n2'),
      TimelineData(label: '0', isYearZero: true),
      TimelineData(label: isTr ? 'Keşif' : 'Discovery', targetBlockId: 'n3'),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'n1',
            imagePath: 'assets/images/nemrut1.jpg',
            title: isTr ? 'I. Doğu Terası ve Tanrılar' : 'I. East Terrace & Gods',
            text: isTr
                ? 'Güneşin doğuşunun kutsandığı ana terastır. Burada Zeus-Oromasdes, Apollon-Mithras, Herakles-Artagnes ve Kral Antiochos\'un 8-10 metre yüksekliğindeki heykelleri sıralanır. Heykellerin yüzleri güneşe dönüktür.'
                : 'The main terrace where the sunrise is celebrated. Statues of Zeus-Oromasdes, Apollo-Mithras, Heracles-Artagnes, and King Antiochus, 8-10 meters high, are lined up here. The statues face the sun.',
          ),
          ContentBlockModel(
            id: 'n2',
            imagePath: 'assets/images/nemrut2.jpg',
            title: isTr ? 'II. Batı Terası ve Gün Batımı' : 'II. West Terrace & Sunset',
            text: isTr
                ? 'Doğu terasının simetrik bir kopyasıdır ancak gün batımını izlemek için tasarlanmıştır. Buradaki heykellerin başları depremler ve zamanın etkisiyle yere düşmüştür, bu da alana dramatik bir atmosfer katar.'
                : 'A symmetrical copy of the East Terrace but designed to watch the sunset. The heads of the statues here have fallen to the ground due to earthquakes and time, adding a dramatic atmosphere to the site.',
          ),
          ContentBlockModel(
            id: 'n3',
            imagePath: 'assets/images/nemrut3.jpg',
            title: isTr ? 'III. Aslanlı Horoskop' : 'III. Lion Horoscope',
            text: isTr
                ? 'Dünyanın bilinen en eski horoskopudur. Aslan kabartması üzerindeki yıldızların ve gezegenlerin konumu, anıtın inşa edildiği tarihi (MÖ 7 Temmuz 62) sembolize eder.'
                : 'The oldest known horoscope in the world. The position of stars and planets on the lion relief symbolizes the date the monument was constructed (July 7, 62 BC).',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Tümülüs ve Terasların Kesit Analizi'
                : 'Section Analysis of Tumulus and Terraces',
            mainImage: 'assets/images/nemrut_s.jpg',
            abstractText: isTr
                ? 'Nemrut Dağı kesiti, doğal bir dağ zirvesinin (kireçtaşı anakaya) nasıl insan eliyle şekillendirilerek anıtsal bir mezar-tapınağa dönüştürüldüğünü gösterir. Zirvedeki 50 metrelik kırma taş yığını (tümülüs) insan yapımıdır.'
                : 'The Mount Nemrut section shows how a natural mountain peak (limestone bedrock) was artificially shaped into a monumental tomb-sanctuary. The 50-meter crushed stone pile (tumulus) at the summit is man-made.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Doğal Zemin ve Su Kaynağı' : '1. Natural Ground & Water Source',
                content: [
                  {
                    'bold': isTr ? 'Kireçtaşı Anakaya (Gri/Mavi):' : 'Limestone Bedrock (Grey/Blue):',
                    'text': isTr
                        ? ' Dağın doğal jeolojik yapısıdır. Kesitte görülen mavi katman, dağın altından geçen doğal su kaynağını temsil eder. Teraslar bu anakaya düzleştirilerek oluşturulmuştur.'
                        : ' The natural geological structure of the mountain. The blue layer in the section represents the natural water source passing under the mountain. Terraces were created by leveling this bedrock.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Yapay Tümülüs Dolgusu' : '2. Artificial Tumulus Fill',
                content: [
                  {
                    'bold': isTr ? 'Mıcır Yığını (Tümülüs):' : 'Gravel Pile (Tumulus):',
                    'text': isTr
                        ? ' Kesitin en üstündeki üçgen form, Kral Antiochos\'un mezar odasını korumak için yığılan milyonlarca küçük kırma taştan oluşur. Bu mühendislik harikası, kazı yapılmasını imkansız kılar; çünkü kazıldıkça taşlar içeri kayarak deliği kapatır.'
                        : ' The triangular form at the top of the section consists of millions of small crushed stones piled up to protect King Antiochus\'s burial chamber. This engineering marvel makes excavation impossible; as one digs, stones slide in to fill the hole.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Teraslar ve Heykeller' : '3. Terraces and Statues',
                content: [
                  {
                    'bold': isTr ? 'Doğu ve Batı Terasları:' : 'East and West Terraces:',
                    'text': isTr
                        ? ' Tümülüsün iki yanındaki düzlükler. Kesitte heykellerin (Zeus, Apollon vb.) kaideleri ve devasa boyutları, tümülüs ile orantılı olarak gösterilmiştir. Helenistik (turuncu) katman, bu terasların inşası sırasındaki zemin düzenlemesidir.'
                        : ' The flats on both sides of the tumulus. In the section, the bases and massive sizes of the statues (Zeus, Apollo, etc.) are shown in proportion to the tumulus. The Hellenistic (orange) layer is the ground leveling during the construction of these terraces.'
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