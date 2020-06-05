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

user_1 = User.create!(nickname: "Yessica", email: "yessica@gmail.com", password: "123456789", persona_description: "Yessica is the CEO of Cooltiva México, she has been working to fight poverty and hunger for the last 5 years and now coordinates all activities along the country to change society for the better.")
activity_1 = Activity.create!(
  title: "Cooltiva",
  category: rc,
  user: user_1,
  website: "https:/cooltiva.mx",
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

user_2 = User.create!(nickname: "Rodolfo", email: "rodolfo@gmail.com", password: "123456789", persona_description: "Rodolfo is head director of Techo México, she has been working to fight poverty and hunger for the last 5 years and now coordinates all activities along the country to change society for the better.")
activity_2 = Activity.create!(
  title: "Techo",
  category: sw,
  user: user_2,
  website: "https:/techo.com",
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

user_3 = User.create!(nickname: "Lilia", email:"lilia@gmail.com", password:"123456789", persona_description: "Lilia is the founder of lutheransunset, she has been working to fight poverty and hunger for the last 3 years and now coordinates all activities along the country to change society for the better.")
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

user_4 = User.create!(nickname: "Karla", email:"karla@gmail.com", password:"123456789", persona_description: "Karla is the founder of la mano del mono, she has been working to fight poverty and hunger for the last 3 years and now coordinates all activities along the country to change society for the better.")
activity_4 = Activity.create!(
  title: "Chiapas is in need of resources to protect their jungle!",
  category: donation,
  user: user_4,
  website: "http://lamanodelmono.org/",
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


p "Created #{Activity.count} activities"

Activity.each  do |activity|
  5.times do |review|
      review = Review.create!(
        activity: :activity,
        description: Faker::Quote.famous_last_words,
        rating: rand(1..5) )
    end
end

end
