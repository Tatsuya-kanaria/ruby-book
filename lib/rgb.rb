def to_hex(r, g, b)
  # '#' +
  # r.to_s(16).rjust(2, '0') +
  # g.to_s(16).rjust(2, '0') +
  # b.to_s(16).rjust(2, '0')

  # hex = '#'
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end

  # inject(初期値) (((# + r) + g ) + b )
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]
  # ints = []
  # [r, g, b].each do |s|
  #   ints << s.hex
  # end
  # ints

  # mapを使用することでintsが不要になる
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]
  # [r, g, b].map do |s|
  #   s.hex
  # end

  # # 多重代入をする
  # r, g, b = hex[1..2], hex[3..4], hex[5..6]
  # [r, g, b].map do |s|
  #   s.hex
  # end

  # 正規表現 \w アルファベット、アンダーバー、数字
  # .scan 正規表現にマッチした文字列を配列にして返す
  # r, g, b = hex.scan(/\w\w/)
  # [r, g, b].map do |s|
  #   s.hex
  # end

  # 配列を作らなくてもmap使える
  # hex.scan(/\w\w/).map do |s|
  #   s.hex
  # end

  hex.scan(/\w\w/).map(&:hex)
end
