# 기존 사용자 삭제 & 기존 좋아요 삭제
User.destroy_all

# 더미 사용자 생성
# 애니로그인 10개만 보이는듯함
user_1 = User.create(email: "1@1.com", password: "123123", password_confirmation: "123123")
user_2 = User.create(email: "2@2.com", password: "123123", password_confirmation: "123123")
user_3 = User.create(email: "3@3.com", password: "123123", password_confirmation: "123123")
user_4 = User.create(email: "4@4.com", password: "123123", password_confirmation: "123123")
user_5 = User.create(email: "5@5.com", password: "123123", password_confirmation: "123123")
user_6 = User.create(email: "6@6.com", password: "123123", password_confirmation: "123123")
user_7 = User.create(email: "7@7.com", password: "123123", password_confirmation: "123123")
user_8 = User.create(email: "8@8.com", password: "123123", password_confirmation: "123123")
user_9 = User.create(email: "9@9.com", password: "123123", password_confirmation: "123123")
user_10 = User.create(email: "10@10.com", password: "123123", password_confirmation: "123123")
user_11 = User.create(email: "11@11.com", password: "123123", password_confirmation: "123123")
user_12 = User.create(email: "12@12.com", password: "123123", password_confirmation: "123123")
user_13 = User.create(email: "13@13.com", password: "123123", password_confirmation: "123123")
user_14 = User.create(email: "14@14.com", password: "123123", password_confirmation: "123123")
user_15 = User.create(email: "15@15.com", password: "123123", password_confirmation: "123123")
user_16 = User.create(email: "16@16.com", password: "123123", password_confirmation: "123123")
user_17 = User.create(email: "17@17.com", password: "123123", password_confirmation: "123123")
user_18 = User.create(email: "18@18.com", password: "123123", password_confirmation: "123123")
user_19 = User.create(email: "19@19.com", password: "123123", password_confirmation: "123123")
user_20 = User.create(email: "20@20.com", password: "123123", password_confirmation: "123123")
user_21 = User.create(email: "21@21.com", password: "123123", password_confirmation: "123123")
user_22 = User.create(email: "22@22.com", password: "123123", password_confirmation: "123123")
# user_23 = User.create(email: "23@23.com", password: "123123", password_confirmation: "123123")
# user_24 = User.create(email: "24@24.com", password: "123123", password_confirmation: "123123")
# user_25 = User.create(email: "25@25.com", password: "123123", password_confirmation: "123123")
# user_26 = User.create(email: "26@26.com", password: "123123", password_confirmation: "123123")
# user_27 = User.create(email: "27@27.com", password: "123123", password_confirmation: "123123")
# user_28 = User.create(email: "28@28.com", password: "123123", password_confirmation: "123123")
# user_29 = User.create(email: "29@29.com", password: "123123", password_confirmation: "123123")
# user_30 = User.create(email: "30@30.com", password: "123123", password_confirmation: "123123")


# 기존 글 삭제
Post.destroy_all

