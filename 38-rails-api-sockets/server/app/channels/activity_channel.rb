class ActivityChannel < ApplicationCable::Channel
	def subscribed
		stream_from "activity_channel"

		ActionCable.server.broadcast("activity_channel", type: "all_activities", activity_history: Activity.all)
	end

	def send_activity(data)
		new_activity = Activity.create(title: data["title"])

		ActionCable.server.broadcast("activity_channel", type: "new_activity", activity: new_activity)
	end
end