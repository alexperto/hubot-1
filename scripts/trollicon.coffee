﻿# trollicon - Returns a trollicon image
# by Adan Alvarado

trollicons = {
  'gasp' : 'http://i.imgur.com/tYmuZ.png',
  'challenge': 'http://i.imgur.com/jbKmr.png',
  'lol' : 'http://i.imgur.com/WjI3L.png'
}

module.exports = (robot)->
  robot.respond /trollicon( me)?/i, (message)->
  robot.logger.info 'test logger msg'
    send_trollicon message, false, (text)->
      message.send text

send_trollicon = (message, location, response_handler)->
  return response_handler trollicons[message] if message of trollicons
  return response_handler 'lol'
