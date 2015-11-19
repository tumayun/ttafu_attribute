require 'test_helper'

class TestTtafuAttribute < Minitest::Test
  def before_setup
    @user = User.create!(name: 'tumayun', email: 'tumayun.2010@gmail.com')
  end

  def after_setup
    User.destroy_all
  end

  def test_when_the_name_changed_updated_at_will_be_change
    @user.name = 'mayuntu'
    updated_at = @user.updated_at
    @user.save!
    assert updated_at != @user.updated_at
  end

  def test_when_the_email_changed_updated_at_not_change
    @user.email = 'mayuntu.2010@gmail.com'
    updated_at = @user.updated_at
    @user.save!
    assert updated_at == @user.updated_at
  end
end
