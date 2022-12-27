class Morse
  def data_morse()
    {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
      '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
      '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
      '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
      '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
      '-.--' => 'Y', '--..' => 'Z'
    }
  end

  def decode_char(word)
    data_morse[word]
  end

  def decode_word(word)
    new_word = ''
    split_words = word.split
    split_words.each { |n| new_word += decode_char(n) }
    new_word
  end

  def split(sentence)
    words = sentence.split('  ')
    words.each { |n| print " #{decode_word(n)}" }
  end
end

new_morse = Morse.new
puts new_morse.decode_char('..-')
puts new_morse.decode_word('..- -..-')
new_morse.split('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
