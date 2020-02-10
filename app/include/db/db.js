
var mysql = require('mysql');

//Credentials to access your database
var connection = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'test',
  database:'library'
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


function dbQuery(q)
{
  connection.query(q,function(err,rows,fields){
    if(err){
      console.log("Query Failed!! Error");
      console.log(err);
      return;
    }

    console.log('Query Successfull');
  });
}


function closeDb()
{
  connection.end(function(){
    //connection closed
    console.log('Connection Closed');
  })
}
