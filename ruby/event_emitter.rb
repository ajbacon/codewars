# Kata:         event emitter
# Difficulty:   6kyu
# status:       Complete
# link:         https://www.codewars.com/kata/535938615ab68857ae0014a6

class EventEmitter
  def initialize
    @subscribe = {}
  end

  def on (key, &block)
    (@subscribe[key] ||= []) << block
  end

  def trigger (key)
    @subscribe[key] ? @subscribe[key].each{ |i| i.call } : []
  end
end