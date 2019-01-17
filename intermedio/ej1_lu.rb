=begin
(0..5).each do |i|
  puts "Value: #{i}"
  redo if i > 2
end


(0..5).each do |i|
  puts "Value: #{i}"
  retry if i > 2
end


def publish_to_api(data={})
  tries = 3
  begin
    DataLibrary.publish(data)
    logger.info "success!"
  rescue DataLibraryFailureException => e
    tries -= 1
    if tries > 0
      retry
    else
      logger.info "Oh Noes!"
    end
  end
end
=end
User.each do |user|
  begin
    raise if user.name == obj_user.name
  rescue
    count += 1
    retry
  end
end