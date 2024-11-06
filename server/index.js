const express = require("express");
const app = express();
require("dotenv").config();
const cors = require("cors");

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
  console.log("home");
  res.send("home");
});

app.listen(PORT, () => {
  console.log(`listening to PORT ${PORT}`);
});
