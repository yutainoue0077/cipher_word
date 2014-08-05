require "cipher_word/version"

module CipherWord
  def self.cipher(word)
    a = word.length
    word_a = ''
    (0...a).each { |i|
      word_b = word[i].ord
      word_b += 1
      word_a += word_b.chr
    }
    word_a
  end

  def self.decoding(word)
    a = word.length
    word_a = ''
    (0...a).each { |i|
      word_b = word[i].ord
      word_b -= 1
      word_a += word_b.chr
    }
    word_a
  end
end
