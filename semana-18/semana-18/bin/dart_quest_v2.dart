import 'Models/personagem.dart';
import 'Models/guerreiro.dart';
import 'Models/mago.dart';
import 'Data/enumFeiticos.dart';
import 'Exceptions/PersonagemDerrotadoException.dart';
void main() {

  var personagem = Personagem(
    nome: 'Dj',
    raca: 'Humano',
    classe: 'Matador',
    idade: 87,
    altura: 1.85,
    magico: false,
    vida: 150,
    energia: 80,
    habilidades: ['Combate com espada', 'Liderança', 'Sobrevivência'],
  );

  var guerreiro = Guerreiro(
    nome: 'Ronaldo',
    raca: 'Anão',
    idade: 150,
    altura: 1.40,
    vida: 0,
    energia: 90,
    habilidades: ['Força Bruta', 'Resistência', 'Machado Duplo'],
    arma: 'Machado de Batalha',
    estiloDeCombate: 'Corpo a corpo',
  );

  personagem.vida = -150;

  try{
    personagem.atacar(guerreiro);
  }on PersonagemDerrotadoException catch (e) {
    print(e.mensagem);
  }


}
