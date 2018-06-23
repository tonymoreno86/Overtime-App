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
  Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"