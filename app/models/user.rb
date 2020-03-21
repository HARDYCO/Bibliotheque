class User < ApplicationRecord
  has_secure_password
  def to_session
    {id: id}
  end
end
