var React = require('react');
var ImageAction = require('../actions/image_actions');



module.exports = React.createClass({

  getInitialState(){
    return { images: []};
  },

  componentWillMount(){
    ImageActions.fetchImages();
  },

  componentDidMount(){
    this.ImageStore.addListener(this._onChange);
  },

  _onChange(){
    this.setState({images: ImageStore.all})
  },

  render(){

  }

});
