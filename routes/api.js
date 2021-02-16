const express = require('express');
// express router handles incoming requests and deirects them where they need to go
// like a traffic cop
const router = express.Router();

//think of route like PHP functions

router.get("/", (req, res) => {

    // res.json = echo json_encode(...) in PHP
    res.json({message: "you hit the api route"});
});

// this is /api/users route handler
router.get("/users", (req, res) => {
    //run a SQL query here
    // res.json(query result here)
    // echo a result --> just like PHP
    res.json({message: "allusers route"});
})

router.get("/movies", (req, res) => {
    //run a SQL query here to get all the movies from my DB
    // res.json(query result here)
    // echo a result --> just like PHP
    res.json({message: "all movies route"});
})

//dynamic route handler that can accept a parameter
//this is equivalent to $_GET["id"] (req.params.id)
//you're passing the id via the route: /api/movies/1 , /api/movies/20, etc
router.get("/movies/:id", (req, res) => {
    //run a SQL query here to get all the movies from my DB
    // res.json(query result here)
    // echo a result --> just like PHP
    res.json({message: "get one movie route", movie: req.params.id});
})

module.exports = router;