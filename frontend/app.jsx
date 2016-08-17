var React = require('react');
var NavBar = require('./navbar');
var ImageCoursel = require('image_coursel');



var App = React.createClass({

  render(){
    return (
      <div>
        <header>
          <NavBar/>
        </header>
        <div className="coursel-container">
          <ImageCoursel />
        </div>

        {this.props.children}
      </div>
    )
  }

});

module.exports = App;
