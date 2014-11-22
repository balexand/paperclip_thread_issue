class CreateImageWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    Image.create! image: File.new(Rails.root + 'test/fixtures/example.jpg')
  end
end
