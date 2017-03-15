package jp.co.tis.rookies.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import jp.co.tis.rookies.domain.SampleDomain;

public interface SampleRepository extends JpaRepository<SampleDomain, Integer>  {

}

