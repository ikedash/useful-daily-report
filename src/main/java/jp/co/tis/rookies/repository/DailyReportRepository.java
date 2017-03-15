package jp.co.tis.rookies.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import jp.co.tis.rookies.domain.DailyReport;

public interface DailyReportRepository extends JpaRepository<DailyReport, Integer>  {

}

