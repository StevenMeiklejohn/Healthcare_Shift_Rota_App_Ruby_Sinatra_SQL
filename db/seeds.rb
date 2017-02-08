require 'pry-byebug'
require_relative('../models/employee.rb')
require_relative('../models/client.rb')
require_relative('../models/shift.rb')

Employee.delete_all()
Client.delete_all()
Shift.delete_all()

employee1 = Employee.new({
  'name' => 'John Matrix', 
  'bio' => 'Murdered an entire island of professional soldiers when his daughter was kidnapped. Expert in hand to hand combat, explosives and one liners', 
  'image' => 'http://vignette3.wikia.nocookie.net/uncyclopedia/images/6/64/Arnie_rocket_launcher.jpg/revision/latest?cb=20100729153044', 
  'start_date' => '2010-10-4'
  })

employee2 = Employee.new({ 
  'name' => 'Charles Bronson', 
  'bio' => 'Unbelievably, spectacularly, unlucky when it comes to women and violent crime. He likes his revenge served at any temperature. Also sports an unusual moustache', 
  'image' => 'http://saboteur365.files.wordpress.com/2014/09/charles-bronson-in-death-wish-movie.png?w=584', 
  'start_date' => '2012-05-06'
  })

employee3 = Employee.new({
  'name' => 'Slider', 
  'bio' => 'Piot. Enjoys playin with the boys (mainly volleyball). Wingman. Stinks.', 
  'image' => 'https://s-media-cache-ak0.pinimg.com/originals/15/d9/45/15d945ab654515ee9344bef8351b80aa.jpg', 
  'start_date' => '2015-10-19'
  })

employee4 = Employee.new({ 
  'name' => 'Dwayne Hicks', 
  'bio' => 'Corporal in space marines. Prone to nuking sites from orbit (only way to be sure). No offence.', 
  'image' => 'http://vignette2.wikia.nocookie.net/avp/images/1/15/Hicks_drop.jpg/revision/latest?cb=20130416055835', 
  'start_date' => '2014-03-24'
  })

employee5 = Employee.new({ 
  'name' => 'Alex Murphy', 
  'bio' => 'Half man, half machine, all carer', 
  'image' => 'http://images.fandango.com/images/fandangoblog/robocop813-final.jpg', 
  'start_date' => '2014-03-24'
  })

employee6 = Employee.new({ 
  'name' => 'Marion Cobreti', 
  'bio' => 'Likes; Toothpicks, Trumps, country music. Dislikes; Due process, human rights.',
  'image' => 'http://www.monologuedb.com/wp-content/uploads/2011/03/sylvester-stallone-Marion-Cobretti-cobra.jpg', 
  'start_date' => '2014-03-24'
  })


e1 = employee1.save
e2 = employee2.save
e3 = employee3.save
e4 = employee4.save
e5 = employee5.save
e6 = employee6.save


client1 = Client.new({ 
 'name' => 'Mumm-Ra The Ever Living',
 'image' => 'http://www.rubberslug.com/user/cb2d416666eb484abb638d9889e9ec9c/326503-5452387-mummrawatermk.jpg',
 'address' => 'Black Pyramid, Third Earth', 
 'requirements' => 'Ancient spirits of evil, gluten free diet'
 })

client2 = Client.new({ 
  'name' => 'Zelda',
  'image' => 'https://pbs.twimg.com/profile_images/445318550412996608/rCAR7sep.jpeg', 
  'address' => 'Unknown', 
  'requirements' => 'Planetery domination, bed baths.'
  })

client3 = Client.new({ 
  'name' => 'Wicked Step Mother', 
  'address' => '45a Sinclair Crescent', 
  'image' => 'http://www.cinechronicle.com/wp-content/uploads/2012/11/Lady-Tremaine.jpg',
  'requirements' => 'A kind hearted servant to torture. A grade A asshole to lavish with love.'
  })

client4 = Client.new({ 
  'name' => 'Vulture', 
  'image' => 'http://static.comicvine.com/uploads/original/0/394/78015-36314-vulture.gif',
  'address' => 'New York', 
  'requirements' => 'The humiliating defeat of Spider-man. Arthritis medication.'
  })


c1 = client1.save
c2 = client2.save
c3 = client3.save
c4 = client4.save


shift1 = Shift.new( {'employee_id' => e1.id, 'client_id' => c1.id, 'shift_report' => 'report', 'shift_date' => '2016-05-26', 'shift_time' => '18:00', 'shift_status' => 'taken' }).save()

shift2 = Shift.new( {'employee_id' => e2.id, 'client_id' => c2.id, 'shift_report' => 'report', 'shift_date' => '2016-05-26', 'shift_time' => '09:00', 'shift_status' => 'taken'}) .save()

shift3 = Shift.new( {'employee_id' => e3.id, 'client_id' => c3.id, 'shift_report' => 'report', 'shift_date' => '2016-05-26', 'shift_time' => '12:00', 'shift_status' => 'taken'}) .save()

shift4 = Shift.new( {'employee_id' => e4.id, 'client_id' => c4.id, 'shift_report' => 'report', 'shift_date' => '2016-05-26', 'shift_time' => '15:00', 'shift_status' => 'taken'}) .save()

shift5 = Shift.new( {'employee_id' => e4.id, 'client_id' => c4.id, 'shift_report' => 'report', 'shift_date' => '2016-05-27', 'shift_time' => '15:00', 'shift_status' => 'available'}) .save()

shift6 = Shift.new( {'employee_id' => e4.id, 'client_id' => c4.id, 'shift_report' => 'report', 'shift_date' => '2016-05-28', 'shift_time' => '15:00', 'shift_status' => 'available'}) .save()

shift7 = Shift.new( {'employee_id' => e1.id, 'client_id' => c4.id, 'shift_report' => 'report', 'shift_date' => '2016-05-30', 'shift_time' => '09:00', 'shift_status' => 'available'}) .save()

shift8 = Shift.new( {'employee_id' => e2.id, 'client_id' => c3.id, 'shift_report' => 'report', 'shift_date' => '2016-05-30', 'shift_time' => '09:00', 'shift_status' => 'available'}) .save()

shift9 = Shift.new( {'employee_id' => e4.id, 'client_id' => c4.id, 'shift_report' => 'report', 'shift_date' => '2016-05-30', 'shift_time' => '15:00', 'shift_status' => 'available'}) .save()

shift10 = Shift.new( {'employee_id' => e5.id, 'client_id' => c3.id, 'shift_report' => 'report', 'shift_date' => '2016-05-30', 'shift_time' => '15:00', 'shift_status' => 'available'}) .save()

