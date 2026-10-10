import 'dart:io';

void main () {
  var jalan = true;

  Map posA = {'Plat' : null};
  Map posB = {'Plat' : null};
  Map posC = {'Plat' : null};

  List waitingList = [];

  void tampilanMenu() {
    print("===========================");
    print("Wash And Clean");
    print("===========================");
    print("1. Tambah Mobil");
    print("2. Lihat Waiting List");
    print("3. Lihat Pos");
    print("4. Selesaikan Pos");
    print("5. Keluar Program");
  
  }

  void tambahMobil() {
    stdout.write("Masukan Plat Mobil : ");
    var inputplatmobil = stdin.readLineSync()!;

    if (posA['Plat'] == null ) {
      posA['Plat'] = inputplatmobil;
    } 
    else if (posB['Plat'] == null ) {
      posB['Plat'] = inputplatmobil;
    } 
    else if (posC['Plat'] == null ) {
      posC['Plat'] = inputplatmobil;
    } 
    else {
      waitingList.add(inputplatmobil);
    }
  }

  void lihatWaiting() {
    for(int i = 0; i < waitingList.length; i++) {
      print("${i + 1}. ${waitingList[i]}");
    }
  }

  void lihatPos() {
    print(posA);
    print(posB);
    print(posC);
  }

  void selesaiKanPos() {
    stdout.write("Masukan Pos Yang ingin di Selesaikan (A/B/C) : ");
    var inputselesaicuci = stdin.readLineSync()!;

    if (inputselesaicuci == 'A' || inputselesaicuci == 'a') {
      posA['Plat'] = null;
      posA['Plat'] = waitingList[0];
      waitingList.removeAt(0);
    }
    else if (inputselesaicuci == 'B' || inputselesaicuci == 'b') {
      posB['Plat'] = null;
      posB['Plat'] = waitingList[0];
      waitingList.removeAt(0);
    } 
    else if (inputselesaicuci == 'C' || inputselesaicuci == 'c') {
      posC['Plat'] = null;
      posC['Plat'] = waitingList[0];
      waitingList.removeAt(0);
    } 
  }

  void keluarApp() {
    exit(0);
  }

  while(jalan == true) {
    tampilanMenu();
    stdout.write("Pilih Menu (1/2/3/4/5) : ");
    int pilihmenu = int.parse(stdin.readLineSync()!);
    switch (pilihmenu) {
      case 1 : {
        tambahMobil();
      }
      case 2 : {
        lihatWaiting();
      }
      case 3 : {
        lihatPos();
      }
      case 4 : {
        selesaiKanPos();
      }
      case 5 : {
        keluarApp();
      }
    }
  }
}