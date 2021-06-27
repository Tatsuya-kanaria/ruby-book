# ほかのメソッドにブロックを引き渡す場合は、引数の手前にも&を付けてください。&を付けない場合はブロックではなく、普通の引数の1つとみなされます。
# def greeting(&block)
  # puts 'おはよう'
  # text = block.call('こんにちは')
  #   # arityメソッドを使うとブロック引数の個数を確認する
  #   # if block.arity == 1
  #   #   yield 'こんにちは'
  #   # elsif block.arity == 2
  #   #   yield 'こんに', 'ちは'
  #   # end
  # puts text
  # puts 'こんばんは'
# end

# procオブジェクトを普通の引数として渡す
# def greeting(arrange_proc) # & 付けない
#   puts 'おはよう'
#   text = arrange_proc.call('こんにちは')
#   puts text
#   puts 'こんばんは'
# end

def greeting(proc_1, proc_2, proc_3) # & 付けない
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end
