require 'rails_helper'

describe "codes/new" do
  before(:each) do
    assign(:code, build_stubbed(:code))
  end

  it "renders new code form" do
    render

    assert_select "form", action: codes_path, method: "post" do
      assert_select "input#code_number",       name: "code[number]"
      assert_select "select#code_category",       name: "code[category]"
      assert_select "input#code_rvu",       name: "code[rvu]"
    end
  end
end
