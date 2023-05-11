class RefreshArtJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "let,s refresh the page"
  end
end
