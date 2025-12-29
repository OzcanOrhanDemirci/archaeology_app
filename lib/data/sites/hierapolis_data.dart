import '../../core/models.dart';

SiteData getHierapolisData(String lang) {
  final isTr = lang == 'tr';

  return SiteData(
    id: 'hierapolis',
    title: isTr ? 'Hierapolis (Denizli)' : 'Hierapolis',
    introText: isTr
        ? 'Pamukkale travertenleri üzerinde kurulan Hierapolis, "Kutsal Kent" anlamına gelir. Hem termal tedavi merkezi hem de Hristiyanlık için bir hac noktası olan kent, doğa harikası jeolojik oluşumlarla antik mimarinin iç içe geçtiği eşsiz bir yerleşimdir.'
        : 'Hierapolis, meaning "Holy City," is built on the Pamukkale travertines. Serving as both a thermal treatment center and a pilgrimage site for Christianity, it is a unique settlement where natural geological wonders intertwine with ancient architecture.',
    timeline: [
      TimelineData(label: isTr ? 'Helenistik' : 'Hellenistic', targetBlockId: 'h1'),
      TimelineData(label: isTr ? 'Roma' : 'Roman', targetBlockId: 'h2'),
      TimelineData(label: '0', isYearZero: true),
      TimelineData(label: isTr ? 'Hristiyanlık' : 'Christianity', targetBlockId: 'h3'),
      TimelineData(label: isTr ? 'Nekropol' : 'Necropolis', targetBlockId: 'h4'),
    ],
    sections: [
      SiteSection(
        title: isTr ? 'Genel Bilgiler' : 'General Info',
        content: [
          ContentBlockModel(
            id: 'h1',
            imagePath: 'assets/images/hierapolis1.jpg',
            title: isTr ? 'I. Kuruluş ve Termal Merkez' : 'I. Foundation & Thermal Center',
            text: isTr
                ? 'Kent, MÖ 2. yüzyılda Bergama Krallığı tarafından kurulmuştur. Adını Amazon kraliçesi Hiera\'dan alır. Şehrin altından geçen sıcak su kaynakları ve "Plutonium" (Cehennem Kapısı) olarak bilinen zehirli gaz çıkışı, kenti antik dünyada mistik bir çekim merkezi yapmıştır.'
                : 'The city was founded in the 2nd century BC by the Kingdom of Pergamon, named after the Amazon queen Hiera. Thermal springs beneath the city and the toxic gas vent known as the "Plutonium" (Gate to Hell) made the city a mystical attraction in the ancient world.',
          ),
          ContentBlockModel(
            id: 'h2',
            imagePath: 'assets/images/hierapolis2.jpg',
            title: isTr ? 'II. Roma Tiyatrosu ve Altın Çağ' : 'II. Roman Theater & Golden Age',
            text: isTr
                ? 'MS 60 yılındaki büyük depremden sonra Roma tarzında yeniden inşa edilen kent, en parlak dönemini yaşamıştır. 15.000 kişilik tiyatro, mitolojik kabartmaları ve sahne binasıyla Anadolu\'nun en iyi korunmuş tiyatrolarından biridir.'
                : 'Rebuilt in Roman style after the great earthquake of 60 AD, the city experienced its golden age. The 15,000-capacity theater is one of the best-preserved in Anatolia, featuring mythological reliefs and a stage building.',
          ),
          ContentBlockModel(
            id: 'h3',
            imagePath: 'assets/images/hierapolis3.jpg',
            title: isTr ? 'III. Aziz Philippus Martyrionu' : 'III. Martyrion of Saint Philip',
            text: isTr
                ? 'İsa\'nın 12 havarisinden biri olan Aziz Philippus\'un burada öldürüldüğüne inanılır. Bu nedenle kent, Bizans döneminde "kutsal kent" ilan edilmiş ve havarinin anısına sekizgen planlı, anıtsal bir şehitlik (Martyrion) inşa edilmiştir.'
                : 'It is believed that Saint Philip, one of the 12 apostles of Jesus, was killed here. Thus, the city was declared a "holy city" in the Byzantine era, and an octagonal monumental martyrion was built in his memory.',
          ),
          ContentBlockModel(
            id: 'h4',
            imagePath: 'assets/images/hierapolis4.jpg',
            title: isTr ? 'IV. Nekropol Alanı' : 'IV. Necropolis Area',
            text: isTr
                ? 'Termal suların şifa özelliğinden dolayı buraya gelip ölen binlerce insan nedeniyle, Anadolu\'nun en büyük antik mezarlığına sahiptir. 1200\'den fazla mezar, lahit, tümülüs ve ev tipi mezar yapıları geniş bir alana yayılmıştır.'
                : 'Due to thousands of people coming for the healing properties of thermal waters and passing away here, it possesses the largest ancient cemetery in Anatolia. Over 1200 tombs, sarcophagi, tumuli, and house-type tombs are spread over a vast area.',
          ),
        ],
      ),
      SiteSection(
        title: isTr ? 'Stratigrafik Analiz' : 'Stratigraphic Analysis',
        content: [
          AnalysisSectionModel(
            title: isTr
                ? 'Traverten Jeolojisi ve Kentsel Stratigrafi'
                : 'Travertine Geology and Urban Stratigraphy',
            mainImage: 'assets/images/hierapolis_s.jpg',
            abstractText: isTr
                ? 'Hierapolis kesiti, insan yapımı mimari ile doğal jeolojik oluşumların (travertenler) nasıl iç içe geçtiğini gösterir. Fay hatları üzerindeki termal aktivite, hem kentin zenginlik kaynağı olmuş hem de depremlerle yıkımına yol açarak stratigrafik katmanları şekillendirmiştir.'
                : 'The Hierapolis section demonstrates how man-made architecture intertwines with natural geological formations (travertines). Thermal activity on fault lines acted as both the source of the city\'s wealth and the cause of its destruction via earthquakes, shaping the stratigraphic layers.',
            paragraphs: [
              AnalysisParagraph(
                title: isTr ? '1. Termal ve Jeolojik Taban' : '1. Thermal and Geological Base',
                content: [
                  {
                    'bold': isTr ? 'Mavi Katman (Antik Havuzlar):' : 'Blue Layer (Ancient Pools):',
                    'text': isTr
                        ? ' Stratigrafinin en altında, kalsiyum karbonat yüklü termal sular yer alır. Bu sular zamanla beyaz traverten teraslarını oluşturmuş ve kentin üzerine kurulduğu doğal platformu meydana getirmiştir.'
                        : ' At the bottom of the stratigraphy lie thermal waters laden with calcium carbonate. Over time, these waters formed white travertine terraces, creating the natural platform upon which the city was built.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '2. Roma Mimari Katmanı' : '2. Roman Architectural Layer',
                content: [
                  {
                    'bold': isTr ? 'Tiyatro ve Nymphaeum:' : 'Theater and Nymphaeum:',
                    'text': isTr
                        ? ' Yamaçtaki Roma Tiyatrosu (solda) ve anıtsal çeşme (Nymphaeum), doğrudan traverten zemine veya deprem sonrası oluşturulan dolgu zeminlere oturtulmuştur. Tiyatro, doğal eğimi (cavea) kullanacak şekilde konumlanmıştır.'
                        : ' The Roman Theater on the slope (left) and the monumental fountain (Nymphaeum) are seated directly on travertine ground or fill layers created after earthquakes. The theater is positioned to utilize the natural slope (cavea).'
                  },
                  {
                    'bold': isTr ? 'Plutonium (Cehennem Kapısı):' : 'Plutonium (Gate to Hell):',
                    'text': isTr
                        ? ' Apollon Tapınağı\'nın yanında, doğrudan fay hattı üzerine inşa edilmiş küçük bir yapıdır. Yeraltından çıkan zehirli gazlar nedeniyle ritüel alanı olarak kullanılmıştır.'
                        : ' A small structure built directly over the fault line next to the Temple of Apollo. It was used as a ritual area due to toxic gases emitting from underground.'
                  },
                ],
              ),
              AnalysisParagraph(
                title: isTr ? '3. Bizans Dini Dönüşümü' : '3. Byzantine Religious Transformation',
                content: [
                  {
                    'bold': isTr ? 'Bizans Bazilikası (Sağda):' : 'Byzantine Basilica (Right):',
                    'text': isTr
                        ? ' Roma yapılarının üzerine veya yanına inşa edilen tuğla mimarili Hristiyan yapılarıdır. Kentin son tabakasını temsil eder ve pagan tapınaklarının yerini almıştır.'
                        : ' Brick-architecture Christian structures built on top of or next to Roman buildings. They represent the final layer of the city, replacing pagan temples.'
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