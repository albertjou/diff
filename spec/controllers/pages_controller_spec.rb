require 'spec_helper'

describe PagesController do

  describe 'GET :home from /' do
    before do
      FactoryGirl.create_list(:task, 10)
    end

    describe "as HTML" do
      before do
        get :home
      end

      it "should respond with a status 200" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "should render the home template" do
        expect(response).to render_template("home")
      end

      it "should show the tasks in @tasks" do
        expect(assigns(:tasks)).to be # Thanks, Shakespeare
        expect(assigns(:tasks).length).to eq(10)
        expect(assigns(:tasks).first.class).to eq(Task)
        expect(assigns(:tasks)).to match_array(Task.all)
      end
    end

  end
end