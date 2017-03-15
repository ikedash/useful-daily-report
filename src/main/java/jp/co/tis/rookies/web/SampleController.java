package jp.co.tis.rookies.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import jp.co.tis.rookies.domain.SampleDomain;
import jp.co.tis.rookies.service.SampleService;

//@RestController
@Controller
@RequestMapping("web/sample")
public class SampleController {
    @Autowired
    SampleService sampleService;

    // JSP動作確認用
    @RequestMapping("/hoge")
    public String helo() {
        return "hoge";
    }

    @RequestMapping("/home")
    @ResponseBody
    public String home() {
        return "Hello Spring Boot!!";
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.CREATED)
    SampleDomain postSampleDomain(@RequestBody SampleDomain sampleDomain) {
        return sampleService.create(sampleDomain);
    }

}