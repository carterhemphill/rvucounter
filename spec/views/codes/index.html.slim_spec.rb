require 'rails_helper'

describe "codes/index" do
  before(:each) do
    assign(:code, build_stubbed(:code))
    @allCodes = [assign(:code, build_stubbed(:code)), assign(:code, build_stubbed(:code))]
    render
  end

  it "renders show code form" do
    render

    assert_select "form", action: codes_path, method: "post" do
      assert_select "input#code_number",       name: "code[number]"
      assert_select "select#code_category",       name: "code[category]"
      assert_select "input#code_rvu",       name: "code[rvu]"
    end
  end

  it "renders all codes in table" do
    assert_select "table.code-table", true
  end
end
