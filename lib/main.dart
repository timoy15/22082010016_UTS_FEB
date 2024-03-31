import 'package:flutter/material.dart';
import 'prodi_detail.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FEB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProgramList(),
    );
  }
}

class ProgramList extends StatelessWidget {
  final List<Map<String, dynamic>> programs = [
    {
      'name': 'S1 Akuntansi',
      'logoUrl':
          'https://media.istockphoto.com/id/1403453245/id/foto/para-pemodal-menghitung-pajak-pribadi-untuk-pelanggan-mereka.jpg?s=612x612&w=0&k=20&c=zlNfRHcnI0rq5VyVr33MX67QlAxZpgPMJyfPbpgzyBY=',
      'programDetails': {
        'Profil':
            'Berdasarkan Surat Keputusan Menteri Urusan Veteran dan Demobilisasi Nomor ; 133/kpts/1966 tentang Pengintegrasian Akademi Administrasi Perusahaan “Veteran” Surabaya pada Perguruan Tinggi Pembangunan Nasional “Veteran” Yogyakarta, berdirilah Program Studi Akuntansi. \n\nProgram Studi Akuntansi didirikan pada tanggal 1 April 1966 dengan status kedinasan.',
        'Visi':
            'Menyelenggarakan dan mengembangkan pendidikan bidang akuntansi yang berkarakter bela negara guna membentuk pelajar berjiwa Pancasila yang kompeten di tingkat internasional. \n\nMeningkatkan kemampuan riset dan iptek di bidang akuntansi yang berdayaguna untuk meningkatkan transparansi dan akuntabilitas dalam bermasyarakat dan bernegara. \n\n',
        'Misi': 'Menyelenggarakan pendidikan berkualitas di bidang akuntansi.',
        'Akreditasi': 'A',
        'Ketua Program Studi': 'Dr. Keuangan, Ph.D.',
        'Dosen':
            '1. Prof. Dr. Sri Trisnaningsih, M.Si, CFrA\n2. Prof. Dr. Indrawati Yuhertiana, MM., Ak. CMA\n3. Dra. Ec. Anik Yuliati, M.Aks.\n4. Drs. Ec. Muslimin, M.Si\n5. Dr. Dwi Suhartini, M.Aks. CMA\n6. Drs. Ec. Saiful Anwar, M.Si.\n7. Dr. Hero Priono, S.E., M.Si., Ak., C.A., CMA\n8. Dra. Ec. Tituk Diah Widajantie, M.Ak\n9. Drs. Ec. Munari, MM, CAPM, CIBA, CIIQA\n10. Drs. Ec. R. Sjarief Hidajat, M.Si',
        'Laman Website Resmi': 'https://akuntansi.upnjatim.ac.id/',
        'Prestasi Mahasiswa':
            '1. Juara I National Accounting Essay Competition 2022 Komunitas Jago Akuntansi Indonesia (KJAI)\n2. Juara I Kompetisi Akuntansi Sebelas Maret (KAS 2022)\n3. Juara III National Public Essay Competition Reviresco Reformation XXIX',
      },
    },
    {
      'name': 'S1 Ekonomi Pembangunan',
      'logoUrl':
          'https://media.istockphoto.com/id/1150199386/id/foto/pebisnis-menggunakan-tablet-menganalisis-data-penjualan-dan-grafik-pertumbuhan-ekonomi.jpg?s=612x612&w=0&k=20&c=VPz1aPzSH5bmiw1dN7ZCNZJvrfzr6aX1A4Bgs1X_6KU=',
      'programDetails': {
        'Profil':
            'Program Studi Ekonomi Pembangunan Fakultas Ekonomi dan Bisnis UPNV Jawa Timur didirikan pada tahun 1974 dengan ijin pendirian dari Departemen Pertahanan Keamanan (Dephankam) dengan status “Negeri Kedinasan”.Pada tahun 2003 pertama kali Progdi Ekonomi Pembangunan di akreditasi oleh BAN PT Depdiknas memperoleh Nilai B. ',
        'Visi':
            'Menjadi Program Studi Ekonomi Pembangunan yang unggul dalam penerapan dan pengembangan IPTEK di bidang Ekonomi Pembangunan yang memiliki kareakter bela negara.',
        'Misi':
            'Menyelenggarakan dan mengembangkan pendidikan di bidang Ekonomi Pembangunan berkarakter bela negara.',
        'Akreditasi': 'A',
        'Ketua Program Studi': 'Prof. Pembangunan, Ph.D.',
        'Dosen':
            '1. Prof. Dr. Syamsul Huda, S.E., M.T.\n2. Dr. Ignatia Martha, S.E., M.E.\n3. Dr. Muchtolifah, S.E., M.P.\n4. Dr. Ririt Iriani, S.E., M.E.\n5. Drs. Ec. Arief Bachtiar, M.Si.\n6. Drs. Ec. M. Taufiq, M.M.\n7. Drs. Ec. Marseto, M.Si.\n8. Drs. Ec. Marseto, M.Si.\n9. Drs. Ec. Wiwin Priana, M.T.\n10. Riko Setya Wijaya, S.E., M.M.',
        'Laman Website Resmi': 'https://ekbang.upnjatim.ac.id/',
        'Prestasi Mahasiswa':
            '1. Juara 1 lomba Karya Tulis Ilmiah\n2. Juara 2 lomba Esfort\n3. Juara 2 lomba Debat',
      },
    },
    {
      'name': 'S1 Kewirausahaan',
      'logoUrl':
          'https://media.istockphoto.com/id/1150767851/id/foto/bisnis-di-mana-saja.jpg?s=612x612&w=0&k=20&c=tJujbSdGOLRZPOvtZjejeNRSWl7I3FvWQ9xBqgO3Ygo=',
      'programDetails': {
        'Profil':
            'Program studi Kewirausahaan ini adalah program studi baru yang diresmikan pada tahun 2023.',
        'Visi':
            'Menjadi program studi kewirausahaan yang mengutamakan inovasi dan kreativitas berbasis kearifan lokal dengan memanfaatkan teknologi informasi dalam pengembangan ilmu kewirausahaan yang berkarakter Bela Negara.',
        'Misi':
            'Menyelenggarakan dan mengembangkan pendidikan di bidang kewirausahaan yang berbasis digital dan berkarakter bela negara.',
        'Akreditasi': 'A',
        'Ketua Program Studi': 'Dr. Entrepreneur, Ph.D.',
        'Dosen':
            '1. Dr. Hesty Prima Rini, SE., MM\n2. Arief Budiman, S.AB., M.AB., CMA\n3. Devinta Nur Arumsari, S.E., M.E\n4. Egan Evanzha Yudha Amriel, S.Mn., MM\n5. Muhammad Ahmi Husein S.Si., M.Sc\n6. Muhammad Ilham Naufal, S.A, MBA',
        'Laman Website Resmi': 'https://kwu.upnjatim.ac.id/',
        'Prestasi Mahasiswa':
            '1. Medali perak di kompetisi NASPO (National Applied Science Project Olympiad) 2022.\n2. Medali perunggu di kompetisi AISEEF (Asean Innovative Science and Enterpreneur Fair) 2023.',
      },
    },
    {
      'name': 'S1 Manajemen',
      'logoUrl':
          'https://media.istockphoto.com/id/1349390515/id/foto/ide-tempat-kerja-paperless-e-signing-tanda-tangan-elektronik-manajemen-dokumen-pengusaha.jpg?s=612x612&w=0&k=20&c=tlTsjvtvyV2A4QtJ0N0PRjjRF4nDukA2dIhXhnsDEsY=',
      'programDetails': {
        'Profil':
            'Program Studi S1 Manajemen didirikan pada bulan Maret 1966 di bawah Fakultas Ekonomi (kemudian dikenal sebagai Fakultas Ekonomi dan Bisnis). Dalam tahun-tahun pendiriannya, telah menjadi salah satu puncak dan dicari program studi di UPNVJT, menarik sejumlah besar siswa setiap tahun (sekitar 300-350 siswa per tahun akademik). ',
        'Visi':
            '“Menjadi salah satu program studi yang unggul dalam pengembangan Ilmu Manajemen yang berkarakter bela negara pada tahun 2024”',
        'Misi': 'Menyelenggarakan pendidikan berkualitas di bidang manajemen.',
        'Akreditasi': 'A',
        'Ketua Program Studi': 'Prof. Manajer, Ph.D.',
        'Dosen':
            '1. Prof. Dr. Ir. Akhmad Fauzi, MMT, CHRA\n2. Prof. Dr. Ir. Akhmad Fauzi, MMT, CHRA\n3. Dr. Dhani Ichsanuddin Nur, MM, CFP\n4. Dra.Ec. Kustini, M.Si, CHRA\n5. Dr. Drs.Ec. Gendut Sukarno, MS, CHRA\n6. Sulastri Irbayuni, SE.MM\n7. Dr.Wiwik Handayani, SE, M.Si\n8. Dr.Dra.Tri Kartika Pertiwi, MM, CRP\n9. Dr. Eko Purwanto, M, Si\n10. Drs. Ec. Rahman A Suwaidi, MS',
        'Laman Website Resmi': 'https://manajemen.upnjatim.ac.id/',
        'Prestasi Mahasiswa':
            '1. Juara 1 National Economic Business Plan Competition Festival 2022\n2. Juara 3 LENS (Lomba Esai Nasional) Chemistry Friendship Competition V 2022\n3. Juara 3 E-Sport PUBG Mobile Brawijaya Tournament 2022',
      },
    },

    {
      'name': 'S2 Manajemen',
      'logoUrl':
          'https://media.istockphoto.com/id/1490859962/id/foto/kekuatan-soft-skill-tanggung-jawab-multi-keterampilan-sdm-konsep-sumber-daya-manusia.jpg?s=612x612&w=0&k=20&c=Uvqxav-HC_L5PQRpTtsJxCT0zWdz5WI0U1EsOCEPW58=',
      'programDetails': {
        'Profil':
            'Magister Manajemen adalah Salah Satu Program Studi di Fakultas Pasca Sarjana UPN "Veteran" Jawa Timur. Program Studi Magister Manajemen mendapatkan nilai akreditasi "B" dengan konsentrasi bidang Studi Manajemen Keuangan, Manajemen Pemasaran dan Manajemen Sumber Daya Manusia.       ',
        'Visi':
            '“Menjadi Jurusan Manajemen Unggul berkarakter Bela Negara pada tahun 2030”',
        'Misi':
            'Menyelenggarakan dan mengembangkan pendidikan di bidang manajemen yang berkarakter bela negara;',
        'Akreditasi': 'A',
        'Ketua Program Studi': 'Prof. Manajer, Ph.D.',
        'Dosen':
            '1. Prof.Dr.Ir. Akhmad Fauzi, MMT\n2. Dr. Muhadjir Anwar, SE, MM, CRP\n3. Dr.Dra.Ec. Tri Kartika P, SE, M.Si, CRP\n4. Dr. Eko Purwanto, SE, M.Si\n5. Dr. Drs.Ec. Gendut Sukarno, MS.,CHRA',
        'Laman Website Resmi': 'https://mm.upnjatim.ac.id/',
        'Prestasi Mahasiswa':
            '1. Juara 1 lomba Bussines Plan\n2. Juara 3 lomba debat\n3. Juara 2 lomba EBC',
      },
    },
    // Add other programs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Menghilangkan bayangan di bawah AppBar
        title: Text(
          'Profil Fakultas FEB UPNVJT',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7N3PtQ-8YtoGQn82Mxarjs9TwJ-5Vw0ioZ74N_MZONw&s',
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Fakultas Ekonomi dan Bisnis merupakan salah satu dari 7 Fakultas di UPN "Veteran" Jawa Timur. Yang terdiri dari program studi:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: programs.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProdiDetail(
                          programName: programs[index]['name'],
                          logoImage: NetworkImage(programs[index]['logoUrl']),
                          programDetails: programs[index]['programDetails'],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            padding: EdgeInsets.all(8.0),
                            child: Image.network(
                              programs[index]['logoUrl'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Program Studi',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                Text(
                                  programs[index]['name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Menu profil kelompok
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GroupProfile(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.group,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    'Profil Kelompok',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GroupProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(
              name: 'Farraheira P.F',
              birthday: '29/06/2004',
              address: 'Jalan Ngagel Rejo IB/30 Surabaya',
              phoneNumber: '081252043244',
              email: 'farraheira@gmail.com',
              githubUrl: 'https://github.com/Raaa29/UTS_FEB',
              profileImage: 'https://iili.io/JwBYQcu.jpg',
              education: '\nSDN NGARE 7\nSMPN 12\nSMAN 4\nSI UPNVJT',
            ),
            SizedBox(height: 20),
            ProfileCard(
              name: 'Wahyu Kristina Puji Astuti',
              birthday: '15/05/2003',
              address: 'Jl. Ngagel Rejo 2 No. 8-A',
              phoneNumber: '08813539866',
              email: 'ayhukristina03@gmail.com',
              githubUrl: 'https://github.com/timoy15/22082010016_UTS_FEB',
              profileImage: 'https://iili.io/JwCPKIs.jpg',
              education: '\nSDN BARATA JAYA\nSMPN 23\nSMKN 10\nSI UPNVJT',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String birthday;
  final String address;
  final String phoneNumber;
  final String email;
  final String githubUrl;
  final String profileImage;
  final String education;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.birthday,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.githubUrl,
    required this.profileImage,
    required this.education,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(profileImage),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Tanggal Lahir: $birthday',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Alamat: $address',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'No. HP: $phoneNumber',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchEmail(email);
                    },
                    child: Text(
                      'Email: $email',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _launchURL(githubUrl);
                    },
                    child: Text(
                      'URL Profil GitHub',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Pendidikan: $education',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuka email
  void _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      throw 'Could not launch $_emailLaunchUri';
    }
  }

  // Fungsi untuk membuka URL
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}