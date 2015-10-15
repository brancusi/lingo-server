class AwsController < ApplicationController
  def sign
    bucket_url = 'https://s3.amazonaws.com/lingoapp/'
    path = "audio/#{SecureRandom.uuid}.ogg"
    file = AUDIO_BUCKET.object(path)
    url = file.presigned_url(:put, acl: 'public-read')

    render json: {path:"#{bucket_url}#{path}", signed_url:url}
  end
end
