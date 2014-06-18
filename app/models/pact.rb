class Pact < ActiveRecord::Base
	has_many :users
	has_many :pact_user_relations

	has_many :chats
	# has_many :messages, through: :chats

	has_many :penalties

	has_many :weeks
	# has_many :workouts, through: :weeks

	alias_attribute :name, :pact_name

  attr_accessible :end_date, :is_active, :pact_name, :start_date



  # Methods
	def get_users
		User.joins(:pact_user_relations).where(pact_user_relations: { pact_id: self.id })
	end

	def get_current_week
    today = Date.today
    week = Week.where(["pact_id = ? and start_date < ? and end_date > ?", self.id, today, today]).first
    if !week
      week = Week.where(["pact_id = ?", self.id]).last
    end
    week
  end

end
