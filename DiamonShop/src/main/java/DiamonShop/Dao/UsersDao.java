package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import DiamonShop.Dto.CartDto;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Dto.ProductsDtoMapper;
import DiamonShop.Entity.MapperUsers;
import DiamonShop.Entity.Users;
@Repository
public class UsersDao extends BaseDao {

	public int AddAccount(Users user) {
		
		
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("    user, ");
		sql.append("    password, ");
		sql.append("    display_name, ");
		sql.append("    address ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+user.getUser()+"', ");
		sql.append("    '"+user.getPassword()+"', ");
		sql.append("    '"+user.getDisplay_name()+"', ");
		sql.append("    '"+user.getAddress()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	public Users GetUserByAccount(Users user) {
		String sql = "SELECT * FROM `users` WHERE user = '"+user.getUser()+"' ";
		
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		
		return result;
	}
	public List<Users> GetAllUser() {
		List<Users> list = new ArrayList<Users>();
		
		String sql = "SELECT * FROM `users` ";
		
		list = _jdbcTemplate.query(sql, new MapperUsers());
		
		return list;
	}
	public List<Users> DeleteUser(long id) {
		
		List<Users> list = new ArrayList<Users>();
		
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE FROM `users` WHERE id = " + id + "; ");
		sql.append("SELECT * FROM `users` ");
		list = _jdbcTemplate.query(sql.toString(), new MapperUsers());
		
		return list;
	}
}
