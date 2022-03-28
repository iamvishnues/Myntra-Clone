const express = require("express");
const router = express.Router();
const User = require("../model/user.model");
const jwt = require("jsonwebtoken");

require("dotenv").config();

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
          sendToken(req.body.mobileNo, "logged in sucesfuly", res);
        } else {
          console.log("register");
          const user = new User({
            mobileNo: req.body.mobileNo,
          });
          user
            .save()
            .then(() => {
              sendToken(req.body.mobileNo, "Registered sucessfuly", res);
            })
            .catch((e) => {
              console.log(e);
            });
        }
        // return res.status(200).json("success");
      }
    }
  );
});

const sendToken = (mobileNo, msg, res) => {
  let token = jwt.sign({ mobileNo: mobileNo }, process.env.signKey);
  return res.json({ token: token, message: msg });
};

module.exports = router;
