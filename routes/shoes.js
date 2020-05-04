/*
 * All routes for Shoes are defined here
 * Since this file is loaded in server.js into api/users,
 *   these routes are mounted onto /users
 * See: https://expressjs.com/en/guide/using-middleware.html#middleware.router
 */
const express = require('express');
const router = express.Router();
const database = require('../db/database');

  router.get("/", (req, res) => {
    database.getShoes()
      .then(data => {
        const shoes = data.rows;
        res.json({ shoes });
      })
      .catch(err => {
        res
          .status(500)
          .json({ error: err.message });
      });
  });
module.exports = router;
