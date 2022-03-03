USE [DBPRDIDAV2] 
GO

SELECT distinct tip.nome, 
dbo.TBIndicadorEspecificoQuestionario.NOTituloIndicadorEspecificoQuestionario,
taq.NOAtributoQuestionario
  ,cast(year(tqip.DTInicioVigencia) as varchar(4))+'.'+cast(month(tqip.DTInicioVigencia) as varchar(2)) as AnoMes
  ,gestao
FROM         
dbo.TBIndicadorEspecificoQuestionario with (nolock)
inner join TBAtributoQuestionario taq on taq.IDIndicadorEspecificoQuestionario = TBIndicadorEspecificoQuestionario.IDIndicadorEspecificoQuestionario
inner join TBIndicadorGlobalQuestionario tigq on tigq.IDIndicadorGlobalQuestionario = TBIndicadorEspecificoQuestionario.IDIndicadorGlobalQuestionario
inner join TBCategoriaQuestionario tcq on tcq.IDCategoriaQuestionario = tigq.IDCategoriaQuestionario
inner join TBQuestionario tq on tq.IDQuestionario = tcq.IDQuestionario
inner join  TBQuestionarioInstalacaoPortuaria tqip on tqip.IDQuestionario = tq.IDQuestionario
inner join DBPRDCORPORATIVO..TBInstalacoesPortuariasSIGTAQ tip on tip.cdtrigrama collate SQL_Latin1_General_CP1_CI_AS = tqip.CDInstalacaoPortuaria collate SQL_Latin1_General_CP1_CI_AS
where gestao='sep'
order by nome,AnoMes 
 
