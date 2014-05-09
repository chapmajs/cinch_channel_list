require 'cinch'
require 'cinch_channel_list'

bot = Cinch::Bot.new do
  loggers.level = :error

  configure do |c|
    c.server = 'irc.binrev.net'
    c.nick   = 'StatsBot'
    c.plugins.plugins = [ChannelList]
  end

  on :connect do 
    @bot.handlers.dispatch(:get_channel_list)
  end

  on :channel_list_received do |m, channels|
    channels.each { |k,v| puts "#{k} - #{v[:user_count]} users" }
    @bot.quit
  end
end

bot.start
