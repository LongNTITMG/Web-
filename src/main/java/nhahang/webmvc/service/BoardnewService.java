package nhahang.webmvc.service;

import java.util.List;

import nhahang.webmvc.model.Boardnew;

public interface BoardnewService {
	void insert(Boardnew boardnew);

	void edit(Boardnew boardnew);

	void delete(int id);

	Boardnew get(int id);

	Boardnew get(String name);

	List<Boardnew> getAll();

}
