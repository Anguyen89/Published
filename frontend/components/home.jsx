var React = require('react');
var SessionStore = require('../stores/session_store');

var ImageCoursel = require('./image/image_coursel');

var Home = React.createClass({

  getInitialState(){
    return { currentUser: SessionStore.currentUser()}
  },

  componentDidMount(){
    this.SessionListener = SessionStore.addListener(this.onChange);
  },

  onChange(){
    this.setState({ currentUser: SessionStore.currentUser()});
  },

  render(){
    var homeDisplay;
    if (this.state.currentUser){
      homeDisplay = (<div>Add Profile feed here</div>);
    } else {
      homeDisplay = (<ImageCoursel/>);
    }

    return (
      <div>
        {homeDisplay}
      </div>
    )
  }
});

module.exports = Home;
