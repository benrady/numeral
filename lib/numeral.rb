module Numeral
  def parse(text)
    return parse_natural(text) if text[/[a-z|A-Z]/]
    numerator, denominator = text.split('/')
    return numerator.to_f if numerator.include?('.')
    denominator ||= 1
    Rational(numerator.to_i, denominator.to_i)
  end

  def parse_natural(text)
    [
      'zero', 
      'one', 
      'two', 
      'three', 
      'four', 
      'five', 
      'six', 
      'seven', 
      'eight', 
      'nine', 
      'ten', 
      'eleven', 
      'twelve', 
      'thirteen', 
      'fourteen', 
      'fifteen',
      'sixteen',
      'seventeen',
      'eighteen',
      'nineteen',
      'twenty'
    ].index(text.downcase)
  end
end
