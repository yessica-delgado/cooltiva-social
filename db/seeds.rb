# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Activity.destroy_all
User.destroy_all
Category.destroy_all
Booking.destroy_all
puts 'database is clean'

#Crear las 4 categorias
rc = Category.create(name: 'Responsible consumption')
donation = Category.create(name: "Donations")
sk = Category.create(name: "Shared Knowledge")
sw = Category.create(name: "Social Working")

user1 = User.create!(nickname: "Linda", email: "linda@gmail.com", password: "123456789")
profile_pic1 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1592235718/01-shutterstock_476340928-Irina-Bg_kno4ib.jpg' )
user1.photo.attach(io: profile_pic1, filename: 'pp1.png', content_type: 'image/png')

user2 = User.create!(nickname: "John", email: "john@gmail.com", password: "123456789")
profile_pic2 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1592235723/free-profile-photo-whatsapp-4_hw6fgm.png' )
user2.photo.attach(io: profile_pic2, filename: 'pp1.png', content_type: 'image/png')

user3 = User.create!(nickname: "Alice", email: "alice@gmail.com", password: "123456789")
profile_pic3 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1592235860/960x0_zz0esc.jpg' )
user3.photo.attach(io: profile_pic3, filename: 'pp1.png', content_type: 'image/png')

user4 = User.create!(nickname: "Frank", email: "frank@gmail.com", password: "123456789")
profile_pic4 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1592235777/Hairstyles-for-men-modern-quiff_jopu46.jpg' )
user4.photo.attach(io: profile_pic4, filename: 'pp1.png', content_type: 'image/png')

user5 = User.create!(nickname: "Raj", email: "raj@gmail.com", password: "123456789")
profile_pic5 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1592235744/avSvBkZJ_400x400_ormr42.jpg' )
user5.photo.attach(io: profile_pic5, filename: 'pp1.png', content_type: 'image/png')

user_1 = User.create!(nickname: "Yessica", email: "yessica@gmail.com", password: "123456789", persona_description: "Yessica is the CEO of Cooltiva México, she has been working to fight poverty and hunger for the last 5 years and now coordinates all activities along the country to change society for the better.")
profile_picture1 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1592066007/T02NE0241-US8BY0S1F-6cb0fb5d07d7-512_bbhfox.jpg' )
user_1.photo.attach(io: profile_picture1, filename: 'pp1.png', content_type: 'image/png')
activity_1 = Activity.create!(
  title: "Cooltiva",
  category: rc,
  user: user_1,
  website: "https://cooltiva.mx",
  who_description: "Cooltiva lets you know local producer who delivers fresh ins season products under sustainables practices, with differents ways of delivery. Access high quality products directly delivered at your door, all things you need to improve your diet in one place.",
  why_description: "80 percent of global food is produced for small farmers that are not getting a fair price for the products they sell, you can make the difference",
  what_description: "buy direct from local farmers in cooltiva, there are more than 200 hundrend products from food to cleaning products, toys, gifts, etc. All you need to have a sustainable life.",
  meeting_address: "martires de la conquista 113",
  activity_address: "martires de la conquista 113",
  capacity: 20,
  donation: 300,
  start_date: "20/06/2020",
  end_date: "20/07/2020",
  requirements: "minimum purchase of $300, delivery areas: Miguel Hidalgo, Cuajimalpa, Benito Juárez")
file_one = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590540616/Captura_de_Pantalla_2020-05-26_a_la_s_19.43.26_uwh8fv.png' )
activity_1.photos.attach(io: file_one, filename: 'cooltiva1.png', content_type: 'image/png')
file_two = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590540616/Captura_de_Pantalla_2020-05-26_a_la_s_19.48.52_izvcpm.png' )
activity_1.photos.attach(io: file_two, filename: 'cooltiva2.png', content_type: 'image/png')
file_three = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590540646/Captura_de_Pantalla_2020-05-26_a_la_s_19.50.35_prwyqq.png' )
activity_1.photos.attach(io: file_three, filename: 'cooltiva3.png', content_type: 'image/png')

