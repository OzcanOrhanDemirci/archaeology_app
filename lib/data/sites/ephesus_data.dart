import '../../core/models.dart';

SiteData getEphesusData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'ephesus',
    title: isTr ? 'Efes' : 'Ephesus',
    introText: isTr
        ? 'Efes’in stratigrafik dizisi, kentin coğrafi değişimlerle (özellikle limanın alüvyonlaşması) mücadele ederek sürekli yer değiştirmesinin bir sonucu olarak karmaşıktır.\nBu karmaşıklık, arkeolojik kazı metodolojisi için hem zorlayıcı hem de bilgilendiricidir.'
        : 'The stratigraphic sequence of Ephesus is complex due to the city\'s constant relocation in struggle with geographical changes, particularly the silting of the harbor.\nThis complexity is both challenging and informative for archaeological excavation methodology.',
    timeline: [
      TimelineData(label: isTr ? 'MÖ 7000' : '7000 BC', targetBlockId: 'l1'),
      TimelineData(label: isTr ? 'Arkaik' : 'Archaic', targetBlockId: 'l2'),
      TimelineData(label: isTr ? 'Helenistik' : 'Hellenistic', targetBlockId: 'l3'),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 'l4'),
      TimelineData(label: '0', isYearZero: true),
      TimelineData(label: isTr ? 'Bizans' : 'Byzantine', targetBlockId: 'l5'),
      TimelineData(label: isTr ? 'Osmanlı' : 'Ottoman', targetBlockId: 'l6'),
    ],
    sections: [

      SiteSection(
        title: isTr ? 'Genel Stratigrafi' : 'General Stratigraphy',
        content: [
          ContentBlockModel(
            id: 'l1',
            imagePath: 'assets/images/efes1.jpg',
            title: isTr ? 'I. Prehistorik ve İlk Yerleşim (MÖ 7. Binyıl - MÖ 11. Yüzyıl)' : 'I. Prehistoric & First Settlement (7th Millennium BC - 11th Century BC)',
            text: isTr
                ? 'Bu en alt katman, Efes\'in tarihini Ege coğrafyasının genel Prehistorya evreleriyle ilişkilendirir.\nKazılar, Ayasuluk Tepesi ve Çukuriçi Höyüğü\'nde sistemik açmalar kullanılarak gerçekleştirilmiştir.\n\nMiken (Mycenaean) Seramiği buluntuları, Efes\'in MÖ 14.-13.\nyüzyıllarda Ege ticaret ağına dahil olduğunu ve Anadolu\'nun içlerine açılan önemli bir liman-karakol işlevi gördüğünü kanıtlar.'
                : 'This lowest layer connects the history of Ephesus with the general Prehistory phases of the Aegean geography.\nExcavations at Ayasuluk Hill and Çukuriçi Höyük were conducted using systematic grid systems.\n\nMycenaean Pottery finds prove that Ephesus was included in the Aegean trade network in the 14th-13th centuries BC and served as an important port-outpost opening to the interior of Anatolia.',
          ),
          ContentBlockModel(
            id: 'l2',
            imagePath: 'assets/images/efes2.jpg',
            title: isTr ? 'II. Arkaik Dönem (MÖ 8. Yüzyıl - MÖ 480)' : 'II. Archaic Period (8th Century BC - 480 BC)',
            text: isTr
                ? 'Arkaik katman, kentin Artemision (Artemis Tapınağı) çevresindeki eski yerleşimini ve İyonya\'nın erken kolonizasyon sürecini yansıtır.\nBu dönemde Tapınak Mimarisi esas alınır.\n\nDünyanın Yedi Harikası\'ndan biri olan Artemis Tapınağı\'nın ilk mermer evresine (Kroisos Dönemi) ait kalıntılar buradadır.\nTapınağın mimari cephesini süsleyen "Figürlü Sütun Tamburları", bu dönemin İyonya Sanatı\'ndaki anıtsallığın en çarpıcı örnekleridir.'
                : 'The Archaic layer reflects the old settlement around the Artemision (Temple of Artemis) and the early colonization process of Ionia.\nTemple Architecture is the basis for this period.\n\nRemains of the first marble phase of the Temple of Artemis (Croesus Period), one of the Seven Wonders of the World, are found here.\nThe "Figured Column Drums" decorating the temple facade are the most striking examples of monumentality in Ionian Art.',
          ),
          ContentBlockModel(
            id: 'l3',
            imagePath: 'assets/images/efes3.jpg',
            title: isTr ? 'III. Klasik ve Erken Helenistik Dönem (MÖ 480 - MÖ 287)' : 'III. Classical & Early Hellenistic Period (480 BC - 287 BC)',
            text: isTr
                ? 'Bu katman, arkeolojik olarak en zorlu katmandır. MÖ 4. yüzyıl sonunda Lysimachos\'un kenti liman yakınına taşımasıyla eski yerleşim terk edilmiştir.\n\nYeni kent planlamasında, ızgara planlı (orthogonal) cadde sistemi izlenir.\nLysimachos tarafından inşa ettirilen ve poligonal taş örgü tekniğiyle yapılmış sur kalıntıları, yeni kentin ölçeğini ve savunma stratejisini ortaya koyar.'
                : 'This is archaeologically the most challenging layer. The old settlement was abandoned when Lysimachos moved the city between Panayırdağ and Bülbüldağ near the harbor at the end of the 4th century BC.\n\nThe new city planning followed the Hippodamian orthogonal (grid plan) street system.\nRemnants of the city walls built by Lysimachos using polygonal masonry reveal the scale and defense strategy of the new city.',
          ),
          ContentBlockModel(
            id: 'l4',
            imagePath: 'assets/images/efes4.jpg',
            title: isTr ? 'IV. Roma Dönemi (MÖ 27 - MS 4. Yüzyıl)' : 'IV. Roman Period (27 BC - 4th Century AD)',
            text: isTr
                ? 'Efes’in yapısal olarak en baskın katmanıdır. Neredeyse tüm ana caddeler ve anıtsal yapılar bu döneme aittir.\nYapı malzemesi olarak mermer ve traverten hakimdir.\n\nCelsus Kütüphanesi, restore edilmiş cephesiyle Korint düzeninin en iyi örneğidir.\nYamaç Evler, Pompei stili freskleri ve mozaikleriyle Roma dönemi lüks yaşamını sergiler.'
                : 'This is the structurally most dominant layer of Ephesus.\nAlmost all main streets and monumental structures belong to this period.\nMarble and travertine are dominant as building materials.\n\nThe Celsus Library, with its fully restored facade, is the best example of the Corinthian order and monumental architectural plastic.\nThe Terrace Houses display the luxury life of the Roman period with Pompeian style frescoes and mosaics.',
          ),
          ContentBlockModel(
            id: 'l5',
            imagePath: 'assets/images/efes5.jpg',
            title: isTr ? 'V. Geç Antik ve Bizans Dönemi (MS 5. Yüzyıl - MS 14. Yüzyıl)' : 'V. Late Antique & Byzantine Period (5th Century AD - 14th Century AD)',
            text: isTr
                ? 'Bu katman, kentin Hristiyanlaşma sürecini ve coğrafi daralmasını gösterir.\nBüyük kamu yapıları (Örn. Tiyatro) savunma amaçlı istihkamlara dönüştürülmüştür.\n\nAyasuluk Tepesi\'ndeki Aziz Yuhanna Bazilikası, Artemis Tapınağı\'ndan devşirme malzemeler kullanılarak inşa edilmiş, kentin metropol (dini merkez) konumunu gösteren devasa bir yapıdır.'
                : 'This layer shows the Christianization process and geographical contraction of the city.\nLarge public buildings (e.g., Theater) were converted into fortifications.\n\nThe Basilica of St. John on Ayasuluk Hill, built using spolia from the Temple of Artemis, is a massive structure demonstrating the city\'s status as a metropolis (religious center).',
          ),
          ContentBlockModel(
            id: 'l6',
            imagePath: 'assets/images/efes6.jpg',
            title: isTr ? 'VI. Beylikler ve Osmanlı Dönemi (MS 14. Yüzyıl - Günümüz)' : 'VI. Beyliks & Ottoman Period (14th Century AD - Present)',
            text: isTr
                ? 'Efes\'in arkeolojik hikayesinin son evresidir; yerleşim tamamen bugünkü Selçuk ilçesi civarına çekilmiştir.\nTarihsel Arkeoloji yöntemleri önem kazanır.\n\nİsa Bey Camii (1374-1375), Aydınoğulları Beyliği dönemine ait, Selçuklu ve Osmanlı mimarisinin geçiş özelliklerini taşıyan anıtsal bir yapıdır.'
                : 'The final phase of Ephesus\'s archaeological story; the settlement completely withdrew to the vicinity of present-day Selçuk.\nHistorical Archaeology methods gain importance here.\n\nThe Isa Bey Mosque (1374-1375) is a monumental structure belonging to the Aydinids period, bearing transitional features of Seljuk and Ottoman architecture.',
          ),
        ],
      ),

      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr ? 'Efes Kentsel Profilinin Jeo-Arkeolojik ve Stratigrafik Analizi' : 'Geo-Archaeological and Stratigraphic Analysis of the Ephesian Urban Profile',
            mainImage: 'assets/images/efes_s.jpg',
            abstractText: isTr
                ? 'Özet\nBu analiz, Liman\'dan Koressos Dağı eteklerine kadar Batı-Doğu uzantılı şematik Efes stratigrafik kesitini yorumlamaktadır.\nProfil, deniz gerilemesi (regresyon) ve alüvyal ilerleme (progradasyon) dizisiyle tanımlanan paleo-jeomorfolojik evrim ile insan kaynaklı kentsel gelişim arasındaki ilişkiyi göstermektedir.'
                : 'Abstract\nThis analysis interprets the schematic stratigraphic transect of Ephesus, extending West-East from the Harbor to the slopes of Mt. Koressos.\nThe profile illustrates the correlation between paleo-geomorphological evolution and anthropogenic urban development, defined by a sequence of marine regression and alluvial progradation.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Jeolojik Taban ve Paleo-Coğrafya' : '1. Geological Substrate and Paleo-Geography',
                content: [
                  {'bold': isTr ? 'Anakaya Oluşumu (Koressos Dağı):' : 'Bedrock Formation (Mt. Koressos):', 'text': isTr ? ' Koyu renkli bazal kütle (sağ alt), Koressos Dağı\'nın (Bülbül Dağı) Mesozoyik kireçtaşı/mermer jeolojisini temsil eder.\nEğimli yapısal gradyan, Yamaç Evler için statik temel sağlar ve alüvyal havzanın güney sınırını belirler.' : ' The dark basal mass (bottom right) represents the Mesozoic limestone/marble geology of Mt. Koressos (Bülbül Dağı).\nThe dipping structural gradient provides the static foundation for the Terrace Houses and delimits the southern edge of the alluvial basin.'},
                  {'bold': isTr ? 'Holocene Deniz Transgresyonu (Antik Liman Tabanı):' : 'Holocene Marine Transgression (Ancient Harbor Floor):', 'text': isTr ? ' Bazal mavi tabaka (MÖ 3000 – MÖ 100), paleo-kıyı şeridini tanımlar.\nBu denizel tortu tabakası, denizin başlangıçta görünür kentsel üstyapıdan önce (Roma agorası seviyesinin altında) iç kısımlara kadar uzandığını doğrular.' : ' The basal blue stratum (c. 3000 BC – 100 BC) identifies the paleo-coastline.\nThis marine sediment layer confirms that the sea originally extended well inland (beneath the Roman agora level), pre-dating the visible urban superstructure.'},
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Helenistik Mühendislik ve Islah (MÖ 3. Yüzyıl)' : '2. Hellenistic Engineering and Reclamation (3rd Century BC)',
                content: [
                  {'bold': isTr ? 'Antropojenik Dolgu:' : 'Anthropogenic Fill:', 'text': isTr ? ' Deniz tabakasının üzerindeki turuncu katman, muhtemelen Lysimachos\'un yeniden kuruluşuna atfedilen devasa bir teraslama olayını temsil eder.\nBu doğal bir tortulaşma değil, bataklığı kurutmak, zemini stabilize etmek ve Hippodamos ızgara planının uygulanması için zemin seviyesini yükseltmek amacıyla tasarlanmış mühendislik dolgusudur.' : ' The orange stratum overlying the marine layer represents a massive terraforming event, likely attributed to the Lysimachian re-foundation.\nThis is not natural sedimentation but an engineered fill designed to reclaim marshland, stabilize the substrate, and elevate the ground level for the implementation of the Hippodamian grid.'},
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Roma Yerleşim Ufku (MS 1. – 2. Yüzyıl)' : '3. Roman Occupational Horizon (1st – 2nd Century AD)',
                content: [
                  {'bold': null, 'text': isTr ? 'Gri katman, anıtsal yapılar için birincil temel görevi gören yerleşik İmparatorluk Roma zemin seviyesini gösterir.' : 'The grey stratum indicates the established Imperial Roman ground level, serving as the primary foundation for the monumental structures.'},
                  {'bold': isTr ? 'Celsus Kütüphanesi (MS 110):' : 'Library of Celsus (AD 110):', 'text': isTr ? ' Stratigrafik olarak stabilize edilmiş Roma seviyesinde bulunur. Kesit, yapının yapay olarak doldurulmuş ova ile doğal yamaç arasındaki arayüzdeki konumunu vurgular.' : ' Stratigraphically situated on the stabilized Roman level. The section highlights its location at the interface between the artificially filled plain and the natural slope.'},
                ],
              ),

            ],
          ),
        ],
      ),
    ],
  );
}