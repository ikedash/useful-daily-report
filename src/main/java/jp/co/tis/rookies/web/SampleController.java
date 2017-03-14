package jp.co.tis.rookies.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SampleController {
    @RequestMapping("/home")
    @ResponseBody
    public String home() {
        return "Hello Spring Boot!!";
    }

}