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

let idsGenerator = {

    pass_ID: 44,
    book_ID: 44,
    seat: 44,

}
function between(min, max) {
    return Math.floor(
        Math.random() * (max - min) + min
    )
}
datevar = between(1, 31)
coachvar = between(1, 3)
secondcoachvar = between(1, 3)
thirdcoachvar = between(1, 3)
fourthcoachvar = between(1, 3)

let pathRoute = "0";

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
    const { PassengersID } = req.body
    let loginQuery = `SELECT Passenger_ID,First_Name,Last_Name,Booking_ID,email,Contact_No,Booking_Date,Seat_No,Coach_No,Price,Train_ID_ FROM passenger,booking WHERE passenger.Passenger_ID = booking.Passenger_ID_ and passenger.Passenger_ID = "${PassengersID}"`
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
app.post("/api/bookingDetails", (req, res) => {

    //db say users
    const passenger_ID = idsGenerator['pass_ID']
    const Booking_ID = idsGenerator['book_ID']
    const seat_No = idsGenerator['seat']
    idsGenerator['pass_ID']++
    idsGenerator['book_ID']++
    idsGenerator['seat']++
    const { First_Name, Last_Name, Contact_No, email } = req.body
    if(pathRoute==1 || pathRoute==3 || pathRoute==5 || pathRoute==7)
    {
        let insertPassenger = ` insert into passenger(Passenger_ID,First_Name,Last_Name,Contact_No,email)
    values("${passenger_ID}","${First_Name}","${Last_Name}",${Contact_No},"${email}")`
    let insertBooking = `insert into booking(Booking_ID, Booking_Date, Seat_No, Coach_No, Price, Train_ID_, Passenger_ID_)
    values("B0${Booking_ID}","2023-01-${datevar}",${seat_No},"C${coachvar}","${secondcoachvar}000","T00${coachvar}","${passenger_ID}");`
    console.log("Body: ", req.body);
    dbConnection.query(insertPassenger, (err, result) => {
        if (err) {
            res.send({
                status: false,
                error: err.errno,
                data: err.code
            });
        };
        dbConnection.query(insertBooking, (err, result) => {
            if (err) {
                res.send({
                    status: false,
                    error: err.errno,
                    data: err.code
                });
            };
        });
        console.log(result)
        // const {First_Name, Username} = result[0]
        if (req.body) {
            res.send({
                status: true,
                data: result,
                passenger: passenger_ID,
            });
        }
        else {
            res.send({
                status: false,
                data: "data entry failed!"
            });
        }
    })
    }
    else if(pathRoute==2 || pathRoute==4 || pathRoute==9)
    {
        let insertPassenger = ` insert into passenger(Passenger_ID,First_Name,Last_Name,Contact_No,email)
    values("${passenger_ID}","${First_Name}","${Last_Name}",${Contact_No},"${email}")`
    let insertBooking = `insert into booking(Booking_ID, Booking_Date, Seat_No, Coach_No, Price, Train_ID_, Passenger_ID_)
    values("B0${Booking_ID}","2023-01-${datevar}",${seat_No},"C${coachvar}","${coachvar}000","T00${coachvar},T00${secondcoachvar}","${passenger_ID}");`
    console.log("Body: ", req.body);
    dbConnection.query(insertPassenger, (err, result) => {
        if (err) {
            res.send({
                status: false,
                error: err.errno,
                data: err.code
            });
        };
        dbConnection.query(insertBooking, (err, result) => {
            if (err) {
                res.send({
                    status: false,
                    error: err.errno,
                    data: err.code
                });
            };
        });
        console.log(result)
        // const {First_Name, Username} = result[0]
        if (req.body) {
            res.send({
                status: true,
                data: result,
                passenger: passenger_ID,
            });
        }
        else {
            res.send({
                status: false,
                data: "data entry failed!"
            });
        }
    })
    }
    else if(pathRoute==6)
    {
        let insertPassenger = ` insert into passenger(Passenger_ID,First_Name,Last_Name,Contact_No,email)
    values("${passenger_ID}","${First_Name}","${Last_Name}",${Contact_No},"${email}")`
    let insertBooking = `insert into booking(Booking_ID, Booking_Date, Seat_No, Coach_No, Price, Train_ID_, Passenger_ID_)
    values("B0${Booking_ID}","2023-01-${datevar}",${seat_No},"C${coachvar}","${coachvar}000","T00${coachvar},T00${secondcoachvar},T00${thirdcoachvar}","${passenger_ID}");`
    console.log("Body: ", req.body);
    dbConnection.query(insertPassenger, (err, result) => {
        if (err) {
            res.send({
                status: false,
                error: err.errno,
                data: err.code
            });
        };
        dbConnection.query(insertBooking, (err, result) => {
            if (err) {
                res.send({
                    status: false,
                    error: err.errno,
                    data: err.code
                });
            };
        });
        console.log(result)
        // const {First_Name, Username} = result[0]
        if (req.body) {
            res.send({
                status: true,
                data: result,
                passenger: passenger_ID,
            });
        }
        else {
            res.send({
                status: false,
                data: "data entry failed!"
            });
        }
    })
    }
    else if(pathRoute==8)
    {
        let insertPassenger = ` insert into passenger(Passenger_ID,First_Name,Last_Name,Contact_No,email)
    values("${passenger_ID}","${First_Name}","${Last_Name}",${Contact_No},"${email}")`
    let insertBooking = `insert into booking(Booking_ID, Booking_Date, Seat_No, Coach_No, Price, Train_ID_, Passenger_ID_)
    values("B0${Booking_ID}","2023-01-${datevar}",${seat_No},"C${coachvar}","${coachvar}000","T00${coachvar},T00${secondcoachvar},T00${thirdcoachvar},T00${fourthcoachvar}","${passenger_ID}");`
    console.log("Body: ", req.body);
    dbConnection.query(insertPassenger, (err, result) => {
        if (err) {
            res.send({
                status: false,
                error: err.errno,
                data: err.code
            });
        };
        dbConnection.query(insertBooking, (err, result) => {
            if (err) {
                res.send({
                    status: false,
                    error: err.errno,
                    data: err.code
                });
            };
        });
        console.log(result)
        // const {First_Name, Username} = result[0]
        if (req.body) {
            res.send({
                status: true,
                data: result,
                passenger: passenger_ID,
            });
        }
        else {
            res.send({
                status: false,
                data: "data entry failed!"
            });
        }
    })
    }
    
})
app.get("/api/T001", (req, res) => {
    //res.statusCode = 200;
    // res.status = 200;
    // res.json = {l:"Login Successful"};
    //    const { username, password } = req.body
    let T001Query = `SELECT track_ID, Source_Station,destination_station,Time_in,Time_Out,Sequence_Number from tracks, train, train_schedule where tracks.Track_ID=train_schedule.Track_ID_ and train.Train_ID="T001";`
    //  console.log("Body: ", req.body);
    dbConnection.query(T001Query, (err, result) => {
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

app.get("/api/T002", (req, res) => {
    //res.statusCode = 200;
    // res.status = 200;
    // res.json = {l:"Login Successful"};
    //    const { username, password } = req.body
    let T002Query = `SELECT track_ID, Source_Station,destination_station,Time_in,Time_Out,Sequence_Number from tracks, train, train_schedule where tracks.Track_ID=train_schedule.Track_ID_ and train.Train_ID="T002";`
    //  console.log("Body: ", req.body);
    dbConnection.query(T002Query, (err, result) => {
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

app.get("/api/T003", (req, res) => {
    //res.statusCode = 200;
    // res.status = 200;
    // res.json = {l:"Login Successful"};
    //    const { username, password } = req.body
    let T003Query = `SELECT track_ID, Source_Station,destination_station,Time_in,Time_Out,Sequence_Number from tracks, train, train_schedule where tracks.Track_ID=train_schedule.Track_ID_ and train.Train_ID="T003";`
    //  console.log("Body: ", req.body);
    dbConnection.query(T003Query, (err, result) => {
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

app.get("/api/getPath/:id", (req, res) => {
    console.log(req.params);
    const path = req.params.id;
    pathRoute = req.params['id'];
    res.send({
        status: true,
    });
    console.log(pathRoute)
})



module.exports = app;