user_2 = User.create!(nickname: "Rodolfo", email: "rodolfo@gmail.com", password: "123456789", persona_description: "Rodolfo is head director of Techo México, he has been working to fight poverty and hunger for the last 5 years and now coordinates all activities along the country to change society for the better.")
profile_picture2 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1593736134/a6mtheld7mbrmty8jjjsuyv0wbfi.png' )
user_2.photo.attach(io: profile_picture2, filename: 'pp2.png', content_type: 'image/png')
activity_2 = Activity.create!(
  title: "Techo",
  category: sw,
  user: user_2,
  website: "https://techo.com",
  who_description: "TECHO, also known as Un Techo para mi País (UTPMP) (Spanish for A Roof For My Country), is a nonprofit organization that mobilizes youth volunteers to fight extreme poverty in Latin America, by constructing transitional housing and implementing social inclusion programs. It was founded by a Jesuit priest, and working with more than 720,000 volunteers, it has constructed houses for over 102,400 families in 19 countries in Latin American and the Caribbean.",
  why_description: "104 million people live in slums in Latin America. Families lack a proper home, and have no access to basic services, such as clean water, electricity or sewerage. They are exposed to cold, rain, dirt and pollution which generates many health problems. Adults are often unemployed and their children have to work from an early age to help support their family.",
  what_description: "2 days groupal construction of 10 houses sponsored by The Coca-Cola Company at a vulnerable community for people in poverty situation. Transportation will be provided from the meeting point to the community and back.",
  meeting_address: "coahuila 48, cuajimalpa",
  activity_address: "coahuila 48, cuajimalpa",
  capacity: 30,
  donation: 100,
  start_date: "20/06/2020",
  end_date: "20/07/2020",
  requirements: "Sunscreen, hammer, positive attitude, sleeping bag, full body pijama, 2 days change of clothing, gloves, no luxury tiems.")
file_two = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590541422/Captura_de_Pantalla_2020-05-26_a_la_s_20.03.01_l7j7dt.png')
activity_2.photos.attach(io: file_two, filename: 'techo2.png', content_type: 'image/png')
file_three = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590541422/Captura_de_Pantalla_2020-05-26_a_la_s_20.03.17_sqtidd.png')
activity_2.photos.attach(io: file_three, filename: 'techo3.png', content_type: 'image/png')
review_1 = Review.create!(
  activity: activity_1,
  user: user_2,
  description: "The produce and other groceries are fresh and delicious, and the service is super. Cooltiva connects you directly with local, sustainable growers and ranchers. I love their bicycle delivery! Also, it's more convenient than shopping at a farmers' market.",
  rating: 5)
review_2 = Review.create!(
  activity: activity_2,
  user: user2,
  description: "I’m not going to lie, I had to sleep in the floor at a school and it was terrible for my back after a long day of work",
  rating: 2)
review_3 = Review.create!(
  activity: activity_2,
  user: user1,
  description: "I think is a great exercise to re evaluate things worth in life, the families we built for incredibly nice",
  rating: 5)
review_4 = Review.create!(
  activity: activity_2,
  user: user5,
  description: "I’d never had an experience like that, lots of hard work for someone who needs it and being able to know them as a person, it was nice",
  rating: 4)

