import 'Models/personagem.dart';
import 'Models/guerreiro.dart';
import 'Models/mago.dart';
import 'Data/enumFeiticos.dart';
void main() {

  var personagem = Personagem(
    nome: 'Dj',
    raca: 'Humano',
    classe: 'Matador',
    idade: 87,
    altura: 1.85,
    magico: false,
    vida: 100,
    energia: 80,
    habilidades: ['Combate com espada', 'Liderança', 'Sobrevivência'],
  );



  var guerreiro = Guerreiro(
    nome: 'Ronaldo',
    raca: 'Anão',
    idade: 150,
    altura: 1.40,
    vida: 120,
    energia: 90,
    habilidades: ['Força Bruta', 'Resistência', 'Machado Duplo'],
    arma: 'Machado de Batalha',
    estiloDeCombate: 'Corpo a corpo',
  );



  var mago = Mago(
    nome: 'Patolino',
    raca: 'Pato',
    idade: 2019,
    altura: 1.80,
    vida: 100,
    energia: 150,
    habilidades: ['Magia Branca', 'Controle de Luz', 'Proteção Mágica'],
  );


  mago.exibirFicha();
  mago.adicionarFeitico(Feiticos.fogo, 50);
  mago.adicionarFeitico(Feiticos.relampago, 40);
  mago.adicionarFeitico(Feiticos.cura, 30);
  mago.adicionarFeitico(Feiticos.gelo, 20);
  mago.lancarFeitico();

  guerreiro.atacar(mago);
  mago.atacar(guerreiro);

}
