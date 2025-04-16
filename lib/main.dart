import 'dart:io';

void main() {
  print('Digite o seu nome: ');
  String nome = stdin.readLineSync()!;
  print('Digite o seu peso (em kg): ');
  double peso = double.parse(stdin.readLineSync()!);
  print('Digite a sua altura (em metros): ');
  double altura = double.parse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(pessoa.toString());
  String classificacao = ClassificacaoSaude.classificar(pessoa.imc);
  print('Classificação de saúde: $classificacao');
}

class Pessoa {
  final String _nome;
  final double _peso;
  final double _altura;
  late double _imc;

  Pessoa(this._nome, this._peso, this._altura) {
    _imc = _peso / (_altura * _altura);
  }

  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;
  double get imc => _imc;
  @override
  String toString() {
    return 'Nome: $_nome, Peso: $_peso, Altura: $_altura, IMC: ${_imc.toStringAsFixed(2)}';
  }
}

class ClassificacaoSaude {
  static String classificar(double imc) {
    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc >= 16 && imc < 17) {
      return 'Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      return 'Saudável';
    } else if (imc >= 25 && imc < 30) {
      return 'Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return 'Obesidade Grau I';
    } else if (imc >= 35 && imc < 40) {
      return 'Obesidade Grau II (severa)';
    } else {
      return 'Obesidade Grau III (mórbida)';
    }
  }
}
