select

  -- primary key
  account.account_id,

  -- foreign keys
  account.principal_investigator_id, -- pi's contact id

  -- attributes
  account.account_name,
 
  -- bookkeeping
  account._data_loaded_ts_utc,

  -- debugging
  account.principal_investigator_salesforce_id as _principal_investigator_salesforce_id,
  account.account_salesforce_id as _account_salesforce_id,
  account.account_sap_id as _account_sap_id,
  account.account_lab_id as _account_lab_id

from {{ ref('int_account') }} as account
