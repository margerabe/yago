require 'csv'

class ImportNacebel
  def self.perform
    new.perform
  end

  def perform
    filepath = 'lib/tasks/NACEBEL_2008.csv'

    CSV.foreach(filepath, headers: :first_row) do |row|
      puts "#{row['Level']}"
    end
  end
end

namespace :import do
  task setup_logger: :environment do
    logger = Logger.new(STDOUT)
    logger.level = Logger::INFO
    Rails.logger = logger
  end

  desc 'import nacebel codes'
  task nacebel: [:setup_logger] do |_task, _args|
    ImportNacebel.perform
  end
end
