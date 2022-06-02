package DiamonShop.Service.User;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.AdminDao;
import DiamonShop.Entity.Admin;

@Service
public class AdminServiceImpl implements IAdminService {
	@Autowired
	AdminDao adminDao = new AdminDao();

	public Admin CheckAdmin(Admin admin) {
		String pass = admin.getPassword();
		admin = adminDao.GetAdminByUser(admin);
		if (admin != null) {
			if (pass.equals(admin.getPassword())) {
				return admin;
			} else {
				return null;
			}

		}
			return null;
	}

}
