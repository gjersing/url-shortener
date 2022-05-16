require "test_helper"

class UrlTest < ActiveSupport::TestCase
  def setup
    @validUrl = Url.create(original_url: "http://example.com", stub: "exmpl")
    @noStubUrl = Url.new(original_url: "http://example.com")
    @noOrigUrl = Url.new(stub: "stub")
  end

  test "url should be valid" do
    assert @validUrl.valid?
  end

  test "url has no stub" do
    assert_not @noStubUrl.valid?
  end

  test "url has no original" do
    assert_not @noOrigUrl.valid?
  end

  test "stub should be unique" do
    duplicate_url = @validUrl.dup
    assert_not duplicate_url.valid?
  end
end
