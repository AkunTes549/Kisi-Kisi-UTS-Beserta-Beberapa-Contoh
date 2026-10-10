import 'dart:io';

void main () {
  var jalan = true;
  var ceklogin = true;
  var saldo = 2000000;
  var pin = 112233;


  void login() {
    print("=====================================");
    print("ATM SERBA ADA");
    print("=====================================");
    stdout.write("Masukan Pin Anda : ");
    int inputpin = int.parse(stdin.readLineSync()!);
    if (pin == inputpin) {
      ceklogin = false;
    }
  }
  void tampilanMenu() {
    print("=====================================");
    print("1. Cek Saldo");
    print("2. Setor Uang");
    print("3. Tarik Uang");
    print("=====================================");
  }

  void cekSaldo() {
    print("Saldo : Rp$saldo");
  }

  void setorUang() {
    stdout.write("Masukan Jumlah Nominal yang ingin di setor : ");
    int inputsetor = int.parse(stdin.readLineSync()!);
    saldo = saldo + inputsetor;
    print("Anda Telah Berhasil Setor Uang dengan Nominal Rp$inputsetor");
  }

  void tarikUang() {
    int lembaruang;
    int lembaruang2;
    int simpansisa;
    stdout.write("Masukan Nominal yang ingin di tarik : ");
    int tarik = int.parse(stdin.readLineSync()!);

    print("=====================================");
    print("Pilih Pecahan Uang");
    print("1. Rp50.000");
    print("2. Rp100.000");
    print("=====================================");

    stdout.write("Pilih Nomor (1/2) : ");
    int pilihpecahan = int.parse(stdin.readLineSync()!);

    if (pilihpecahan == 1) {
      lembaruang = tarik ~/ 50000;
      print("$lembaruang Lembar Rp50.000");

    } else if (pilihpecahan == 2) {
      if (tarik % 100000 == 0) {
        lembaruang = tarik ~/ 100000;
        print("$lembaruang Lembar Rp100.000");

      } else if (tarik % 100000 != 0) {
        lembaruang = tarik ~/ 100000; 
        simpansisa = tarik - (lembaruang * 100000);
        lembaruang2 = simpansisa ~/ 50000;
        print("$lembaruang Lembar Rp100.000 dan $lembaruang2 Lembar Rp50.000");
        
      }
    }

    saldo = saldo - tarik;
    
  }

  while (jalan == true) {
    if (ceklogin == true) {
      login();
    } else {
      tampilanMenu();
      stdout.write("Pilih Nomor (1/2/3) : ");
      int inputmenu = int.parse(stdin.readLineSync()!);
      switch (inputmenu) {
        case 1 :
        cekSaldo();
        break;
        case 2 :
        setorUang();
        break;
        case 3 :
        tarikUang();
        break;
      }
    }
  }
}