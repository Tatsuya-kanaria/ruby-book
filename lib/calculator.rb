class Calculator
  include Math

  def calc_sqrt(n)
    # ミックスインとして Math モジュールの sqrt メソッドを使う
    sqrt(n)
  end
end
