import 'package:endemics/Endemias/AmarelaScreen.dart';
import 'package:endemics/Endemias/BruceScreen.dart';
import 'package:endemics/Endemias/ChikungunyaScreen.dart';
import 'package:endemics/Endemias/CisteScreen.dart';
import 'package:endemics/Endemias/CriptoScreen.dart';
import 'package:endemics/Endemias/DengueScreen.dart';
import 'package:endemics/Endemias/DipiliScreen.dart';
import 'package:endemics/Endemias/EndemiaScreen.dart';
import 'package:endemics/Endemias/EripsScreen.dart';
import 'package:endemics/Endemias/EsquisScreen.dart';
import 'package:endemics/Endemias/HepaScreen.dart';
import 'package:endemics/Endemias/HidiScreen.dart';
import 'package:endemics/Endemias/HistoScreen.dart';
import 'package:endemics/Endemias/LeishScreen.dart';
import 'package:endemics/Endemias/LeptoScreen.dart';
import 'package:endemics/agentes/8468screen.dart';
import 'package:endemics/agentes/acescreen.dart';
import 'package:endemics/agentes/andreiascreen.dart';
import 'package:endemics/agentes/diogoscreen.dart';
import 'package:endemics/agentes/iracemascreen.dart';
import 'package:endemics/agentes/josuescreen.dart';
import 'package:endemics/agentes/mauricioscreen.dart';
import 'package:endemics/agentes/nbnscreen.dart';
import 'package:endemics/agentes/robsonscreen.dart';
import 'package:endemics/cadastrosace/cadnbn.dart';
import 'package:endemics/cadastrosupervisores/cadjanete.dart';
import 'package:endemics/equipes/melhorscreen.dart';
import 'package:endemics/equipes/nortescreen.dart';
import 'package:endemics/equipes/sulscreen.dart';
import 'package:endemics/equipes/equipescreen.dart';
import 'package:endemics/formulario/form01screen.dart';
import 'package:endemics/formulario/formularioScreen.dart';
import 'package:endemics/mosquito/MosquitoScreen.dart';
import 'package:endemics/Endemias/NegraScreen.dart';
import 'package:endemics/Endemias/PsitaScreen.dart';
import 'package:endemics/Endemias/RaivaScreen.dart';
import 'package:endemics/Endemias/SalmonelaScreen.dart';
import 'package:endemics/Endemias/SarnaScreen.dart';
import 'package:endemics/Endemias/TeniaScreen.dart';
import 'package:endemics/Endemias/TifoScreen.dart';
import 'package:endemics/Endemias/ToxoScreen.dart';
import 'package:endemics/Endemias/TuberScreen.dart';
import 'package:endemics/Endemias/ZikaScreen.dart';
import 'package:endemics/mosquito/AegyptiScreen.dart';
import 'package:endemics/mosquito/AlbimanusScreen.dart';
import 'package:endemics/mosquito/AlbopictusScreen.dart';
import 'package:endemics/mosquito/AnophatroScreen.dart';
import 'package:endemics/mosquito/BrumptScreen.dart';
import 'package:endemics/mosquito/FasciatusScreen.dart';
import 'package:endemics/mosquito/HaemagogusScreen.dart';
import 'package:endemics/mosquito/ModestusScreen.dart';
import 'package:endemics/mosquito/PalhaScreen.dart';
import 'package:endemics/mosquito/PipensScreen.dart';
import 'package:endemics/mosquito/QuadriScreen.dart';
import 'package:endemics/mosquito/tritaeScreen.dart';
import 'package:endemics/supervisores/janetescreen.dart';
import 'package:endemics/supervisores/leandroscreen.dart';
import 'package:endemics/supervisores/mariascreen.dart';
import 'package:endemics/telas/equipesupervisao.dart';
import 'package:endemics/telas/mapascreen.dart';
import 'package:endemics/telas/vizualizarscreen.dart';
import 'package:flutter/material.dart';
import 'package:endemics/telas/Cadastro.dart';
import 'package:endemics/telas/Home.dart';
import 'package:endemics/telas/PainelSupervisor.dart';
import 'package:endemics/telas/PainelAce.dart';
import 'package:endemics/telas/RecuperarSenha.dart';

import 'cadastrosace/cadiogo.dart';

