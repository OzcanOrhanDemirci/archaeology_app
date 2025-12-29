import '../../core/models.dart';

SiteData getGobeklitepeData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'gobeklitepe',
    title: isTr ? 'Göbeklitepe (Şanlıurfa)' : 'Gobeklitepe',
    introText: isTr
        ? 'İnsanlık tarihini yeniden yazdıran Göbeklitepe, MÖ 9600 yıllarına tarihlenen dünyanın bilinen en eski tapınak kompleksidir. Avcı-toplayıcı toplulukların tarıma geçmeden önce de karmaşık bir inanç sistemine ve anıtsal mimariye sahip olduğunu kanıtlamıştır.'
        : 'Rewriting human history, Gobeklitepe is the world\'s oldest known temple complex, dating back to 9600 BC. It proves that hunter-gatherer communities possessed a complex belief system and monumental architecture even before the transition to agriculture.',
    timeline: [
      TimelineData(label: isTr ? 'Çanak Çömleksiz Neolitik' : 'Pre-Pottery Neolithic', targetBlockId: 'g1'),
      TimelineData(label: isTr ? 'Tabaka III' : 'Layer III', targetBlockId: 'g2'),
      TimelineData(label: isTr ? 'Tabaka II' : 'Layer II', targetBlockId: 'g3'),
      TimelineData(label: '0', isYearZero: true),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'g1',
            imagePath: 'assets/images/gobekli1.jpg',
            title: isTr ? 'I. T Biçimli Dikilitaşlar' : 'I. T-Shaped Pillars',
            text: isTr
                ? 'Boyları 6 metreye ulaşan ve ağırlıkları 40 tonu bulan bu dikilitaşlar, stilize edilmiş insan formlarıdır. Üzerlerinde aslan, boğa, tilki, yılan ve akrep gibi vahşi hayvan kabartmaları bulunur. Bu hayvanlar muhtemelen kabilelerin totemleridir.'
                : 'Reaching heights of 6 meters and weights of 40 tons, these pillars are stylized human forms. They feature reliefs of wild animals like lions, bulls, foxes, snakes, and scorpions, which were likely tribal totems.',
          ),
          ContentBlockModel(
            id: 'g2',
            imagePath: 'assets/images/gobekli2.jpg',
            title: isTr ? 'II. Dairesel Yapılar (Enclosures)' : 'II. Circular Enclosures',
            text: isTr
                ? 'Merkezdeki iki büyük dikilitaşın çevresine dizilmiş daha küçük taşlardan oluşan dairesel alanlardır (A, B, C, D yapıları). Bu alanların üzeri muhtemelen kapalıydı ve ritüel amaçlı kullanılıyordu. En büyüğü olan D Yapısı en iyi korunmuş olandır.'
                : 'Circular areas composed of smaller stones arranged around two large central pillars (Structures A, B, C, D). These areas were likely roofed and used for rituals. Structure D, the largest, is the best preserved.',
          ),
          ContentBlockModel(
            id: 'g3',
            imagePath: 'assets/images/gobekli3.jpg',
            title: isTr ? 'III. Tapınağın Gömülmesi' : 'III. Burial of the Temple',
            text: isTr
                ? 'Göbeklitepe\'nin en büyük gizemlerinden biri, MÖ 8000 civarında bilinçli olarak tonlarca toprakla gömülmüş olmasıdır. Bu eylem, alanın kutsallığını korumak veya bir çağın kapanışını simgelemek için yapılmış olabilir.'
                : 'One of Gobeklitepe\'s greatest mysteries is that it was intentionally buried under tons of soil around 8000 BC. This act may have been done to preserve the sanctity of the site or to symbolize the end of an era.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Neolitik Dolgu ve Yapısal Kesit'
                : 'Neolithic Fill and Structural Section',
            mainImage: 'assets/images/gobekli_s.jpg',
            abstractText: isTr
                ? 'Göbeklitepe kesiti, doğal kireçtaşı platosu üzerine inşa edilen dairesel yapıların katmanlaşmasını gösterir. Kesit, yapıların bilinçli olarak nasıl doldurulduğunu (yapay höyük oluşumu) ve T-biçimli sütunların anakayaya nasıl sabitlendiğini analiz eder.'
                : 'The Gobeklitepe section shows the stratification of circular structures built on a natural limestone plateau. It analyzes how the structures were intentionally filled (artificial mound formation) and how T-shaped pillars were anchored to the bedrock.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Jeolojik Zemin ve Anakaya' : '1. Geological Ground & Bedrock',
                content: [
                  {
                    'bold': isTr ? 'Kireçtaşı Platosu (Gri):' : 'Limestone Plateau (Grey):',
                    'text': isTr
                        ? ' Göbeklitepe, bölgeye hakim kireçtaşı bir plato üzerine kuruludur. Dikilitaşlar için gerekli malzeme hemen yakındaki bu kayalıktan kesilmiştir. Merkezdeki büyük sütunların tabanları, doğrudan anakayaya oyulan yuvalara yerleştirilmiştir.'
                        : ' Gobeklitepe is situated on a limestone plateau dominating the region. Material for the pillars was quarried from this nearby rock. The bases of the large central pillars were placed into sockets carved directly into the bedrock.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Mimari Katmanlar (Tabaka III)' : '2. Architectural Layers (Layer III)',
                content: [
                  {
                    'bold': isTr ? 'Dairesel Yapılar (Turuncu/Kahve):' : 'Circular Structures (Orange/Brown):',
                    'text': isTr
                        ? ' En eski ve en anıtsal tabakadır. Kesitte görülen dairesel duvarlar ve terrazzo (kireç) taban, yapının iç kısmını oluşturur. Sütunların etrafındaki sekiler, ritüeller sırasında oturma alanı olarak kullanılmıştır.'
                        : ' The oldest and most monumental layer. The circular walls and terrazzo (lime) floor seen in the section form the interior. Benches around the pillars were used as seating areas during rituals.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Bilinçli Dolgu (Kapatma)' : '3. Intentional Fill (Closure)',
                content: [
                  {
                    'bold': isTr ? 'Yapay Toprak Yığını (Üst Katman):' : 'Artificial Soil Pile (Top Layer):',
                    'text': isTr
                        ? ' Tapınakların üzerini örten metrelerce kalınlığındaki toprak tabakası doğal erozyon değil, insan eliyle taşınmış dolgudur. Bu dolgu, yapıların günümüze kadar mükemmel korunmasını sağlamıştır.'
                        : ' The meters-thick soil layer covering the temples is not natural erosion but manually transported fill. This fill ensured the structures remained perfectly preserved to this day.'
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