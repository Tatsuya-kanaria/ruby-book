# ほかのメソッドにブロックを引き渡す場合は、引数の手前にも&を付けてください。&を付けない場合はブロックではなく、普通の引数の1つとみなされます。
def greeting(&block)
  puts 'おはよう'
  text =
    # arityメソッドを使うとブロック引数の個数を確認する
    if block.arity == 1
      yield 'こんにちは'
    elsif block.arity == 2
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end
