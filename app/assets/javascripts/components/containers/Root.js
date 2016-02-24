import React, { Component } from 'react';
import { render } from 'react-dom'
import { Provider } from 'react-redux';
import LetsPlayApp from './lets_play_app';
import configureStore from '../store/configureStore';
import {setMessages, addMessage} from '../actions/lets_play'

const store = configureStore();

export default class Root extends Component {

  componentWillMount() {

    store.dispatch(setMessages(this.props.messages));

    App.room = App.cable.subscriptions.create("RoomChannel", {
      connected: function() {},
      disconnected: function() {},
      received: function(data) {
        return store.dispatch(addMessage(data['message']));
      },
      speak: function(message) {
        return this.perform('speak', {
          message: message
        });
      }
    });

  }
  render() {
    return (
      <Provider store={store}>
        <LetsPlayApp />
      </Provider>
    );
  }
}
