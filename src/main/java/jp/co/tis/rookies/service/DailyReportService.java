package jp.co.tis.rookies.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.tis.rookies.domain.DailyReport;
import jp.co.tis.rookies.repository.DailyReportRepository;



@Service
public class DailyReportService {
    @Autowired
    DailyReportRepository repository;

    public DailyReport create(DailyReport dailyReport) {
        return repository.save(dailyReport);
    }
}
