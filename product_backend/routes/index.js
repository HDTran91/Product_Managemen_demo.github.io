var express = require('express');
var router = express.Router();

const { Pool } = require('pg')

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'Sanpham',
  password: 'Trinh0103',
  port: 5432,
})



/* GET home page. */
router.get('/', function (req, res, next) { });

//api get data from postgresql
router.get('/getData01', function (req, res, next) {
  //get data
  pool.query('SELECT * FROM product_info', (err, response) => {
    if (err) {
      console.log(err)
    } else {

      res.send(response.rows);
    }

  })
});

router.get('/addProduct', function (req, res, next) {
  res.render('addProduct', {})
});


router.post('/addProduct', function (req, res, next) {
  var product_name = req.body.product_name,
    product_prize = req.body.product_prize,
    image = req.body.image;
  pool.query("INSERT INTO product_info (product_name,product_prize,image) VALUES ($1,$2,$3)",
    [product_name, product_prize, image], (err, response) => {
      if (err) {
        res.send(err);
        res.send(0);

      }
      else {
        res.send(1);
      }
    })
});

module.exports = router;