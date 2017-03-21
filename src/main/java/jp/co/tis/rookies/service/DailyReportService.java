package jp.co.tis.rookies.service;

import java.util.List;

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

    public List<DailyReport> findAll() {
        return repository.findAll();
    }

    public List<DailyReport> search(String word) {
        return repository.search(word);
    }

    public List<DailyReport> filter(String tag) {
        return repository.filter(tag);
    }
}
