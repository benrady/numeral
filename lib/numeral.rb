module Numeral
  def parse_num(text)
    return nil unless text
    return nil if text.length == 0
    return parse_natural_num(text) if text[/[a-z|A-Z]/]
    numerator, denominator = text.split('/')
    return numerator.to_f if numerator.include?('.')
    denominator ||= 1
    Rational(numerator.to_i, denominator.to_i)
  end

  def parse_natural_num(text)
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
