package service;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.*;
import connexion.Connexion;

public class UserService {

	public boolean create(User u) {
		String sql = "insert into user values (null, ?,?, ?,?,1,?,0)";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setString(1, u.getNomComplet());
			ps.setString(2, u.getUsername());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getTelephone());
			ps.setString(5, u.getPassword());
			if (ps.executeUpdate() == 1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("create : erreur sql : " + e.getMessage());

		}
		return false;
	}

	public boolean delete(User u) {
		String sql = "delete from user where id  = ?";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setInt(1, u.getId());
			if (ps.executeUpdate() == 1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("delete : erreur sql : " + e.getMessage());

		}
		return false;
	}

	public boolean update(User u) {

		String sql = "update user set nomComplet  = ?, username=? , email=? , telephone =? where id  = ?";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setString(1, u.getNomComplet());
			ps.setString(2, u.getUsername());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getTelephone());
			ps.setInt(5, u.getId());
			if (ps.executeUpdate() == 1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("update : erreur sql : " + e.getMessage());

		}
		return false;
	}

	public User findById(int id) {
		User u = null;
		String sql = "select * from user where id  = ? order by id desc ;";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return new User(rs.getInt("id"), rs.getString("nomComplet"), rs.getString("username"), rs.getString("email"), rs.getString("telephone"),rs.getString("password"),rs.getInt("etat"), rs.getInt("isAdmin"));
			}

		} catch (SQLException e) {
			System.out.println("findById " + e.getMessage());
		}
		return null;
	}

	public List<User> findAll() {
		List<User> users = new ArrayList<User>();

		String sql = "select * from user order by id desc";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			;
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				users.add(new User(rs.getInt("id"), rs.getString("nomComplet"), rs.getString("username"), rs.getString("email"), rs.getString("telephone"),rs.getString("password"),rs.getInt("etat"), rs.getInt("isAdmin")));
			}

		} catch (SQLException e) {
			System.out.println("findAll " + e.getMessage());
		}
		return users;
	}
	
	public User findUser(String email , String password) {
		User u = null;
		String sql = "select * from user where  email  = ? and password=? ";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				return new User(rs.getInt("id"), rs.getString("nomComplet"), rs.getString("username"), rs.getString("email"), rs.getString("telephone"),rs.getString("password"),rs.getInt("etat"), rs.getInt("isAdmin"));
			}else {
				return new User(1, "empty", "empty", "empty", "empty","empty",0,0);
			}

		} catch (SQLException e) {
			System.out.println("findUser " + e.getMessage());
		}
		return null;
	}
	
	

	public List<User> findUserByUsername(String username) {
		List<User> users = new ArrayList<User>();
		String sql = "select * from user where username =  ?";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			;
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				users.add(new User(rs.getInt("id"), rs.getString("nomComplet"), rs.getString("username"), rs.getString("email"), rs.getString("telephone"),rs.getString("password"),rs.getInt("etat"), rs.getInt("isAdmin")));
			}

		} catch (SQLException e) {
			System.out.println("findAll " + e.getMessage());
		}
		return users;
	}
	
	
	public boolean Activer(User o) {

		String sql = "update User set etat=1 where id  = ?";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setInt(1,o.getId());
			if (ps.executeUpdate() == 1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("update : erreur sql : " + e.getMessage());

		}
		return false;
	}
	
	public boolean Desactiver(User o) {

		String sql = "update user set etat =0 where id  = ?";
		try {
			PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
			ps.setInt(1,o.getId());
			if (ps.executeUpdate() == 1) {
				return true;
			}
		} catch (SQLException e) {
			System.out.println("update : erreur sql : " + e.getMessage());

		}
		return false;
	}

}
