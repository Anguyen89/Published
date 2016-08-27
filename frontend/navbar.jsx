var React = require('react');
var Upload = require("./components/upload");
var SessionStore = require('./stores/session_store');
var ErrorStore = require('./stores/error_store');



module.exports = React.createClass({

  getInitialState() {
    return {
      currentUser: SessionStore.currentUser(),
      errors: ErrorStore.all()
    }
  },

  componentDidMount(){
    this.sessionStoreListener = SessionStore.addListener(this.onChange);
    this.errorStoreListener = ErrorStore.addListener(this.onErrorChange);
  },

  componentWillUnmount(){
    this.sessionStoreListener.remove();
    this.errorStoreListener.remove();
  },

  onChange(){
    this.setState({currentUser: SessionStore.currentUser()})
  },

  onErrorChange(){
    this.setState({ errors: ErrorStore.all()});
  },

  render(){
    return (
      <div className="nav-container">
        <a className="home-button" onClick={this.goToHome}>Published</a>
        <Upload/>
      </div>
    )
  }
});
