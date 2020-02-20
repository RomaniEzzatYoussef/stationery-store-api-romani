package stationary.store.service.grade;

import stationary.store.model.Grade;

import java.util.List;


public interface GradeService {

    List<Grade> getGrades();

    List<Grade> getGradesByGradeLevel(int id);

    void saveGrade(Grade theGrade);

    Grade getGrade(int theId);

    void deleteGrade(int theId);

}
