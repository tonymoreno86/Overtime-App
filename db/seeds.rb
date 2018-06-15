@user = User.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Tony", 
                    last_name: "Moreno",
                    phone: '4245677608')

puts '1 user created'

AdminUser.create(email: "admin@user.com", 
                  password: "benzc230", 
                  password_confirmation: "benzc230", 
                  first_name: "Anthony", 
                  last_name: "Jay",
                  phone: '4245677608')

puts '1 Admin user created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"