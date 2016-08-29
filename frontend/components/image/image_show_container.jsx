var React = require('react');
var ImageStore = require('../../stores/image_store');
var ImageDetail = require('./image_detail');
var ImageShow = require('./image_show');

var ImageShowContainer = React.createClass({

  getInitialState(){
    return ({ image: {}});
  },

  componentWillMount(){
    this.setState({ image: ImageStore.find(this.props.params.id)});
  },

  render(){
    console.log(this.state.image);
    return (
      <div className="image-show-container">
        <ImageDetail user={this.state.image.user} image={this.state.image}/>
        <ImageShow image={this.state.image}/>
      </div>
    )
  }
});

module.exports = ImageShowContainer;
