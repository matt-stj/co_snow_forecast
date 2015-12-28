every 2.hours do
  runner "UserMailer.powder_alert(User.first).deliver"
end
