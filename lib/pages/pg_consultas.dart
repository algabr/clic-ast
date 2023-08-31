import 'package:clinast/widgets/item_listagem.dart';
import 'package:clinast/widgets/menu_tabela.dart';
import 'package:clinast/widgets/titulo_pagina.dart';
import 'package:flutter/material.dart';

class ConsultasPage extends StatefulWidget {
  const ConsultasPage({super.key});

  @override
  State<ConsultasPage> createState() => _ConsultasPageState();
}

class _ConsultasPageState extends State<ConsultasPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: <Widget>[
          // TITULO DA PAGINA
          TituloPagina(
            "CONSULTAS",
            "Lista de consultas:",
          ),

          // ESPACAMENTO DO TITULO PRO CORPO
          SizedBox(height: 16),

          // CORPO DA PAGINA
          Expanded(
            child: Column(
              children: [
                MenuTabela(
                  "COD",
                  "NOME",
                  "MÉDICO",
                  'CONSULTA',
                  "DATA",
                  "HR",
                  'STATUS',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'GERAL',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'FONOAUDIÓLOGA',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'NUTRICIONISTACIONISTA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'GERAL',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'NUTRICIONISTACIONISTA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'NUTRICIONISTACIONISTA',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'CARDIOLOGIA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'ORTOPEDIA',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'PSICÓLOGA',
                  '11/12',
                  '18:00',
                  'CONFIRMADA',
                ),
                ItemListagem(
                  "00",
                  "NOME DE PACIENTE QUALQUER",
                  'Dr. SEM NOME',
                  'FISIOTERAPIA',
                  '24/10',
                  '18:00',
                  'PENDENTE',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
