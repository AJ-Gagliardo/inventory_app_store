const express = require("express");
const app = express();
const path = require("path");
require("dotenv").config();
const cors = require("cors");
// const pool = require("./db");

const PORT = process.env.PORT || 3000;

app.use(express.static(path.join(__dirname, "../client/build")));

// app.get("*", (req, res) => {
//   res.sendFile(path.join(__dirname, "../client/build", "index.html"));
// });

app.get("/", (req, res) => {
  console.log("home");
  res.send("home");
});

app.listen(PORT, () => {
  console.log(`listening to PORT ${PORT}`);
});
