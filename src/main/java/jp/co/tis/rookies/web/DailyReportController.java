package jp.co.tis.rookies.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jp.co.tis.rookies.domain.DailyReport;
import jp.co.tis.rookies.service.DailyReportService;

@Controller
public class DailyReportController {
    @Autowired
    DailyReportService service;

    /**
     * 日報投稿画面　初期表示
     *
     * @param model Model
     * @return posting.jsp
     */
    @RequestMapping("/daily-report/posting")
    public String create(Model model) {
        return "posting";
    }

    /**
     * 日報投稿処理
     *
     * @param model Model
     * @param title タイトル
     * @param body 本文
     * @return success.jsp
     */
    @RequestMapping(value="/daily-report/post", method=RequestMethod.POST)
    public String post(Model model, @RequestParam("title") String title, @RequestParam("body") String body){
            DailyReport mydata = new DailyReport();
            mydata.setTitle(title);
            mydata.setBody(body);

            service.create(mydata);

        return "success";
    }
}