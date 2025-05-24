SELECT 
    appuser_student.id AS "student_id", 
    internship_assignment.id AS "internship_id",
    tag.name as "tag", 
    period.name as "period",
    internship.type

FROM internship_assignment 

LEFT JOIN appuser_student ON internship_assignment.student_id = appuser_student.id
LEFT JOIN promotion ON appuser_student.promotion_id = promotion.id
LEFT JOIN internship ON internship_assignment.internship_id = internship.id
LEFT JOIN internship_tag_for_internship ON internship.id = internship_tag_for_internship.internship_id
LEFT JOIN tag ON tag.id = internship_tag_for_internship.tag_for_internship_id
LEFT JOIN period ON period.id = internship_assignment.period_id

WHERE promotion.name = "P22" 
AND (tag.name = "Urgences" OR tag.name = "SN1" OR tag.name = "SN2" OR tag.name = "Pôle femme" OR tag.name = "Pôle enfant" OR tag.name = "Médecine polyvalente")

ORDER BY 
    appuser_student.id, 
    period.name