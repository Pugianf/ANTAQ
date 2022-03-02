USE DBPRDIDAV2
GO

SELECT CDInstalacaoPortuaria, IDTipoAtributo, NOAtributoQuestionario, NRPeso, NRIndicadorEspecificoQuestionario, NRCategoriaQuestionario, NRIndicadorGlobalQuestionario, NOCategoriaQuestionario, NOAvaliacao FROM TBResposta
INNER JOIN TBAtributoQuestionario
ON TBAtributoQuestionario.IDAtributoQuestionario = TBResposta.IDAtributoQuestionario
INNER JOIN TBIndicadorEspecificoQuestionario
ON TBIndicadorEspecificoQuestionario.IDIndicadorEspecificoQuestionario = TBAtributoQuestionario.IDIndicadorEspecificoQuestionario
INNER JOIN TBIndicadorGlobalQuestionario
ON TBIndicadorGlobalQuestionario.IDIndicadorGlobalQuestionario = TBIndicadorEspecificoQuestionario.IDIndicadorGlobalQuestionario
INNER JOIN TBCategoriaQuestionario
ON TBCategoriaQuestionario.IDCategoriaQuestionario = TBIndicadorGlobalQuestionario.IDCategoriaQuestionario
INNER JOIN TBQuestionario
ON TBQuestionario.IDQuestionario = TBCategoriaQuestionario.IDQuestionario
INNER JOIN TBAvaliacao
ON TBAvaliacao.IDAvaliacao = TBQuestionario.IDAvaliacao