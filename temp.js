var mysql = require('mysql2');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "admin",
  database:"sakila"
});

sql = 'SELECT name FROM City where district = "Kabol"'

con.connect(function(err) {
    con.connect(function(err) {
        if (err) throw err;
        console.log("Connected!");
        con.query(sql,  (err, result) =>{
          if (err) throw err;
          console.log("Result: " + JSON.stringify(result));
        });
      });
})

