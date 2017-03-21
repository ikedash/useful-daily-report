package jp.co.tis.rookies.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import jp.co.tis.rookies.domain.DailyReport;

public interface DailyReportRepository extends JpaRepository<DailyReport, Integer>  {

    @Query("SELECT x FROM DailyReport x WHERE x.title Like %:word% ORDER BY x.id")
    List<DailyReport> search(@Param("word") String word);

    @Query("SELECT x FROM DailyReport x WHERE x.tag = :tag ORDER BY x.createdAt DESC")
    List<DailyReport> filter(@Param("tag") String tag);

}