# 더미 글 생성 & 더미 댓글 생성
#여자는 짝수, 남자는 홀수
post_1 = Post.create(name: "남자1호(모두에게호감신청함)", owner_id: "1", sex: "남자", selfintroduction: "안녕하세요", status: "솔로", age: '23', home: '서울')
post_2 = Post.create(name: "남자2호(싱글)", owner_id: "3", sex: "남자", selfintroduction: "굿모닝하세요", status: "솔로", age: '23', home: '서울')
post_3 = Post.create(name: "여자1호(싱글)", owner_id: "2", sex: "여자", selfintroduction: "굿나잇하세요", status: "솔로", age: '23', home: '경기남부')
post_4 = Post.create(name: "여자2호(싱글아님)", owner_id: "4", sex: "여자", selfintroduction: "잘하세요", status: "연애중", age: '23', home: '서울')
post_5 = Post.create(name: "여자3호(싱글)", owner_id: "6", sex: "여자", selfintroduction: "잘 좀 하세요", status: "솔로", age: '23', home: '경기북부')
post_6 = Post.create(name: "여자4호(싱글)", owner_id: "8", sex: "여자", selfintroduction: "안녕히계세요", status: "솔로", age: '23', home: '경상남도')
post_7 = Post.create(name: "남자3호(싱글아님)", owner_id: "5", sex: "남자", selfintroduction: "저는보라카이갑니다", status: "연애중", age: '23', home: '서울')
post_8 = Post.create(name: "남자4호(싱글)", owner_id: "7", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_9 = Post.create(name: "여자5호(싱글)", owner_id: "10", sex: "여자", selfintroduction: "안녕히계세요", status: "솔로", age: '23', home: '경상남도')
post_10 = Post.create(name: "남자5호(싱글)", owner_id: "9", sex: "남자", selfintroduction: "안녕히계세요", status: "솔로", age: '23', home: '경상남도')
post_11 = Post.create(name: "이사람은 모든사람과 친구임", owner_id: "11", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_12 = Post.create(name: "이사람한테 모든 소개신청 들어옴", owner_id: "12", sex: "여자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_13 = Post.create(name: "남자6호(싱글)", owner_id: "13", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_14 = Post.create(name: "남자7호(싱글아님)", owner_id: "14", sex: "남자", selfintroduction: "코딩재밌다", status: "연애중", age: '23', home: '서울')
post_15 = Post.create(name: "남자8호(싱글)", owner_id: "15", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_16 = Post.create(name: "남자9호(싱글)", owner_id: "16", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_17 = Post.create(name: "남자10호(싱글)", owner_id: "17", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_18 = Post.create(name: "여자6호(유부녀)", owner_id: "18", sex: "여자", selfintroduction: "코딩재밌다", status: "연애중", age: '23', home: '서울')
post_19 = Post.create(name: "여자7호(싱글)", owner_id: "19", sex: "여자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_20 = Post.create(name: "여자8호(싱글)", owner_id: "20", sex: "여자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
post_21 = Post.create(name: "여자9호(싱글아님)", owner_id: "21", sex: "여자", selfintroduction: "코딩재밌다", status: "연애중", age: '23', home: '서울')
post_22 = Post.create(name: "여자10호(싱글)", owner_id: "22", sex: "여자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_23 = Post.create(name: "여자23호(모솔)", owner_id: "23", sex: "여자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_24 = Post.create(name: "남자24호(싱글)", owner_id: "24", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_25 = Post.create(name: "여자25호(싱글)", owner_id: "25", sex: "여자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_26 = Post.create(name: "남자26호(싱글)", owner_id: "26", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_27 = Post.create(name: "남자27호(싱글)", owner_id: "27", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_28 = Post.create(name: "여자28호(싱글)", owner_id: "28", sex: "여자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_29 = Post.create(name: "남자29호(싱글)", owner_id: "29", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')
# post_30 = Post.create(name: "남자30호(싱글)", owner_id: "30", sex: "남자", selfintroduction: "코딩재밌다", status: "솔로", age: '23', home: '서울')



# post_1.comments.create(body: "네 안녕하세요!")
# post_1.comments.create(body: "저는 별로...")

# post_2 = Post.create(title: "worklion", content: "B반")
# post_2.comments.create(body: "와아!!!")
# post_2.comments.create(body: "화이팅!!!")

# 더미 좋아요 생성
# user_1.likes.create(post: post_1)
# user_2.likes.create(post: post_1)
# user_1.likes.create(post: post_2)
# user_2.likes.create(post: post_2)
# user_3.likes.create(post: post_2)

# # 더미 친구요청들 생성
#5번하고 10번은 프로필 등록 안 했음
Friend.create(user_id: 11, owner_id: 1)
Friend.create(user_id: 11, owner_id: 2)
Friend.create(user_id: 11, owner_id: 3)
Friend.create(user_id: 11, owner_id: 4)
Friend.create(user_id: 11, owner_id: 5)
Friend.create(user_id: 11, owner_id: 6)
Friend.create(user_id: 11, owner_id: 7)
Friend.create(user_id: 11, owner_id: 8)
Friend.create(user_id: 11, owner_id: 9)
Friend.create(user_id: 11, owner_id: 10)
Friend.create(user_id: 11, owner_id: 12)
Friend.create(user_id: 1, owner_id: 11)
Friend.create(user_id: 2, owner_id: 11)
Friend.create(user_id: 3, owner_id: 11)
Friend.create(user_id: 4, owner_id: 11)
Friend.create(user_id: 5, owner_id: 11)
Friend.create(user_id: 6, owner_id: 11)
Friend.create(user_id: 7, owner_id: 11)
Friend.create(user_id: 8, owner_id: 11)
Friend.create(user_id: 9, owner_id: 11)
Friend.create(user_id: 10, owner_id: 11)
Friend.create(user_id: 12, owner_id: 1)
Friend.create(user_id: 12, owner_id: 2)
Friend.create(user_id: 12, owner_id: 3)
Friend.create(user_id: 12, owner_id: 4)
Friend.create(user_id: 12, owner_id: 5)
Friend.create(user_id: 12, owner_id: 6)
Friend.create(user_id: 12, owner_id: 7)
Friend.create(user_id: 12, owner_id: 8)
Friend.create(user_id: 12, owner_id: 9)
Friend.create(user_id: 12, owner_id: 10)
Friend.create(user_id: 12, owner_id: 11)
Friend.create(user_id: 1, owner_id: 12)
Friend.create(user_id: 2, owner_id: 12)
Friend.create(user_id: 3, owner_id: 12)
Friend.create(user_id: 4, owner_id: 12)
Friend.create(user_id: 5, owner_id: 12)
Friend.create(user_id: 6, owner_id: 12)
Friend.create(user_id: 7, owner_id: 12)
Friend.create(user_id: 8, owner_id: 12)
Friend.create(user_id: 9, owner_id: 12)
Friend.create(user_id: 10, owner_id: 12)
Friend.create(user_id: 11, owner_id: 12)
Friend.create(user_id: 1, owner_id: 2)
Friend.create(user_id: 1, owner_id: 3)
Friend.create(user_id: 1, owner_id: 4)
Friend.create(user_id: 1, owner_id: 5)
Friend.create(user_id: 1, owner_id: 6)
Friend.create(user_id: 1, owner_id: 7)
Friend.create(user_id: 1, owner_id: 8)
Friend.create(user_id: 1, owner_id: 9)
Friend.create(user_id: 2, owner_id: 10)
Friend.create(user_id: 2, owner_id: 3)
Friend.create(user_id: 2, owner_id: 5)
Friend.create(user_id: 2, owner_id: 6)
Friend.create(user_id: 2, owner_id: 9)
Friend.create(user_id: 3, owner_id: 1)
Friend.create(user_id: 3, owner_id: 2)
Friend.create(user_id: 3, owner_id: 5)
 Friend.create(user_id: 3, owner_id: 7)
 Friend.create(user_id: 3, owner_id: 9)
 Friend.create(user_id: 4, owner_id: 1)
 Friend.create(user_id: 4, owner_id: 3)
 Friend.create(user_id: 4, owner_id: 6)
 Friend.create(user_id: 4, owner_id: 8)
 Friend.create(user_id: 5, owner_id: 2)
 Friend.create(user_id: 5, owner_id: 3)
 Friend.create(user_id: 5, owner_id: 6)
 Friend.create(user_id: 5, owner_id: 8)
 Friend.create(user_id: 5, owner_id: 9)
 Friend.create(user_id: 6, owner_id: 1)
 Friend.create(user_id: 6, owner_id: 2)
 Friend.create(user_id: 6, owner_id: 4)
 Friend.create(user_id: 6, owner_id: 7)
 Friend.create(user_id: 6, owner_id: 9)
 Friend.create(user_id: 7, owner_id: 2)
 Friend.create(user_id: 7, owner_id: 3)
 Friend.create(user_id: 7, owner_id: 5)
 Friend.create(user_id: 7, owner_id: 7)
 Friend.create(user_id: 7, owner_id: 8)
 Friend.create(user_id: 8, owner_id: 2)
 Friend.create(user_id: 8, owner_id: 3)
 Friend.create(user_id: 8, owner_id: 4)
 Friend.create(user_id: 8, owner_id: 7)
 Friend.create(user_id: 8, owner_id: 9)
 Friend.create(user_id: 9, owner_id: 1)
 Friend.create(user_id: 9, owner_id: 2)
 Friend.create(user_id: 9, owner_id: 4)
 Friend.create(user_id: 9, owner_id: 5)
 Friend.create(user_id: 9, owner_id: 6)
 Friend.create(user_id: 9, owner_id: 8)
#  Friend.create(user_id: 28, owner_id: 17)
#  Friend.create(user_id: 23, owner_id: 6)
#  Friend.create(user_id: 27, owner_id: 15)
#  Friend.create(user_id: 11, owner_id: 4)
#  Friend.create(user_id: 12, owner_id: 8)
#  Friend.create(user_id: 13, owner_id: 1)
#  Friend.create(user_id: 10, owner_id: 4)
#  Friend.create(user_id: 6, owner_id: 5)
#  Friend.create(user_id: 25, owner_id: 20)
#  Friend.create(user_id: 13, owner_id: 13)
#  Friend.create(user_id: 17, owner_id: 10)
#  Friend.create(user_id: 3, owner_id: 5)
#  Friend.create(user_id: 8, owner_id: 17)
#  Friend.create(user_id: 20, owner_id: 3)
#  Friend.create(user_id: 15, owner_id: 27)
#  Friend.create(user_id: 1, owner_id: 25)
#  Friend.create(user_id: 11, owner_id: 23)
#  Friend.create(user_id: 15, owner_id: 12)
#  Friend.create(user_id: 25, owner_id: 4)
#  Friend.create(user_id: 21, owner_id: 25)
#  Friend.create(user_id: 25, owner_id: 19)
#  Friend.create(user_id: 1, owner_id: 12)
#  Friend.create(user_id: 11, owner_id: 22)
#  Friend.create(user_id: 27, owner_id: 25)
#  Friend.create(user_id: 6, owner_id: 26)
#  Friend.create(user_id: 9, owner_id: 21)
#  Friend.create(user_id: 24, owner_id: 29)
#  Friend.create(user_id: 10, owner_id: 14)
#  Friend.create(user_id: 4, owner_id: 13)
#  Friend.create(user_id: 7, owner_id: 15)
#  Friend.create(user_id: 8, owner_id: 22)
#  Friend.create(user_id: 9, owner_id: 16)
#  Friend.create(user_id: 3, owner_id: 9)
#  Friend.create(user_id: 14, owner_id: 28)
#  Friend.create(user_id: 27, owner_id: 1)
#  Friend.create(user_id: 21, owner_id: 27)
#  Friend.create(user_id: 4, owner_id: 5)
#  Friend.create(user_id: 13, owner_id: 22)
#  Friend.create(user_id: 14, owner_id: 23)
#  Friend.create(user_id: 26, owner_id: 12)
#  Friend.create(user_id: 1, owner_id: 24)
#  Friend.create(user_id: 18, owner_id: 2)
#  Friend.create(user_id: 30, owner_id: 1)
#  Friend.create(user_id: 18, owner_id: 9)
#  Friend.create(user_id: 30, owner_id: 19)
#  Friend.create(user_id: 19, owner_id: 6)
#  Friend.create(user_id: 11, owner_id: 13)
#  Friend.create(user_id: 22, owner_id: 10)
#  Friend.create(user_id: 19, owner_id: 27)
 
# 소개신청해달라고 하는 거 신청Heart.create(user_id: 1, lover_id: 2, host_id: 12)
Heart.create(user_id: 1, lover_id: 4, host_id: 12)
Heart.create(user_id: 1, lover_id: 6, host_id: 12)
Heart.create(user_id: 1, lover_id: 8, host_id: 12)
Heart.create(user_id: 1, lover_id: 10, host_id: 12)
Heart.create(user_id: 2, lover_id: 1, host_id: 4)
Heart.create(user_id: 2, lover_id: 3, host_id: 4)
Heart.create(user_id: 2, lover_id: 5, host_id: 4)
Heart.create(user_id: 2, lover_id: 7, host_id: 4)
Heart.create(user_id: 2, lover_id: 9, host_id: 4)
Heart.create(user_id: 3, lover_id: 2, host_id: 12)
Heart.create(user_id: 3, lover_id: 4, host_id: 12)
Heart.create(user_id: 3, lover_id: 6, host_id: 12)
Heart.create(user_id: 3, lover_id: 8, host_id: 12)
Heart.create(user_id: 3, lover_id: 10, host_id: 12)
Heart.create(user_id: 4, lover_id: 1, host_id: 6)
Heart.create(user_id: 4, lover_id: 3, host_id: 6)
Heart.create(user_id: 4, lover_id: 5, host_id: 6)
Heart.create(user_id: 4, lover_id: 7, host_id: 6)
Heart.create(user_id: 4, lover_id: 9, host_id: 6)
Heart.create(user_id: 5, lover_id: 2, host_id: 11)
Heart.create(user_id: 5, lover_id: 4, host_id: 11)
Heart.create(user_id: 5, lover_id: 6, host_id: 11)
Heart.create(user_id: 5, lover_id: 8, host_id: 11)
Heart.create(user_id: 5, lover_id: 10, host_id: 11)
Heart.create(user_id: 6, lover_id: 2, host_id: 1)
Heart.create(user_id: 6, lover_id: 4, host_id: 1)
Heart.create(user_id: 6, lover_id: 7, host_id: 1)
Heart.create(user_id: 6, lover_id: 8, host_id: 1)
Heart.create(user_id: 6, lover_id: 10, host_id: 1)
Heart.create(user_id: 7, lover_id: 1, host_id: 2)
Heart.create(user_id: 7, lover_id: 3, host_id: 2)
Heart.create(user_id: 7, lover_id: 5, host_id: 2)
Heart.create(user_id: 7, lover_id: 8, host_id: 2)
Heart.create(user_id: 7, lover_id: 9, host_id: 2)
Heart.create(user_id: 8, lover_id: 1, host_id: 2)
Heart.create(user_id: 8, lover_id: 3, host_id: 2)
Heart.create(user_id: 8, lover_id: 5, host_id: 2)
Heart.create(user_id: 8, lover_id: 7, host_id: 2)
Heart.create(user_id: 8, lover_id: 9, host_id: 2)
Heart.create(user_id: 9, lover_id: 1, host_id: 6)
Heart.create(user_id: 9, lover_id: 3, host_id: 6)
Heart.create(user_id: 9, lover_id: 5, host_id: 6)
Heart.create(user_id: 9, lover_id: 7, host_id: 6)
Heart.create(user_id: 9, lover_id: 8, host_id: 6)