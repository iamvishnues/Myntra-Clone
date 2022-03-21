const express = require("express");
const router = express.Router();

router.route("/").get((req, res) => {
  res.json("Login");
});

router.route("/login").post((req, res) => {
  console.log(req.body);
  res.json("Login post");
});

module.exports = router;
