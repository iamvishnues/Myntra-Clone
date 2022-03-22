const express = require("express");
const router = express.Router();
const User = require("../model/user.model");

router.route("/").get((req, res) => {
  res.json("Login");
});

router.route("/").post((req, res) => {
  console.log("wrhbk");

  User.findOne(
    {
      mobileNo: req.body.mobileNo,
    },
    (error, result) => {
      if (error) {
        return res.status(403).json("Error Occured");
      } else {
        if (result != null) {
          console.log("login");
        } else {
          console.log("register");
        }
        return res.status(200).json("success");
      }
    }
  );
});

module.exports = router;
