import '../../core/models.dart';

SiteData getPrieneData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'priene',
    title: isTr ? 'Priene (Aydın)' : 'Priene',
    introText: isTr
        ? 'Dilek Yarımadası\'ndaki Mykale Dağı\'nın (Samsun Dağı) yamacına kurulan Priene, antik şehirciliğin en mükemmel örneğidir. "Izgara Plan" (Hippodamos Planı) burada en katı ve estetik biçimde uygulanmıştır. "Anadolu\'nun Pompeii\'si" olarak da anılır.'
        : 'Built on the slope of Mount Mykale (Samsun Mountain) on the Dilek Peninsula, Priene is the most perfect example of ancient urbanism. The "Grid Plan" (Hippodamian Plan) was applied here in its strictest and most aesthetic form. Also known as the "Pompeii of Anatolia".',
    timeline: [
      TimelineData(label: isTr ? 'Kuruluş' : 'Foundation', targetBlockId: 'pr1'),
      TimelineData(label: isTr ? 'Helenistik' : 'Hellenistic', targetBlockId: 'pr2'),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 'pr3'),
      TimelineData(label: '0', isYearZero: true),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'pr1',
            imagePath: 'assets/images/priene1.jpg',
            title: isTr ? 'I. Izgara Şehir Planı' : 'I. Grid City Plan',
            text: isTr
                ? 'Miletli mimar Hippodamos\'un prensiplerine göre kurulan kentte, tüm caddeler birbirini dik keser. Eğimli araziye rağmen bu plandan taviz verilmemiş, sokaklar merdivenli olarak tasarlanmıştır. Bu düzen, demokrasi ve eşitlik idealini yansıtır.'
                : 'Established according to the principles of Hippodamus of Miletus, all streets in the city intersect at right angles. Despite the steep terrain, this plan was not compromised; streets were designed with stairs. This layout reflects ideals of democracy and equality.',
          ),
          ContentBlockModel(
            id: 'pr2',
            imagePath: 'assets/images/priene2.jpg',
            title: isTr ? 'II. Athena Polias Tapınağı' : 'II. Temple of Athena Polias',
            text: isTr
                ? 'Dünyanın Yedi Harikası\'ndan biri olan Halikarnas Mozolesi\'nin mimarı Pytheos tarafından yapılmıştır. İyon düzeninin klasik oranlarını belirleyen "kanon" (standart) yapı olarak kabul edilir. Büyük İskender, tapınağın inşasına maddi destek sağlamıştır.'
                : 'Built by Pytheos, architect of the Mausoleum at Halicarnassus (one of the Seven Wonders). It is considered the "canon" (standard) structure defining classical proportions of the Ionic order. Alexander the Great financially supported its construction.',
          ),
          ContentBlockModel(
            id: 'pr3',
            imagePath: 'assets/images/priene3.jpg',
            title: isTr ? 'III. Tiyatro ve Bouleuterion' : 'III. Theater & Bouleuterion',
            text: isTr
                ? '5000 kişilik tiyatro, Helenistik tiyatro özelliklerini en iyi koruyan yapıdır. Meclis binası (Bouleuterion) ise 640 kişilik kapasitesi ve ortasındaki sunağıyla antik demokrasinin işleyişini gösteren en sağlam kamu yapısıdır.'
                : 'The 5,000-capacity theater best preserves Hellenistic features. The Council House (Bouleuterion), with its 640-person capacity and central altar, is the most intact public building demonstrating the workings of ancient democracy.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Eğimli Arazi ve Teraslama Kesiti'
                : 'Section of Sloped Terrain and Terracing',
            mainImage: 'assets/images/priene_s.jpg',
            abstractText: isTr
                ? 'Priene kesiti, kentin sarp Mykale Dağı yamacına nasıl teraslar halinde oturtulduğunu gösterir. Profil, "Izgara Plan"ın dikey düzlemde nasıl uygulandığını, her bir terasın (Tiyatro, Tapınak, Gymnasium) jeolojik zemine nasıl ankre edildiğini analiz eder.'
                : 'The Priene section shows how the city was seated on the steep slopes of Mount Mykale in terraces. The profile analyzes how the "Grid Plan" was applied in the vertical plane and how each terrace (Theater, Temple, Gymnasium) was anchored to the geological ground.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Jeolojik Yapı ve Naunlochion' : '1. Geological Structure & Naunlochion',
                content: [
                  {
                    'bold': isTr ? 'Sarp Anakaya (Gri):' : 'Steep Bedrock (Grey):',
                    'text': isTr
                        ? ' Kentin üzerine kurulduğu dağ yamacı, doğal bir savunma duvarı gibidir. Kesitin en üstündeki Akropol (Teloneia), bu sarp kayalık üzerindedir. Aşağıdaki Gymnasium ise yapay dolgu üzerine oturur.'
                        : ' The mountain slope on which the city is built acts like a natural defense wall. The Acropolis (Teloneia) at the top of the section is on this steep rock. The Gymnasium below sits on artificial fill.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Teraslama Mühendisliği' : '2. Terracing Engineering',
                content: [
                  {
                    'bold': isTr ? 'Athena Tapınağı Terası (Orta):' : 'Athena Temple Terrace (Center):',
                    'text': isTr
                        ? ' Kesitin en belirgin düzlüğü, tapınak için anakayanın oyulması ve ön tarafın devasa istinat duvarlarıyla desteklenmesiyle oluşturulmuştur. Pytheos\'un mühendislik dehası burada yatar.'
                        : ' The most prominent flat area in the section was created by carving the bedrock for the temple and supporting the front with massive retaining walls. Pytheos\'s engineering genius lies here.'
                  },
                  {
                    'bold': isTr ? 'Tiyatro Terası (Üst):' : 'Theater Terrace (Upper):',
                    'text': isTr
                        ? ' Tapınağın hemen üzerindeki teras. Tiyatronun oturma sıraları (cavea) doğal kaya eğimine yerleştirilmiş, böylece ekstra malzeme kullanımından tasarruf edilmiştir.'
                        : ' The terrace immediately above the temple. The theater\'s seating rows (cavea) were placed on the natural rock slope, saving on extra materials.'
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