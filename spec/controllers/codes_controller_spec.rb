require 'rails_helper'

describe CodesController do

  def valid_attributes
    attributes_for(:code)
  end



  describe "#create" do
    describe "with valid params" do
      it "creates a show Code" do
        expect {
          post :create, { code: valid_attributes }
        }.to change(Code, :count).by(1)
      end
    end
  end

end