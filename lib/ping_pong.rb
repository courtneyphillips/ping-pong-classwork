class Fixnum

  define_method(:ping_pong) do
    numbers = []
    number = 0
    self.times do
      number = number.+(1)
      numbers.push(number)
    end
    numbers
  end

end
