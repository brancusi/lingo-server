AWS_CREDS = Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])

Aws.config.update({
  region: 'us-east-1',
  credentials: AWS_CREDS
})

S3 = Aws::S3::Resource.new(region:'us-east-1')
AUDIO_BUCKET = S3.bucket('lingoapp')
