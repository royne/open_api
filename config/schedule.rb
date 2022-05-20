env :PATH, ENV['PATH']

every 1.week do 
  rake "populating:run"
end