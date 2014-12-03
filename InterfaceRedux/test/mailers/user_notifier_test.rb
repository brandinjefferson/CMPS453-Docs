require 'test_helper'

class UserNotifierTest < ActionMailer::TestCase
  test "account_activation" do
    mail = UserNotifier.account_activation
    assert_equal "Account activation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "request_denied" do
    mail = UserNotifier.request_denied
    assert_equal "Request denied", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "request_approved" do
    mail = UserNotifier.request_approved
    assert_equal "Request approved", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
