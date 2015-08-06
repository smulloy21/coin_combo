require('rspec')
require('coin_combo')

describe('Float#coin_combo') do
  it("returns the refund in the smallest amount of coins") do
    expect(0.36.coin_combo()).to(eq("Your change is: 1 quarter, 1 dime, 1 penny"))
  end

  it("returns the refund in the smallest amount of coins") do
    expect(0.75.coin_combo()).to(eq("Your change is: 3 quarters"))
  end

  it("returns the refund in the smallest amount of coins") do
    expect(1.26.coin_combo()).to(eq("Your change is: 3 quarters, 5 dimes, 1 penny"))
  end
end
