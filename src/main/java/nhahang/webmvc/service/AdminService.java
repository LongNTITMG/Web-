package nhahang.webmvc.service;

import nhahang.webmvc.model.Admin;
import java.util.List;

public interface AdminService {
	void insert(Admin admin);

	void edit(Admin admin);

	void delete(String id);

	Admin get(int id);

	Admin get(String name);

	List<Admin> getAll();

}
