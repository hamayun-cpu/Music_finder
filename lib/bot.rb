# rubocop: disable Metrics/MethodLength,Metrics/CyclomaticComplexity,Metrics/AbcSize,Layout/LineLength

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

  def starter
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id, text: "Hey, #{message.from.first_name}, Welcome to Music Finder, this will give youtube links of music. Which Depends on the category that you choose. Use /stop to stop the bot. Choose categories by just writing one of these : /heavy, /party, /peace, /light, /motivational, /love")
        when '/heavy'
          @taste.list_pick(@taste.heavy)
          bot.api.send_message(chat_id: message.chat.id, text: @taste.list_pick(@taste.heavy).to_s, date: message.date)
        when '/party'
          @taste.list_pick(@taste.party)
          bot.api.send_message(chat_id: message.chat.id, text: @taste.list_pick(@taste.party).to_s, date: message.date)
        when '/peace'
          @taste.list_pick(@taste.peace)
          bot.api.send_message(chat_id: message.chat.id, text: @taste.list_pick(@taste.peace).to_s, date: message.date)
        when '/light'
          @taste.list_pick(@taste.light)
          bot.api.send_message(chat_id: message.chat.id, text: @taste.list_pick(@taste.light).to_s, date: message.date)
        when '/motivational'
          @taste.list_pick(@taste.motivational)
          bot.api.send_message(chat_id: message.chat.id, text: @taste.list_pick(@taste.motivational).to_s, date: message.date)
        when '/love'
          @taste.list_pick(@taste.love)
          bot.api.send_message(chat_id: message.chat.id, text: @taste.list_pick(@taste.love).to_s, date: message.date)
        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Take Care! Bye, #{message.from.first_name}", date: message.date)
        else
          bot.api.send_message(chat_id: message.chat.id, text: "Invalid Input, #{message.from.first_name}, please enter one of these options: /heavy, /party, /peace, /light, /motivational, /love")
        end
      end
    end
  end
end

# rubocop: enable Metrics/MethodLength,Metrics/CyclomaticComplexity,Metrics/AbcSize,Layout/LineLength
