package com.github.elizabetht.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.elizabetht.mappers.QuotasMapper;
import com.github.elizabetht.mappers.QuotasMapper;
import com.github.elizabetht.model.Quotas;
import com.github.elizabetht.service.QuotasService;

@Service
public class QuotasServiceImpl implements QuotasService {

	@Autowired
	private QuotasMapper quotasMapper;

	@Override
	public List<Quotas> getQuotasByOwner(String Owner) {
		// TODO Auto-generated method stub
		return quotasMapper.getQuotasByOwner(Owner);
	}

	@Override
	public List<Quotas> getQuotasOnlyOwner(String Owner) {
		// TODO Auto-generated method stub
		return quotasMapper.getQuotasOnlyOwner(Owner);
	}

	@Override
	public List<Quotas> getQuotasByUser(String Owner, String subQuotas) {
		// TODO Auto-generated method stub
		return quotasMapper.getQuotasByUser(Owner, subQuotas);
	}

	@Override
	public boolean update(Quotas quotasNew) {
//		quotasMapper.updateParam(quotas.getDescription(), quotas.getLimit(), quotas.getUsed(), quotas.getStatus(),
//				quotas.getDeleted(), quotas.getUser(), quotas.getSubuser(), quotas.getResource(),quotas.getId());
		boolean needsUpdate = false;
		Quotas quotasDb = quotasMapper.getQuotasById(quotasNew.getId());
		if (!quotasDb.getDescription().equals(quotasNew.getDescription())) {
			quotasDb.setDescription(quotasNew.getDescription());
			needsUpdate = true;
		}
		if (quotasDb.getLimit() != quotasNew.getLimit()) {
			quotasDb.setLimit(quotasNew.getLimit());
			needsUpdate = true;
		}
		if (quotasDb.getUsed() != quotasNew.getUsed()) {
			quotasDb.setUsed(quotasNew.getUsed());
			needsUpdate = true;
		}
		if (!quotasDb.getStatus().equals(quotasNew.getStatus())) {
			quotasDb.setStatus(quotasNew.getStatus());
			needsUpdate = true;
		}
		if (quotasDb.getDeleted() != quotasNew.getDeleted()) {
			quotasDb.setDeleted(quotasNew.getDeleted());
			needsUpdate = true;
		}
		if (needsUpdate) {
			
			quotasMapper.update(quotasDb);
		}
		return needsUpdate;
	}

}
