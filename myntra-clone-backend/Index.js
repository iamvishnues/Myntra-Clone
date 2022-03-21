const express = require("express");
const mongoose = require("mongoose");

const port = process.env.port || 5000;
const app = express();

require("dotenv").config();

mongoose.connect(
  `mongodb+srv://immortal:${process.env.clusterPassword}@cluster0.n85h6.mongodb.net/MyntraDB?retryWrites=true&w=majority`
);

const connection = mongoose.connection;
connection.once("open", () => {
  console.log("DB Connected");
});

app.route("/").get((req, res) => {
  res.json("Server is up");
});

app.listen(port, () => {
  console.log("Server Running", port);
});
