class User < ActiveRecord::Base
	has_many :pacts
	has_many :pact_user_relations

	has_many :messages
	has_many :photos

	has_many :weeks
	has_many :workouts	

	validates_uniqueness_of :email

  attr_accessible :first_name, :username, :last_name, :avatar_url, :email

	# Makes display nicer
	alias_attribute :name, :username
	def to_s
  	"#{username}"
  end


  # Methods for TOTALS
  def get_total_goal_days(current_pact)
  	Goal.where(user_id: self.id).where(pact_id: current_pact.id).sum(:goal)
 	end

 	def get_total_workout_days(current_pact)
 	end
 	def get_total_bonus_days(current_pact)
 	end

 	def get_total_missed_days(current_pact)
 		if get_total_goal_days(current_pact) > self.workouts.count
 			get_total_goal_days(current_pact) - self.workouts.count 
 		else
 			0
 		end
 	end

 	def get_total_money_owed(current_pact)
 	end


 	# Methods for WEEKLY 
 	def get_goal_days(current_week)
 	end
 	def get_workout_days(current_week)
 	end
 	def get_missed_days(current_week)
 	end
	def get_bonus_days(current_week)
 	end
 	def get_money_owed(current_week)
 	end
 	

 	# Methods for DAILY
 	def worked_out(current_week, day_of_week=0) 
 	end



end
