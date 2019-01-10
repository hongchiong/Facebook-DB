const pg = require('pg');
const fs = require('fs');

const configs = {
    user: 'postgres',
    host: '127.0.0.1',
    database: 'fb_db',
    port: 5432,
    password: 'pg'
};

const client = new pg.Client(configs);

let queryDoneCallback = (err, result) => {
    if (err) {
      console.log("query error", err.message);
    } else {
      console.log(result.rows);
    }
};

let clientConnectionCallback = (err, textArr) => {
  if( err ){
    console.log( "error", err.message );
  } else {
    for (i in textArr) {
        client.query(textArr[i], queryDoneCallback);
    }
  }
};

let textArr = fs.readFileSync('queries.txt').toString().split("\n");

client.connect(clientConnectionCallback(null,textArr));