class SessionsController < ApplicationController
  def create

    # Find existing session_if for requested room name
    room_name = request.params['room_name'];

    raise "You must specify a room name" if room_name.nil?


    session_id = find_or_create_session_id(room_name)
    token = generate_room_token(session_id)

    render json: {api_key: ENV['OT_API_KEY'],
                  session_id: session_id,
                  token: token}
  end

  private
    def generate_room_token (session_id)
      opentok = OpenTok::OpenTok.new ENV['OT_API_KEY'], ENV['OT_API_SECRET']
      opentok.generate_token session_id
    end

    def find_or_create_session_id (room_name)
      matched_session = OpenTalkSession.find_by(name:room_name)

      if matched_session.nil?
        opentok = OpenTok::OpenTok.new ENV['OT_API_KEY'], ENV['OT_API_SECRET']
        new_session = opentok.create_session :media_mode => :relay
        matched_session = OpenTalkSession.create(name:room_name, session_id:new_session.session_id);
      end

      matched_session.session_id
    end
end
