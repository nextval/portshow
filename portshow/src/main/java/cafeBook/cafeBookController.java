package cafeBook;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.PrintWriter;
import java.net.URLEncoder;
import cafeBook.cafeDTO;
import cafeBook.cafeDAO;
import java.util.ArrayList;

@WebServlet("/cafeBook.do") //web.xml의 <url-pattern>과 ※이름이 같으면 Error발생※
//└자체적으로 맵핑해줌. xml이 필요하지않음
public class cafeBookController extends HttpServlet {
	
	private ArrayList<cafeDTO> dtoL;

	public cafeBookController() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
	HttpSession session = request.getSession(); //세션의 객체 생성
		
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html;charset=UTF-8"); 	
	
	PrintWriter out = response.getWriter();
	out.print(">>Controller<<");

	//사용자가 작성한 값 가져오기
	String vId = request.getParameter("cafe_id");
	String vPwd = request.getParameter("cafe_pwd");
	String vName = request.getParameter("cafe_name");
	String vPhone = request.getParameter("cafe_phone");
	String vEmail = request.getParameter("cafe_email");
	
	String listNo =request.getParameter("list_no");
	String listName = request.getParameter("list_name");
	String listPwd = request.getParameter("list_pwd");
	String listTitle = request.getParameter("list_title");
	String listContent = request.getParameter("list_content");
	String listLogtime = request.getParameter("list_logtime");
	
	int su=0;
	String vMsg, vUrl = request.getContextPath();
	cafeDAO dao = cafeDAO.getInstance();
	cafeDTO dto = new cafeDTO();
		
	String category = request.getParameter("category"); //**jsp파일에서 보낸 category값을 받는다.
		
