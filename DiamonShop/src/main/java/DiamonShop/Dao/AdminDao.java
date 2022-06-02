package DiamonShop.Dao;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.Admin;
import DiamonShop.Entity.MapperAdmin;
import DiamonShop.Entity.MapperUsers;
import DiamonShop.Entity.Users;
@Repository
public class AdminDao extends BaseDao {
	public Admin GetAdminByUser(Admin admin) {
		String sql = "SELECT * FROM `admins` WHERE user = '" +admin.getUser()+"' ";
		
		Admin result = _jdbcTemplate.queryForObject(sql, new MapperAdmin());
		
		return result;
	}
}
