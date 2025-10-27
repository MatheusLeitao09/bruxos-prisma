import { Router } from "express";
import * as BruxoController from './../controllers/bruxoController.js'

const router = Router();

// Rota GetAll em /
router.get ("/", BruxoController.listarTodos);
// Rota GetById
router.get("/:id", BruxoController.listarUm)
router.post("/", BruxoController.criar);
router.delete("/:id", BruxoController.deletar);
router.put("/:id", BruxoController.atualizar);

export default router;