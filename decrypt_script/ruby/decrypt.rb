CIPHERTEXT = ARGV[0]
ALPHABETS = ('A'..'Z').to_a.freeze
SLIDE_NUM = (0..26).freeze

# 即席スクリプトのため、汚いです。
decrypt_text_list = SLIDE_NUM.map { |n|
  plan_text = ""
  CIPHERTEXT.each_char.inject('') do |decrypted_string, char|
    index = (ALPHABETS.index(char) - n) % ALPHABETS.length
    decrypted_string << ALPHABETS[index]
    plan_text = decrypted_string
  end
  plan_text
}

puts decrypt_text_list
