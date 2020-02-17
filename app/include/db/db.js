
var mysql = require('mysql');

//Credentials to access your database
var connection = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'test',
  database:'library',
  dateStrings:true
});
function connectDb()
{

  connection.connect(function(err){
    //in case of error
    if(err){
      console.log(err.code);
      console.log(err.fatal);
    }
    console.log('Connected to MySQL Database')
  });


}


function dbQuery(q,flg)
{
  connection.query(q,function(err,rows,fields){
    if(err){
      console.log("Query Failed!! Error");
      console.log(err);
      return 0;
    }

    console.log('Query Successfull');
    if(flg) alert('Successfull');
    return 1;
  });
}


function selectQry(q,callback)
{
  console.log(q);
  connection.query(q,function(err,rows,fields){
    if(err){
      console.log("Query Failed!!");
      console.log(err);
      return;
    }

    callback(rows);
    console.log('Query Successfully executed');
  });
}


function closeDb()
{
  connection.end(function(){
    //connection closed
    console.log('Connection Closed');
  })
}
