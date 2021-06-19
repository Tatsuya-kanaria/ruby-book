class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    stock = stock? ? 'あり' : 'なし'
    "商品名：#{@name} 価格：#{@price} 円 在庫：#{stock}"
  end

  # subclassでstock?を定義してもらう前提で使用している
  def stock?
    raise 'Must implement stock? in subclass.'
  end

  def to_s
    "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  # 在庫があればtrueを返す
  def stock?
    true
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

product = Product.new('q',100)
# puts "Product: #{product.to_s}"
puts product.display_text

dvd = DVD.new('qqq', 1000, 100)
# puts "DVD: #{dvd.to_s}"
puts dvd.display_text
