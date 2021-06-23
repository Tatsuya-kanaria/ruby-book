module NameChanger
  def change_name
    # セッターメソッド経由でデータを変更する
    self.name = 'ありす'
  end
end

class User
  include NameChanger

  # ゲッターメソッドとセッターメソッドを用意する
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
