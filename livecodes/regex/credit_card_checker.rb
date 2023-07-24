def credit_card_checker(card_number)
  # It's your data, you can deal with it before if necessary
  # card_number = card_number.delete(' ')

  card_regex = /(4|5)\d{3}\s*\d{4}\s*\d{4}\s*\d{4}/
  card_match = card_number.match(card_regex)
  if card_number.match?(card_regex)
    # check if it is a master or visa
    if card_match[1] == '4'
      'Valid Visa credit card'
    else
      "Valid Master credit card"
    end
  else
    'Invalid credit card'
  end
end
