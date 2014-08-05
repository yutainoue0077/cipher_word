# encoding: utf-8
require 'minitest/autorun'
require 'minitest/unit'
require_relative '../lib/cipher_word'

class TestCipherWord < MiniTest::Test
  def test_cipher
    assert_equal CipherWord.cipher('Jean Valjean'), 'Kfbo!Wbmkfbo'
    assert_equal CipherWord.cipher('Bishop Myriel'), 'Cjtipq!Nzsjfm'
    assert_equal CipherWord.cipher('Cosette'), 'Dptfuuf'
  end

  def test_decoding
    assert_equal CipherWord.decoding('Kfbo!Wbmkfbo'), 'Jean Valjean'
    assert_equal CipherWord.decoding('Cjtipq!Nzsjfm'), 'Bishop Myriel'
    assert_equal CipherWord.decoding('Dptfuuf'), 'Cosette'
  end
end
