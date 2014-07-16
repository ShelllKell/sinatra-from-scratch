require "sinatra"

class MondayKisses < Sinatra::Application
  enable :sessions

  def initialize
  @email_database = Database.new
  end

  get "/" do
    @emails = @email_database.all
    erb :root, :locals => {:emails => @emails}
  end

  post "/" do
    @emails.sql("INSERT INTO users (email) VALUES ('#{params[:email]}'")
    redirect "/"
  end

 # post "/sign_up" do
 #
 # end





end