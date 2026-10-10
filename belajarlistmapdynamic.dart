import 'dart:io';

void main () {
//   List<Map<String, dynamic>> mahasiswa = [
//   {
//     'nama' : 'Ezra',
//     'kelas' : 'ESDE',
//     'umur' : 28
//   },
//   {
//     'nama' : 'Budi',
//     'kelas' : 'ESEMPE',
//     'umur' : 10
//   }
  
// ];

// print("${mahasiswa[0]["nama"]}");





  // List<Map<String, dynamic>> mahasiswa = [];

  // stdout.write("Masukkan nama: ");
  // String nama = stdin.readLineSync()!;

  // stdout.write("Masukkan umur: ");
  // int umur = int.parse(stdin.readLineSync()!);

  // stdout.write("Masukkan jurusan: ");
  // String jurusan = stdin.readLineSync()!;

  // mahasiswa.add({
  //   "nama": nama,
  //   "umur": umur,
  //   "jurusan": jurusan
  // });

  // print(mahasiswa);




  List<Map<String, dynamic>> mahasiswa = [];

  for (int i = 0; i < 3; i++) {
    print("\nMahasiswa ke-${i + 1}");

    stdout.write("Masukkan nama: ");
    String nama = stdin.readLineSync()!;

    stdout.write("Masukkan umur: ");
    int umur = int.parse(stdin.readLineSync()!);

    stdout.write("Masukkan jurusan: ");
    String jurusan = stdin.readLineSync()!;

    mahasiswa.add({
      "nama": nama,
      "umur": umur,
      "jurusan": jurusan
    });
  }

  print("\nData Mahasiswa:");

  print(mahasiswa);





}


