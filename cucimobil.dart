import 'dart:io';

void main () {
var jalan = true;

Map posa={'Plat':null};
Map posb={'Plat':null};
Map posc={'Plat':null};

List waitinglist=[];

void tampilMenu() {
  //tampilan menu
  print("===========================");
  print("Wash & Clean");
  print("===========================");
  print("1. Tambah Waiting List");
  print("2. Lihat Waiting List");
  print("3. Lihat Pos");
  print("4. Selesaikan Pos");
  print("5. Keluar dari aplikasi");
  print("===========================");
}

void tambahlist() {
    //jika pos a, pos b, pos c lagi kosong maka masuk ke a -> b -> c
  stdout.write("Masukan Plat : ");
  var input_mobil = stdin.readLineSync();
    if (posa['Plat'] == null) {
      posa['Plat'] = input_mobil;
    } else if (posb['Plat'] == null) {
      posb['Plat'] = input_mobil;
    } else if (posc['Plat'] == null) {
      posc['Plat'] = input_mobil;
    } else {
      waitinglist.add(input_mobil);
    }

}

void lihatList() {
    //for /for in/ for each ke waiting list
  if (waitinglist.isEmpty) {
    print("Waiting List Masing Kosong");
  } else {
        for (int i = 0; i < waitinglist.length; i++) {
      print("${i + 1}. ${waitinglist[i]}");
    }
  }
}


void lihatPos() {
  //cek masing masing pos
  print(posa);
  print(posb);
  print(posc);
}

void selesaiKanPos() {
    //tanya dulu pilih pos mana 
  stdout.write("Pos mana yang ingin di selesaikan (A/B/C bisa huruf besar dan kecil) : ");
  var selesaikanpos = stdin.readLineSync();
    //cek dulu mobil di pos tersebut lalu print pos
       //pos di kosongin
    //dari waiting list pertama dihaspus
    if (selesaikanpos == 'A' || selesaikanpos == 'a') {
      posa['Plat'] = null;
      posa['Plat'] = waitinglist[0];
      waitinglist.removeAt(0);
    } 
    else if (selesaikanpos == 'B' || selesaikanpos == 'b') {
      posb['Plat'] = null;
      posb['Plat'] = waitinglist[0];
      waitinglist.removeAt(0);
    }
    else if (selesaikanpos == 'C' || selesaikanpos == 'c') {
      posc['Plat'] = null;
      posc['Plat'] = waitinglist[0];
      waitinglist.removeAt(0);
    }
 
}

void keluarApp() {
    exit(0);
}

while (jalan == true) {
  tampilMenu();
  stdout.write("Pilih Menu (1/2/3/4/5) : ");
  int input = int.parse(stdin.readLineSync()!);
  switch (input) {
    case 1 : {
      tambahlist();
      break;
    } 
    case 2 : {
      lihatList();
      break;
    }
    case 3 : {
      lihatPos();
      break;
    }
    case 4 : {
      selesaiKanPos();
      break;
    }
    case 5 : {
      keluarApp();
      break;
    }
  }
} 


tampilMenu();


}