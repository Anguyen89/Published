var React = require('react');
var NavBar = require('./navbar.jsx');


var App = React.createClass({

  render(){
    return (
      <div>
        <NavBar/>
        {this.props.children}
      </div>
    )
  }

});

module.exports = App;
