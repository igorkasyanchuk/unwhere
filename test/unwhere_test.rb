require 'test_helper'

class Unwhere::Test < ActiveSupport::TestCase
  test "unwhere" do
    assert_equal User.where(name: 'xx').to_sql, "SELECT \"users\".* FROM \"users\" WHERE \"users\".\"name\" = 'xx'"
    assert_equal User.where(name: 'xx').unwhere.to_sql, "SELECT \"users\".* FROM \"users\""
    assert_equal User.where(name: 'xx').unwhere.where(name: 'yy').to_sql, "SELECT \"users\".* FROM \"users\" WHERE \"users\".\"name\" = 'yy'"
    assert_equal User.admins.unwhere.to_sql, "SELECT \"users\".* FROM \"users\""
  end
end
