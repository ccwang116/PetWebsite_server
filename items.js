const express = require('express'); 
const db = require(__dirname + "/db-connect");
const router = express.Router(); 
const upload = require(__dirname + "/upload-module")

//顯示商品
router.get('/show/:categoryId?/:page?/:orderby?',(req,res)=>{
    let categoryId = req.params.categoryId || ''

    const page = parseInt(req.params.page) || 1
    const showFirst = page * 12 - 12 
    const showLast = page * 12
    let orderby=" " 
    const setOrderby = req.params.orderby || ''
    switch(setOrderby) { 
        case 'priceASC': 
            orderby="ORDER BY items.itemPrice ASC" ;
            break; 
        case 'priceDESC': 
            orderby="ORDER BY items.itemPrice DESC" ;
            break; 
        case 'creactedDESC': 
            orderby="ORDER BY items.created_at DESC";
            break; 
        default: 
            orderby=" " ;
            break;
    } 
    const sql=`SELECT * FROM items WHERE itemCategoryId ='${categoryId}' ${orderby} LIMIT ${showFirst},${showLast} `
    db.query(sql)
        .then(([rows])=>{
            res.json(rows);
        })
})
//顯示商品-筆數
router.get('/itempage/:categoryId?',(req,res)=>{
    const categoryId = req.params.categoryId || ''
    // res.send('ok')
    db.query(`SELECT * FROM items WHERE itemCategoryId ='${categoryId}'  `)
        .then(([rows])=>{
            const finalpage = Math.ceil(rows.length / 12) 
            const arr =[]
            for (let i = 1; i <= finalpage; i++) {
                arr.push(i)
            }
            res.json(arr)
        })
})

module.exports = router;
