## github를 통한 작업 방식 

```bash
맨처음1) git clone https://github.com/BelieveTing/Ting.git
1)을 옛날에 한번이라도 했으면, 2) git checkout develop origin/develop (오류 뜨면 git fetch하고 나서 다시 ㄱㄱ)
3) git checkout -b feature/xxxx develop
   -> 이건 이제 새로운 작업 공간(브랜치)을 만드는 절차
4) 이제부터 작업하면 됨, 끝났으면
5) git commit -a -m "아무거나 적으면됨"
6) git push -u origin feature/xxxx branch
```

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
