// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

import {Socket} from "phoenix" 

let socket = new Socket('/socket')
socket.connect()

let channel = socket.channel('rooms:lobby', {})

channel.join()
  .receive('ok', resp => console.log('joined channel'))
  .receive('error', resp => console.log('cant join'))

class App {
  static init() {
    let username = $('#username')
    let message = $('#message')
    message.off('keypress')
      .on('keypress', e => {
        if(e.keyCode == 13) {
          channel.push('new:message', {
            user: username.val(),
            body: message.val()
          })
          message.val('')
        }
      })
      channel.on('new:message', payload => this.renderMessage(payload))
  }

  static renderMessage(payload) {
    let messages = $('#messages')
    messages.append(`<p><b>[${payload.user}]</b>: ${payload.body}`)
  }

}

console.log('hello')

$(() => App.init())

