class SampleWorker
  include Sidekiq::Worker
  include AutoLogger

  def perform
    logger.info 'Complete simple job!'
  end
end
