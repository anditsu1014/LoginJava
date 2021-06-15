package Conexion;

import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

public class Consultas extends Conexion{

	
	public boolean autenticacion(String usuario, String pass) {
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			
			String sql="select * from usuarios where usuario = ? and pass = ?";
			ps = (PreparedStatement) getConnection().prepareStatement(sql);
			ps.setString(1, usuario);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			
			if(rs.absolute(1)) {
				return true;
			}
			
		} catch (Exception e) {
			System.out.println("Error"+e);
		}finally {
			try {
				if(getConnection()!=null) getConnection().close();
				if(ps!=null) ps.close();
				if(rs!=null) rs.close();
			} catch (Exception e2) {
				System.out.println("Error"+e2);
			}
			
		}
		
		return false;
	}
	
	
	public boolean registrar(String usuario, String pass) {
		
		PreparedStatement ps = null;
		
		try {
			
			String sql ="INSERT INTO usuarios(usuario,pass) VALUES(?,?)";
			ps = (PreparedStatement) getConnection().prepareStatement(sql);
			ps.setString(1, usuario);
			ps.setString(2, pass);
			
			if(ps.executeUpdate()==1) {
				return true;
			}
			
		} catch (Exception e) {
			System.out.println("Error"+e);
		}finally {
			try {
				if(getConnection()!=null) getConnection().close();
				if(ps!=null) ps.close();
			} catch (Exception e2) {
				System.out.println("Error"+e2);
			}
		}
		
		return false;
	}
	
	/*public static void main(String[]args) {
	
	Consultas co = new Consultas();
	System.out.println(co.registrar("Murillo", "456"));
	
	}*/
}
