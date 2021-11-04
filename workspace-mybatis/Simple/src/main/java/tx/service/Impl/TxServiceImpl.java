package tx.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tx.dao.face.TxDao;
import tx.service.face.TxService;

@Service
public class TxServiceImpl implements TxService {

	@Autowired TxDao txDao;
	
	
	@Override
	@Transactional
	public void test(int deptno) {

		txDao.insert2( deptno );
		txDao.insert1( deptno );
		
		
	}
}
