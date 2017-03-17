package jp.co.tis.rookies.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "tag")
public class Tag {

    /** ID */
    @Id
    private String id;

    /** タグ名 */
    private String tag_name;
}
