require_relative "../test_helper"

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "succesful post" do
  assert_difference 'ActionMailer::Base.deliveries.size', 1 do
    post :create, message: {
      name: 'shweta',
      email: 'shweta.hunagund@gmail.com',
      subject: 'hi',
      content: 'bai'
    }
  end

  assert_redirected_to new_message_path
  last_email = ActionMailer::Base.deliveries.last

  assert_equal "hi", last_email.subject
  assert_equal 'shweta.hunagund@gmail.com', last_email.to[0]
  assert_equal 'cornholio@example.com', last_email.from[0]
  assert_match(/bai/, last_email.body.to_s)

  ActionMailer::Base.deliveries.clear
end
end
