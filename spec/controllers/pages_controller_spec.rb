require 'spec_helper'

describe PagesController do

  describe 'GET :home from /' do
    before do
      FactoryGirl.create_list(:event, 10)
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

      it "should show the events in @events" do
        expect(assigns(:events)).to be # Thanks, Shakespeare
        expect(assigns(:events).length).to eq(10)
        expect(assigns(:events).first.class).to eq(Event)
        expect(assigns(:events)).to match_array(Event.all)
      end
    end

  end
end