import 'dart:io';

void main () {
  var jalan = true;

  Map rakA = {'Buku' : null, 'Nama' : null};
  Map rakB = {'Buku' : null, 'Nama' : null};
  Map rakC = {'Buku' : null, 'Nama' : null};

  List<Map<String, dynamic>> waitingList = []; 

  void tampilanMenu() {
    print("===========================");
    print("Perpustakaan");
    print("===========================");
    print("1. Tambah Peminjam");
    print("2. Lihat Waiting List Peminjam");
    print("3. Lihat Rak ");
    print("4. Selesaikan Peminjaman");
    print("5. Keluar Program");
    print("===========================");
  }

  void tambahPeminjam() {
    stdout.write("Masukan nama Buku : ");
    var inputbuku = stdin.readLineSync()!;

    stdout.write("Masukan nama Peminjam : ");
    var inputnamapinjam = stdin.readLineSync()!;

    if(rakA['Buku'] == null && rakA['Nama'] == null) {
      rakA['Buku'] =  inputbuku;
      rakA['Nama'] =  inputnamapinjam;
    } 
    else if(rakB['Buku'] == null && rakB['Nama'] == null) {
      rakB['Buku'] =  inputbuku;
      rakB['Nama'] =  inputnamapinjam;
    } 
    else if(rakC['Buku'] == null && rakC['Nama'] == null) {
      rakC['Buku'] =  inputbuku;
      rakC['Nama'] =  inputnamapinjam;
    } 
    else {
      waitingList.add({
        "Buku" : inputbuku,
        "Nama" : inputnamapinjam
      });
    } 
  }

  void lihatWaiting() {
    for(int i = 0; i < waitingList.length; i++) {
      print("${i + 1} ${waitingList[i]}");
    }
  }

  void lihatRak() {
    print(rakA);
    print(rakB);
    print(rakC);
  }
  
  void selesaikanPinjam() {
    stdout.write("Pilih pinjaman buku yang ingin di selesaikan (A/B/C) : ");
    var inputselesaipinjam = stdin.readLineSync()!;

    if (inputselesaipinjam == 'A' || inputselesaipinjam == 'a') {
      rakA['Buku'] = null;
      rakA['Nama'] = null;
      rakA['Buku'] = waitingList[0]['Buku'];
      rakA['Nama'] = waitingList[0]['Nama'];
      waitingList.removeAt(0);
    }
    else if (inputselesaipinjam == 'B' || inputselesaipinjam == 'b') {
      rakB['Buku'] = null;
      rakB['Nama'] = null;
      rakB['Buku'] = waitingList[0]['Buku'];
      rakB['Nama'] = waitingList[0]['Nama'];
      waitingList.removeAt(0);
    }
    else if (inputselesaipinjam == 'C' || inputselesaipinjam == 'c') {
      rakC['Buku'] = null;
      rakC['Nama'] = null;
      rakC['Buku'] = waitingList[0]['Buku'];
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
    int pilihmenu = int.parse(stdin.readLineSync()!);
    switch (pilihmenu) {
      case 1 : {
        tambahPeminjam();
        break;
      }
      case 2 : {
        lihatWaiting();
        break;
      }
      case 3 : {
        lihatRak();
        break;
      }
      case 4 : {
        selesaikanPinjam();
        break;
      }
      case 5 : {
        keluarProgram();
        break;
      }
    }
  }
}
