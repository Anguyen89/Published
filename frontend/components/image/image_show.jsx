var React = require('react');

var ImageShow = React.createClass({
  render(){
    return (
      <div className="image-show">
        <img src={this.props.image.image_url}></img>
      </div>
    )
  }
});

module.exports = ImageShow;
