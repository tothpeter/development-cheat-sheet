## Test function call chain
expect_any_instance_of(User).to receive_message_chain(:notifications, :meetup, :mark_as_fetched)
