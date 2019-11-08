class FriendsController < ApplicationController
    def become_friends
        friend = Friend.find_by(user_email: current_user.email, post_owner_email: params[:id])
        if friend.nil?
            Friend.create(user_email: current_user.email, post_owner_email: params[:id])
        else
            friend.destroy
        end
        redirect_to request.referrer
    end
end
