SELECT IDResposta, NRPeso, NOAtributoQuestionario
FROM TBRespostaStatusMudanca tbra
INNER JOIN TBAtributoQuestionario tbaq on tbra.IDAtributoQuestionario = tbaq.IDAtributoQuestionario
INNER JOIN TBIndicadorEspecificoQuestionario tbieq on tbaq.IDIndicadorEspecificoQuestionario = tbieq.IDIndicadorEspecificoQuestionario
INNER JOIN TBIndicadorGlobalQuestionario tbigq on tbieq.IDIndicadorGlobalQuestionario = tbigq.IDIndicadorGlobalQuestionario
INNER JOIN TBCategoriaQuestionario tbcq on tbigq.IDCategoriaQuestionario = tbcq.IDCategoriaQuestionario
INNER JOIN TBQuestionario tbc on tbcq.IDQuestionario = tbc.IDQuestionario
INNER JOIN TBAvaliacao tba on tbc.IDAvaliacao = tba.IDAvaliacao
LEFT JOIN VWPorto vwp on tbra.CDInstalacaoPortuaria = vwp.CDTrigrama
WHERE IDTipoAtributo = 0 AND NOT isnumeric(CDInstalacaoPortuaria)=1
