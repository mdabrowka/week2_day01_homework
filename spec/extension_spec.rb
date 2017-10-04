require('minitest/autorun')
require('minitest/rg')
require_relative('../extension.rb')

class TestBook < MiniTest::Test
@book

def setup
@book1 = Book.new({ title: "white_teeth", rental_details: {student_name: "Lola", date: "02/10/17"}})
@book2 = Book.new({title: "vegeterian", rental_details: {student_name: "Blair", date: 03/09/17}})
end

end
