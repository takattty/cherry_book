class Product
  def title
    log 'title is called.'
    'A great movie'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class User
  def name
    log 'name is called'
    'Alice'
  end

  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

product = Product.new
p product.title

user = User.new
p user.name