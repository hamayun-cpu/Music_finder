require 'telegram/bot'
require_relative 'music'

# music recomender bot class
class Bot
  attr_reader :token, :taste
  def initialize
    @token = '1320649172:AAHaGoS4o84mHp_YjnPJlF4UW7LItfK7owg'
    @taste = Musics.new
    begin
      starter
    rescue Telegram::Bot::Exceptions::ResponseError => e
      puts "Properly Bot couldn't connect. Presenting: #{e}"
    end
  end

  private

  def send_bot_msg(bot, message, taste)
    @taste.list_pick(taste)
    bot.api.send_message(chat_id: message.chat.id, text: @taste.list_pick(taste).to_s, date: message.date)
  end

  def welcome_message(message)
    "Hey, #{message.from.first_name},
     Welcome to Music Finder,
     this will give youtube links of music.
     Which Depends on the category that you choose.
     Use /stop to stop the bot.
     Choose categories by just writing one of these :
     /heavy, /party, /peace, /light, /motivational, /love"
  end

  def warning_message(message)
    "Invalid Input, #{message.from.first_name},
     please enter one of these options: /heavy, /party, /peace, /light, /motivational, /love"
  end

  def starter
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/party'
          send_bot_msg(bot, message, @taste.party)
        when '/peace'
          send_bot_msg(bot, message, @taste.peace)
        when '/light'
          send_bot_msg(bot, message, @taste.light)
        when '/motivational'
          send_bot_msg(bot, message, @taste.motivational)
        when '/love'
          send_bot_msg(bot, message, @taste.love)
        else
          other_cases(message, bot)
        end
      end
    end
  end

  def other_cases(message, bot)
    case message.text
    when '/heavy'
      send_bot_msg(bot, message, @taste.heavy)
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: welcome_message(message))
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id,
                           text: "Take Care! Bye,
                           #{message.from.first_name}", date: message.date)
    else
      bot.api.send_message(chat_id: message.chat.id, text: warning_message(message))
    end
  end
end
