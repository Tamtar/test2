# benj = do this command at the command line
#   gem install gosu
# and then run this script at the command line.
# for more information on gosu, go here:
#   https://github.com/jlnr/gosu/wiki/Ruby-Tutorial
# More infor on this site. click on upper right hand corner for references
#   http://www.libgosu.org/rdoc/#

require 'gosu'

class MyWindow < Gosu::Window
  def initialize
   super(640, 480, false)
   self.caption = 'Hello World!'
  end
end

window = MyWindow.new
window.show