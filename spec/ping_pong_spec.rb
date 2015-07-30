require('ping_pong')
require('rspec')

# plain English version of specs:

# it will count up to the given number
# ie: 7.pingpong() should result in an array of numbers ending at 7
#
# it will replace 3 with the word "ping"
# ie: wherever the number 3 would occur, the word ping will occur instead.
#
# it will replace any number divisible by 3 with the word "ping"
# ie: 3, 6, 9, etc. will all be replaced by "ping" wherever they occur.
#
# it will replace 5 with the word "pong"
# ie: wherever the number 5 would occur, "pong" will occur instead.
#
# it will replace any number divisible by 5 with the word "pong"
# ie: 5, 10, 15, etc. will all be replaced by "pong" wherever they occur.
#



describe("Fixnum#ping_pong") do
  it("will count up to the given number") do
    numbers = 7.ping_pong()
    expect(numbers.last).to(eq(7))
  end

  it("will replace the number 3 with the word ping") do
    expect(3.ping_pong()).to(eq([1, 2, "ping"]))
  end

  it("will replace any number divisible by 3 with the word ping") do
    expect(6.ping_pong()).to(eq([1, 2, "ping", 4, 5, "ping"]))
  end

end
