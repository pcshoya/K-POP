function check(){
	if(document.frm.r_id.value==""){
		alert("예매아이디가 입력되지 않았습니다.");
		document.frm.r_id.focus();
		return false;
	}
	if(document.frm.c_id.value==""){
		alert("공연아이디가 입력되지 않았습니다.");
		document.frm.c_id.focus();
		return false;
	}
	if(document.frm.r_name.value==""){
		alert("예매자 이름이 입력되지 않았습니다.");
		document.frm.r_name.focus();
		return false;
	}
	if(document.frm.t_num.value==""){
		alert("티켓수량이 입력되지 않았습니다.");
		document.frm.t_num.focus();
		return false;
	}
	if(document.frm.cost.value==""){
		alert("금액이 입력되지 않았습니다.");
		document.frm.cost.focus();
		return false;
	}
	if(document.frm.total_cost.value==""){
		alert("총금액이 입력되지 않았습니다.");
		document.frm.total_cost.focus();
		return false;
	}
	if(document.frm.p_status.value==""){
		alert("결제상태가 입력되지 않았습니다.");
		document.frm.r_id.focus();
		return false;
	}
	return true;
}

function r_alert(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.r_id.focus();	
}