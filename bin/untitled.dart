import 'dart:math';
void main() {
  var random = Random();
  String intro = '\nCaracteristicas do pesonagem:';
  String nome = 'Carlos';
  String raca = 'Humano';
  String classe = 'Guerreiro';
  int idade = 23 + 1;
  double altura = 1.89;
  bool eMagico = false;
  int pontosDeVida = 100;
  int energia = 100;

  List<String> habilidades = ["Espada", "Lança", "Luta livre"];

  print(intro);
  print("Nome: $nome");
  print("Raca: $raca");
  print("Classe: $classe");
  print("Idade: $idade");
  print("Altura: $altura");
  print("É mágico: ${eMagico ? "Sim" : "Não"} ");
  print("Habilidades: $habilidades");
  print("Pontos de Vida: $pontosDeVida");
  print("Energia: $energia");

  print("\nO personagem iniciou uma batalha");

  while (energia > 0) {
    int valorAleatorio = random.nextInt(2);
    print("O persongem está batalhando!");
    print("O personagem utilizou: ${habilidades[valorAleatorio]}");
    energia -= 20;
    print("Energia Restante: $energia\n");
  }
  if (energia == 0) { print("A energia do personagem se esgotou!");}

}

