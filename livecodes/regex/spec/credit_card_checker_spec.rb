require_relative "../credit_card_checker.rb"

RSpec.describe "#credit_card_checker" do
  it "return 'Invalid credit card' when passed an empty string" do
    actual = credit_card_checker("")
    expected = "Invalid credit card"
    expect(actual).to eq(expected)
  end

  it "return 'Invalid credit card' when passed non-numeric characters" do
    actual = credit_card_checker('4242-4242-4242-4242')
    expected = 'Invalid credit card'
    expect(actual).to eq(expected)
  end

  it "return 'Valid Master credit card' when passed 4 groups of 4 digits, separated by spaces, starting with 5" do
    expect(credit_card_checker('5242 4242 4242 4242')).to eq('Valid Master credit card')
  end

  it "return 'Valid Visa credit card' when passed 16 digits whatever spaces there might be, starting with 4" do
    expect(credit_card_checker('  4242   4242 4242    4242')).to eq('Valid Visa credit card')
  end
end
