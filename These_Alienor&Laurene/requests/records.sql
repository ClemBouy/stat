SELECT 
    record_with_workflow_and_ep.id as "record_id", 
    record.owner_id as "student_id", 
    internship_assignment.id as "internship_id",
    record.title as "title", 
    record_with_workflow.workflow_state, 
    internship_assignment.clinical_validation_state, 
    tag.name as "internship",
    skill_situation_family.code as "FS", 
    record_exemplary_problematic_item.name as "EP"

FROM record_with_workflow_and_ep

LEFT JOIN record ON record_with_workflow_and_ep.id = record.id
LEFT JOIN record_with_workflow ON record_with_workflow.id = record.id
LEFT JOIN internship_assignment ON record.internship_assignment_id = internship_assignment.id
LEFT JOIN internship ON internship_assignment.internship_id = internship.id
LEFT JOIN internship_tag_for_internship ON internship.id = internship_tag_for_internship.internship_id
LEFT JOIN tag ON tag.id = internship_tag_for_internship.tag_for_internship_id
LEFT JOIN skill_container_with_situation_family ON skill_container_with_situation_family.id = record.skill_container_id
LEFT JOIN skill_situation_family ON skill_container_with_situation_family.situation_family_id = skill_situation_family.id
LEFT JOIN record_exemplary_problematic_item ON record_exemplary_problematic_item.id = record_with_workflow_and_ep.exemplary_problematic_id
LEFT JOIN appuser_student ON record.owner_id = appuser_student.id
LEFT JOIN promotion ON promotion.id = appuser_student.promotion_id

WHERE 
    record.record_type = "SA" 
    AND (tag.name = "SN1" OR tag.name = "SN2") 
    AND promotion.name = "P22"

-- Request for records with content : 

SELECT 
    record_with_workflow_and_ep.id as "record_id", 
    record.owner_id as "student_id", 
    internship_assignment.id as "internship_id",
    record.title as "title", 
    record_with_workflow_and_ep_and_content.content as "content", 
    record_with_workflow.workflow_state, 
    internship_assignment.clinical_validation_state, 
    tag.name as "internship",
    skill_situation_family.code as "FS", 
    record_exemplary_problematic_item.name as "EP"

FROM record_with_workflow_and_ep

LEFT JOIN record ON record_with_workflow_and_ep.id = record.id
LEFT JOIN record_with_workflow ON record_with_workflow.id = record.id
LEFT JOIN record_with_workflow_and_ep_and_content ON record.id = record_with_workflow_and_ep_and_content.id
LEFT JOIN internship_assignment ON record.internship_assignment_id = internship_assignment.id
LEFT JOIN internship ON internship_assignment.internship_id = internship.id
LEFT JOIN internship_tag_for_internship ON internship.id = internship_tag_for_internship.internship_id
LEFT JOIN tag ON tag.id = internship_tag_for_internship.tag_for_internship_id
LEFT JOIN skill_container_with_situation_family ON skill_container_with_situation_family.id = record.skill_container_id
LEFT JOIN skill_situation_family ON skill_container_with_situation_family.situation_family_id = skill_situation_family.id
LEFT JOIN record_exemplary_problematic_item ON record_exemplary_problematic_item.id = record_with_workflow_and_ep.exemplary_problematic_id
LEFT JOIN appuser_student ON record.owner_id = appuser_student.id
LEFT JOIN promotion ON promotion.id = appuser_student.promotion_id

WHERE 
    record.record_type = "SA" 
    AND (tag.name = "SN1" OR tag.name = "SN2") 
    AND promotion.name = "P22"