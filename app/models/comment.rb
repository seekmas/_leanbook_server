class Comment < ActiveRecord::Base

  belongs_to :article
  belongs_to :user

  def createdAt
    created_at.strftime('%Y-%m-%d %H:%M:%S')
  end

end
