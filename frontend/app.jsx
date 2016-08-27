var React = require('react');
var NavBar = require('./navbar');
var ImageCoursel = require('./components/image/image_coursel');
// var Upload = require("./components/upload");


var App = React.createClass({

  render(){
    return (
      <div>
        <header className="header-nav">
          <NavBar/>
        </header>
        {this.props.children}
      </div>
    )
  }

});

module.exports = App;
