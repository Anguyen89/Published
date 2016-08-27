
"use strict";


var React = require('react');
var ReactDOM = require('react-dom');
var ReactRouter = require('react-router');
var Router = ReactRouter.Router;
var Route = ReactRouter.Route;
var IndexRoute = ReactRouter.IndexRoute;
var hashHistory = ReactRouter.hashHistory;
var Modal = require("react-modal");

window.SessionStore = require('./stores/session_store');


//Components
var App = require('./app.jsx');






var routes = (
  <Router history={hashHistory}>
    <Route path="/" component={App}></Route>
  </Router>
);


document.addEventListener("DOMContentLoaded", function() {
  Modal.setAppElement(document.body);
  var root = document.getElementById("root");
  ReactDOM.render(routes, root);
});
