package jp.co.tis.rookies._sample;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

//@RestController
@Controller
//@RequestMapping("web/sample")
public class SampleController {
    @Autowired
    SampleService sampleService;

    @Autowired
    SampleRepository repository;

    @RequestMapping("/hoge")
    public String helo(Model model) {
        model.addAttribute("val", "コントローラーのテキストです。");
        return "hoge";
    }

    @RequestMapping(value="post", method=RequestMethod.POST)
    public String helo(Model model,
            @RequestParam("id") String id,
            @RequestParam("name") String name){
            SampleDomain mydata = new SampleDomain(id,name);
            repository.saveAndFlush(mydata);
            Iterable<SampleDomain> list = repository.findAll();
        model.addAttribute("datas", list);
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