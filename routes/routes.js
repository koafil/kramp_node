const { response } = require('express');
const pool = require('../data/config');

const router = app => {
  app.get('/',(req,res)=>{
    res.send({
      message: 'Node.js and Express Kramp REST API 2.0'
    });
  });

  app.get('/all',(req,res)=>{
    pool.query('SELECT * FROM tovars_upd', (error01,result01) => {
      if (error01) throw error01;
      console.log(`\\all numRows = ${result01.length} `);
      res.send({total:result01.length, rowData: result01});
    });
  });
  app.get('/all_liter',(req,res)=>{
    pool.query('SELECT * FROM tovars_liter', (error001,result001) => {
      if (error001) throw error001;
      console.log(`\\all_liter numRows = ${result001.length} `);
      res.send({total:result001.length, rowData: result001});
    });
  });

  app.get('/scans',(req,res)=>{
    // pool.query('SELECT * FROM log_scan ORDER BY id DESC LIMIT 10', (error02,result02) => {
    pool.query('SELECT * FROM log_scan ORDER BY id DESC', (error02,result02) => {
      if (error02) throw error02;
      console.log(`\\scans lastitem = ${result02[0].id} ${result02[0].date} `);
      res.send({total:result02.length, rowData: result02});
    });
  });
  app.get('/log/:col',(req,res)=>{
    const col = req.params.col;
    let tbl = "";
    switch(col){
      case 'link': tbl='log_tovars_link'; break;
      case 'name': tbl='log_tovars_name'; break;
      case 'price': tbl='log_tovars_price'; break;
      case 'price_base': tbl='log_tovars_price_base'; break;
      case 'sale': tbl='log_tovars_sale'; break;
      case 'site': tbl='log_tovars_site'; break;
      case 'count': tbl='log_tovars_tovar_count'; break;
      case 'vendor_code': tbl='log_tovars_vendor_code'; break;
      case 'price_liter': tbl='log_tovars_price_liter'; break;
      case 'price_bir': tbl='log_tovars_price_bir'; break;
    }
    if(tbl == ""){
      res.send({total:0, rowData:[]});
      return;
    }
    let strRequest = `SELECT *, lead( val ) OVER( ORDER BY date DESC) AS val_old FROM ${tbl} AS t`;
    let lstStrConditions = [];
    let id_kramp = req.query.id_kramp || "";
    if(id_kramp && parseInt(id_kramp) ) 
      if(tbl=='log_tovars_price_liter')
        lstStrConditions.push(`id_liter = '${parseInt(id_kramp)}'`);
      else if(tbl=='log_tovars_price_bir')
        lstStrConditions.push(`id_tovar = '${parseInt(id_kramp)}'`);
      else
        lstStrConditions.push(`id_kramp = '${parseInt(id_kramp)}'`);
    let id_scan = req.query.id_scan || "";
    if(id_scan && parseInt(id_scan) ) lstStrConditions.push(`id_scan = '${parseInt(id_scan)}'`);
    if(lstStrConditions.length) strRequest = strRequest+` WHERE ${lstStrConditions.join(" AND ")}`;
    strRequest = strRequest+ ` ORDER BY id DESC`;
    console.log(strRequest);
    pool.query( strRequest, (error03,result03) => {
      if(error03) throw error03;
      console.log(`\\log\\${col} numRows = ${result03.length}  id_kramp = ${id_kramp}`);
      res.send({total:result03.length, rowData: result03});
    });
  });
  app.get('/logall/:id_kramp',(req,res)=>{
    const id_kramp = req.params.id_kramp || "";
    if(!(id_kramp && parseInt(id_kramp)) ){
      res.send({total:0, rowData:[]});
      return;
    }
    // let strRequest1 = `SELECT id_scan, val FROM log_tovars_tovar_count WHERE id_kramp='${parseInt(id_kramp)}'`;
    let strRequest1 = `SELECT id_scan, val, log_scan.date FROM log_tovars_name  JOIN log_scan ON log_scan.id = id_scan WHERE id_kramp='${parseInt(id_kramp)}'`;
    pool.query( strRequest1, (error04,result04) => {
      if(error04) throw error04;
      console.log(`\\logall\\${id_kramp} numRows = ${result04.length}  id_kramp = ${id_kramp}`);
      res.send({total:result04.length, rowData: result04});
    });
    
  });


  /*  app.get('/articul',(req,res)=>{
    let numRows;
    pool.query('SELECT count(articul) as numRows FROM tovars', (error01,result01) => {
      if (error01) throw error01;
      numRows = result01[0].numRows;
      console.log(`\\articul numRows = ${numRows} `);
    });
    pool.query('SELECT articul FROM tovars', (error02,result02) => {
      if (error02) throw error02;
      let articulList = result02.map(item=>{
        return item.articul;
      });
      res.send({total: numRows, rowData: articulList});
    });
  });

  app.get('/tovars',(req,res)=>{
    let findKey = req.query.s || "";
    let findKeyArr = req.query.ss || "";
    let numPerPage = parseInt(req.query.npp,10) || 5;
    let page = parseInt(req.query.page,10) || 1;
    let skip = (page - 1) * numPerPage;
    let numRows;
    let numPages;
//    console.log(JSON.parse(findKeyArr));
//    console.log(findKeyArr);
    if (!findKey && !findKeyArr){
      pool.query('SELECT count(*) as numRows FROM tovars', (error01,result01) => {
        if(error01) throw error01;
        numRows = result01[0].numRows;
        numPages = Math.ceil(numRows/numPerPage);

        let limit = skip + ',' + numPerPage;
        console.log(`numRows = ${numRows} numPages = ${numPages}`);

        pool.query('SELECT * FROM tovars LIMIT '+limit, (error02,result02) => {
          if(error02) throw error02;
          res.send({total: numRows, rowData: result02});
        });
      });
    } else if(findKey){
      pool.query(`SELECT count(*) as numRows FROM tovars WHERE articul LIKE '%${findKey}%'`, (error01,result01) => {
        if(error01) throw error01;
        numRows = result01[0].numRows;
        numPages = Math.ceil(numRows/numPerPage);

        let limit = skip + ',' + numPerPage;
        console.log(`numRows = ${numRows} numPages = ${numPages} findKey = ${findKey}`);

        pool.query(`SELECT * FROM tovars WHERE articul LIKE '%${findKey}%' LIMIT ${limit}`, (error02,result02) => {
          if(error02) throw error02;
          res.send({findKey, total: numRows, rowData: result02});
      });
      });
    } else {
      let findKeyArrParsed = JSON.parse(findKeyArr);
      console.log(findKeyArrParsed);
      console.log(`count = ${findKeyArrParsed.length}`);
      let strLike= "";
      if(findKeyArrParsed.length){
        strLike=`WHERE articul LIKE '%${findKeyArrParsed[0]}%'`;
        findKeyArrParsed.forEach((v,i,a) => {
          if(i){
            strLike=`${strLike} OR articul LIKE '%${v}%'`
          }
        });
      }
      console.log(strLike);
      pool.query(`SELECT count(*) as numRows FROM tovars ${strLike}`, (error01,result01) => {
        if(error01) throw error01;
        numRows = result01[0].numRows;
        numPages = Math.ceil(numRows/numPerPage);

        let limit = skip + ',' + numPerPage;
        console.log(`numRows = ${numRows} numPages = ${numPages} findKey = ${findKey}`);

        pool.query(`SELECT * FROM tovars ${strLike} LIMIT ${limit}`, (error02,result02) => {
          if(error02) throw error02;
          res.send({findKey, total: numRows, rowData: result02});
        });
      });
    }
  });

  app.get('/tovars/:id',(req,res)=>{
    const id = req.params.id;
    pool.query('SELECT * FROM tovars WHERE id = ?',id, (error,result) => {
      if(error) throw error;
      res.send(result);
    });
  });
*/
};

module.exports = router;