package jp.co.tis.rookies.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jp.co.tis.rookies.domain.SampleDomain;
import jp.co.tis.rookies.repository.SampleRepository;



@Service
public class SampleService {
    @Autowired
    SampleRepository sampleRepository;

    public SampleDomain create(SampleDomain sample) {
        return sampleRepository.save(sample);
    }
}
