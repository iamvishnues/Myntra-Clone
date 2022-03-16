const express=require("express");
const port=process.env||5000;
const app=express();

app.route("/").get((req,res)=>{
    res.json("Server is up")
})

app.listen(port,"0.0.0.0",()=>{
    console.log("Server Running",port);
})