const app = require('express')();

app.get('/', (_, res) => {
  res.json({ message: 'Hello, mundo' });
});

module.exports = app;
