async function listar(req, res) {
  const tarefas = await tarefaService.listarTarefas(req.query);
  res.status(200).json(tarefas);
}

    