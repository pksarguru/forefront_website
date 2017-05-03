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
    description:"This incomarabale compound is home to over 20 friends"
  },
  {name:"Price Home",
    team_name:"Boops Inc.",
    location:"Schaumburg, IL",
    area: 2000,
    completion_date: Date.today,
    description: Faker::Lorem.paragraph
  },
  {name:"Taco Bell Cantina",
    team_name:"TB",
    location:"Chicago, IL",
    area: 800,
    completion_date: Date.today,
    description: Faker::Lorem.paragraph
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

#REAL FOREFRONT PROJECTS
neiu = {
  name:"Northeastern Illinois University",
  team_name:"Juan Moreno Architechts (JGMA)",
  location:"Chicago, IL",
  area: 55000,
  description: "The new building will be comprised of a three-story higher education facility with 55,000 SF.  With a modest budget, FSE collaborated with JGMA Architects and NEIU to develop economical structural solutions that celebrate the architecture of the building and functional use of the space.

  The lower level contains auditorium and laboratory space with the upper levels comprised of classroom and break-out areas.  The design solutions contain iconic elements with dramatic cantilevers and a modern expression with structure emphasized throughout the architecture.  The structural system employs sloping columns, cantilevered girders and diagrid framing to achieve the floating ends of the building while the curtainwall system is used for branding, sustainability, and dramatic view of downtown Chicago—all within footsteps of one of the busiest highway corridors of Chicago.",
  featured: true,
  category: "Institutional",
  completion_date: Date.new(2014,1,1)
}
neiu_project = Project.create(neiu)
neiu_project.images.create(url: "NEIU-El-Centro.jpg")

nth = {
  name:"Northwest Tower Hotel",
  team_name:"Antunovich Associates",
  location:"Chicago, IL",
  area: 40000,
  description: "The existing building located at 1600 N. Milwaukee Avenue was constructed in the 1920’s and abuts a heavy storage building along with a vacant lot.
  FSE worked with Antunovich and Convexity Devleopment to modify the existing building into a boutique hotel and retail property. Structural work includes localized micro-pile foundation work, new elevator cores and stairs, a new rooftop solarium and swimming pool along with extensive floor modification and the new construction of a 2-story building with basement.",
  featured: true,
  category: "Hospitality",
  completion_date: Date.new(2016,1,1)
}

nth_project = Project.create(nth)
nth_project.images.create(url: "northwest-tower-hotel-landscape.jpg")
nth_project.images.create(url: "northwest-tower-hotel-portrait.jpg")

wccn = {
  name:"Willow Creek Church - Northshore",
  team_name:"Adrian Smith + Gordon Gill Architecture",
  location:"Glenview, IL",
  area: 72000,
  description: "The new 72,000 SF worship facility includes two auditoriums, office space, classroom wings, café and outdoor nature areas.  The building is oval in shape with interior courtyards cuts out from the building.  The design of the building is inspired by the form of a Seed which is a biblical reference and also symbolizes a strong connection of the building design to nature.  The building shape is symmetrical about the north/south axis, and is designed to strategically utilize natural light and to bring the experience of the outdoors to the building occupants.
  FSE collaborated with AS+GG to develop a cost effective graceful structure to achieve these results with a combination of 150-foot clear span trusses, bar joists, curtain-wall and cantilevered steel framing.",
  featured: true,
  category: "Institutional",
  completion_date: Date.new(2016,1,1)
}

wccn_project = Project.create(wccn)
wccn_project.images.create(url: "Willow-Creek-North-Shore.jpg")

t = TeamMember.create(first_name: "Logan", last_name:"Price", role:"Developer", bio: "Whoa baby!")
tt = TeamMember.create(first_name: "Pavan", last_name:"Sarguru", role:"Developer", bio: "The NBA is the only sport that matters.")
ttt = TeamMember.create(first_name: "Arjun", last_name:"Venkataswamy", role:"Senior Developer", bio: "In some circles...")

TeamMember.all.each { |t| t.images.create(url:"www.url-#{t.first_name}.com") }
