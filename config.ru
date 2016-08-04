require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.freenode.org"
    c.nick = "OpenShiftBot"
    c.channels = ["#openshiftbot"]
  end

  on :message, "hello" do |m|
    m.reply "HOWDY, #{m.user.nick}!!!"
  end
end

bot.start
