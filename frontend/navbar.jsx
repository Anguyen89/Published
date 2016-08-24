var React = require('react');
var Upload = require("./components/upload");



module.exports = React.createClass({

render(){
  return (
    <div className="nav-container">
      <h1>Published</h1>
      <Upload/>
    </div>
  )
}
});
