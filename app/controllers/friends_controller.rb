class FriendsController < ApplicationController
      respond_to :js


    def become_friends
        friend_request = Friend.find_by(user_id: params[:owner_id], owner_id: current_user.id)
        friend = Friend.find_by(user_id: current_user.id, owner_id: params[:owner_id])
        if friend_request.nil?
            if friend.nil?
                Friend.new(user_id: current_user.id, owner_id: params[:owner_id]).save
                @message = Post.find_by(owner_id: params[:owner_id]).name+"님에게 친구 신청했습니다!"
            else
                friend.destroy
                @message = Post.find_by(owner_id: params[:owner_id]).name+"님에게 친구 신청을 취소했습니다!"
            end
        else
            if friend.nil?
                Friend.new(user_id: current_user.id, owner_id: params[:owner_id]).save
                @message = Post.find_by(owner_id: params[:owner_id]).name+"님과 친구가 되었습니다!"
            else
                friend.destroy
                @message = Post.find_by(owner_id: params[:owner_id]).name+"님과 친구를 끊었습니다!"
            end
        end 
        # redirect_to request.referrer
    end
end
