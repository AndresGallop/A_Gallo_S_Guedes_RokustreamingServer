const express = require('express');
const router = express.Router();
const connect = require("../config/sqlConfig");

router.use(express.json());
router.use(express.urlencoded({extended:false}));

router.post('/admin/login', (req, res) => {
    // console.log(req.body.username, req.body.password);
    connect.query(`SELECT user_id, user_admin, user_access, user_picture FROM tbl_user WHERE user_name = "${req.body.username}" AND user_pass = "${req.body.password}"`, (err, row) => {
        if (err) throw err;

        if (row.length) {
            res.status(200).json(row[0]);
        }  else {
            res.status(404).json({failure: true, message: 'Ups! User does not exist or the password is incorrect'});
        }
    });
})

router.post('/admin/signup', (req, res) => {
    // console.log(req.body.username, req.body.password);
    connect.query(
        `INSERT INTO tbl_user ( user_name, user_pass, user_email, user_fname, kids ) VALUES ("${req.body.username}", "${req.body.password}", "${req.body.email}", "${req.body.username}" , "${req.body.kid}")`, (err, row) => {
        if (err) throw err;

        if (row.length) {
            res.status(200).json(row[0]);
        }  else {
            res.status(404).json({failure: true, message: 'Great! A new user has been added'});
        }
    });
})

router.get('/admin/getusers', (req, res) => {
    connect.query('SELECT user_id, user_name, user_admin, user_access, user_picture FROM tbl_user', (err, users) => {
        if (err) throw err;

        res.status(200).json(users);
    })
})

module.exports = router;
