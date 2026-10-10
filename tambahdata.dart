import 'dart:io';

void main () {
  var jalan = true;


List<Map<String, dynamic>> mahasiswa = [];

  void tampilanMenu() {
    print("============================");
    print("Input Data Mahasigma");
    print("============================");
    print("1. Masukan data Mahasigma");
    print("2. Hapus Mahasigma");
    print("3. Lihat Mahasiswa"); 
    print("4. Keluar Program");
    print("============================");

  }

  void inputData() {
      stdout.write("Masukan Nama Mahasigma : ");
      var inputnama = stdin.readLineSync()!;

      stdout.write("Masukan Kelas : ");
      var inputkelas = stdin.readLineSync()!;
      
      stdout.write("Masukan Umur : ");
      int inputumur = int.parse(stdin.readLineSync()!);

      mahasiswa.add({
        "nama" : inputnama,
        "kelas" : inputkelas,
        "umur" : inputumur
      });
  }

  void hapusData() {
    stdout.write("Pilih data yang ingin dihapus (input nomor) : ");
    int inputhapus = int.parse(stdin.readLineSync()!);
    mahasiswa.removeAt(inputhapus - 1);
  }

  void lihatMhs() {
    print("Mahasiswa yang terdaftar : ");
      for(int i = 0; i < mahasiswa.length; i++) {
        print("${i + 1}. ${mahasiswa[i]}");
      }
  }

  void keluarProgram() {
    exit(0);
  }


    while (jalan == true) {
      tampilanMenu();
      stdout.write("Pilih (1/2/3) : ");
      int pilihmenu = int.parse(stdin.readLineSync()!);
      switch (pilihmenu) {
        case 1 :
          inputData();
        break;
        case 2 :
          hapusData();
        break;
        case 3 :
          lihatMhs();
        break;
        case 4 :
          keluarProgram();
        break;
      }
    }
    
}