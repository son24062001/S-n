package DiamonShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

	public class MapperAdmin implements RowMapper<Admin> {
		public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
			Admin admin = new Admin();
			admin.setId(rs.getLong("id"));
			admin.setUser(rs.getString("user"));
			admin.setPassword(rs.getString("password"));
			admin.setDisplay_name(rs.getString("display_name"));
			admin.setAddress(rs.getString("address"));
			return admin;
		}
}
