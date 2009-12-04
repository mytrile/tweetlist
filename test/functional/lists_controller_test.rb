require 'test_helper'

class ListsControllerTest < ActionController::TestCase
  context "on GET to :index must respond with success" do
    setup { get :new }

    should_assign_to       :list
    should_respond_with    :success
    should_render_template :new
    should_not_set_the_flash
  end

  context "on POST to :create it should save the record and redirect to list" do
    setup do
      post :create,:list => { :name =>"MyTestList",
                              :short_url => "http://testurl.com",
                              :link_attributes => [{ :url => 'http://yahoo.com'}, { :url => 'http://google.com'}] }
    end

    should_assign_to :list
    should_set_the_flash_to "Successfully created tweetlist"
    should_redirect_to("the created list") { list_url(assigns(:list)) }
  end

  context "on POST to :create without name it should print error" do
    setup do
      post :create, :list => {}
    end

    should_render_template :new
    should_set_the_flash_to "You must fill in the form fields marked with red. <a href='#' onclick=\"Effect.toggle('info','appear'); return false;\">More info &rarr;</a>"
  end
end
