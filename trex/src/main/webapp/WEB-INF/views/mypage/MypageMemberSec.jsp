<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
    <title>Ż�� ȭ��</title>
    
    <style type="text/css">
        table{
            margin-left:auto; 
            margin-right:auto;
            border:3px solid skyblue;
        }
        
        td{
            border:1px solid skyblue
        }
        
        #title{
            background-color:skyblue
        }
    </style>
    
    <script type="text/javascript">
        // ��й�ȣ ���Է½� ���â
        function checkValue(){
            if(!document.deleteform.password.value){
                alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
                return false;
            }
        }
    </script>
    
</head>
<body>
 
    <br><br>
    <b><font size="6" color="gray">�� ����</font></b>
    <br><br><br>
 
    <form name="deleteform" method="post" action="Main.jsp?contentPage=mypage/MypageMemberSecPro.jsp"
        onsubmit="return checkValue()">
 
        <table>
            <tr>
                <td bgcolor="skyblue">��й�ȣ</td>
                <td><input type="password" name="password" maxlength="50"></td>
            </tr>
        </table>
        
      <div class="board_butt">
				<button type="button" id="removeBtn">Ż��</button>
				<button type="button" id="listBtn">���</button>
			</div>
			<div>
			<script>
				$('#removeBtn').on('click', function(e) {
					location="<%=request.getContextPath()%>/logout"
				});
				$('#listBtn').on('click', function(e) {
					location="<%=request.getContextPath()%>/mypage/MypageMemberList"
				});
			</script>
		</div>
		</form>
</body>
</html>