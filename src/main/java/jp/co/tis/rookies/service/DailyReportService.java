package jp.co.tis.rookies.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
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
        return repository.findAll(new Sort(new Order(Direction.DESC, "createdAt")));
    }

    public List<DailyReport> search(String word) {
        return repository.search(word);
    }

    public List<DailyReport> filter(String tag) {
        return repository.filter(tag);
    }
}
