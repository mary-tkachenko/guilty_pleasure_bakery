require 'sinatra'
require './products.rb'

get '/' do
 erb :index,:layout => :layout_main
end

pink = RainbowMacaron.new('Love', '5', 'cranberry, vanilla', '/images/media/rainbow_macarons/1.png')
green = RainbowMacaron.new('Levis', '2', 'honey, orange', '/images/media/rainbow_macarons/2.png')
david = RainbowMacaron.new('David', '10', 'caramel', '/images/media/rainbow_macarons/3.png')
computer = RainbowMacaron.new('Computer', '3', 'pistachios, lime', '/images/media/rainbow_macarons/4.png')
elvis = RainbowMacaron.new('Elvis', '8', 'blueberry, chocolate', '/images/media/rainbow_macarons/6.png')
john = RainbowMacaron.new('John', '10', 'grape, vine', '/images/media/rainbow_macarons/8.png')
grut = RainbowMacaron.new('Grut', '5', 'chocokate, whiskey', '/images/media/rainbow_macarons/9_2.png')
cinderella = RainbowMacaron.new('Cinderella', '9', 'vodka, banana', '/images/media/rainbow_macarons/10.png')


blue = CustomMacaron.new('Unicorn', '10', 'apple', 'images/media/custom_macarons/1.jpg')
yay = CustomMacaron.new('Palette', '10', 'vanilla, banana, grape, orange', 'images/media/custom_macarons/11.jpg')
starwars = CustomMacaron.new('Poe', '16', 'rom, wiskey, vodka, banana, chocolate', 'images/media/custom_macarons/6.jpg')
spring = CustomMacaron.new('Spring', '8', 'cherry', 'images/media/custom_macarons/7.jpg')
dogs = CustomMacaron.new('101', '11', 'vanilla, chocolate, coconut', 'images/media/custom_macarons/8.jpg')
virgin = CustomMacaron.new('Virgin', '15', 'vanilla, vodka, coconut', 'images/media/custom_macarons/9.jpg')
empire = CustomMacaron.new('Empire', '9', 'blueberries, peach, coconut', 'images/media/custom_macarons/10.jpg')
brush = CustomMacaron.new('Brush', '11', 'gold, vine, coconut', 'images/media/custom_macarons/3.jpg')


wow = MerchMacaron.new('For drummers', '30', 't-shirt', '/images/media/merch/8.jpg')
boo = MerchMacaron.new('For everybody', '30', 't-shirt', '/images/media/merch/4.jpg')
keychain = MerchMacaron.new('Sweet chain', '5', 'keychain', '/images/media/merch/6_2.jpg')
phonecase = MerchMacaron.new('Sweet case', '8', 'phone case', '/images/media/merch/9.jpg')
scarf = MerchMacaron.new('Sweet scarf', '12', 'scarf', '/images/media/merch/11_2.jpg')
rug = MerchMacaron.new('Sweet rug', '20', 'cosy rug', '/images/media/merch/5.jpg')
bag = MerchMacaron.new('Sweet bag', '14', 'bag', '/images/media/merch/7.jpg')
purse = MerchMacaron.new('Sweet purse', '21', 'purse', '/images/media/merch/3.jpg')

get '/rainbow' do
    @rainbow = {
        :pink => pink,
        :green => green,
        :david => david,
        :computer => computer,
        :elvis => elvis,
        :john => john,
        :grut => grut,
        :cinderella => cinderella
    }
    erb :rainbow 
end


get '/custom' do
    @custom = {
        :blue => blue,
        :yay => yay,
        :starwars => starwars,
        :spring => spring,
        :dogs => dogs,
        :virgin => virgin,
        :empire => empire,
        :brush => brush
    }
    erb :custom
end

get '/marchandise' do
    @marchandise = {
        :wow => wow,
        :boo => boo,
        :keychain => keychain,
        :phonecase => phonecase,
        :scarf => scarf,
        :rug => rug,
        :bag => bag,
        :purse => purse
    }
    erb :merch
end

get '/about_us' do
    erb :about_us  
end

get '/faq' do
    erb :faq  
end
get '/contacts' do
    erb :contacts
end



