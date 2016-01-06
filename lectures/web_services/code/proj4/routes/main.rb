# encoding: utf-8
# main.rb
class TodoApp < Sinatra::Application

  post '/tasks' do
    data = JSON.parse(request.body.read)
    task = Task.create(:description => data['description'])
    task.to_json
  end

  get '/tasks/:id' do
    task = Task[params[:id]]
    if task.nil?
      status 404
    else
      status 200
      task.to_json
    end
  end

  put '/tasks/:id' do
    data = JSON.parse(request.body.read)
    task = Task[params[:id]]
    if task.nil?
      status 404
    else
      task[:description] = data['description']
      task.save
      task.to_json
    end
  end

  delete '/tasks/:id' do
    task = Task[params[:id]]
    if task.nil?
      status 404
    else
      if task.delete
        status 200
      else
        status 500
      end
    end
  end

  get '/tasks' do
    tasks = DB[:tasks]
    tasks.all.to_json
  end

end
