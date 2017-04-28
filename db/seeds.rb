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

projects = [
  {name:"Xanadu Center",
    team_name:"Xanadu",
    location:"Chicago, IL",
    area: 20000,
    completion_date: Date.today,
    description:"This incomarabale compound is home to over 20 friends",
    featured:true
  },
  {name:"Price Home",
    team_name:"Boops Inc.",
    location:"Schaumburg, IL",
    area: 2000,
    completion_date: Date.today,
    description: Faker::Lorem.paragraph,
    featured: true
  },
  {name:"Taco Bell Cantina",
    team_name:"TB",
    location:"Chicago, IL",
    area: 800,
    completion_date: Date.today,
    description: Faker::Lorem.paragraph,
    featured: true
  },
  {name:"Chipotle",
    team_name:"Chipotes",
    location:"Chicago, IL",
    area: 1000,
    completion_date: Date.today,
    description: Faker::Lorem.paragraph
  }
]
image_count = Image.all.count
projects.each do |project|
  p = Project.create(project)
  2.times {|t| p.images.create(url:"image_url#{image_count +1}")}
end


t = TeamMember.create(first_name: "Logan", last_name:"Price", role:"Developer", bio: "Whoa baby!")
tt = TeamMember.create(first_name: "Pavan", last_name:"Sarguru", role:"Developer", bio: "The NBA is the only sport that matters.")
ttt = TeamMember.create(first_name: "Arjun", last_name:"Venkataswamy", role:"Senior Developer", bio: "In some circles...")

TeamMember.all.each { |t| t.images.create(url:"www.url-#{t.first_name}.com") }
