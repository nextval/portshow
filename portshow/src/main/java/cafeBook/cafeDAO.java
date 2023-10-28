package cafeBook;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import common.DbClose;
import common.DbSet;
import cafeBook.cafeDTO;
import java.sql.SQLException;
import java.util.ArrayList;

public class cafeDAO{
	private static cafeDAO instance = new cafeDAO();
	
	cafeDTO cafeDTO = new cafeDTO();
	
	String sql;
	//String cafe_id, cafe_pwd, cafe_name, cafe_phone, cafe_email;
	Connection conn;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs; // >>select에서 사용 >> 데이터타입 executeQuery
	int result;

	public static cafeDAO getInstance() {
		return instance;
	}
	
/*------------------회원 정보 수정하기-------------------------------------------*/
	public int memUpdate(cafeDTO memUpd) {
		System.out.println(memUpd.getCafe_name());
		
		//System.out.println("cafeDAO/upd/넘버값=="+listNo);
		try {
			conn = DbSet.getConnection();
			
			/* sql ="update listBook set cafe_name=?, cafe_pwd=?, cafe_phone=?, cafe_email=? where cafe_id=? AND cafe_pwd=?"; */
			
			sql ="update cafeBook set cafe_pwd=?, cafe_name=?, cafe_phone=?, cafe_email=? where cafe_id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memUpd.getCafe_pwd());
			pstmt.setString(2, memUpd.getCafe_name());
			
			pstmt.setString(3, memUpd.getCafe_phone());
			pstmt.setString(4, memUpd.getCafe_email());
			pstmt.setString(5, memUpd.getCafe_id());  //###
			//pstmt.setString(6, memUpd.getCafe_pwd());
			
			result = pstmt.executeUpdate();
				System.out.println("memUpdate의 result---->"+ result);
		} catch (SQLException e) {
			e.printStackTrace();
		}  finally {
			try {
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	return result;
	}	
	/*------------------회원 정보 수정(infor.jsp)에 뿌려줄 cafebook값-------------------------------------------*/
	public ArrayList<cafeBook.cafeDTO> cafeSelect() {
		ArrayList<cafeDTO> dtoL = new ArrayList<cafeDTO>();
		
		try {
			conn = DbSet.getConnection();

			sql = "select*from cafebook";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			while(rs.next()) {
				String id = rs.getString("cafe_id");
				String pwd= rs.getString("cafe_pwd");
				String name= rs.getString("cafe_name");
				String phone= rs.getString("cafe_phone");
				String email= rs.getString("cafe_email");

				
				cafeDTO dto = new cafeDTO();
				dto.setCafe_id(id);
				dto.setCafe_pwd(pwd);
				dto.setCafe_name(name);
				dto.setCafe_phone(phone);
				dto.setCafe_email(email);
				dtoL.add(dto);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return dtoL;
	}
	
/*------------------글 삭제-------------------------------------------*/
	public int cafeDelete(int listNo, cafeDTO dtoDel) {
		try {
			conn = DbSet.getConnection();
			
			sql= "delete listBook where list_no=?";
			
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, listNo);
			
			result =pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
/*------------------글 수정-------------------------------------------*/
	public int cafeUpdate(String listNo, cafeDTO dtoUpd) {
		//System.out.println("cafeDAO/upd/넘버값=="+listNo);
		try {
			conn = DbSet.getConnection();
			
			sql = "update listBook set list_name=?, list_pwd=?, list_title=?, list_content=? where list_no =?";
			
			/*
			 * pstmt = conn.prepareStatement(sql); pstmt.setString(1,
			 * dtoUpd.getList_name()); pstmt.setString(2, dtoUpd.getList_pwd());
			 * pstmt.setString(3, dtoUpd.getList_title()); pstmt.setString(4,
			 * dtoUpd.getList_content()); pstmt.setString(5, listNo);
			 */
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dtoUpd.getCafe_pwd());
			pstmt.setString(2, dtoUpd.getCafe_name());
			pstmt.setString(3, dtoUpd.getCafe_phone());
			pstmt.setString(4, dtoUpd.getCafe_email());
			pstmt.setString(5, listNo);
			
			result = pstmt.executeUpdate();
				System.out.println("DAO의 result"+ result);
		} catch (SQLException e) {
			e.printStackTrace();
		}  finally {
			try {
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	return result;
	}	
	
/*------------------infor.jsp에 해당id값만 출력하도록-------------------------------------------*/
	public ArrayList<cafeBook.cafeDTO> cafeSelect(String vId){
		ArrayList<cafeDTO> dtoL = new ArrayList<cafeDTO>();
		
		try {
			conn = DbSet.getConnection();

			sql = "select*from cafebook where cafe_id= ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vId);
					//System.out.println("dao의listNo===="+listNo);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				String id = rs.getString("cafe_id");
				String pwd= rs.getString("cafe_pwd");
				String name= rs.getString("cafe_name");
				String phone= rs.getString("cafe_phone");
				String email= rs.getString("cafe_email");

				
				cafeDTO dto = new cafeDTO();
				dto.setCafe_id(id);
				dto.setCafe_pwd(pwd);
				dto.setCafe_name(name);
				dto.setCafe_phone(phone);
				dto.setCafe_email(email);
				dtoL.add(dto);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return dtoL;
	}
	
/*------------------목록 글 선택시 리스트1개 출력-------------------------------------------*/
	public ArrayList<cafeBook.cafeDTO> listSelect(String listNo){
		ArrayList<cafeDTO> dtoS = new ArrayList<cafeDTO>();
		
		try {
			conn = DbSet.getConnection();

			sql = "select*from listbook where list_No = ?";
					System.out.println("dao+listNo=="+listNo);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,Integer.parseInt(listNo));
					//System.out.println("dao의listNo===="+listNo);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int no = rs.getInt("list_no");
				String name= rs.getString("list_name");
				String pwd= rs.getString("list_pwd");
				String title= rs.getString("list_title");
				String content= rs.getString("list_content");
				String logtime=rs.getString("list_logtime");
					
				cafeDTO dto = new cafeDTO();
				dto.setList_no(no);
				dto.setList_name(name);
				dto.setList_pwd(pwd);
				dto.setList_title(title);
				dto.setList_content(content);
				dto.setList_logtime(logtime);
				dtoS.add(dto);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return dtoS;

	}	
	
/*------------------목록 출력-------------------------------------------*/
	public ArrayList<cafeBook.cafeDTO> listSelect(){
		ArrayList<cafeDTO> dtoL = new ArrayList<cafeDTO>();
		
		try {
			conn = DbSet.getConnection();

			sql = "select*from listbook order by list_no desc";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			while(rs.next()) {
				int no = rs.getInt("list_no");
				String name= rs.getString("list_name");
				String pwd= rs.getString("list_pwd");
				String title= rs.getString("list_title");
				String content= rs.getString("list_content");
				String logtime=rs.getString("list_logtime");
				
				cafeDTO dto = new cafeDTO();
				dto.setList_no(no);
				dto.setList_name(name);
				dto.setList_pwd(pwd);
				dto.setList_title(title);
				dto.setList_content(content);
				dto.setList_logtime(logtime);
				dtoL.add(dto);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return dtoL;
	}
	
/*------------------글쓰기-------------------------------------------*/
	public int listWrite(cafeDTO dto) { //dto를 controller에서 호출한다
	
		/* System.out.println("dao이름"+dto.getList_name()); */
		System.out.println("dao이름"+dto.getCafe_pwd()); //--->입력한 이름출력
		try {
			conn = DbSet.getConnection();
			sql= "select max(list_no) as num from listBook";
		
			pstmt =conn.prepareStatement(sql);
			rs=pstmt.executeQuery(sql);
			int number=1;
			while(rs.next()) {
				number=rs.getInt("num")+1;
				
			} 
			//sql = "insert into listBook values(?,?,?, sysdate)"; 만약 sql에러나면> 복사해서 cmd에서 실행되는지 확인
			
			sql = "insert into listBook values(?,?,?,?,?, sysdate)"; 

			pstmt =conn.prepareStatement(sql);
			
			/*
			 * pstmt.setInt(1, number);
			 * //System.out.println("DAO의 listWrite() number===>>>>" + number);
			 * pstmt.setString(2, dto.getList_name()); pstmt.setString(3,dto.getList_pwd());
			 * pstmt.setString(4, dto.getList_title()); pstmt.setString(5,
			 * dto.getList_content());
			 */
			pstmt.setInt(1, number);
			//System.out.println("DAO의 listWrite() number===>>>>" + number);
			pstmt.setString(2, dto.getCafe_pwd()); 
			pstmt.setString(3,dto.getCafe_name()); 
			pstmt.setString(4, dto.getCafe_phone());
			pstmt.setString(5, dto.getCafe_email());

			result = pstmt.executeUpdate();
		} catch( SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

/*------------------회원 가입-------------------------------------------*/
	public int memIns(cafeDTO cafeDTO) {
		
		sql = "insert into cafeBook values (?,?,?,?,?)";
		
		try {
			conn = DbSet.getConnection();
			pstmt =conn.prepareStatement(sql);
			
			pstmt.setString(1, cafeDTO.getCafe_id());
			pstmt.setString(2, cafeDTO.getCafe_pwd());
			pstmt.setString(3, cafeDTO.getCafe_name());
			pstmt.setString(4, cafeDTO.getCafe_phone());
			pstmt.setString(5, cafeDTO.getCafe_email());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e){
				e.printStackTrace();
			}
		}
		return result;
	}
	
/*------------------로그인-------------------------------------------*/
	public int memLog(cafeDTO cafeDTO) {
		String sql_log;
		sql_log= "select * from cafeBook where cafe_id=? AND cafe_pwd=?";
		
		try {
			conn = DbSet.getConnection();
			pstmt =conn.prepareStatement(sql_log);
			pstmt.setString(1, cafeDTO.getCafe_id());
			pstmt.setString(2, cafeDTO.getCafe_pwd());
			
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
/*------------------totalCount-------------------------------------------*/
	public int totalCount() {
		int result =0;
		
		try {
			conn = DbSet.getConnection();
			
			String sql = "select count(list_no) as totalcount from listBook";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt("totalcount");
			}  
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DbClose.Close(rs, conn, pstmt);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}	

}
