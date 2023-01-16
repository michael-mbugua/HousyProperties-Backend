class Tenant < ApplicationRecord
    ##validtion
    has_secure_password
    validates :name, :phone_no, :unit_type, :balance_due,:property_id,:date_in, presence: true
    belongs_to :property

    def generate_password_token!
        update_attribute(:password_reset_token, SecureRandom.urlsafe_base64)
        update_attribute(:password_reset_sent_at, Time.zone.now)
    end

    def activated?
        self.activated
      end
    
      def authenticated?(attribute, token)
        digest = send("#{attribute}_digest")
        return false if digest.nil?
        BCrypt::Password.new(digest).is_password?(token)
      end
    
      def password_reset_expired?
        password_reset_sent_at < 2.hours.ago
    end

    
end
