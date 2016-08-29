var React = require('react');
var hashHistory = require('react-router').hashHistory;

var ImageDetail = React.createClass({

  rootToHome(){
    hashHistory.push('/');
  },

  render(){
    return(
      <div className="image-detail">
        <div className="image-title">
          <div>{this.props.image.title}</div>
        </div>
        <div className="image-author">by: {this.props.user.name}</div>
        <a onClick={this.rootToHome} className="image-return">return to Home</a>
      </div>
    )
  }
});

module.exports = ImageDetail;
