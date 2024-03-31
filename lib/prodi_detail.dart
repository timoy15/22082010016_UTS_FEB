import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProdiDetail extends StatelessWidget {
  final String programName;
  final ImageProvider<Object> logoImage;
  final Map<String, dynamic> programDetails;

  ProdiDetail({
    required this.programName,
    required this.logoImage,
    required this.programDetails,
  });

  @override
  Widget build(BuildContext context) {
    String websiteUrl = programDetails['Laman Website Resmi'];

    return Scaffold(
      appBar: AppBar(
        title: Text(programName),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              image: logoImage,
              width: 100.0,
              height: 100.0,
            ),
          ),
          ListTile(
            title: Text(
              'Profil',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(programDetails['Profil']),
          ),
          ListTile(
            title: Text(
              'Visi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(programDetails['Visi']),
          ),
          ListTile(
            title: Text(
              'Misi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(programDetails['Misi']),
          ),
          ListTile(
            title: Text(
              'Akreditasi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(programDetails['Akreditasi']),
          ),
          ListTile(
            title: Text(
              'Ketua Program Studi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(programDetails['Ketua Program Studi']),
          ),
          ListTile(
            title: Text(
              'Dosen',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(programDetails['Dosen']),
          ),
          ListTile(
            title: Text(
              'Laman Website Resmi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () async {
              if (await canLaunch(websiteUrl)) {
                await launch(websiteUrl);
              } else {
                throw 'Could not launch $websiteUrl';
              }
            },
            subtitle: Text(
              websiteUrl,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            title: Text(
              'Prestasi Mahasiswa',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(programDetails['Prestasi Mahasiswa']),
          ),
        ],
      ),
    );
  }
}