package jp.co.tis.rookies.web;

import org.apache.commons.lang.StringUtils;
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
     * 日報入力画面.
     *
     * @param model Model
     * @return input.jsp
     */
    @RequestMapping("/daily-report/input")
    public String input(Model model) {
        return "input";
    }

    /**
     * 投稿内容確認画面.
     */
    @RequestMapping(value = "/daily-report/confirm", method = RequestMethod.POST)
    public String confirm(Model model, @RequestParam("title") String title, @RequestParam("body") String body) {
        model.addAttribute("title", title);
        model.addAttribute("body", body);

        return "confirm";
    }

    /**
     * 日報入力画面に戻る.
     *
     * @return input.jsp
     */
    @RequestMapping(value = "/daily-report/back")
    public String back(Model model, @RequestParam(value = "title", required = false) String title,
            @RequestParam(value = "body", required = false) String body) {

        if (StringUtils.isNotEmpty(title)) {
            model.addAttribute("title", title);
        }
        if (StringUtils.isNotEmpty(body)) {
            model.addAttribute("body", body);
        }

        return "forward:/daily-report/input";
    }

    /**
     * 日報投稿処理.
     *
     * @param model Model
     * @param title タイトル
     * @param body 本文
     * @return success.jsp
     */
    @RequestMapping(value = "/daily-report/post", method = RequestMethod.POST)
    public String post(Model model, @RequestParam("title") String title, @RequestParam("body") String body) {
        DailyReport report = new DailyReport();
        report.setTitle(title);
        report.setBody(body);

        service.create(report);

        return "success";
    }
}