class Rotas {
  static Route<dynamic> gerarRotas(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const Home());
      case "/cadastro":
        return MaterialPageRoute(builder: (_) => const Cadastro());
      case "/painel-supervisor":
        return MaterialPageRoute(builder: (_) => const PainelSupervisor());
      case "/painel-ace":
        return MaterialPageRoute(builder: (_) => const PainelAce());
      case "/recuperar-senha":
        return MaterialPageRoute(builder: (_) => const RecuperarSenha());
      case "/mapa":
        return MaterialPageRoute(builder: (_) => const MapaScreen());
      case "/endemia-screen":
        return MaterialPageRoute(builder: (_) => EndemiaScreen());
      case "/dengue-screen":
        return MaterialPageRoute(builder: (_) => const DengueScreen());
      case "/mosquito-screen":
        return MaterialPageRoute(builder: (_) => MosquitoScreen());
      case "/zika-screen":
        return MaterialPageRoute(builder: (_) => const ZikaScreen());
      case "/chikungunya-screen":
        return MaterialPageRoute(builder: (_) => const ChikungunyaScreen());
      case "/aegypit-screen":
        return MaterialPageRoute(builder: (_) => const AegyptiScreen());
      case "/albopictus-screen":
        return MaterialPageRoute(builder: (_) => const AlbopictusScreen());
      case "/fasciatus-screen":
        return MaterialPageRoute(builder: (_) => const FasciatusScreen());
      case "/albimanus-screen":
        return MaterialPageRoute(builder: (_) => const AlbimanusScreen());
      case "/haemagogus-screen":
        return MaterialPageRoute(builder: (_) => const HaemagogusScreen());
      case "/palha-screen":
        return MaterialPageRoute(builder: (_) => const PalhaScreen());
      case "/atro-screen":
        return MaterialPageRoute(builder: (_) => const AnophatroScreen());
      case "/quadri-screen":
        return MaterialPageRoute(builder: (_) => const QuadriScreen());
      case "/brumpt-screen":
        return MaterialPageRoute(builder: (_) => const BrumptScreen());
      case "/modestus-screen":
        return MaterialPageRoute(builder: (_) => const ModestusScreen());
      case "/pipens-screen":
        return MaterialPageRoute(builder: (_) => const PipensScreen());
      case "/tritae-screen":
        return MaterialPageRoute(builder: (_) => const TritaeScreen());
      case "/amarela-screen":
        return MaterialPageRoute(builder: (_) => const AmarelaScreen());
      case "/sarna-screen":
        return MaterialPageRoute(builder: (_) => const SarnaScreen());
      case "/bruce-screen":
        return MaterialPageRoute(builder: (_) => const BruceScreen());
      case "/negra-screen":
        return MaterialPageRoute(builder: (_) => const NegraScreen());
      case "/erips-screen":
        return MaterialPageRoute(builder: (_) => const EripsScreen());
      case "/lepto-screen":
        return MaterialPageRoute(builder: (_) => const LeptoScreen());
      case "/salmonela-screen":
        return MaterialPageRoute(builder: (_) => const SalmonelaScreen());
      case "/tifo-screen":
        return MaterialPageRoute(builder: (_) => const TifoScreen());
      case "/tuber-screen":
        return MaterialPageRoute(builder: (_) => const TuberScreen());
      case "/ciste-screen":
        return MaterialPageRoute(builder: (_) => const CisteScreen());
      case "/cripto-screen":
        return MaterialPageRoute(builder: (_) => const CriptoScreen());
      case "/dipili-screen":
        return MaterialPageRoute(builder: (_) => const DipiliScreen());
      case "/esquis-screen":
        return MaterialPageRoute(builder: (_) => const EsquisScreen());
      case "/hidi-screen":
        return MaterialPageRoute(builder: (_) => const HidiScreen());
      case "/histo-screen":
        return MaterialPageRoute(builder: (_) => const HistoScreen());
      case "/psita-screen":
        return MaterialPageRoute(builder: (_) => const PsitaScreen());
      case "/tenia-screen":
        return MaterialPageRoute(builder: (_) => const TeniaScreen());
      case "/toxo-screen":
        return MaterialPageRoute(builder: (_) => const ToxoScreen());
      case "/hepa-screen":
        return MaterialPageRoute(builder: (_) => const HepaScreen());
      case "/leish-screen":
        return MaterialPageRoute(builder: (_) => const LeishScreen());
      case "/raiva-screen":
        return MaterialPageRoute(builder: (_) => const RaivaScreen());
      case "/formulario-screen":
        return MaterialPageRoute(builder: (_) => FormularioScreen());
      case "/formetmo-screen":
        return MaterialPageRoute(builder: (_) => const Form01Screen());
      case "/equipe-screen":
        return MaterialPageRoute(builder: (_) => equipeScreen());
      case "/melhor-screen":
        return MaterialPageRoute(builder: (_) => const MelhorScreen());
      case "/nbn-screen":
        return MaterialPageRoute(builder: (_) => const NbnScreen());
      case "/acem-screen":
        return MaterialPageRoute(builder: (_) => const AceMScreen());
      case "/diogo-screen":
        return MaterialPageRoute(builder: (_) => const DiogoScreen());
      case "/andreia-screen":
        return MaterialPageRoute(builder: (_) => const AndreiaScreen());
      case "/iracema-screen":
        return MaterialPageRoute(builder: (_) => const IracemaScreen());
      case "/josue-screen":
        return MaterialPageRoute(builder: (_) => const JosueScreen());
      case "/mauricio-screen":
        return MaterialPageRoute(builder: (_) => const MauricioScreen());
      case "/robson-screen":
        return MaterialPageRoute(builder: (_) => const RobsonScreen());
      case "/cadnbn-screen":
        return MaterialPageRoute(builder: (_) => const CadNbn());
      case "/cadiogo-screen":
        return MaterialPageRoute(builder: (_) => const CadDiogo());
      case "/sul-screen":
        return MaterialPageRoute(builder: (_) => const SulScreen());
      case "/ace-screen":
        return MaterialPageRoute(builder: (_) => AceScreen());
      case "/equipesupervisao-screen":
        return MaterialPageRoute(builder: (_) => EquipeSupervisaoScreen());
      case "/janete-screen":
        return MaterialPageRoute(builder: (_) => const JaneteScreen());
      case "/leandro-screen":
        return MaterialPageRoute(builder: (_) => const LeandroScreen());
      case "/maria-screen":
        return MaterialPageRoute(builder: (_) => const MariaScreen());
      case "/cadjanete-screen":
        return MaterialPageRoute(builder: (_) => const CadJanete());
      case "/norte-screen":
        return MaterialPageRoute(builder: (_) => const NorteScreen());
      case "/visualizar-relatorio":
        return MaterialPageRoute(builder: (_) => const VisualizarRelatorioScreen(dadosRelatorio: {},));
      default:
        return _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Tela não encontrada!"),
        ),
        body: const Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
