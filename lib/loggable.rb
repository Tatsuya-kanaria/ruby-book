module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

# s = 'abc'
# => "abc"
# 文字列は通常logメソッドを持たない
# >> s.log('Hello')
# Traceback (most recent call last):
#         4: from /Users/kanaria/.asdf/installs/ruby/3.0.0/bin/irb:23:in `<main>'
#         3: from /Users/kanaria/.asdf/installs/ruby/3.0.0/bin/irb:23:in `load'
#         2: from /Users/kanaria/.asdf/installs/ruby/3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
#         1: from (irb):10:in `<main>'
# NoMethodError (undefined method `log' for "abc":String)
#　文字列sにLoggable モジュールのメソッドを特異メソッドとしてミックスインする
# >> s.extend(Loggable)
# => "abc"
# Loggable モジュールの log メソッドが呼び出せるようになる
# >> s.log('Hello.')
# [LOG] Hello.
# => nil
