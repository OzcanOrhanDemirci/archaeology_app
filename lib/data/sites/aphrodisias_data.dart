import '../../core/models.dart';

SiteData getAphrodisiasData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'aphrodisias',
    title: isTr ? 'Afrodisyas (Aydın)' : 'Aphrodisias',
    introText: isTr
        ? 'Aşk ve Güzellik Tanrıçası Afrodit\'e adanmış olan kent, antik çağın en ünlü heykeltıraşlık okuluna ev sahipliği yapar. Mermer ocaklarına yakınlığı sayesinde kent, "beyaz mermer şehir" olarak anılır. Stadyumu, antik dünyanın en iyi korunmuş stadyumudur.'
        : 'Dedicated to Aphrodite, the Goddess of Love and Beauty, the city hosted the most famous sculpture school of antiquity. Known as the "white marble city" due to its proximity to marble quarries. Its stadium is the best-preserved in the ancient world.',
    timeline: [
      TimelineData(label: isTr ? 'Neolitik' : 'Neolithic', targetBlockId: 'af1'),
      TimelineData(label: isTr ? 'Helenistik' : 'Hellenistic', targetBlockId: 'af2'),
      TimelineData(label: '0', isYearZero: true),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 'af3'),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'af1',
            imagePath: 'assets/images/aphrodisias1.jpg',
            title: isTr ? 'I. Pekmez Tepe Höyüğü' : 'I. Pekmez Tepe Mound',
            text: isTr
                ? 'Tiyatronun güneyindeki bu yapay tepe, kentin tarihini MÖ 5000\'lere (Geç Kalkolitik/Erken Tunç Çağı) kadar götürür. Afrodisyas sadece bir Roma kenti değil, köklü bir Anadolu yerleşimidir.'
                : 'This artificial mound south of the theater dates the city\'s history back to 5000 BC (Late Chalcolithic/Early Bronze Age). Aphrodisias is not just a Roman city, but a deep-rooted Anatolian settlement.',
          ),
          ContentBlockModel(
            id: 'af2',
            imagePath: 'assets/images/aphrodisias2.jpg',
            title: isTr ? 'II. Afrodit Tapınağı' : 'II. Temple of Aphrodite',
            text: isTr
                ? 'MÖ 1. yüzyılda inşasına başlanan tapınak, kentin kalbidir. Tanrıça Afrodit\'in kült merkezi olması nedeniyle siyasi sığınma hakkına (asylia) sahipti. Bizans döneminde devasa bir kiliseye dönüştürülmüştür.'
                : 'Construction began in the 1st century BC; it is the heart of the city. As the cult center of Goddess Aphrodite, it possessed the right of asylum (asylia). It was converted into a massive church in the Byzantine era.',
          ),
          ContentBlockModel(
            id: 'af3',
            imagePath: 'assets/images/aphrodisias3.jpg',
            title: isTr ? 'III. Sebasteion ve Heykel Okulu' : 'III. Sebasteion & Sculpture School',
            text: isTr
                ? 'İmparatorluk kültüne adanan Sebasteion, Roma imparatorlarını ve Yunan mitolojisini birleştiren 200\'den fazla kabartma ile süslüdür. Afrodisyaslı heykeltıraşların eserleri Roma\'nın her köşesine ihraç edilmiştir.'
                : 'Dedicated to the imperial cult, the Sebasteion is adorned with over 200 reliefs combining Roman emperors and Greek mythology. Works of Aphrodisian sculptors were exported to every corner of Rome.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Akropolis ve Kent Merkezi Kesiti'
                : 'Section of Acropolis and City Center',
            mainImage: 'assets/images/aphrodisias_s.jpg',
            abstractText: isTr
                ? 'Afrodisyas kesiti, tarih öncesi bir höyük yerleşiminin (Tiyatro Tepesi) üzerine nasıl klasik bir Roma kentinin inşa edildiğini gösterir. Stratigrafi, Helenistik dolgu katmanları üzerine oturan anıtsal yapıları ve yeraltı su sistemlerini ortaya koyar.'
                : 'The Aphrodisias section demonstrates how a classical Roman city was built upon a prehistoric mound settlement (Theater Hill). Stratigraphy reveals monumental structures sitting on Hellenistic fill layers and underground water systems.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Prehistorik ve Helenistik Taban' : '1. Prehistoric and Hellenistic Base',
                content: [
                  {
                    'bold': isTr ? 'Helenistik Dolgu (Sarı):' : 'Hellenistic Fill (Yellow):',
                    'text': isTr
                        ? ' Kesitin altındaki geniş sarı katman, kentin zeminini düzeltmek için yapılan dolguyu temsil eder. Afrodit Tapınağı ve Agora bu dolgu üzerine inşa edilmiştir.'
                        : ' The broad yellow layer at the bottom represents the fill used to level the city ground. The Temple of Aphrodite and Agora were built on this fill.'
                  },
                  {
                    'bold': isTr ? 'Su Kanalları (Mavi):' : 'Water Channels (Blue):',
                    'text': isTr
                        ? ' Kentin altından geçen antik su kanalları ve sarnıçlar, kurak yaz aylarında kentin su ihtiyacını karşılamak için jeolojik tabana (mavi) oyulmuştur.'
                        : ' Ancient water channels and cisterns passing under the city were carved into the geological base (blue) to meet water needs during dry summers.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Roma Anıtsal Mimarisi' : '2. Roman Monumental Architecture',
                content: [
                  {
                    'bold': isTr ? 'Stadyum (Sol):' : 'Stadium (Left):',
                    'text': isTr
                        ? ' Kesitin sol ucunda, doğal bir çanağın veya toprak yığınının içine oturtulmuş devasa stadyum görülür. Bu yapı, kentin kuzey sınırını belirler.'
                        : ' At the left end of the section, the massive stadium seated in a natural bowl or earth mound is visible. This structure defines the northern boundary of the city.'
                  },
                  {
                    'bold': isTr ? 'Odeon ve Bouleuterion (Orta):' : 'Odeon & Bouleuterion (Center):',
                    'text': isTr
                        ? ' Bu yapılar, kentin en eski yerleşim yeri olan höyüğün yamacına oyulmuştur. Yani mimari, yapay bir tepe (tarih öncesi katmanlar) üzerine şekillendirilmiştir.'
                        : ' These structures were carved into the slope of the mound, the oldest settlement of the city. Thus, architecture was shaped upon an artificial hill (prehistoric layers).'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Bizans Dönüşümü' : '3. Byzantine Transformation',
                content: [
                  {
                    'bold': isTr ? 'Piskoposluk Sarayı (Sağ):' : 'Bishop\'s Palace (Right):',
                    'text': isTr
                        ? ' Kentin Hristiyanlaşmasıyla birlikte, pagan tapınağının yakınına inşa edilen idari ve dini merkezdir. Roma yapılarının malzemeleri (spolia) kullanılarak yapılmıştır.'
                        : ' An administrative and religious center built near the pagan temple with the Christianization of the city. Built using materials (spolia) from Roman structures.'
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