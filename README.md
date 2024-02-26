# MeetGo (고수를 만나다)

✅ **프로젝트 소개 :** 

고수(Gosu)를 만나다(Meet)의 합성어로 사용자는 보다 편리하게

다양한 분야의 전문가의 도움을 받을 수 있게 하는 서비스 구현을 목적으로 진행했습니다.

✅ **프로젝트 기간 / 인원** **:** 2023.11.10 ~ 2023.12.20 (6주 / 5인)

✅ **담당 기능 :** 

1. 고수 찾기 : 지역별 / 서비스별 고수 검색 및 필터링
2. 고수 상세정보 : 기본정보 / 리뷰 및 사진
3. 포트폴리오 게시판 : 게시글 등록, 조회, 수정, 삭제
4. 관리자 페이지 신고관리
5. 관리자 페이지 포트폴리오 게시판 관리

✅ 활용한 기술 및 개발환경

**Skills**

JAVA 11 / 
JSP / 
HTML5 / 
CSS3 / 
JavaScript / 
jQuery / 
AJAX / 
Spring Framework 5.3.15 (Maven) / 
Spring MVC / 
Mybatis / 
Apache Tomcat 9.0 / 
Oracle 11g
<br>

**Tools**

VS Code / 
Spring Tool Suite / 
GitHub

## 📕 담당 기능 설명

### 고수 찾기(키워드/지역/서비스)

<div align="center">
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/caf8a84d-93b3-4f21-a019-c14970e987a4/20240223_091012.gif?id=eafffbfd-f445-4c92-bc1c-be2b20c4ecf1&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=98XUKs-T6Kwl4ve-ZtNKGFx3kiFXGlRfDpwFqRapUSk" width=70% height=70%>
</div>

고수 찾기 화면으로 헤더의 검색어와 고수의 활동 지역(시/도 + 시/군/구) 조합, 카테고리 대분류 + 중분류, 그리고 정렬 기준에 따라 조회된 내용이 바뀌어야 했습니다.

여러가지 경우의 수가 있고, 선행 조건을 유지시킨 상태로 결과값을 받아야 했기에 AJAX를 이용해 비동기적으로 서버에 요청하고 페이징 처리까지 함께 했습니다.

조건에 따라 DB에서 조회하는 값이 달라지기에 동적 쿼리문을 작성하여 모든 경우의 수를 처리할 수 있게 설계했습니다.

---

### 고수 정보
<div align="center">
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/76ac40b1-a461-4251-ba3a-3ae06d79dffb/20240223_091137.gif?id=df254a02-3ea7-40d0-985a-45cd8d3e7d99&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=Gqb9vYsfAWSh1A2EPcATNYOwGcSLcDDK-gf4XstxxHg" width=32% height=60%>
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/4f03a86a-f09c-4e57-b7f6-8e1b82fad469/20240223_091349.gif?id=13e563a6-8d48-4839-b12e-577738cf08f2&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=eE34JpxmN8aT0wmzb_bx_cOvBS2E_YUcbvowYdm3aZY" width=32% height=60%>
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/c1fe6af5-2174-4fe2-b355-2b8ea4af150c/20240223_091417.gif?id=e0419363-66b8-451e-8fbd-7fdba3938f88&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=jCRJUhVdRUZvBrbQh6pk1zOohgCqDOHv_jL76oRZEts" width=32% height=60%>
</div>

원하는 고수를 클릭하면, 상세정보 페이지로 이동합니다. 상단에는 프로필사진과 활동지역 등 기초적인 정보과 좋아요, 견적요청, 신고 버튼이 위치하고 있고

3가지 탭으로 상세정보 페이지가 구성되어 있습니다. 버튼을 누르면 선택된 항목의 정보가 화면에 나오고 나머지는 숨겨지며, 단순하게 jQuery의 show, hide 메소드를 이용했습니다.

먼저 기본정보에는 DB에 등록된 고수의 정보를 불러오며 고수가 따로 올린 사진이 존재하면 사진도 화면에 나옵니다. 사진은 클릭 시 확대하여 볼 수 있으며 슬라이드 방식으로 넘길 수 있습니다.

슬라이드 기능은 Swiper API를 사용했습니다.

리뷰 탭에는 테이블 JOIN을 통해 해당 고수에게 등록된 리뷰 글과 사진을 불러옵니다. 특별한 정렬 기준은 없이 4개의 사진과 리뷰를 보여주며

별점 표시는 자바스크립트 함수를 따로 정의해서 표시 했습니다. more 클릭 시 전체 리뷰를 보여주고 이때 리뷰 글은 최신 날짜 순으로 정렬해서 보여집니다.

리뷰 사진은 전체 사진을 리스트 조회해주는데 처음에 부트스트랩에서 제공하는 기본 modal 창을 사용하려 했으나 몇가지 문제점이 있어서 modal 창을 직접 만들어서 사용했습니다.

커스텀 모달창은 흑색 음영 부분을 클릭하면 사라지는 자바스크립트 이벤트가 적용되어있습니다.

포트폴리오 탭은 해당 고수가 등록한 게시물이 있다면 사진 클릭 시 해당 게시물로 바로 이동하게 처리했습니다.

---

### 포트폴리오 게시판 조회(전체조회/서비스별 조회/상세조회)

