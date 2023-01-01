const express = require('express');
const cors = require('cors');
const mysql = require('mysql2');

const dbConnection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "root12345",
    database: "dbproject"
})

dbConnection.connect((err) => {
    if (err) throw err;
    console.log("connected");
})

const app = express();
const port = 5000;

app.use(cors());
app.use(express.json());
// SQL Queries
// -----------------------
app.listen(process.env.PORT || port, () => {
    console.log(`Server up and running at port ${port}`);
})


app.post("/api/login", (req, res) => {
    //res.statusCode = 200;
    // res.status = 200;
    // res.json = {l:"Login Successful"};
    const { username, password } = req.body
    let loginQuery = `Select * from employee where Username = "${username}" and password = "${password}"`
    console.log("Body: ", req.body);
    dbConnection.query(loginQuery, (err, result) => {
        if (err) {
            res.send({
                status: false,
                error: err.errno,
                data: err.code
            });
        };
        // const {First_Name, Username} = result[0]
        if (result[0]) {
            res.send({
                status: true,
                data: result
            });
        }
        else {
            res.send({
                status: false,
                data: "login failed!"
            });
        }
    })
})


app.post("/api/checkBooking", (req, res) => {
    //db say users
    const { booking_ID } = req.body
    let loginQuery = `SELECT Passenger_ID,First_Name,Last_Name,Booking_ID,email,Contact_No,Booking_Date,Seat_No,Coach_No,Price,Train_ID_ FROM passenger,booking WHERE passenger.Booking_ID_ = booking.Booking_ID and booking.Booking_ID = "${booking_ID}"`
    console.log("Body: ", req.body);
    dbConnection.query(loginQuery, (err, result) => {
        if (err) {
            res.send({
                status: false,
                error: err.errno,
                data: err.code
            });
        };
        console.log(result)
        // const {First_Name, Username} = result[0]
        if (result[0]) {
            res.send({
                status: true,
                data: result
            });
        }
        else {
            res.send({
                status: false,
                data: "booking ticket fetch failed!"
            });
        }
    })
})

app.get("/api/path2", (req, res) => {
    // login
})
app.put("/api/bookingDetails", (req, res) => {

    //db say users
    const { First_name,Last_name,Contact_No } = req.body
    let loginQuery = `insert into passenger(First_Name,Last_Name,Contact_No,email)
    values("${booking_ID}","${booking_ID}","${booking_ID}","${booking_ID}","${booking_ID}") `
    console.log("Body: ", req.body);
    dbConnection.query(loginQuery, (err, result) => {
        if (err) {
            res.send({
                status: false,
                error: err.errno,
                data: err.code
            });
        };
        console.log(result)
        // const {First_Name, Username} = result[0]
        if (req.body) {
            res.send({
                status: true,
                data: result
            });
        }
        else {
            res.send({
                status: false,
                data: "data entry failed!"
            });
        }
    })
})
app.delete("/api/path4", (req, res) => {

})

module.exports = app;