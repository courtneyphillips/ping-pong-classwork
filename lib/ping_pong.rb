class Fixnum

  define_method(:ping_pong) do
    numbers = []
    number = 0
    self.times do
      number = number.+(1)
      if number.%(3) == 0
        numbers.push("ping")
      else
      numbers.push(number)
      end
    end
    numbers
  end

end
