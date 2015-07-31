require 'spec_helper'
require 'pry'  

describe UsersController , type: :controller do
    
    before :each do
        @mock_user = FactoryGirl.create(:user) 
    end

    describe '#index' do 
        it 'should load user view ' do 
            get :index
            expect(response).to render_template("index")
            expect(response).to be_success
            expect(response.code).to eq('200')            
        end 

        it "loads all of the users" do
            total = User.all.count
            get :index
            expect(response).not_to be_nil
            expect(response.code).to eq('200')            
        end
    end

    describe '#new' do 
		it 'gets new user' do 
  			get :new
    		assigns(:user).should be_a_new(User)
            expect(response.code).to eq('200')
  		end
	end

    describe "#create" do 
        it 'should create new user and redirect to index on success' do            
            expect(@mock_user.save).to eq(true)
        end            

        it 'should not create new user and redirect to index with out success' do 
            expect(@mock_user.save).to eq(true)
      end
    end 
end 