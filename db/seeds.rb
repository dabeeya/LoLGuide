# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

champnames= %w(aatrox ahri akali alistar amumu aniva annie ashe azir blitzcrank brand braum caitlyn cassiopeia cho’gath corki darius diana dr.mundo draven elise evelynn ezreal fiddlesticks fiora fizz galio gangplank garen gnar gragas graves hecarim heimerginder irelia janna jarvanIV jax jayce jinx kalista karma karthus kassadin katarina kayle kennen kha’zix kog’mow leblanc leesin leona lissandra lucian lulu lux malphite malzahar maokai master yi miss fortune mordekaiser morgana nami nasus nautilus nidalee nocturne nunu olaf orianna pantheon poppy quinn rammus rek’sai renekton rengar riven rumble ryze sejuani shaco shen shyvana singed sion sivir skarner sona soraka swain syndra talon taric teemo thresh tristana trundle tryndamere twistedfate twich udyr urgot varus vayne veigar vel’koz vi viktor vladimir volibear warwick wukong xerath xin zhao yasuo yorick zac zed ziggs zilean zyra)
p champnames

champnames.each do |x|
 @champion = Champion.create(name: x)
  10.times do
    @champion.guides.create(title: Faker::Commerce.product_name, champion_advice: Faker::Lorem.paragraph, item_build: Faker::Internet.email)
  end
end

