package jp.co.tis.rookies.controller;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
public class DailyReportForm {
    @NotNull
    @Size(min = 1, max = 20)
    private String title;
    @NotNull
    @Size(min = 1, max = 200)
    private String body;
    @NotNull
    private String ss;
    @NotNull
    @Size(min = 1, max = 200)
    private String causeOfSs;
    @NotNull
    @Size(min = 1)
    private String tag;
}
