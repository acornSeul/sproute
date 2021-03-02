# 👶Sproute
### 2020-2 소프트시스템개발 Spring Project  

## 프로젝트 소개
믿을 수 있는 회원들간의 중고 거래와 경매 시스템을 지원하는 성장기 아이들을 가진 부모님들을 위한 온라인 거래 플랫폼🤱

ver.1  
프로젝트 기간 : 2020년 03월 ~ 06월  
프로젝트 참여자 :  [김은수](https://github.com/eunsoo999), [김이슬](https://github.com/acornSeul), 천유정, 이문영 (총 4명)  

ver.2 <버그수정 및 기능 추가>  
프로젝트 기간 : 2021년 01월 ~  
프로젝트 참여자 : 김은수, 김이슬  

## 개발 환경

 - Spring Framework 5.2.4 
 - Spring Tool Suite 4 
 - Apache Tomcat 9.0 
 - Java 8

## 사용 기술

 - MyBatis
 - Java / JSP / JavaScript / HTML 
 - Oracle 
 - BootStrap 4.5

## 주요기능소개
### ver.1

 1. 로그인 / 회원가입  
  - Interceptor를 이용해 비로그인시 일부 기능 제한

 2. 장바구니  
  (1) 관심상품 담기  
  (2) 관심상품 수량 변경  
  (3) 관심상품 삭제  

 3. 구매  
  (1) 카테고리 '일반', '중고' 아이템들을 함께 구매 가능  
  (2) 배송지 선택 가능  

 4. 일반, 중고  
  (1) 상품 조회, 카테고리별 조회  
  (2) 중고 상품 등록  

 5. 경매  
  (1) 경매 상품 조회, 카테고리별 조회  
  (2) 경매 상품 등록  
  (3) 입찰 신청  
  (4) 낙찰 처리   
  (5) 낙찰 확정 시 구매 가능  

 6. 마이페이지  
  (1) 회원정보 조회 및 수정  
  (2) 등록한 상품 관리 (조회, 수정, 삭제)  
  (3) 등록한 리뷰 관리 (조회, 수정, 삭제)  

 7. 기타  
  (1) form 사용시 Validation 구현  

### ver.2 (기능 추가 및 버그 수정)
- 기능 추가
  (1) Front - bootstrap적용  
  (2) 구매내역 조회 시 정보 추가  
  (3) 우편번호 찾기 API 사용  
  (4) 상품 매진 시, Sold out 표시 및 구매 불가 처리  
  (5) 리뷰 별점, 평점 출력  

- 버그 수정
  (1) 새로고침 시, 장바구니 수량이 +1 되는 문제 수정  
  (2) 구매 취소 시 재고 수량 문제 수정  
  (3) 주문 테이블에 주문 상세까지 포함 되어있던 문제 수정  
      - 주문 테이블, 주문 상세 테이블 분리  
