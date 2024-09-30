
CREATE OR REPLACE TABLE tech-challenge-3-434123.tech_challenge_03.fPesquisa_final_v02 as
SELECT
    p.ano,
    p.mes,
    p.semana,
    p.sigla_uf,
      dict_capital.valor     as id_capital_nome,
      dict_rm_ride.valor     as id_regiao_nome,
    p.estrato                as id_estrato_cod,
    p.upa                    as id_upa_cod,
    p.v1008                  as id_domicilio_cod,
    p.v1016                  as id_entrevista_cod,
      dict_v1022.valor       as id_domicilio_situacao_nome,
      dict_v1023.valor       as id_tipo_area,
    p.v1030                  as projecao_Populacao,
    p.v1031                  as peso_domicilio_pessoas_s_estrato,
    p.v1032                  as pedo_domicilio_pessoas_c_estrato,
    p.posest                 as domicilio_projecao,
    p.a001                   as mor_ordem,
      dict_a001a.valor       as a001a_mor_condicao,
    p.a001b1                 as a001b1_mor_dia_nascimento,
    p.a001b2                 as a001b2_mor_mes_nascimento,
    p.a001b3                 as a001b3_mor_ano_nascimento,
    p.a002                   as a002_mor_idade,
      dict_a003.valor        as a003_mor_sexo,
      dict_a004.valor        as a004_mor_raca,
      dict_a005.valor        as a005_mor_escolaridade,
      dict_a006.valor        as a006_mor_frequenta_escola,
      dict_a006a.valor       as a006_mor_escola_publica_privada,
      dict_a006b.valor       as a006b_mor_escola_presencial,
      dict_a007.valor        as a007_mor_escola_atividades,
      dict_a007a.valor       as a007a_mor_escola_atividades_motivo,
      dict_a008.valor        as a008_mor_escola_dedicacao_dias_atividades,
      dict_a009.valor        as a009_mor_escola_dedicacao_horas_atividades,
      dict_b0011.valor       as b0011_sint_febre,
      dict_b0012.valor       as b0012_sint_tosse,
      dict_b0013.valor       as b0013_sint_dor_garganta,
      dict_b0014.valor       as b0014_sint_dificulde_respirar,
      dict_b0015.valor       as b0015_sint_dor_cabeca,
      dict_b0016.valor       as b0016_sint_dor_peito,
      dict_b0017.valor       as b0017_sint_nausea,
      dict_b0018.valor       as b0018_sint_nariz_entupido,
      dict_b0019.valor       as b0019_sint_fadiga,
      dict_b00110.valor      as b00110_sint_dor_olhos,
      dict_b00111.valor      as b00111_sint_perda_cheiro_sabor,
      dict_b00112.valor      as b00112_sint_dor_muscular,
      dict_b00113.valor      as b00113_sint_diarreia,
      dict_b002.valor        as b002_provid_procurou_atendimento,
      dict_b0031.valor       as b0031_provid_ficou_em_casa,
      dict_b0032.valor       as b0032_provid_telemedicina,
      dict_b0033.valor       as b0033_provid_automedicacao,
      dict_b0034.valor       as b0034_provid_medicacao_prescrita,
      dict_b0035.valor       as b0035_provid_consulta_sus,
      dict_b0036.valor       as b0036_provid_consulta_particular,
      dict_b0037.valor       as b0037_provid_outro,
      dict_b0041.valor       as b0041_loc_atend_ubs_psf,
      dict_b0042.valor       as b0042_loc_atend_sus_upa,
      dict_b0043.valor       as b0043_loc_atend_hospital_sus,
      dict_b0044.valor       as b0044_loc_atend_ambulatorio_privado_militar,
      dict_b0045.valor       as b0045_loc_atend_pronto_socorro_privado_militar,
      dict_b0046.valor       as b0046_loc_atend_hospital_privado_militar,
      dict_b005.valor        as b005_loc_internacao_maior_1_dia,
      dict_b006.valor        as b006_loc_entubado,
      dict_b007.valor        as b007_loc_plano_saude,
      dict_b008.valor        as b008_loc_fez_teste,
      dict_b009a.valor       as b009a_loc_fez_exame_cotonete,
      dict_b009b.valor       as b009b_loc_resultado_exame_cotonete,
      dict_b009c.valor       as b009c_loc_fez_exame_sangue_dedo,
      dict_b009d.valor       as b009d_loc_resultado_exame_sangue_dedo,
      dict_b009e.valor       as b009e_loc_fez_exame_sangue_braco,
      dict_b009f.valor       as b009f_loc_resultado_exame_sangue_braco,
      dict_b0101.valor       as b0101_diag_diabetes,
      dict_b0102.valor       as b0102_diag_hipertencao,
      dict_b0103.valor       as b0103_diag_asmas_bronquite,
      dict_b0104.valor       as b0104_diag_infarto,
      dict_b0105.valor       as b0105_diag_depressao,
      dict_b0106.valor       as b0106_diag_cancer,
      dict_b011.valor        as b011_diag_restringiu_contato,
      dict_c001.valor        as c001_trab_trabalhou,
      dict_c002.valor        as c002_trab_afastado,
      dict_c003.valor        as c003_trab_motivo_afastamento,
      dict_c004.valor        as c004_trab_continuou_sendo_remunerado,
      dict_c005.valor        as c005_trab_tempo_afastado,
    p.c0051                  as c0051_trab_tempo_afastado_1_12_meses,
    p.c0052                  as c0052_trab_tempo_afastado_1_2_anos,
    p.c0053                  as c0053_trab_tempo_afastado_2_anos_mais,
    p.c006                   as c006_trab_mais_1_trabalho, 
      dict_c007.valor        as c007_trab_tipo_trabalho,
      dict_c007a.valor       as c007a_trab_tipo_area,
      dict_c007b.valor       as c007b_trab_carteira_assinada,
      dict_c007c.valor       as c007c_trab_funcao,
      dict_c007d.valor       as c007d_trab_atividade_empresa,
      dict_c007e.valor       as c007e1_trab_qtd_funcionarios,
    p.c007e1                 as c007e_trab_1_5_empregados,
    p.c007e2                 as c007e2_trab_6_10_empregados,
      dict_c007f.valor       as c007f_trab_trabalho_suspenso,
    p.c008                   as c008_trab_carga_horaria_semanal,
    p.c009                   as c009_trab_carga_horaria_trabalhada,
      dict_c009a.valor       as c009a_trab_gostaria_de_ter_trabalhado_mais,
      dict_c010.valor        as c010_trab_flag_qt_recebia_respondido,
      dict_c0101.valor       as c0101_trab_recebia_em_dinheiro,
      dict_c01011.valor      as c01011_trab_faixa_retiradadinheiro,
    p.c01012                 as c01012_trab_valor_retirado_dinheiro,
      dict_c0102.valor       as c0102_trab_flag_recebe_em_mercadoria,
      dict_c01021.valor      as c01021_trab_faixa_retirada_mercadoria,
    p.c01022                 as c01022_trab_valor_retirado_mercadoria,
      dict_c0103.valor       as c0103_trab_flag_recebia_em_beneficios,
      dict_c0104.valor       as c0104_trab_flag_nao_recebia,
      dict_c011a.valor       as c011a_trab_valor_recebido_em_todos_trab  ,
      dict_c011a1.valor      as c011a1_trab_flag_retirou_em_dinheiro ,
      dict_c011a11           as c011a11_trab_faixa_retirada_em_dinheiro,
    p.c011a12                as c011a12_trab_valor_retirado_em_dinheiro,
      dict_c011a2.valor      as c011a2_trab_flag_recebe_em_mercadoria,
      dict_c011a21.valor     as c011a21_trab_faixa_retirada_em_mercadoria,
    p.c011a22                as c011a22_trab_valor_retirado_em_mercadoria,
      dict_c012.valor        as c012_trab_mesmo_local,
      dict_c013.valor        as c013_trab_home_office,
      dict_c014.valor        as c014_trab_contribui_inss,
      dict_c015.valor        as c015_trab_providencia_conseguir_trab,
      dict_c016.valor        as c016_trab_motivo_nao_ter_procurado_trab,
      dict_c017a.valor       as c017a_trab_gostaria_ter_trabalhado,
      dict_d0011.valor       as d0011_aux_aposentadoria,
    p.d0013                  as d0013_aux_valor_aposentadoria,
      dict_d0021.valor       as d0021_aux_pensao_alimenticia,  
    p.d0023                  as d0023_aux_valor_pensao_alimenticia,
      dict_d0031.valor       as d0031_aux_bolsa_familia,  
    p.d0033                  as d0033_aux_valor_bolsa_familia,
      dict_d0041.valor       as d0041_aux_beneficio_assistencial,
    p.d0043                  as d0043_aux_valor_beneficio_assistencial,
      dict_d0051.valor       as d0051_aux_emergencial_covid,
    p.d0053                  as d0053_aux_valor_emergencial_covid,
      dict_d0061.valor       as d0061_aux_seguro_desemprego,
    p.d0063                  as d0063_aux_valor_seguro_desemprego,
      dict_d0071.valor       as d0071_aux_outra,
    p.d0073                  as d0073_aux_valor_outra,
      dict_e001.valor        as e001_emprest_solicitou,
      dict_e0021.valor       as e0021_emprest_banco_financeira,
      dict_e0022.valor       as e0022_emprest_parente_amigo,
      dict_e0023.valor       as e0023_emprest_patrao,
      dict_e0024.valor       as e0024_emprest_outro,
      dict_f001.valor        as f001_habit_tipo_domicilio,
    p.f0021                  as f0021_habit_valor_aluguel,
      dict_f0022.valor       as f0022_habit_faixa_aluguel,
      dict_f002a1.valor      as f002a1_habit_sabao_detergente,
      dict_f002a2.valor      as f002a2_habit_alcool_70,
      dict_f002a3.valor      as f002a3_habit_mascara,
      dict_f002a4.valor      as f002a4_habit_luvas,
      dict_f002a5.valor      as f002a5_habit_agua_sanitaria_desinfet,
    p.f0061                  as f0061_morador_que_respondeu_questionario,
    p.f006                   as f006_morador_numero_morador   
  FROM `tech_challenge_03.fPesquisa` p

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'capital') dict_capital on p.capital = dict_capital.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'rm_ride') dict_rm_ride on p.rm_ride= dict_rm_ride.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'v1022') dict_v1022 on p.v1022 = dict_v1022.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'v1023') dict_v1023 on p.v1023 = dict_v1023.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a001a') dict_a001a on p.a001a = dict_a001a.chave
  
  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a003') dict_a003 on p.a003 = dict_a003.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a004') dict_a004 on p.a004 = dict_a004.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a005') dict_a005 on p.a005 = dict_a005.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a006') dict_a006 on p.a006 = dict_a006.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a006a') dict_a006a on p.a006a = dict_a006a.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a006b') dict_a006b on p.a006b = dict_a006b.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a007') dict_a007 on p.a007 = dict_a007.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a007a') dict_a007a on p.a007a = dict_a007a.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a008') dict_a008 on p.a008 = dict_a008.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'a009') dict_a009 on p.a009 = dict_a009.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0011') dict_b0011 on p.b0011 = dict_b0011.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0012') dict_b0012 on p.b0012 = dict_b0012.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0013') dict_b0013 on p.b0013 = dict_b0013.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0014') dict_b0014 on p.b0014 = dict_b0014.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0015') dict_b0015 on p.b0015 = dict_b0015.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0016') dict_b0016 on p.b0016 = dict_b0016.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0017') dict_b0017 on p.b0017 = dict_b0017.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0018') dict_b0018 on p.b0018 = dict_b0018.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0019') dict_b0019 on p.b0019 = dict_b0019.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b00110') dict_b00110 on p.b00110 = dict_b00110.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b00111') dict_b00111 on p.b00111 = dict_b00111.chave


  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b00112') dict_b00112 on p.b00112 = dict_b00112.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b00113') dict_b00113 on p.b00113 = dict_b00113.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b002') dict_b002 on p.b002 = dict_b002.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0031') dict_b0031 on p.b0031 = dict_b0031.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0032') dict_b0032 on p.b0032 = dict_b0032.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0033') dict_b0033 on p.b0033 = dict_b0033.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0034') dict_b0034 on p.b0034 = dict_b0034.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0035') dict_b0035 on p.b0035 = dict_b0035.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0036') dict_b0036 on p.b0036 = dict_b0036.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0037') dict_b0037 on p.b0037 = dict_b0037.chave
  
  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0041') dict_b0041 on p.b0041 = dict_b0041.chave
  
  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0042') dict_b0042 on p.b0042 = dict_b0042.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0043') dict_b0043 on p.b0043 = dict_b0043.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0044') dict_b0044 on p.b0044 = dict_b0044.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0045') dict_b0045 on p.b0045 = dict_b0045.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0046') dict_b0046 on p.b0046 = dict_b0046.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b005') dict_b005 on p.b005 = dict_b005.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b006') dict_b006 on p.b006 = dict_b006.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b007') dict_b007 on p.b007 = dict_b007.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b008') dict_b008 on p.b008 = dict_b008.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b009a') dict_b009a on p.b009a = dict_b009a.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b009b') dict_b009b on p.b009b = dict_b009b.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b009c') dict_b009c on p.b009c = dict_b009c.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b009d') dict_b009d on p.b009d = dict_b009d.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b009e') dict_b009e on p.b009e = dict_b009e.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b009f') dict_b009f on p.b009f = dict_b009f.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0101') dict_b0101 on p.b0101 = dict_b0101.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0102') dict_b0102 on p.b0102 = dict_b0102.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0103') dict_b0103 on p.b0103 = dict_b0103.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0104') dict_b0104 on p.b0104 = dict_b0104.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0105') dict_b0105 on p.b0105 = dict_b0105.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b0106') dict_b0106 on p.b0106 = dict_b0106.chave

  LEFT JOIN (SELECT nome_coluna,
                    chave,
                    valor
            FROM `tech_challenge_03.dDicionario`
            WHERE nome_coluna = 'b011') dict_b011 on p.b011 = dict_b011.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c001') dict_c001 on p.c001 = dict_c001.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c002') dict_c002 on p.c002 = dict_c002.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c003') dict_c003 on p.c003 = dict_c003.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c004') dict_c004 on p.c004 = dict_c004.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c005') dict_c005 on p.c005 = dict_c005.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c006') dict_c006 on p.c006 = dict_c006.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c007') dict_c007 on p.c007 = dict_c007.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c007a') dict_c007a on p.c007a = dict_c007a.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c007b') dict_c007b on p.c007b = dict_c007b.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c007c') dict_c007c on p.c007c = dict_c007c.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c007d') dict_c007d on p.c007d = dict_c007d.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c007e') dict_c007e on p.c007e = dict_c007e.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c007f') dict_c007f on p.c007f = dict_c007f.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c009a') dict_c009a on p.c009a = dict_c009a.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c010') dict_c010 on p.c010 = dict_c010.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c0101') dict_c0101 on p.c0101 = dict_c0101.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c01011') dict_c01011 on p.c01011 = dict_c01011.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c0102') dict_c0102 on p.c0102 = dict_c0102.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c01021') dict_c01021 on p.c01021 = dict_c01021.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c0103') dict_c0103 on p.c0103 = dict_c0103.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c0104') dict_c0104 on p.c0104 = dict_c0104.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c011a') dict_c011a on p.c011a = dict_c011a.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c011a1') dict_c011a1 on p.c011a1 = dict_c011a1.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c011a11') dict_c011a11 on p.c011a11 = dict_c011a11.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c011a2') dict_c011a2 on p.c011a2 = dict_c011a2.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c011a21') dict_c011a21 on p.c011a21 = dict_c011a21.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c012') dict_c012 on p.c012 = dict_c012.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c013') dict_c013 on p.c013 = dict_c013.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c014') dict_c014 on p.c014 = dict_c014.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c015') dict_c015 on p.c015 = dict_c015.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c016') dict_c016 on p.c016 = dict_c016.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'c017a') dict_c017a on p.c017a = dict_c017a.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'd0011') dict_d0011 on p.d0011 = dict_d0011.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'd0021') dict_d0021 on p.d0021 = dict_d0021.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'd0031') dict_d0031 on p.d0031 = dict_d0031.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'd0041') dict_d0041 on p.d0041 = dict_d0041.chave

  LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'd0051') dict_d0051 on p.d0051 = dict_d0051.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'd0061') dict_d0061 on p.d0061 = dict_d0061.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'd0071') dict_d0071 on p.d0071 = dict_d0071.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'e001') dict_e001 on p.e001 = dict_e001.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'e0021') dict_e0021 on p.e0021 = dict_e0021.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'e0022') dict_e0022 on p.e0022 = dict_e0022.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'e0023') dict_e0023 on p.e0023 = dict_e0023.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'e0024') dict_e0024 on p.e0024 = dict_e0024.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f001') dict_f001 on p.f001 = dict_f001.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f0022') dict_f0022 on p.f0022 = dict_f0022.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f002a1') dict_f002a1 on p.f002a1 = dict_f002a1.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f002a2') dict_f002a2 on p.f002a2 = dict_f002a2.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f002a3') dict_f002a3 on p.f002a3 = dict_f002a3.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f002a4') dict_f002a4 on p.f002a4 = dict_f002a4.chave

LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f002a5') dict_f002a5 on p.f002a5 = dict_f002a5.chave


LEFT JOIN (SELECT nome_coluna,
                  chave,
                  valor
           FROM `tech_challenge_03.dDicionario`
           WHERE nome_coluna = 'f0061') dict_f0061 on p.f0061 = dict_f0061.chave
