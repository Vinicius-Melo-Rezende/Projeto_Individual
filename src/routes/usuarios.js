var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.autenticar(req, res);
});

router.post("/cadastrarGrafico", function (req, res) {
    usuarioController.cadastrarGrafico(req, res);
});

router.post("/obterGrafico", function (req, res) {
    usuarioController.obterGrafico(req, res);
});

router.post("/obterGrafico2", function (req, res) {
    usuarioController.obterGrafico2(req, res);
});

module.exports = router;