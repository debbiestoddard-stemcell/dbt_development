select
  id as account_salesforce_id,
  name as account_name,
  lab_id_c as account_lab_id,
  sap_id_c as account_sap_id,
  principal_investigator_c as principal_investigator_salesforce_id,
  _fivetran_synced as _data_loaded_ts_utc
from {{ target.name }}_ingest.stemcell__salesforce.account