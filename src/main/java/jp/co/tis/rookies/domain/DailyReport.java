package jp.co.tis.rookies.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "daily_report")
public class DailyReport {

    /** ID */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Integer id;

    /** タイトル */
    @Column(length = 50)
    private String title;

    /** 内容 */
    @Column(length = 500)
    private String body;

    /** 受講満足度(Student Satisfaction) */
    @Column(length = 10)
    private String ss;

    /** 受講満足度の理由 */
    @Column(length = 200)
    private String causeOfSs;

    /** タグ */
    @Column(length = 30)
    private String tag;

    /** 投稿日時 */
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

    /** 投稿者 */
    @Column(length = 200)
    private String contributor;
}
