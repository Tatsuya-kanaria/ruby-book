def generate_proc(array)
  counter = 0
  # Proc オブジェクトをメソッドの戻り値とする
  Proc.new do
    # ローカル変数の counter を加算する
    counter += 10
    # メソッド引数の array に counter の値を追加する
    array << counter
  end
end

# > values = []
# => []
# > load('lib/generate_proc.rb')
# => true
# > sample_proc = generate_proc(values)
# => #<Proc:0x00007f81e9152328 lib/generate_proc.rb:4>
# > value
# => []
# Procオブジェクトを実行すると generate_proc メソッドの引数だった values の中身が書き換えられる
# > sample_proc.call
# => [10]
# generate_proc メソッド内のローカル変数 counter も加算され続ける
# > sample_proc.call
# => [10, 20]
