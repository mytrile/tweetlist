require 'httparty'

class ListsController < ApplicationController

  include HTTParty

  def new
    @list = List.new
    2.times { @list.links.build }
  end

  def index
  end

 def create

   @list = List.new(params[:list])
   if List.last == nil
     last_id = 1
   else
     last_id = List.last.id
   end
   @list.short_url = shorten(last_id)
   if @list.save
     flash[:notice] = "Successfully created tweetlist"
     redirect_to :action => "show", :id => @list.id
   else
     flash[:error] = "You must fill in the form fields marked with red. <a href='#' onclick=\"Effect.toggle('info','appear'); return false;\">More info &rarr;</a>"
     render :new
   end

 rescue SocketError
   flash[:error] = "Shortener service is down."
   render :action => 'new'
 end

 def show
   @list = List.find(params[:id])
 end

 private

 def shorten(last_id)
   list_id = last_id + 1
   short =  ListsController.get("http://is.gd/api.php", 
                                :query => { :longurl => "http://tweetlist.heroku.com/lists/#{list_id}" } )
   short.delete("--- ")
 end

end
