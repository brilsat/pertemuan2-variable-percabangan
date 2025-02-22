// Program pendaftaran TNI.
// Pak Arip adalah Jendral TNI. Tahun ini Pak Arip akan mengadakan pendaftaran TNI.
// Pak Arip meminta bantuan Anda untuk membuat program pendaftaran TNI.
// Program akan menentukan apakah kandidat dapat mendafatar atau tidak berdasarkan:
// - Usia minimal 17 tahun
// - Tinggi badan minimal 170 cm (laki-laki) dan 160 cm (perempuan)
// - Berat badan minimal 60 kg (laki-laki) dan 50 kg (perempuan)
// - Berat badan maksimal 90 kg (laki-laki) dan 80 kg (perempuan)
//
// Format input:
// Baris pertama berisi Jenis kelamin (L/P)
// Baris kedua berisi Usia (tahun)
// Baris ketiga berisi Tinggi badan (m)
// Baris keempat berisi Berat badan (kg)
//
// Format output:
// Boleh mendaftar
// atau
// Tidak boleh mendaftar
//
// Contoh input:
// L
// 17
// 1.7
// 60
//
// output:
// Boleh mendaftar
//
// Contoh input:
// P
// 16
// 1.6
// 50
//
// output:
// Tidak boleh mendaftar
//

import 'dart:io';

void main() {
  String kelamin = stdin.readLineSync() ?? "Tanpa nama";
  int umur = int.parse(stdin.readLineSync()!);
  double tinggi = double.parse(stdin.readLineSync()!);
  int massa = int.parse(stdin.readLineSync()!);

  if (kelamin == "L") {
    if (umur >= 17) {
      if (tinggi >= 1.7) {
        if (massa >= 60 && massa <= 90) {
          print("Boleh mendaftar");
        } else {
          print("Tidak boleh mendaftar");
        }
      } else {
        print("Tidak boleh mendaftar");
      }
    } else {
      print("Tidak boleh mendaftar");
    }
  } else if (kelamin == "P") {
    if (umur >= 17) {
      if (tinggi >= 1.6) {
        if (massa >= 50 && massa <= 80) {
          print("Boleh mendaftar");
        } else {
          print("Tidak boleh mendaftar");
        }
      } else {
        print("Tidak boleh mendaftar");
      }
    } else {
      print("Tidak boleh mendaftar");
    }
  }
}
