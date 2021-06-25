# bigin

def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end

rescue => e
  # 発生した例外をログやメールに残す
  puts "[LOG] エラーが発生しました： #{e.class} #{e.message}"
  # 捕捉した例外を再度発生させ、プログラム自体は異常終了させる
  raise
# end
# こういうケースでは例外処理のbeginとendを省略できる

end


puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)