user_3 = User.create!(nickname: "Lilia", email:"lilia@gmail.com", password:"123456789", persona_description: "Lilia is the founder of lutheransunset, she has been working to fight poverty and hunger for the last 3 years and now coordinates all activities along the country to change society for the better.")
profile_picture3 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1591923776/1bhaj06fiwdp4i1z1lhsmfc8wzq7.png' )
user_3.photo.attach(io: profile_picture3, filename: 'pp3.png', content_type: 'image/png')
activity_3 = Activity.create!(
  title: "Teach our senior residents how to sing!",
  category: sk,
  user: user_3,
  website: "http://lutheransunset.org",
  who_description: "Lutheran Sunset Ministries is the only retirement community in Bosque County that offers a full continuum of care. Programs include retirement living, assisted living, long-term care, rehabilitation and therapy, memory support, hospice services and companion services. As a not-for-profit entity, all net proceeds are invested back into the Sunset community, creating added value and services for our residents.",
  why_description: "With more than 60 years of service, Lutheran Sunset Ministries celebrates our heritage of education. Emerging from the grounds of what was once a buzzing college campus, Sunset draws on the life-affirming energy of youth, discovery and lifelong learning. Clifton College, which preceded Sunset in its location, was established in 1896. When it was consolidated with Texas Lutheran College in 1953, the original buildings sat empty until the local community conspired to begin a ministry that would serve the aging population. In accordance with its legacy, Lutheran Sunset Ministries now serves as a leading resource for senior healthcare education throughout the broader community.",
  what_description: "As part of our program we would like to invite different groups of diverse folks to join our ranks and teach music and singing to some of our residents. We look for warm, decent and energetic bands or singers that would like to give one hour of their time with weekly based volunteering. Book now to get to know the residence and get your interview. Nothing like music to provide good energy.",
  meeting_address: "campeche 233 condesa",
  activity_address: "campeche 233 condesa",
  capacity: 5,
  donation: 0,
  start_date: "20/06/2020",
  end_date: "20/07/2020",
  requirements: "Songs to be thought, instruments, rehearsal prep")
file_one = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590544984/slider-fellas-1140x460_ci7fet.jpg' )
activity_3.photos.attach(io: file_one, filename: 'senior1.png', content_type: 'image/png')
file_two = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590545181/_112000835_outsidecarehome_w2xxis.jpg' )
activity_3.photos.attach(io: file_two, filename: 'senior2.png', content_type: 'image/png')
review_1 = Review.create!(
  activity: activity_2,
  user: user_3,
  description: "Overall it was a great experience, I’m glad I joined, lot’s of cool people and a reality check for sure",
  rating: 4)

user_4 = User.create!(nickname: "Carlos", email:"carlos@gmail.com", password:"123456789", persona_description: "Carlos is the founder of la mano del mono, he has been working to fight poverty and hunger for the last 3 years and now coordinates all activities along the country to change society for the better.")
profile_picture4 = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1591924717/dkoad2rc2s93odgfk6d6fu7tf0vs.png' )
user_4.photo.attach(io: profile_picture4, filename: 'pp4.png', content_type: 'image/png')
activity_4 = Activity.create!(
  title: "Chiapas is in need of resources to protect their jungle!",
  category: donation,
  user: user_4,
  website: "http://lamanodelmono.org",
  who_description: "We are a social Enterprise founded in 2009 in Chiapas. Our organization generates local development opportunities through ecotourism and environmental education while Natural Protected Areas we depend on, are preserved. We connect local community ecotouristic enterprises with new targets, which travel in low tourism seasons. Thus we support and enhance local community business development.",
  why_description: "During the last 50 years, half of the Mexican forests have disappeared and 50% of local communities have migrated because of the lack of opportunities in their lands.",
  what_description: "We are looking for resources either monetary or food and clothing for the communities in Chiapas.",
  meeting_address: "Simón Bolivar 54, Col. Guerrero",
  activity_address: "Simón Bolivar 54, Col. Guerrero",
  capacity: 10,
  donation: 1500,
  start_date: "20/06/2020",
  end_date: "20/07/2020",
  requirements: "no requirements")
file_one = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590544422/AVZ_022218_Triunfo_3520-1024x683_ccj2x9.jpg' )
activity_4.photos.attach(io: file_one, filename: 'mono1.png', content_type: 'image/png')
file_two = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590544428/AVZ_022818_Triunfo_9199-1024x683_pfcvtk.jpg' )
activity_4.photos.attach(io: file_two, filename: 'mono2.png', content_type: 'image/png')
file_three = URI.open('https://res.cloudinary.com/dthacgw4y/image/upload/v1590544435/AVZ_022818_Triunfo_9386-1024x683_kkpuva.jpg' )
activity_4.photos.attach(io: file_three, filename: 'mono3.png', content_type: 'image/png')
review_1 = Review.create!(
  activity: activity_4,
  user: user4,
  description: "I mean, it was cool, I took my 2 children so they can understand the other side of the coin and I think it was worth it, but a little insercure tho.",
  rating: 3)


p "Created #{Activity.count} activities"


