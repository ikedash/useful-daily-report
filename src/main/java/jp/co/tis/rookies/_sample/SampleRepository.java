package jp.co.tis.rookies._sample;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SampleRepository extends JpaRepository<SampleDomain, Integer>  {

}

