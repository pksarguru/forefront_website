require 'faker'

logan = User.create(admin:true, email:"logandsprice@gmail.com", password:"password", first_name: "Logan", last_name: "Price")
pavan = User.create(email:"pksarguru@gmail.com", password:"password", first_name: "Pavan", last_name: "Sarguru")

# a = logan.articles.create(text:"Holy guacamole! We're doing great!", title:"Beep Boop Bop!")
# aa = pavan.articles.create(text:"Hot tamale arm sweat!", title:"Big Software Strikes Again!")

5.times do
  logan.articles.create(text: Faker::Lorem.paragraph, title: Faker::Lorem.sentence)
  pavan.articles.create(text: Faker::Lorem.paragraph, title: Faker::Lorem.sentence)
end

Article.all.each_with_index do |a,i|
  a.images.create(url:"image_url#{i+1}")
  a.videos.create(url:"video_url#{i+1}")
end


p = Project.create(name:"Xanadu Center", team_name:"Xanadu", location:"Chicago, IL", area: 20000, completion_date: Date.today, description:"This incomarabale compound is home to over 20 friends")

p.images.create(url:"www.nba.com")
p.images.create(url:"www.mlb.com")

t = TeamMember.create(first_name: "Logan", last_name:"Price", role:"Developer", bio: "Whoa baby!")
tt = TeamMember.create(first_name: "Pavan", last_name:"Sarguru", role:"Developer", bio: "The NBA is the only sport that matters.")
ttt = TeamMember.create(first_name: "Arjun", last_name:"Venkataswamy", role:"Senior Developer", bio: "In some circles...")

TeamMember.all.each { |t| t.images.create(url:"www.url-#{t.first_name}") }
