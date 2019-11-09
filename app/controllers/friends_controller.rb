class FriendsController < ApplicationController
    def become_friends
        friend = Friend.find_by(user_id: current_user.id, post_id: params[:id])
        if friend.nil?
            Friend.create(user_id: current_user.id, post_id: params[:id])
        else
            friend.destroy
        end
        redirect_to request.referrer
    end
end
