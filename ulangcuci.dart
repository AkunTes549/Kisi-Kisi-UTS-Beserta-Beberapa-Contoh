import 'dart:io';

void main() {

var jalan = true;

Map posa ={'Plat': null};
Map posb ={'Plat': null};
Map posc ={'Plat': null};

List waitingList = [];

void tampilMenu() {
  print("=====================================");
  print("Clean & Wash");
  print("=====================================");
  print("1. Tambah Mobil");
  print("2. Lihat Waiting List");
  print("3. Lihat Pos");
  print("4. Selesaikan Cuci Mobil");
  print("5. Keluar program");
}

void tambahMobil() {
  stdout.write("Masukan Plat Mobil : ");
  var inputplat = stdin.readLineSync();
  if (posa['Plat'] == null) {
    posa['Plat'] = inputplat;
  } else if (posb['Plat'] == null) {
    posb['Plat'] = inputplat;
  } else if (posc['Plat'] == null) {
    posc['Plat'] = inputplat;
  } else {
    waitingList.add(inputplat);
  }
}

void lihatWaiting() {
  for(int i = 0; i < waitingList.length; i++) {
    print("${waitingList[i]}");
  }
}

void lihatPos() {
  print(posa);
  print(posb);
  print(posc);
}

void selesaikanPos() {
  stdout.write("Pos Mana yang ingin anda selesaikan (A/B/C) : ");
  var inputpos = stdin.readLineSync();
  if (inputpos == 'A') {
    posa['Plat'] = null;
    posa['Plat'] = waitingList[0];
    waitingList.removeAt(0);
  } else if (inputpos == 'B') {
    posb['Plat'] = null;
    posb['Plat'] = waitingList[0];
    waitingList.remove(0);
  } else if (inputpos == 'C') {
    posc['Plat'] = null;
    posc['Plat'] = waitingList[0];
    waitingList.removeAt(0);
  }
}

void keluarProgram() {
  exit(0);
}

while (jalan == true) {
  tampilMenu();
  stdout.write("Masukan Nomor (1/2/3/4/5) : ");
  var inputnomor = int.parse(stdin.readLineSync()!);
  switch (inputnomor) {
    case 1 : 
      tambahMobil();
    break;
    case 2 :
      lihatWaiting();
    break;
    case 3 :
      lihatPos();
    break;
    case 4 : 
      selesaikanPos();
    break;
    case 5 :
      keluarProgram();
    break;
  }
}

}