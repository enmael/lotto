/*##############################################################################################################################################

    *프로그램명: 다크모드/라이트모드 버튼
    *소스파일명: daekmode_btn.js
    *작성자: 장승배
    *버전: 1.0.0
    *생성자: 장승배
    *생성일자: 2021.10.20
    *최종수정일자: 2021.12.15
    *최종수정자: 장승배
    *최종수정내용: httml과 자바스크립트를 분라함
    --------------------------------------------------------------------------------------
    *내용: 라이트 모드에서 다크모드 버튼을 누르면 화이트 모드로 
          다크모드에서 화이트 모드로 버튼을 누르면 화이트모드로 바뀌는 코드 입니다.

    *출처: https://stickode.com/detail.html?no=2179

#############################################################################################################################################*/
function setDisplayAppreance(self){
    var body = document.querySelector('body'); 
    var btn = document.getElementById('btnDisplayMode'); 
    if(self.value === '다크모드로 전환'){//다크모드로 전환 버튼을 누른 경우
      body.style.backgroundColor = 'black';  //배경색 변경
      body.style.color = 'white'; //css가 적용되지 않은 기본 텍스트 색상 변경
      btn.style.backgroundColor = "yellow"; //버튼의 배경색 변경
      btn.style.color = "black"; //버튼의 텍스트 색상 변경
      self.value = '라이트모드로 전환';
    } else { //라이트모드로 전환 버튼을 누른 경우
      body.style.backgroundColor = 'white';
      body.style.color = 'black';
      btn.style.backgroundColor = "black";
      btn.style.color = "white";
      self.value = '다크모드로 전환';
    }
  }
