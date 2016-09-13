
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
window.ImageStore = require('./stores/image_store');
window.ImageActions = require('./actions/image_actions');

//Components
var App = require('./components/app.jsx');
var Home = require('./components/home.jsx');
var ImageShowContainer = require('./components/image/image_show_container.jsx');
var EditImage = require('./components/image/edit_image');
var ProfileFeed = require('./components/profile/profile_feed');






var routes = (
  <Router history={hashHistory}>
    <Route path="/" component={App}>
      <IndexRoute component={Home}/>
      <Route path="image/:id" component={ImageShowContainer}/>
      <Route path="edit/:id" component={EditImage}/>
      <Route path="profile/:id" component={ProfileFeed}/>
    </Route>

  </Router>
);


document.addEventListener("DOMContentLoaded", function() {
  Modal.setAppElement(document.body);
  var root = document.getElementById("root");
  ReactDOM.render(routes, root);
});
