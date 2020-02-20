package stationary.store.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "grade")
@JsonInclude(JsonInclude.Include.NON_EMPTY)
@JsonIgnoreProperties(ignoreUnknown = true)
public class Grade implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int gradeId;

    @OneToMany(mappedBy = "grade",
            cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    private List<ClassifiedProduct> classifiedProducts;

    @ManyToOne(fetch = FetchType.LAZY,
            cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinColumn(name = "grade_level")
    @Fetch(FetchMode.JOIN)
    @JsonIgnore
    private GradeLevel gradeLevel;

    @Column(name = "grade_number")
    private int grade;

    public Grade() {

    }

    public int getGradeId() {
        return gradeId;
    }

    public void setGradeId(int gradeId) {
        this.gradeId = gradeId;
    }

    public List<ClassifiedProduct> getClassifiedProducts() {
        return classifiedProducts;
    }

    public void setClassifiedProducts(List<ClassifiedProduct> classifiedProducts) {
        this.classifiedProducts = classifiedProducts;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public List<ClassifiedProduct> getProducts() {
        return classifiedProducts;
    }

    public void setProducts(List<ClassifiedProduct> products) {
        this.classifiedProducts = products;
    }

    public GradeLevel getGradeLevel() {
        return gradeLevel;
    }

    public void setGradeLevel(GradeLevel gradeLevel) {
        this.gradeLevel = gradeLevel;
    }


}
