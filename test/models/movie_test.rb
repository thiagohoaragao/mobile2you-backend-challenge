require "test_helper"

class MovieTest < ActiveSupport::TestCase
  test "should have a valid uuid" do
    @movies = Movie.all
    @movies.each do |m|
      m.id.match?(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/i)
    end
  end
end
