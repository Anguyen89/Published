var React = require('react');
var hashHistory = require('react-router').hashHistory;

var ImageDetail = React.createClass({

  rootToHome(){
    hashHistory.push('/');
  },

  render(){
    return(
      <div className="image-detail">
        <h1 className="image-title">{this.props.image.title}</h1>
        <h3 className="image-author">{this.props.user.name}</h3>
        <a onClick={this.rootToHome} className="image-return">return to Home</a>
      </div>
    )
  }
});

module.exports = ImageDetail;
