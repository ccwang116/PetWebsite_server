const express = require('express'); 
const db = require(__dirname + "/db-connect");
const router = express.Router(); 
const upload = require(__dirname + "/upload-module")

//顯示折價券資料
router.get('/show',(req,res)=>{
    db.query(`SELECT * FROM category  
    ORDER BY category.categoryId  ASC`)
        .then(([rows])=>{
            res.json(rows);
        })
})





module.exports = router;
