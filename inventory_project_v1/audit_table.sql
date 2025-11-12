CREATE TABLE inventory_project.metadata.audit_log (
    audit_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- unique surrogate key
    table_name STRING NOT NULL,                               -- which target table was loaded
    pipeline_name STRING,                                     -- name of the pipeline/notebook/job
    load_type STRING,                                         -- full, incremental, delta etc.
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,           -- when the run started
    end_time TIMESTAMP,                                       -- when the run ended
    duration STRING,                                          -- duration of the run (better as INTERVAL or STRING, not TIMESTAMP)
    status STRING,                                            -- SUCCESS / FAILED
    error_message STRING,                                     -- error details if failed
    created_by STRING DEFAULT current_user(),                 -- who triggered the run
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP          -- audit record creation time
)
TBLPROPERTIES ('delta.feature.allowColumnDefaults' = 'supported');
