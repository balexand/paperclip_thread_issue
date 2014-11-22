class CreateImageWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    Rails.logger.info "***PATH before: #{ENV['PATH']}"
    Image.create! image: File.new(Rails.root + 'test/fixtures/example.jpg')
  ensure
    Rails.logger.info"***PATH after: #{ENV['PATH']}"
  end
end
