#!/usr/bin/env node

const fs = require('fs');
const { upload } = require('wetransfert');

// USAGE : node wetransfertupload.js debug sender receiver filepath message lang

let debug = process.argv[2]; //debug true/false
let sender = process.argv[3]; //email of the sender
let receivers = process.argv[4]; //email of the receiver
let filepath = process.argv[5]; //filepath where files to send are
let message = process.argv[6]; //body of the mail
let lang = process.argv[7]; //langage of the mail
let tabReceivers;

// testing parameters
if(debug == null || sender == null || receivers == null || filepath == null || lang == null) {
  console.log('ERROR : One or more parameters are invalid');
  return 1;
}

receivers = receivers.replace(/ /g, ""); //trim
tabReceivers = receivers.split(','); //split

console.log(tabReceivers);

if(debug == 'yes') {
    console.log('******* WETRANSFER - INPUT PARAMETERS *******');
    console.log('sender = ' +  sender);
    console.log('receivers = ' + receivers);
    console.log('filepath = ' + filepath);
    console.log('message = ' + message);
    console.log('lang = ' + lang);
}

// exploring filepath to get all files
var allfiles = [];

fs.readdir(filepath, function (err, files) { if (err) throw err;
  files.forEach( function (file) {
    allfiles.push(`${filepath}/${file}`);
  });

  if( allfiles.length == 0 ) //if they are no files
    return 1; //return an error on the step

  const myUpload = upload(`${sender}`, tabReceivers, allfiles, `${message}`, `${lang}`)
        .on('progress', function(progress){
          if(debug == 'yes')
            console.log('PROGRESS', progress);
        }) 
        .on('end', function(end){
          console.log('END', end); //end.shortened_url
          return 0;
        })
        .on('error', function(error) {
          console.error('ERROR', error);
        })

});