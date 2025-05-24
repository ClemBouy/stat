SELECT 
    record.id as "record_id",
    skill_descriptor.code as "skill_code"

FROM skill_descriptor

LEFT JOIN skill_entry_with_workflow ON skill_descriptor.id = skill_entry_with_workflow.skill_descriptor_id
LEFT JOIN skill_container_with_situation_family ON skill_container_with_situation_family.id = skill_entry_with_workflow.skill_container_id
INNER JOIN record ON record.skill_container_id = skill_container_with_situation_family.id

WHERE 
    skill_entry_with_workflow.workflow_state = "certified"