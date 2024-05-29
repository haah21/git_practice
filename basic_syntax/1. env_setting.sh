# git add . 은 모든 변경 사항 staging area로 이동
git add .

# git commit은 staging area의 변경사항을 확정 짓고 commitID 생성
git commit

# 원격 repo에 upload
git push origin 브랜치명

# github 인증방법 2가지
# 1. token 인증방식 : github에서 직접 보안키(token) 발급

# 2. 제3자인증(oauth) 방식



# github 프로젝트 생성 방법 2가지
# 방법1. 원격 repo 생성 후 clone


# 방법 2.로컬에서부터 이미 개발된 프로젝트가 존재시에 github 업로드
# 해당 프로젝트 경로에 .git 폴더 생성
git init

# 원격지 주소를 생성 및 추가
# git clone 하면 그냥 새로운 폴더를 만드는 거라서 이렇게 하면 안 됨
git remote add origin 레포주소
#원격지 주소 삭제
git remote remove origin
# 원격주소 변경
git remote set-url origin 레포주소

# git 설정 정보 조회
git config --list