# 以下のProduct クラスは外部ライブラリで定義されている想定
class Product
  def name
    "A great film"
  end

  # prepend するためのモジュールを定義する
  module NameDecorator
    def name
      # prepend すると super はミックスインした先のクラスの name メソッドを呼び出す
      "<<#{super}>>"
    end
  end

  # 既存メソッドを変更するために Product クラスを再オープンする
  class Product
    # include ではなく prepend でミックスインする
    prepend NameDecorator
  end

  class User
    def name
      'Alice'
    end
  end

  class User
    prepend NameDecorator
  end
end
# User クラスの name メソッドを上書きできる
# >> user =User.new
# => #<User:0x00007ff3d6081f20>
# >> user.name
# => "Alice"

# 直接 prepend メソッドを呼び出してもOK
# Product.prependNameDecorator
# User.prependNameDecorator