	if(category != null) {
		
/*------------- 회원가입 ---------------------------------*/
			if(category.equals("cafeMember")) {
						
				dto = new cafeDTO(vId, vPwd, vName, vPhone, vEmail);
					out.println("회원가입vId==>>>>>"+vId);
				su = dao.memIns(dto);
	
				if( su !=0) {
					vMsg = dto.getCafe_id() +"님 회원가입을 환영합니다.";
				} else {
					vMsg = dto.getCafe_id() +"님 회원가입 실패";
				}
				vUrl ="/cafeMemberProc.jsp";
				request.setAttribute("vMsg", vMsg);
				
/*------------- 로그인 ---------------------------------*/
			} else if (category.equals("cafeLog")) {
				dto = new cafeDTO(vId, vPwd);
				su = dao.memLog(dto);
				
				if(su != 0) {
					vMsg = dto.getCafe_id()+"님 로그인 성공!";
					
					session.setAttribute("vId",vId);
					vUrl= "/LoginSucess.jsp";
					
				} else {
					vMsg = "로그인 실패~";
					vUrl= "/LoginProc.jsp";
				}
				
				request.setAttribute("vMsg", vMsg);
				
/*------------	글쓰기 ---------------------------------*/			
			} else if(category.equals("cafeWrite")) { 
	
				dto = new cafeDTO(listName, listPwd, listTitle, listContent); 
				//dao에서 가져온 사용자입력값울  dto에 저장한다

				su= dao.listWrite(dto);
			
				if (su != 0) {
					vMsg="글쓰기 성공";
					
				} else {
					vMsg="글쓰기 실패";
				}
				ArrayList<cafeDTO> dtoL = dao.listSelect();

				request.setAttribute("dtoL", dtoL);
				vUrl = "/cafeBook.do?category=listPaging";
				
/*------------- 목록 ---------------------------------*/			
		} else if(category.equals("listPaging")) {

			vUrl=  "/cafeListPaging.jsp";
				
			ArrayList<cafeDTO> dtoL = dao.listSelect();
			
			listNo = request.getParameter("list_no");
			String nowBlock = request.getParameter("nowBlock");
			String nowPage = request.getParameter("nowPage"); 

			request.setAttribute("nowBlock", nowBlock);
			request.setAttribute("nowPage", nowPage);  
			request.setAttribute("dtoL", dtoL);
			
/*------------- 선택한 글 ---------------------------------*/	
		} else if(category.equals("list")) {
			
			vUrl= "/cafeList.jsp";
			
			listNo= request.getParameter("list_no");

			ArrayList<cafeDTO> dtoS = dao.listSelect(listNo);
				System.out.println("컨트롤러 목록선택시listNo>>"+dtoS.get(0).getList_no());
			
			request.setAttribute("dtoS", dtoS);
			
/*-------------수정/삭제 전 비밀번호 체크---------------------------------*/				
		} else if(category.equals("frmChk")) { //upd와 del 중 선택
			
			vUrl = "/cafeChk.jsp"; //아래의 gubun과 dtoChk를 가지고 페이지로 이동
			
			String gubun= request.getParameter("gubun");
			listNo = request.getParameter("list_no");
	System.out.println("컨트롤러listNo--"+listNo);
			listPwd = request.getParameter("list_pwd");
System.out.println("컨트롤러listPwd--"+listPwd);			
			cafeDTO dtoChk = new cafeDTO(Integer.parseInt(listNo), listPwd);
			
			request.setAttribute("gubun", gubun);
			request.setAttribute("dtoChk", dtoChk);	
			
/*------------- 수정할 글 체크---------------------------------*/
		}else if(category.equals("frmUpd")) {
	System.out.println("컨트롤러frmUPd넘어옴!!!");
			listNo = request.getParameter("list_no");
				System.out.println("컨트에넘어온frmUpd/넘버=="+ listNo); //확인됨@@@
			ArrayList<cafeDTO> dtoS = dao.listSelect(listNo);
			vUrl ="/cafeUpdate.jsp";
			
			request.setAttribute("listNo", listNo);	
	//System.out.println("컨트frmupd/넘버-->"+listNo);
			request.setAttribute("dtoS", dtoS); //★그냥 dtoL에서 바꿈
			
/*------------- 글 수정 ---------------------------------*/
		} else if(category.equals("cafeUpd")) {
			ArrayList<cafeDTO> dtoL = dao.listSelect();
			cafeDTO dtoUpd = new cafeDTO(listName, listPwd, listTitle, listContent);		
	
			//dtoL추가
			listNo = request.getParameter("list_no");//list_no: update.jsp에서 호출한name
	System.out.println("컨Upd의번호----"+listNo);
			listName = request.getParameter("listName");
			listPwd = request.getParameter("listPwd");
			listTitle = request.getParameter("listTitle");
			listContent = request.getParameter("listContent");

System.out.println("컨Upd의이름----"+listName); //수정되기 전 값들이 옴..
System.out.println("컨Upd의비번----"+listPwd);
System.out.println("컨Upd의제목----"+listTitle);
System.out.println("컨Upd의내용----"+listContent);
			
		System.out.println("컨트cafeUpd/ listName----"+ listName);			
	
			su= dao.cafeUpdate(listNo, dtoUpd);
				out.println("컨트롤러su==>"+su);
			if(su != 0) {
				dtoL= dao.listSelect();

				vMsg = listName + "님 글수정 성공";
					
				System.out.println("vMsg====>"+vMsg);
				
				vUrl = "/cafeBook.do?category=listPaging"; //강제로 guestTitleListPaging으로 가게끔
				//request.setAttribute("dtoL", dtoL);
			} else {
				vMsg = listName + "님 글수정 실패";
					System.out.println(vMsg);

					vUrl = "/cafeBook.do?category=listPaging";
			}
			
/*------------- 글 삭제 ---------------------------------*/
	} else if(category.equals("frmDel")) {
		System.out.println("frmDel진입>>");
		
		listNo = request.getParameter("list_no");
		listPwd = request.getParameter("list_pwd");
		
		cafeDTO dtoDel = new cafeDTO(Integer.parseInt(listNo), listPwd);
		
		 su =dao.cafeDelete(Integer.parseInt(listNo), dtoDel); 
		
			if(su != 0) {
				vMsg = listNo + "번 글 삭제 성공";
				vUrl = "/cafeBook.do?category=listPaging";
			} else {
				vMsg = listNo + "번 글 삭제 실패";
					vUrl = "/cafeBook.do?category=listPaging";
			}
			dtoL = dao.listSelect();
			request.setAttribute("dtoL", dtoL);

/*------------- 로그아웃/ 세션끊기---------------------------------*/	
	} else if(category.equals("logout")) {
		
		  session.invalidate(); //세션 끊어줌
		  vUrl ="/cafeLogin.jsp";  

/*--------------- 상단 >회원 수정 버튼클릭시 로그인 값-------------------------------*/
	} else if(category.equals("memUpd")) {

		vId = request.getParameter("id");
		
		dtoL = dao.cafeSelect(vId); //해당하는 id만 들어있는 
	System.out.println("memUp아이디----"+vId);
		
	
		String idSession = (String)session.getAttribute("vId"); //세션 값을 보냄

		request.setAttribute("dtoL", dtoL);
		vUrl= "/information.jsp";
		
/*--------------- 회원 정보 수정page-------------------------------*/
	} else if(category.equals("inforUpd")) {
		
		vId = request.getParameter("cafe_id"); //①값이 먼저 들어오고
		vPwd = request.getParameter("cafe_pwd");
		vName = request.getParameter("cafe_name");
		vPhone = request.getParameter("cafe_phone");
		vEmail = request.getParameter("cafe_email");
		
		System.out.println(vId);
		System.out.println(vPwd);	//페이지에서 수정한값이 출력됨 확인
		System.out.println(vName);
		System.out.println(vPhone);
		System.out.println(vEmail);
		
	
		/* cafeDTO memUpd = new cafeDTO(vPwd, vName, vPhone, vEmail); */
		cafeDTO memUpd = new cafeDTO(vId, vPwd, vName, vPhone, vEmail); //② 들어온 값을 dto에 넣기
	
System.out.println("수정한id--"+vId);
System.out.println("수정한name--"+vName); //여기도 수정한 값 그대로 출력 확인함

		su= dao.memUpdate(memUpd);

if(su != 0) {
	vMsg = vId + "님 정보 수정 성공";
			System.out.println("vMsg====>"+vMsg);
			vUrl= "/informationProc.jsp";
	} else {
	vMsg = vId + "님 정보 수정 실패";
		System.out.println(vMsg);
		vUrl = "/information.jsp";
	}
	request.setAttribute("vMsg", vMsg);
	//-------------
	}
		request.setAttribute("dto", dto);
		RequestDispatcher rd = request.getRequestDispatcher(vUrl); //vUrl로 이동
		rd.forward(request, response);
		} // !=null
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
}
