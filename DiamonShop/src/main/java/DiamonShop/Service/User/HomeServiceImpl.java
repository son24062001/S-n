package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillsDao;
import DiamonShop.Dao.CategorysDao;
import DiamonShop.Dao.MenuDao;
import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dao.SlidesDao;
import DiamonShop.Dao.UsersDao;
import DiamonShop.Dto.BillsDto;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Menus;
import DiamonShop.Entity.Slides;
import DiamonShop.Entity.Users;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDao productsDao;
	@Autowired
	private BillsDao billsDao;
	@Autowired
	private UsersDao usersDao;
	
	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}
	
	public List<Menus> GetDataMenus() {
		return menuDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		
		return listProducts;
	}
	public List<BillsDto> GetBillByID(String user) {
		return billsDao.GetBillByID(user);
	}

	public List<Users> GetAllUser() {
		return usersDao.GetAllUser();
		
	}
	public List<Users> DeleteUser(long id){
		return usersDao.DeleteUser(id);
	}
	public List<BillsDto> GetAllBill() {
		return billsDao.GetAllBill();
	}

}