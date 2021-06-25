print 'Please input text? : '
text = gets.chomp


# 例外処理を組み込んで再入力可能にする
begin
  print 'Please input pattern? : '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts "Nothing matched."
end

# begin
#   #例外が発生するかもしれない処理
# rescue => e
#   #例外発生時の処理
# ensure
#   #例外の有無に関わらず実行する処理
#   #ensure節ではreturnを使わない
# else
#   #例外が発生しなかった場合の処理
#   #else節が使われるケースはあまり多くありません。else節を使わなくも、begin節に例外が発生しなかった場合の処理を書いてしまえば良い
#   #begin節とは異なり、else節の中で実行されたコードはエラーが起きてもそ手前に書かれたrescue節で捕捉されない
# end
