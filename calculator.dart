import 'dart:io';

enum Operation { sum, minus, multiply, divide, exit }

double sum(double a, double b) => a + b;

double multiply(double a, double b) => a * b;

double minus(double a, double b) => a - b;

double divide(double a, double b) => a / b;

void _chooseOperation(int input) {
  var result;

  print("a sayısını giriniz: ");
  double num1 = double.parse(stdin.readLineSync());
  print("b sayısını giriniz: ");
  double num2 = double.parse(stdin.readLineSync());

  switch (input) {
    case 1:
      result = sum(num1, num2);
      print("$num1 + $num2  = $result");
      break;
    case 2:
      result = minus(num1, num2);
      print("$num1 - $num2  = $result");
      break;
    case 3:
      result = multiply(num1, num2);
      print("$num1 * $num2  = $result");
      break;
    case 4:
      result = divide(num1, num2);
      print("$num1 / $num2  = $result");
      break;
    case 5:
      print("ÇIKIŞ YAPILIYOR");
      exit(0);
      break;
    default:
      print("Yanlıs islem gerçekleştirdiniz");
  }
}

void main() {
  while (true) {
    print(
        "Yapmak istediğiniz işlemi seçiniz: \n1-Toplama \n2-Çıkarma \n3-Çarpma \n4-Bölme \n ******ÇIKIŞ İÇİN 5'E BASINIZ****** ");

    int input = int.parse(stdin.readLineSync());

    try {
      _chooseOperation(input);
    } catch (e) {
      print("ERROR $e");
    }
  }
}
