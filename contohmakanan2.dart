import 'dart:io';
void main () {
  var jalan = true;
  double total = 0;
  double kembalian = 0;

  List<Map<String, dynamic>> listPesanan = [];

  void menuApk() {
    print("=================================");
    print("Tampilan Kasir");
    print("=================================");
    print("1. Menu Makanan");
    print("2. Pesan Makanan");
    print("3. Lihat Total");
    print("4. Bayar");
    print("5. Keluar Program");
  }

  void menuMakanan() {
    print("=================================");
    print("Menu Makanan");
    print("=================================");
    print("1. Nasi Goreng Rp15.000");
    print("2. Mie Goreng Rp12.000");
    print("3. Ayam Geprek Rp18.000");
    print("4. Es Teh  Rp5.000");
  }

  void lihatTotal() {
    if (listPesanan.isEmpty) {
      print("Anda Belum Memesan!");
    } else {
      print("Berikut adalah pesanan anda : ");
      for (int i = 0; i < listPesanan.length; i++) {
        print("${i + 1}. ${listPesanan[i]['Pesanan']}");
        print("   Harga: ${listPesanan[i]['Harga']}");
      }
      print("Total yang perlu anda bayar adalah : Rp$total");
    }  
  }

  void pesanMakan() {
    menuMakanan();
    stdout.write("Pilih Pesanan anda (1/2/3/4) : ");
    int inputpesanan = int.parse(stdin.readLineSync()!);
    if (inputpesanan == 1) {
      total = total + 15000;
      listPesanan.add({
        'Pesanan' : "Nasi Goreng",
        'Harga' : "Rp15.000"
      });
    } else if (inputpesanan == 2) {
        total = total + 12000;
        listPesanan.add({
          'Pesanan' : "Mie Goreng",
          'Harga' : "Rp12.000"
        });
    } else if (inputpesanan == 3) {
        total = total + 18000;
        listPesanan.add({
          'Pesanan' : "Ayam Geprek",
          'Harga' : "Rp18.000"
        });
    } else if (inputpesanan == 4) {
        total = total + 5000;
        listPesanan.add({
          'Pesanan' : "Es Teh",
          'Harga' : "Rp5.000"
        });
    }  
  }

  void bayar() {
    stdout.write("Bayar Total Pesanan : ");
    double bayarpesanan = double.parse(stdin.readLineSync()!);
    if (bayarpesanan < total) {
      print("Duit anda kurang, modal dikit beli oi!");
    }
    else if (bayarpesanan > total ) {
      kembalian = bayarpesanan - total;
      print("Kembalian $kembalian");
      listPesanan.clear();
      total = 0;
    } else {
      print("Terima Kasih telah membeli, Selamat Menikmati!");
      listPesanan.clear();
      total = 0;
    }
  }

  void keluarProgram() {
    exit(0);
  }

  while (jalan == true) {
  menuApk();
  stdout.write("Pilih Menu (1/2/3/4/5) = ");
  int inputmenu = int.parse(stdin.readLineSync()!);
  switch (inputmenu) {
    case 1 : 
      menuMakanan();
      break;
    case 2 :
      pesanMakan();
      break;
    case 3 :
      lihatTotal();
      break;
    case 4 :
      bayar();
      break;
    case 5 : 
      keluarProgram();
      break;
  }
  }
}