USE DBPRDIDA
GO

SELECT CDTrigrama, ID, DSAtributoQuestionario, NOAtributoQuestionario, DSIndicadorEspecificoQuestionario, DSIndicadorGeralQuestionario, DSCategoriaQuestionario, NOQUESTIONARIO FROM TBResposta
INNER JOIN TBAtributoQuestionario
ON TBAtributoQuestionario.IDAtributoQuestionario = TBResposta.IDAtributoQuestionario
INNER JOIN TBIndicadorEspecificoQuestionario
ON TBIndicadorEspecificoQuestionario.IDIndicadorEspecificoQuestionario = TBAtributoQuestionario.IDIndicadorEspecificoQuestionario
INNER JOIN TBIndicadorGeralQuestionario
ON TBIndicadorGeralQuestionario.IDIndicadorGeralQuestionario = TBIndicadorEspecificoQuestionario.IDIndicadorGeralQuestionario
INNER JOIN TBCategoriaQuestionario
ON TBCategoriaQuestionario.IDCategoriaQuestionario = TBIndicadorGeralQuestionario.IDCategoriaQuestionario
INNER JOIN TBQuestionario
ON TBQuestionario.IDQuestionario = TBCategoriaQuestionario.IDQuestionario