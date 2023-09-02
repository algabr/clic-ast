import 'package:flutter/material.dart';

import '../back_falso/dt_exames.dart';
import '../widgets/tabela.dart';
import '../widgets/titulo_pagina.dart';

// CRIA A LISTA DE TITULOS DAS COLUNAS
final List<String> tituloColunas = [
  'ID',
  'PACIENTE',
  'MÉDICO',
  'TIPO',
  'SOLICITANTE',
  'DATA',
  'HORA',
  'VALOR',
  'CONVÊNIO',
  'STATUS',
];

class ExamesPage extends StatefulWidget {
  const ExamesPage({
    required this.colunas,
    required this.itens,
    super.key,
  });
  final List<String> colunas;
  final List<Map<String, dynamic>> itens;
  @override
  State<ExamesPage> createState() => _ExamesPageState();
}

class _ExamesPageState extends State<ExamesPage> {
  @override
  Widget build(BuildContext context) {
    // GERANDO BACK FALSO
    exames.isEmpty ? geradorExames() : null;

    return Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          const TituloPagina(
            "EXAMES",
            "Lista de exames:",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          const SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Center(
              // CHAMANDO O WIDGET TABELA
              child: DynamicDataTable(
                  colunas: tituloColunas,
                  itens: exames,
                  naSelecao: (selecionados) {
                    // LOG PRO DEBUG
                    print(selecionados);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
