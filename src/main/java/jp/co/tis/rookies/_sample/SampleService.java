package jp.co.tis.rookies._sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class SampleService {
    @Autowired
    SampleRepository sampleRepository;

    public SampleDomain create(SampleDomain sample) {
        return sampleRepository.save(sample);
    }
}
