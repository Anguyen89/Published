
"use strict";


var React = require('react');
var ReactDOM = require('react-dom');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var IndexRoute = ReactRouter.IndexRoute;
var hashHistory = ReactRouter.hashHistory;


//Components
var App = require('./app.jsx');




var routes = (
  <Router history={hashHistory}>
    <Route path="/" component={App}></Route>
  </Router>
);


document.addEventListener("DOMContentLoaded", function(){
  ReactDOM.render(routes, document.getElementById('root'));
});
