class AuthorizeApiRequest
  prepend SimpleCommand

  def initialize(headers = {})
    @headers = headers
  end

  def call
    user
  end

  private attr_reader :headers

  def user
    if decoded_auth_token
      @user ||= User.find(decoded_auth_token[:user_id])
    end

    @user || errors.add(:token, 'Invalid token') && nil
  end

  #Decode the token
  def decoded_auth_token
    @decoded_auth_token||= JsonWebToken.decode(http_auth_header)
  end

  #Extract token from the HEADER
  def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    else
      errors.add(:token, 'Missing token')
    end
    nil
  end
end