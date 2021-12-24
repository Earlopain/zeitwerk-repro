class TestWorker
  include Sidekiq::Worker

  def perform
    logger.info A.test
    logger.info B::C.test
  end
end
