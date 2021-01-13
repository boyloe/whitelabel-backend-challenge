require 'rails_helper'

# RSpec.describe "Wrappers", type: :request do
#     it "takes string and wraps per column number" do
#     get :index, params: {string: "Forage Shoreditch disrupt Pitchfork meh.", column_number: 20}
#     expect(response).to have_http_status(:ok)    
#     end
# end

RSpec.describe WrapperController, type: :controller do
    describe "GET index" do
        it "returns a successful response" do
            get :index, params: {string: "How now brown cow", column_number: 20}
            expect(response).to be_successful
        end

        it "returns correctly wrapped string if input is less than column_number" do
            get :index, params: {string: "How now brown cow", column_number: 20}
            expect(response.body).to eq("How now brown cow")

        end

        it "returns correctly wrapped string" do
            get :index, params: {string: "And the dish ran away with the spoon", column_number: 20}
            expect(response.body).to eq("And the dish ran\naway with the spoon")

        end
        it "returns correctly wrapped string" do
            get :index, params: {string: "I really hope I get this job at Whitelabel Collaborative", column_number: 20}
            expect(response.body).to eq("I really hope I get\nthis job at\nWhitelabel\nCollaborative")
        end

        it "returns correctly wrapped string if word has no spaces" do
            get :index, params: {string: "Supercalifragilisticexpialidocious", column_number: 5}
            expect(response.body).to eq("Super\ncalif\nragil\nistic\nexpia\nlidoc\nious")
        end

    end
end
