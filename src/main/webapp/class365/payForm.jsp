<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="lecture.LectureDataBean" %>
<%@page import="lecture.LectureDBBean"%>
<%@page import="lecmem.LecmemDataBean" %>
<%@include file="setting.jsp" %>    
<link href="${project}/style.css" rel="stylesheet" type="text/css">   
<link href="${project}/class_style.css" rel="stylesheet" type="text/css"> 
<!-- jQuery -->
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>

<script src="${project}/jquery-3.6.0.js"></script>

<script>

    $(function(){
    
    	//@@@@@@ 1번 @@@@@@@
        var IMP = window.IMP; // 생략가능
        IMP.init('imp22661492'); //가맹점 식별코드 삽입
        var msg;
        
        //@@@@@@@@ 2번 @@@@@@@@
        //url에서 parameter 가져오기 --> price값 알기 위해서
      
        
		//@@@@@@ 3번 @@@@@@@
            IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '${dlo.sub}',
            amount : '${cost}',
            buyer_email : '${dto.email}',
            buyer_name : '${dto.id}',
            buyer_tel : '${dto.tel}',
            buyer_addr : '서울특별시 강남구 신사동',
            buyer_postcode : '01181',
           // m_redirect_url : '결제 완료후 이동할 페이지'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "payFormProHandler.do", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        uid : rsp.imp_uid,
                        price: rsp.paid_amount
                        //기타 필요한 데이터가 있으면 추가 전달
                    })
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\n결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;

                        alert(msg);
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
                location.href='<%=request.getContextPath()%>/order/paySuccess?msg='+msg;
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="<%=request.getContextPath()%>/order/payFail";
                alert(msg);
            }
        });

    });
</script>