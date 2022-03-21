SELECT IDResposta, NRPeso, NOAtributoQuestionario
FROM TBRespostaStatusMudanca tbra
INNER JOIN TBAtributoQuestionario tbaq on tbra.IDAtributoQuestionario = tbaq.IDAtributoQuestionario
INNER JOIN TBIndicadorEspecificoQuestionario tbieq on tbaq.IDIndicadorEspecificoQuestionario = tbieq.IDIndicadorEspecificoQuestionario
INNER JOIN TBIndicadorGlobalQuestionario tbigq on tbieq.IDIndicadorGlobalQuestionario = tbigq.IDIndicadorGlobalQuestionario
INNER JOIN TBCategoriaQuestionario tbcq on tbigq.IDCategoriaQuestionario = tbcq.IDCategoriaQuestionario
INNER JOIN TBQuestionario tbc on tbcq.IDQuestionario = tbc.IDQuestionario
INNER JOIN TBAvaliacao tba on tbc.IDAvaliacao = tba.IDAvaliacao
LEFT JOIN VWTerminal vwt on tbra.CDInstalacaoPortuaria = vwt.IDTerminal
WHERE IDTipoAtributo = 0 AND isnumeric(CDInstalacaoPortuaria)=1