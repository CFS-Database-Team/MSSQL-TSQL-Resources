SELECT JOB.NAME AS JOB_NAME,
STEP.STEP_ID AS STEP_NUMBER,
STEP.STEP_NAME AS STEP_NAME,
STEP.COMMAND AS STEP_QUERY,
DATABASE_NAME
FROM Msdb.dbo.SysJobs JOB
INNER JOIN Msdb.dbo.SysJobSteps STEP ON STEP.Job_Id = JOB.Job_Id
order by job.name, step.step_id asc