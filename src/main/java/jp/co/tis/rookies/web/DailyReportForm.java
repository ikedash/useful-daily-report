package jp.co.tis.rookies.web;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class DailyReportForm {
    @NotNull
    @Size(min = 3, max = 20)
    private String title;
    @NotNull
    @Size(min = 10, max = 200)
    private String body;
}