<div align="center">
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/3bc1c4d9-f913-46ac-b148-7ea526d8d4e7/20240223_091615.gif?id=30af30c5-71e1-4b3e-bce7-b33ab42aa1e3&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=J9kmRI6dAv-xmIS3dfaZzCue00wIDcpPlws0GzujvuQ" width=70% height=70%>
</div>

포트폴리오 전체 조회 화면입니다. 현재는 로그인 상태라서 왼쪽 상단에 글 작성 버튼이 보여집니다. 회원이어도 고수 미등록된 회원이라면 클릭 시 alert창으로 작성 불가함을 안내합니다.

오른쪽 상단에는 포트폴리오 게시글 필터링이 가능하고 그 밑에는 서비스 카테고리 대분류가 표시되어있으며 각각의 버튼 클릭시 해당하는 게시글만 조회됩니다.

페이지당 3x3 개의 게시글이 보여지고 각각 메인 사진과 카테고리, 제목, 조회수가 표시됩니다. 조회수는 클릭 한번당 +1 증가합니다.

포트폴리오를 클릭하면 제목과 내용, 작성한 고수 회원의 프로필이 나오고 왼쪽에는 포트폴리오 게시글에 등록된 사진들이 자동으로 슬라이드됩니다. slick slider 라이브러리를 사용했습니다.

만약 작성자 본인이 로그인 한 상태로 자신의 게시글을 클릭하면 삭제와 수정 버튼이 표시됩니다.

### 포트폴리오 글 작성

<div align="center">
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/77a24c9e-9c95-46dc-8d50-cf3e326c5552/20240223_091734.gif?id=aee45ab3-8bde-4032-b423-9fafb3020929&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=lxSV8gOZmg6uyvbdmB-X_JhBrc_3rhMFIvCcyyEld9U" width=70% height=70%>
</div>

글 작성 버튼을 누르면 작성페이지로 넘어가고

카테고리에서는 작성자가 고수 서비스 등록했던 대분류 카테고리들을 불러옵니다.

첨부 파일은 최대 5개 제한, 100MB 용량제한이 있으며 처음에는 간단하게

기본 input type=”file” 로 하려 했으나, 처음부터 5개의 버튼을 띄워야하고

또한 디자인적으로 마음에 들지 않아서 고민하면서 다른 방법을 찾아보던 중 자바스크립트의

FormData 객체에 대해 알게 되었습니다. 예시 코드를 참고하며 확장자명과 용량 유효성 검사를 통해

확정된 파일들만 객체에 담아서 서버로 송신하게 처리했습니다.

아이콘은 부트스트랩 아이콘에 label 태그를 걸어서

클릭 시 파일 첨부 이벤트가 실행되게 만들었습니다.

---

### 포트폴리오 수정 / 삭제

<div align="center">
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/dbca3926-991d-425c-b6de-7da231fed7f0/20240223_091858.gif?id=80ca201e-2c41-4498-a5b3-df49a8aab265&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=2WqiNV8bu1auVAip5PmhX5ihwbHjEtc7nX1C3Hjr-xs" width=70% height=70%>
</div>

작성자 본인이 수정하기 버튼 클릭시 수정 페이지로 이동합니다.

카테고리는 수정 불가하게 readonly 속성을 걸었으며 기존 글 내용이 불러와집니다.

이미지는 해당 이미지를 클릭하면 교체가 가능하며 교체된 이미지로 썸네일이 표시됩니다.

---

### 관리자 페이지 - 신고 관리와 포트폴리오 게시판 관리

<div align="center">
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/bca7aee5-f655-4c4d-aab9-7aa60af075e5/20240223_092255.gif?id=16823fc8-b2f4-4d28-b9ad-1cefca9f784d&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=LKR3kUfgiYuNffmogiqTnRfN8FvGP6JtoUICmMyuhYM" width=70% height=70%>
</div>

관리자 계정으로 로그인 시 관리자 페이지로 이동합니다. 그 중에서 신고내역 관리 항목이며

신고 내역 전체조회에서는 처리상태에 따라 원하는 상태의 신고만 조회할 수 있습니다. 하단의 페이징버튼은 계속해서 코드를 재사용했으며 신고 테이블 클릭 시 클릭된

신고 내역의 상세 정보가 조회됩니다. 여기서 신고 상태 변경이 가능합니다.

---

<div align="center">
  <img src="https://file.notion.so/f/f/de277671-8357-420f-b63f-1903187f27e5/8fcff67e-a658-4030-b237-946cb450e8b7/20240223_092217.gif?id=fd604718-8136-4371-b4a6-15dd822ba56e&table=block&spaceId=de277671-8357-420f-b63f-1903187f27e5&expirationTimestamp=1709035200000&signature=hM07KYDdCDNv-7AzxBdDNr0DpDFoV4jvm9wA7V4qmDQ" width=70% height=70%>
</div>

포트폴리오 관리 항목에서도 비슷한 탬플릿을 유지하면서 검색 기능을 구현했습니다. 검색한 키워드가 제목에 포함된 게시글만 조회됩니다.

마찬가지로 해당 글 클릭 시 상세정보 페이지로 넘어가며, 게시 상태를 게시중 또는 게시중지로 변경할 수 있습니다.
