package DiamonShop.Dao;



import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Dto.BillsDto;
import DiamonShop.Dto.BillsDtoMapper;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;

@Repository
public class BillsDao extends BaseDao {
	public int AddBills(Bills bill) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO bills ");
		sql.append("( ");
		sql.append("     user, phone, display_name, address, note ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+bill.getUser()+"', ");
		sql.append("    '"+bill.getPhone()+"', ");
		sql.append("    '"+bill.getDisplay_name()+"', ");
		sql.append("    '"+bill.getAddress()+"', ");
		sql.append("    '"+bill.getNote()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	};
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("     id_product, id_bills, quanty, total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("     ");
		sql.append("    '"+billDetail.getId_product()+"', ");
		sql.append("    '"+billDetail.getId_bills()+"', ");
		sql.append("    '"+billDetail.getQuanty()+"', ");
		sql.append("    '"+billDetail.getTotal()+"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	private StringBuffer SqlString() {
		StringBuffer  sql1 = new StringBuffer();
		sql1.append("SELECT bills.id as id, ");
		sql1.append("user, ");
		sql1.append("phone, ");
		sql1.append("display_name, ");
		sql1.append("address, ");
		sql1.append("note, ");
		sql1.append("billdetail.quanty as quanty, ");
		sql1.append("billdetail.total as total, ");
		sql1.append("billdetail.id_product as id_product ");
		sql1.append("FROM bills ");
		sql1.append("JOIN billdetail ");
		sql1.append("ON bills.id = billdetail.id_bills ");
		return sql1;
	}
	private StringBuffer SqlByID(String user) {
		StringBuffer sql = SqlString();
		sql.append("WHERE bills.user = '" + user + "' ");
		return sql;
	}
	public List<BillsDto> GetBillByID(String user) {
		String sql = SqlByID(user).toString();
		List<BillsDto> listBills = _jdbcTemplate.query(sql, new BillsDtoMapper());
		return listBills;
	}
	public List<BillsDto> GetAllBill(){
		StringBuffer sql = SqlString();
		List<BillsDto> listBills = _jdbcTemplate.query(sql.toString(), new BillsDtoMapper());
		return listBills;
	}
}
