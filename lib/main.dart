import 'package:desafio_flutter_calculadora_imc/controllers/pessoa_controller.dart';
import 'package:desafio_flutter_calculadora_imc/views/console_view.dart';

void main() {
  final view = ConsoleView();
  final controller = PessoaController();

  String nome = view.lerEntrada('Digite o seu nome: ');
  double peso = double.parse(view.lerEntrada('Digite o seu peso (em kg): '));
  double altura = double.parse(
    view.lerEntrada('Digite a sua altura (em metros): '),
  );

  var pessoa = controller.criarPessoa(nome, peso, altura);
  view.exibirMensagem(pessoa.toString());

  String classificacao = controller.obterClassificacao(pessoa);
  view.exibirMensagem('Classificação de saúde: $classificacao');
}
