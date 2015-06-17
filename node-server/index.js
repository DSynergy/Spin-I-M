const express = require('express');
const app = express();
const http = require('http').Server(app);
const io = require('socket.io')(http);

http.listen(process.env.PORT || 3001, function(){
  console.log('Your server is up and running on Port 3001. Good job!');
});

io.on('connection', function (socket) {

  socket.on('message', function (channel, message) {
    io.sockets.emit('message', message);
  });
});
