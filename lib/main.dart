import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> gambarPahlawan = [
    'https://jagad.id/wp-content/uploads/2018/02/Ir.-Soekarno.jpg',
    'https://jagad.id/wp-content/uploads/2018/02/Mohammad-Hatta.jpg',
    'https://jagad.id/wp-content/uploads/2018/02/Jenderal-Sudirman.jpg',
    'https://jagad.id/wp-content/uploads/2018/02/Pangeran-Diponegoro.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Tjoet_Nya%27_Dhien.jpg/220px-Tjoet_Nya%27_Dhien.jpg',
  ];
  final List<String> namaPahlawan = [
    'Ir. Soekarno',
    'Mohammad Hatta',
    'Jenderal Sudirman',
    'Pangeran Diponegoro',
    'Cut Nyak Dhien',
  ];
  final List<String> tglLahirPahlawan = [
    '6 Juni 1901',
    '12 Agustus 1902',
    '24 Januari 1916',
    '11 November 1785',
    '6 November 1908',
  ];
  final List<String> deskripsiPahlawan = [
    'Soekarno atau yang lebih sering disebut Sukarno merupakan presiden pertama di Indonesia. Beliau mendapa sebutan sebagai bapak proklamator kemerdekaan Indonesia yang diselenggarakan pada tanggal 17 Agustus 1945. Sukarno lahir di Surabaya pada tanggal 6 Juni tahun 1901. Dikenal sebagai orator terbaik yang cerdas, Sukarno mampu menciptakan semangat nasional. Selama masa-masa penting Indonesia, Sukarno pernah mencetuskan negara Pancasila, sehingga terciptalah konsep dasar negara bernama Pancasila yang digunakan Indonesia sampai saat ini.',
    'Mohammad Hatta adalah salah satu pahalawan Indonesia yang juga dipanggil sebagai Bung Hatta. Bung Hatta adalah seorang wakil presiden Ir. Sukarno yang lahir pada tanggal 12 Agustus 1902 tepatnya di kota Bukittinggi. Bersama Bung Karno, Mohammad Hatta mendapat gelar sebagai Pahlawan Proklamator. Selama menjabat sebagai wakil presiden, Mohammad Hatta banyak menulis tentang ilmu koperasi. Sehingga perannya tersebut mendapat julukan ‘Bapak Koperasi’.',
    'Pahlawan Nasional berikutnya adalah Jenderal Sudirman. Beliau adalah panglima tentara pertama Republik Indonesia dengan jabatan Jenderal Besar TNI Anumerta Sudirman yang sudah memperoleh gelar Jenderalnya pada usia 31 tahun. Jenderal Sudirman sangat berjasa dalam perjuangan di masa penting Revolusi Nasional Indonesia. Pahlawan yang terkenal akan perang gerilya dan Serang Umum 1 Maret tahun 1949 ini lahir di Purbalingga provinsi Jawa tengah pada tanggal 24 Januari di tahun 1916.',
    'Pangeran Diponegoro adalah putra pertama dari Raja Mataram, Sultan Hamengkubuwono III. Nama asli Pangeran Diponegoro adalah Mustahar yang lahir di Yogyakarta tepatnya pada tanggal 11 November 1785. Beliau mendapat julukan Pangeran Diponegoro karena telah memimpin perang Diponegoro yang terjadi pada tahun 1825 hingga 1830 antara rakyat Indonesia dengan pemerintah Hindia-Belanda.',
    'Cut Nyak Dhien adalah seorang pahlawan nasional Indonesia yang dilahirkan di Lampadag, Kerajaan Aceh pada tahun 1848. Merupakan salah satu pahlawan wanita yang memiliki semangat perjuangan untuk melawan penjajah Belanda. Cut Nyak Dhien adalah istri seorang pahlawan Indonesia bernama Teuku Umar yang gugur di medan perang tepatnya pada tanggal 11 Januari 1899. Cut Nyak Dhien wafat akibat sakit yang dideritanya dan karena usia. Beliau dimakamkan di Sumedang pada tanggal 6 November tahun 1908.',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eudeka - OSG4'),
        ),
        backgroundColor: Colors.blue,
        body: ListView.builder(
            itemCount: gambarPahlawan.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Image.network(gambarPahlawan[index]),
                        ListTile(
                          title: Text(
                            namaPahlawan[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(tglLahirPahlawan[index]),
                        ),
                        Container(
                          child: Text(
                            deskripsiPahlawan[index],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        // Container(child: Text(namaPahlawan[index]))
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
