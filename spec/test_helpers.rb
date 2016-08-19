def post_event(address: "enzo@enzo.com",
               email_type: "UserConfirmation",
               event: "send",
               timestamp: "1471533278")

  post '/events',
        params: {Address: address,
                 EmailType: email_type,
                 Event: event,
                 Timestamp: timestamp},
        as: :json
end
