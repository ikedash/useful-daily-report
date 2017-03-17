package jp.co.tis.rookies.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "daily_report")
public class DailyReport {
    @Id
    @GeneratedValue
    private Integer id;
    private String title;
    private String body;
    private String ss; // Student Satisfaction
    private String causeOfSs;
    private String tag;
}
