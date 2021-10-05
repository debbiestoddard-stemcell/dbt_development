select

  -- primary key
  salesforce.account_salesforce_id as account_id,

  -- foreign keys
  salesforce.principal_investigator_salesforce_id as principal_investigator_id,

   -- attributes
  salesforce.account_name,


  -- bookkeeping
  salesforce._data_loaded_ts_utc,

  -- debugging
  salesforce.principal_investigator_salesforce_id,
  salesforce.account_salesforce_id,
  salesforce.account_sap_id,
  salesforce.account_lab_id

from {{ ref('stg_salesforce_account') }} as salesforce