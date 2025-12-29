import '../../core/models.dart';

SiteData getPergamonData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'pergamon',
    title: isTr ? 'Pergamon (Bergama)' : 'Pergamon',
    introText: isTr
        ? 'Bergama, Bakırçay (Kaikos) Vadisi\'ne hakim tepeler üzerine kurulmuş, Helenistik dönemin en etkileyici başkentlerinden biridir. Şehrin yerleşimi, topoğrafyayı ustaca kullanan teraslama sistemiyle antik şehirciliğin zirvesini temsil eder.'
        : 'Pergamon is one of the most impressive capitals of the Hellenistic period, established on hills dominating the Kaikos Valley. Its settlement represents the pinnacle of ancient urbanism with a terracing system that masterfully utilizes the topography.',
    timeline: [
      TimelineData(label: isTr ? 'Tunç Çağı' : 'Bronze Age', targetBlockId: 'p1'),
      TimelineData(label: isTr ? 'Erken Hel.' : 'Early Hell.', targetBlockId: 'p2'),
      TimelineData(label: isTr ? 'Yüksek Hel.' : 'High Hell.', targetBlockId: 'p3'),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 'p4'),
      TimelineData(label: '0', isYearZero: true),
      TimelineData(label: isTr ? 'Bizans' : 'Byzantine', targetBlockId: 'p5'),
    ],
    sections: [
      // SEKTÖR 1: Genel Bilgiler (General Info)
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'p1',
            imagePath: 'assets/images/pergamon1.jpg',
            title: isTr ? 'I. Prehistorik ve Erken Dönem İzleri' : 'I. Prehistoric & Early Period Traces',
            text: isTr
                ? 'Bergama\'daki en eski yerleşim Akropolis tepesi ile sınırlıdır. Bu dönem, kentin metropol olmadan önceki küçük, stratejik bir yerleşim olduğunu gösterir.\n\nAkropolis\'in en üst noktalarında bulunan Erken Tunç Çağı\'na ait lokal seramik parçaları, Pergamon\'un Helenistik krallık öncesinde de sürekli bir yerleşim yeri olduğunu kanıtlar.'
                : 'The oldest settlement in Pergamon is limited to the Acropolis hill. This period shows the city was a small, strategic settlement before becoming a metropolis.\n\nLocal pottery fragments from the Early Bronze Age found at the highest points of the Acropolis prove that Pergamon was a continuous settlement even before the Hellenistic kingdom.',
          ),
          ContentBlockModel(
            id: 'p2',
            imagePath: 'assets/images/pergamon2.jpg',
            title: isTr ? 'II. Erken Helenistik Dönem (MÖ 4. Yüzyıl Sonu - MÖ 281)' : 'II. Early Hellenistic Period (Late 4th Century BC - 281 BC)',
            text: isTr
                ? 'Bu dönem, Lysimachos\'un hazinesini buraya getirmesiyle kentin siyasi öneminin arttığı ve Attalos Hanedanlığı\'nın temelinin atıldığı evredir. Odak noktası askeri mimaridir.\n\nLysimachos dönemine ait kaba taş örgülü İlk Akropolis Surları, kentin gelecekteki anıtsal gelişiminin başladığı ilk kentsel çevrelemeyi temsil eder.'
                : 'This is the phase where the city\'s political importance increased after Lysimachos brought his treasury here, laying the foundation for the Attalid Dynasty. Archaeological focus is on military architecture.\n\nThe first Acropolis Walls, built with rough stone masonry during the Lysimachos period, represent the first urban enclosure where the city\'s future monumental development began.',
          ),
          ContentBlockModel(
            id: 'p3',
            imagePath: 'assets/images/pergamon3.jpg',
            title: isTr ? 'III. Yüksek Helenistik Dönem (Altın Çağ)' : 'III. High Hellenistic Period (Golden Age)',
            text: isTr
                ? 'Bergama\'nın arkeolojik açıdan en zengin katmanıdır. Attalos Hanedanlığı kenti bir kültür merkezine dönüştürmüştür. Yapılar, yüksek mimari standart ve "Barok" denebilecek heykelsi bir üslup sergiler.\n\nZeus Sunağı ve 10.000 kişilik olağanüstü dik eğimli Tiyatro, bu dönemin eşsiz örnekleridir. Kütüphane ise İskenderiye ile yarışacak düzeydeydi.'
                : 'This is the archaeologically richest and most magnificent layer. The Attalid Dynasty transformed the city into a center of culture and art. Structures display high architectural standards and a sculptural style that can be called "Baroque".\n\nThe Altar of Zeus and the Theater, with its 10,000-person capacity and extraordinarily steep seating, are unique examples of this era.',
          ),
          ContentBlockModel(
            id: 'p4',
            imagePath: 'assets/images/pergamon4.jpg',
            title: isTr ? 'IV. Roma Dönemi (MÖ 133 - MS 4. Yüzyıl)' : 'IV. Roman Period (133 BC - 4th Century AD)',
            text: isTr
                ? 'Kral III. Attalos\'un kenti Roma\'ya bırakmasıyla yapılaşma Akropolis\'ten aşağı şehre (Asklepieion) kaymıştır. Roma betonu (Opus Caementicium) gibi mühendislik teknikleri incelenir.\n\nKızıl Avlu (Serapis Tapınağı) ve Asklepieion (Sağlık Merkezi), Roma mimarisinin gücünü gösteren en önemli yapılardır.'
                : 'After King Attalus III bequeathed the city to Rome, construction shifted from the Acropolis to the lower city (Asklepieion). Roman engineering techniques like Opus Caementicium (Roman concrete) are observed.\n\nThe Red Hall (Temple of Serapis) and the Asklepieion (Medical Center) are the most significant structures demonstrating the power of Roman architecture.',
          ),
          ContentBlockModel(
            id: 'p5',
            imagePath: 'assets/images/pergamon5.jpg',
            title: isTr ? 'V. Geç Antik ve Bizans Dönemi' : 'V. Late Antique & Byzantine Period',
            text: isTr
                ? 'Hristiyanlığın yayılması, depremler ve ekonomik gerileme ile kent küçülüp sadece Akropolis\'te bir kale-yerleşime dönüşmüştür. Akropolis\'teki Bizans Surları\'nda Roma ve Helenistik döneme ait mimari bloklar devşirme (spolia) olarak kullanılmıştır.\n\nKızıl Avlu\'nun kiliseye dönüştürülmesi, inanç sistemlerinin mimarideki etkileşimini gösterir.'
                : 'With the spread of Christianity, earthquakes, and economic decline, the city shrank and turned into a castle-settlement only on the Acropolis. The Byzantine Walls on the Acropolis used architectural blocks from the Roman and Hellenistic periods as spolia.\n\nThe conversion of the Red Hall into a basilica-plan church is a critical example of religious transformation in architecture.',
          ),
        ],
      ),
      // SEKTÖR 2: Stratigrafik Analiz
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Akropolis ve Aşağı Şehir Yapısal Kesit Analizi'
                : 'Structural Section Analysis of the Acropolis and Lower City',
            mainImage: 'assets/images/pergamon_s.jpg',
            abstractText: isTr
                ? 'Bu kesit, Pergamon\'un topografik zorluklara rağmen nasıl çok katmanlı bir metropol haline geldiğini gösterir. Eğimli andezit ana kaya üzerine kurulan teraslar, Helenistik mühendisliğin zirvesini ve ardından gelen Roma genişlemesini (Aşağı Şehir ve Kızıl Avlu) belgeler.'
                : 'This section demonstrates how Pergamon developed into a multi-layered metropolis despite topographical challenges. Terraces built on the sloping andesite bedrock document the pinnacle of Hellenistic engineering followed by Roman expansion (Lower City and Red Hall).',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Jeolojik Formasyon ve Akropolis' : '1. Geological Formation and Acropolis',
                content: [
                  {
                    'bold': isTr ? 'Andezit Anakaya (Koyu Gri):' : 'Andesite Bedrock (Dark Grey):',
                    'text': isTr
                        ? ' Pergamon, savunma açısından stratejik olan sert andezit bir kayaç kütlesi üzerine kuruludur. Kesitin sağ tarafındaki dik yükselti, kentin doğal savunma hattını oluşturur.'
                        : ' Pergamon is founded on a hard andesite rock mass, strategic for defense. The steep elevation on the right side of the section forms the city\'s natural defense line.'
                  },
                  {
                    'bold': isTr ? 'Helenistik Dolgu (Turuncu):' : 'Hellenistic Fill (Orange):',
                    'text': isTr
                        ? ' Anakaya üzerine yapılan bu dolgu tabakası, Athena Tapınağı ve Zeus Sunağı gibi anıtsal yapıların düz zeminlere oturabilmesi için inşa edilmiş yapay teraslardır.'
                        : ' This fill layer over the bedrock consists of artificial terraces constructed to provide level ground for monumental structures like the Temple of Athena and the Altar of Zeus.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Roma Dönemi Genişlemesi' : '2. Roman Period Expansion',
                content: [
                  {
                    'bold': isTr ? 'Kızıl Avlu (Serapis Tapınağı):' : 'Red Hall (Temple of Serapis):',
                    'text': isTr
                        ? ' Kesitin sol tarafında, düz alüvyal zemine oturan devasa tuğla yapı. Helenistik tepeden bağımsız olarak, nehir kenarındaki düzlükte (Aşağı Şehir) Roma mühendisliği ile inşa edilmiştir.'
                        : ' The massive brick structure on the left side of the section, sitting on the flat alluvial ground. It was built with Roman engineering on the plain by the river (Lower City), independent of the Hellenistic hill.'
                  },
                  {
                    'bold': isTr ? 'Antik Su Yolu/Nehir:' : 'Ancient River/Waterway:',
                    'text': isTr
                        ? ' Mavi katman, kentin su ihtiyacını karşılayan ve Kızıl Avlu\'nun altından geçen Bergama Çayı\'nı (Selinus) temsil eder. Romalılar bu nehrin üzerini tonozlarla kapatarak "Kızıl Avlu"yu inşa etmiştir.'
                        : ' The blue layer represents the Bergama Stream (Selinus), which supplied the city\'s water and passes under the Red Hall. Romans vaulted over this river to construct the Red Hall.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Mimari Evreler' : '3. Architectural Phases',
                content: [
                  {
                    'bold': isTr ? 'Tapınaklar Dizisi:' : 'Sequence of Temples:',
                    'text': isTr
                        ? ' Kesitte sağdan sola (yukarıdan aşağıya) doğru; Athena Tapınağı (Dor), Trajan Tapınağı (Korint/Roma) ve en aşağıda Kızıl Avlu görülür. Bu, kentin dikey hiyerarşisini ve zaman içindeki aşağıya doğru büyümesini özetler.'
                        : ' From right to left (top to bottom) in the section; the Temple of Athena (Doric), Temple of Trajan (Corinthian/Roman), and the Red Hall at the bottom are visible. This summarizes the city\'s vertical hierarchy and downward growth over time.'
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