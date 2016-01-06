require 'sinatra'

before do
  logger.info "Entered 'before' block."
end

after do
  logger.info "Entered 'after' block."
end

get '/' do
  logger.info "Entered '/' route."
  "Testing filters, please consult the log."
end
