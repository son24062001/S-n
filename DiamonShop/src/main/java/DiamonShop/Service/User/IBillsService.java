package DiamonShop.Service.User;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillsDao;
import DiamonShop.Dto.BillsDto;
import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.Bills;
@Service
public interface IBillsService {
	
	public int AddBills(Bills bill);
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
	public List<BillsDto> GetBillByID(String user);
}
