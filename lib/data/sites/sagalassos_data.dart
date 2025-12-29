import '../../core/models.dart';

SiteData getSagalassosData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'sagalassos',
    title: isTr ? 'Sagalassos (Burdur)' : 'Sagalassos',
    introText: isTr
        ? 'Toros Dağları\'nın 1700 metre yüksekliğinde, "Bulutların Üzerindeki Kent" olarak bilinen Sagalassos, Pisidia bölgesinin başkentidir. Dünyanın en yüksek rakımlı antik tiyatrosuna ve hala çalışan antik bir çeşmeye (Antoninler Çeşmesi) sahiptir.'
        : 'Located at 1700 meters in the Taurus Mountains, known as the "City in the Clouds," Sagalassos is the capital of Pisidia. It boasts the highest altitude ancient theater in the world and an ancient fountain that still works (Antonine Nymphaeum).',
    timeline: [
      TimelineData(label: isTr ? 'Helenistik' : 'Hellenistic', targetBlockId: 's1'),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 's2'),
      TimelineData(label: '0', isYearZero: true),
      TimelineData(label: isTr ? 'Deprem' : 'Earthquake', targetBlockId: 's3'),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 's1',
            imagePath: 'assets/images/sagalassos1.jpg',
            title: isTr ? 'I. Heroon ve Yukarı Agora' : 'I. Heroon & Upper Agora',
            text: isTr
                ? 'Kentin politik merkezi olan Yukarı Agora, dört bir yanı anıtsal yapılarla çevrili bir meydandır. Kuzeybatısındaki Heroon (Kahramanlık Anıtı), 14 metrelik yüksekliği ve dans eden kızlar frizi ile büyüleyicidir.'
                : 'The Upper Agora, the city\'s political center, is a square surrounded by monumental structures. The Heroon (Hero\'s Monument) to its northwest is fascinating with its 14-meter height and frieze of dancing girls.',
          ),
          ContentBlockModel(
            id: 's2',
            imagePath: 'assets/images/sagalassos2.jpg',
            title: isTr ? 'II. Antoninler Çeşmesi' : 'II. Antonine Nymphaeum',
            text: isTr
                ? 'MS 161-180 yılları arasında inşa edilen devasa çeşme, arkeolojik kazılar sonrası restore edilerek tekrar su akıtır hale getirilmiştir. 28 metre genişliğindeki cephesi ve şelaleli havuzuyla antik su mühendisliğinin zirvesidir.'
                : 'Built between 161-180 AD, this massive fountain was restored after excavations and now flows with water again. With its 28-meter wide facade and waterfall pool, it is the pinnacle of ancient water engineering.',
          ),
          ContentBlockModel(
            id: 's3',
            imagePath: 'assets/images/sagalassos3.jpg',
            title: isTr ? 'III. Depremler ve Terk Ediliş' : 'III. Earthquakes & Abandonment',
            text: isTr
                ? 'Sagalassos, MS 6. ve 7. yüzyıllarda yaşanan büyük depremlerle yıkılmıştır. Şehir sakinleri, veba salgını ve Arap akınlarının da etkisiyle kenti terk etmiş, dağ başındaki bu hazine yüzyıllarca el değmeden kalmıştır.'
                : 'Sagalassos was destroyed by major earthquakes in the 6th and 7th centuries AD. Residents abandoned the city due to plague and Arab raids, leaving this mountaintop treasure untouched for centuries.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Yüksek İrtifa Yerleşimi ve Deprem Kesiti'
                : 'High Altitude Settlement & Earthquake Section',
            mainImage: 'assets/images/sagalassos_s.jpg',
            abstractText: isTr
                ? 'Sagalassos kesiti, kentin Akdağ yamaçlarına nasıl basamaklar halinde yerleştirildiğini gösterir. Stratigrafi, deprem yıkıntılarının (tektonik katmanlar) anıtsal yapıları nasıl mühürlediğini ve Roma dönemi dolgu zeminlerini analiz eder.'
                : 'The Sagalassos section shows how the city was placed in steps on the slopes of Akdag. Stratigraphy analyzes how earthquake debris (tectonic layers) sealed monumental structures and Roman period fill grounds.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Tektonik Zemin ve Su' : '1. Tectonic Ground & Water',
                content: [
                  {
                    'bold': isTr ? 'Kireçtaşı Yamaç (Gri):' : 'Limestone Slope (Grey):',
                    'text': isTr
                        ? ' Sagalassos, su kaynaklarının bol olduğu kireçtaşı bir formasyon üzerine kuruludur. Kesitin altındaki mavi hatlar, Antoninler Çeşmesi\'ni besleyen dağ kaynaklarını gösterir.'
                        : ' Sagalassos is built on a limestone formation abundant in water sources. Blue lines at the bottom of the section show mountain springs feeding the Antonine Nymphaeum.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Anıtsal Merkez' : '2. Monumental Center',
                content: [
                  {
                    'bold': isTr ? 'Yukarı Agora ve Çeşme (Orta):' : 'Upper Agora & Fountain (Center):',
                    'text': isTr
                        ? ' Kentin en düzlük alanı burasıdır. Kesitte görüldüğü gibi, yamaç tıraşlanarak ve istinat duvarlarıyla desteklenerek geniş bir plato elde edilmiştir.'
                        : ' This is the flattest area of the city. As seen in the section, a wide plateau was obtained by shaving the slope and supporting it with retaining walls.'
                  },
                  {
                    'bold': isTr ? 'Tiyatro (En Üst):' : 'Theater (Top):',
                    'text': isTr
                        ? ' Bulutlara değen tiyatro. 9000 kişilik bu yapı, kentin en yüksek kotuna yerleştirilmiştir ve tüm vadiye hakimdir.'
                        : ' The theater touching the clouds. This 9,000-person structure is placed at the city\'s highest elevation, commanding the entire valley.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Deprem Yıkıntısı' : '3. Earthquake Debris',
                content: [
                  {
                    'bold': isTr ? 'Yıkım Katmanı (Karışık Dolgu):' : 'Destruction Layer (Mixed Fill):',
                    'text': isTr
                        ? ' Yapıların üzerini örten kalın toprak ve taş tabakası, MS 7. yüzyıldaki büyük depremin izidir. Sütunların "domino taşı" gibi devrilmiş halde bulunması, bu katastrofik olayın kanıtıdır.'
                        : ' The thick layer of soil and stone covering structures is the trace of the great earthquake in the 7th century AD. Finding columns toppled like "dominoes" is proof of this catastrophic event.'
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