class SessionsController < ApplicationController
  def create

    # Find existing session_if for requested room name
    guid = request.params['guid'];

    raise "You must specify a room name" if guid.nil?

    session_id = find_or_create_session_id(guid)
    token = generate_room_token(session_id)

    render json: {
                  api_key: ENV['OT_API_KEY'],
                  session_id: session_id,
                  token: token,
                  guid: guid
                }
  end

  private
    def generate_room_token (session_id)
      opentok = OpenTok::OpenTok.new ENV['OT_API_KEY'], ENV['OT_API_SECRET']
      opentok.generate_token session_id
    end

    def find_or_create_session_id (guid)
      matched_session = OpenTalkSession.find_by(name:guid)

      if matched_session.nil?
        opentok = OpenTok::OpenTok.new ENV['OT_API_KEY'], ENV['OT_API_SECRET']
        new_session = opentok.create_session :media_mode => :relay
        matched_session = OpenTalkSession.create(name:guid, session_id:new_session.session_id);
      end

      matched_session.session_id
    end
end
