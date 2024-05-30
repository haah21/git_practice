#git add . 은 모든 변경 사항 staging area로 이동
git add .

#git commit은 staging area의 변경사항을 확정 짓고 commitID 생성
git commit

#원격 repo에 upload
git push origin 브랜치명

#github 인증방법 2가지
token 인증방식 : github에서 직접 보안키(token) 발급
#제3자인증(oauth) 방식
#github 프로젝트 생성 방법 2가지
#방법1. 원격 repo 생성 후 clone
#방법 2.로컬에서부터 이미 개발된 프로젝트가 존재시에 github 업로드
#해당 프로젝트 경로에 .git 폴더 생성
git init

#원격지 주소를 생성 및 추가
#git clone 하면 그냥 새로운 폴더를 만드는 거라서 이렇게 하면 안 됨
git remote add origin 레포주소
#원격지 주소 삭제
git remote remove origin
#원격주소 변경
git remote set-url origin 레포주소

#git 설정 정보 조회
git config --list

#타인 레포 clone 방법 2가지
#1) 커밋이력 그대로 가져오기
git clone 타인레포주소
#해당 폴더로 이동 후 git 명령어 쓰는 것
git remote set-url origin 내 레포
#별도의 add, commit 필요 없고 바로 push 가능
git push origin master(또는 name)

# 2) 커밋이력 없이 가져오기
#git clone 타인레포주소
#해당 폴더로 이동 후에 .git 폴더 삭제
git init
git remote add origin 내 레포주소
git add .
git commit -m "first project"
git push origin master

#강사님 repo에서 아무거나 제 repo로 갖고가기
commitId를 다 유지한채 가져가기(팀 작업 후 가져가기)
=> git remote set-url origin 내 레포주소
=> push origin master
fork 하면 안 됨. 그건 내가 한 게 아니라 오픈소스 프로젝트에 기여하고 싶은데 push하고 싶은 권한이 없으므로 pull request 하려고 하는 것
commitId 전부 없애고 내 레포인것처럼 가져가기
=> 받은 다음
=> .git 폴더
=> git init
=> git remote add origin 내레포
=> git add .
=> git commit
=> git push origin master

#사용자 지정 방법
#전역적 사용자(이름, email) 지정
git config --global user.name "kimseonguk197"
git config --global user.email "이메일"


#지역적 사용자(이름, email) 지정
#현재 레파지토리에 한해서만 사용자 변경
git config --local user.name "kimseonguk197"
git config --local user.email "이메일"

#config 내용 조회
#repository, 이름, email 등
git config --list
#사용자 이름 조회
git config user.name
#사용자 이메일 조회
git config user.email

#git ignore 파일 실습
확장자 .gitignore 파일 생성 후 git 추적 제외 대상 나열하는 파일이다.