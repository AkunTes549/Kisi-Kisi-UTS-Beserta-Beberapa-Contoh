import 'dart:io';

void main () {
  var jalan = true;

  Map rakA ={ 'Judul' : null, 'Nama' : null };
  Map rakB ={ 'Judul' : null, 'Nama' : null };
  Map rakC ={ 'Judul' : null, 'Nama' : null };

  List<Map<String, dynamic>> waitingList = [];

  void tampilanMenu() {
    print("==========================");
    print("Perpustakaan Digital");
    print("==========================");
    print("1. Tambah Peminjam ");
    print("2. Lihat Waiting List");
    print("3. Lihat Rak");
    print("4. Selesaikan Peminjaman");
    print("5. Keluar Program");
    print("==========================");
  }

  void tambahPeminjam() {
    stdout.write("Masukan Judul Buku : ");
    var inputjudulbuku = stdin.readLineSync()!;

    stdout.write("Masukan Nama Peminjam : ");
    var inputnamapinjam = stdin.readLineSync()!;

    if (rakA['Judul'] == null && rakA['Nama'] == null) {
      rakA['Judul'] = inputjudulbuku;
      rakA['Nama'] = inputnamapinjam;
    }
    else if (rakB['Judul'] == null && rakB['Nama'] == null) {
      rakB['Judul'] = inputjudulbuku;
      rakB['Nama'] = inputnamapinjam;
    }
    else if (rakC['Judul'] == null && rakC['Nama'] == null) {
      rakC['Judul'] = inputjudulbuku;
      rakC['Nama'] = inputnamapinjam;
    } 
    else {
      waitingList.add({
        'Judul' : inputjudulbuku,
        'Nama' : inputnamapinjam
      });
    } 
  }

  void lihatRak() {
    print("============================");
    print("List Peminjam Buku");
    print("============================");
    print("Rak A. $rakA");
    print("Rak B. $rakB");
    print("Rak C. $rakC");
    print("============================");
  }

  void lihatWaiting() {
    if (waitingList.isEmpty) {
      print("Belum Ada Waiting List");
    } else {
        for(int i = 0; i < waitingList.length; i++) {
        print("${i + 1}. ${waitingList[i]}");
      }
    }
  } 

  void selesaikanPinjam() {
    stdout.write("Pilih Peminjaman Yang ingin di selesaikan (A/B/C) : ");
    var inputselesaipinjam = stdin.readLineSync()!;

    if (inputselesaipinjam == 'A' || inputselesaipinjam == 'a') {
      rakA['Judul'] = null;
      rakA['Nama'] = null;
      rakA['Judul'] = waitingList[0]['Judul'];
      rakA['Nama'] = waitingList[0]['Nama'];
      waitingList.removeAt(0);
    }
    else if (inputselesaipinjam == 'B' || inputselesaipinjam == 'b') {
      rakB['Judul'] = null;
      rakB['Nama'] = null;
      rakB['Judul'] = waitingList[0]['Judul'];
      rakB['Nama'] = waitingList[0]['Nama'];
      waitingList.removeAt(0);
    }
    else if (inputselesaipinjam == 'C' || inputselesaipinjam == 'c') {
      rakC['Judul'] = null;
      rakC['Nama'] = null;
      rakC['Judul'] = waitingList[0]['Judul'];
      rakC['Nama'] = waitingList[0]['Nama'];
      waitingList.removeAt(0);
    } 
  }

  void keluarProgram() {
    exit(0);
  }

  while (jalan == true) {
    tampilanMenu();
    stdout.write("Pilih Menu (1/2/3/4/5) : ");
    int inputmenu = int.parse(stdin.readLineSync()!);
    switch (inputmenu) {
      case 1 : {
        tambahPeminjam();
      }
      case 2 : {
        lihatWaiting();
      }
      case 3 : {
        lihatRak();
      }
      case 4 : {
        selesaikanPinjam();
      }
      case 5 : {
        keluarProgram();
      }
    }
  }
}