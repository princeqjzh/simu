package com.github.elizabetht.service;

import java.util.List;

import com.github.elizabetht.model.Quotas;

public interface QuotasService {

	public List<Quotas> getQuotasByOwner(String Owner);
	public List<Quotas> getQuotasOnlyOwner(String Owner);
	public List<Quotas> getQuotasByUser(String Owner,String subQuotas);
	public boolean update(Quotas quotas);

}
