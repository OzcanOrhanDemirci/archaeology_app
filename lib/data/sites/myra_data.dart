import '../../core/models.dart';

SiteData getMyraData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'myra',
    title: isTr ? 'Myra (Demre)' : 'Myra',
    introText: isTr
        ? 'Likya Birliği\'nin metropollerinden biri olan Myra, "Yüce Ana Tanrıça\'nın Yeri" anlamına gelir. Hristiyan dünyasında "Noel Baba" olarak bilinen Aziz Nikolaos\'un piskoposluk yaptığı yerdir. Kaya mezarları ve Roma tiyatrosu, dağın yamacında iç içe geçmiştir.'
        : 'One of the metropolises of the Lycian League, Myra means "Place of the Supreme Mother Goddess." It is where St. Nicholas, known as "Santa Claus," served as bishop. Rock tombs and the Roman theater are intertwined on the mountain slope.',
    timeline: [
      TimelineData(label: isTr ? 'Likya' : 'Lycian', targetBlockId: 'my1'),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 'my2'),
      TimelineData(label: '0', isYearZero: true),
      TimelineData(label: isTr ? 'Bizans' : 'Byzantine', targetBlockId: 'my3'),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'my1',
            imagePath: 'assets/images/myra1.jpg',
            title: isTr ? 'I. Likya Kaya Mezarları' : 'I. Lycian Rock Tombs',
            text: isTr
                ? 'Myra\'nın en çarpıcı özelliği, sarp kayalıklara oyulmuş "ev tipi" mezarlardır. Ahşap Likya ev mimarisinin kayaya yansıtıldığı bu nekropol, ölülerin şehri yukarıdan izlediği bir "ölüler kenti" görünümündedir.'
                : 'Myra\'s most striking feature is the "house-type" tombs carved into steep cliffs. Reflecting wooden Lycian house architecture onto rock, this necropolis looks like a "city of the dead" watching the city from above.',
          ),
          ContentBlockModel(
            id: 'my2',
            imagePath: 'assets/images/myra2.jpg',
            title: isTr ? 'II. Roma Tiyatrosu' : 'II. Roman Theater',
            text: isTr
                ? 'Kaya mezarlarının hemen altına inşa edilen tiyatro, 11.000 kişilik kapasiteye sahiptir. Sahne binası ve maske kabartmaları oldukça iyi korunmuştur. Tiyatro, kaya mezarlarıyla birlikte dikey bir mimari bütünlük oluşturur.'
                : 'Built right below the rock tombs, the theater has a capacity of 11,000. The stage building and mask reliefs are well preserved. The theater forms a vertical architectural unity with the rock tombs.',
          ),
          ContentBlockModel(
            id: 'my3',
            imagePath: 'assets/images/myra3.jpg',
            title: isTr ? 'III. Aziz Nikolaos Kilisesi' : 'III. Church of St. Nicholas',
            text: isTr
                ? 'Demre merkezinde bulunan kilise, MS 6. yüzyılda Aziz Nikolaos\'un (Noel Baba) mezarı üzerine inşa edilmiştir. Orta Bizans dönemine ait duvar resimleri ve mozaik tabanlarıyla önemli bir hac merkezidir.'
                : 'Located in the center of Demre, the church was built in the 6th century AD over the tomb of St. Nicholas (Santa Claus). It is an important pilgrimage center with Middle Byzantine wall paintings and mosaic floors.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Alüvyal Gömülme ve Kaya Nekropolü'
                : 'Alluvial Burial and Rock Necropolis',
            mainImage: 'assets/images/myra_s.jpg',
            abstractText: isTr
                ? 'Myra kesiti, Myros (Demre) Çayı\'nın getirdiği alüvyonların kenti nasıl yuttuğunu gösterir. Roma dönemi tiyatrosu ve Aziz Nikolaos Kilisesi bugün metrelerce toprak altındadır (kısmen kazılmıştır), ancak yüksekteki kaya mezarları bu dolgudan etkilenmemiştir.'
                : 'The Myra section shows how silt brought by the Myros (Demre) Stream swallowed the city. The Roman theater and St. Nicholas Church are meters underground today (partially excavated), but the high rock tombs were unaffected by this fill.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Dikey Kaya Mimarisi' : '1. Vertical Rock Architecture',
                content: [
                  {
                    'bold': isTr ? 'Nekropol (Üst):' : 'Necropolis (Upper):',
                    'text': isTr
                        ? ' Kesitin üst kısmında, doğal kayaya oyulan mezar odaları görülür. Bu katman jeolojik olarak sabittir ve alüvyal hareketlerden etkilenmemiştir.'
                        : ' In the upper part of the section, burial chambers carved into natural rock are visible. This layer is geologically stable and unaffected by alluvial movements.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Gömülen Şehir' : '2. Buried City',
                content: [
                  {
                    'bold': isTr ? 'Alüvyal Dolgu (Sarı):' : 'Alluvial Fill (Yellow):',
                    'text': isTr
                        ? ' Kesitin alt kısmındaki kalın sarı tabaka, nehir taşkınlarıyla gelen çamuru temsil eder. Tiyatronun orkestrası ve kilisenin tabanı, orijinal Roma zemininin çok altındadır. Kazılarla bu yapılar "çukurdaki yapılar" gibi ortaya çıkarılmıştır.'
                        : ' The thick yellow layer at the bottom represents mud from river floods. The theater orchestra and church floor are far below the original Roman ground. Excavations revealed these structures like "buildings in a pit".'
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