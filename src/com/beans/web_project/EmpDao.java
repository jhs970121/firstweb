package com.beans.web_project;

import java.util.ArrayList;
import com.beans.web_project.EmpVo;

public class EmpDao extends DBConn {
	
	/* ����Ʈ ��� */
	public ArrayList<EmpVo> getList() {
		ArrayList<EmpVo> list = new ArrayList<EmpVo>();
		String sql = "select empno, ename, deptno from EMP";
		getPreparedStatement(sql);
		
		try {
			//4.ResultSet ��ü ����
			rs = pstmt.executeQuery();
			
			//5.������ ���
			while(rs.next()){
				EmpVo empVo = new EmpVo();
				empVo.setEmpno(rs.getInt(1));
				empVo.setEname(rs.getString(2));
				empVo.setDeptno(rs.getInt(3));
				
				list.add(empVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
