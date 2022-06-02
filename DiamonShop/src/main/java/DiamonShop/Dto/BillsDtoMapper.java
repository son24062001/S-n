package DiamonShop.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BillsDtoMapper implements RowMapper<BillsDto> {

	public BillsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillsDto bills = new BillsDto();
		bills.setId(rs.getLong("id"));
		bills.setUser(rs.getString("user"));
		bills.setPhone(rs.getString("phone"));
		bills.setDisplay_name(rs.getString("display_name"));
		bills.setAddress(rs.getString("address"));
		bills.setNote(rs.getString("note"));
		bills.setQuanty(rs.getInt("quanty"));
		bills.setTotal(rs.getInt("total"));
		bills.setId_product(rs.getLong("id_product"));
		return bills;
	}
	
}
