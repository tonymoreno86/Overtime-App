namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    puts 'Im in a rake task!'
    #1 Schedule to run on Sundat at 5pm
    #2 Iterate over all employees
    #3 Skip AdminUsers
    #4 Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # number: "555-55-55"
    # number: "5555555"
    #No space or dashes
    # exactly 10 chracters
    # all characters have to be a number
  end

end
