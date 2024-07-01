{% macro get_order_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "_fivetran_active", "datatype": dbt.type_boolean()},
    {"name": "account_id", "datatype": dbt.type_string()},
    {"name": "accountid", "datatype": dbt.type_string()},
    {"name": "activated_by_id", "datatype": dbt.type_string()},
    {"name": "activatedbyid", "datatype": dbt.type_string()},
    {"name": "activated_date", "datatype": dbt.type_timestamp()},
    {"name": "activateddate", "datatype": dbt.type_timestamp()},
    {"name": "billing_city", "datatype": dbt.type_string()},
    {"name": "billingcity", "datatype": dbt.type_string()},
    {"name": "billing_country", "datatype": dbt.type_string()},
    {"name": "billingcountry", "datatype": dbt.type_string()},
    {"name": "billing_country_code", "datatype": dbt.type_string()},
    {"name": "billingcountrycode", "datatype": dbt.type_string()},
    {"name": "billing_postal_code", "datatype": dbt.type_string()},
    {"name": "billingpostalcode", "datatype": dbt.type_string()},
    {"name": "billing_state", "datatype": dbt.type_string()},
    {"name": "billingstate", "datatype": dbt.type_string()},
    {"name": "billing_state_code", "datatype": dbt.type_string()},
    {"name": "billingstatecode", "datatype": dbt.type_string()},
    {"name": "billing_street", "datatype": dbt.type_string()},
    {"name": "billingstreet", "datatype": dbt.type_string()},
    {"name": "contract_id", "datatype": dbt.type_string()},
    {"name": "contractid", "datatype": dbt.type_string()},
    {"name": "created_by_id", "datatype": dbt.type_string()},
    {"name": "createdbyid", "datatype": dbt.type_string()},
    {"name": "created_date", "datatype": dbt.type_timestamp()},
    {"name": "createddate", "datatype": dbt.type_timestamp()},
    {"name": "description", "datatype": dbt.type_string()},
    {"name": "end_date", "datatype": dbt.type_timestamp()},
    {"name": "enddate", "datatype": dbt.type_timestamp()},
    {"name": "id", "datatype": dbt.type_string()},
    {"name": "is_deleted", "datatype": dbt.type_boolean()},
    {"name": "isdeleted", "datatype": dbt.type_boolean()},
    {"name": "last_modified_by_id", "datatype": dbt.type_string()},
    {"name": "lastmodifiedbyid", "datatype": dbt.type_string()},
    {"name": "last_modified_date", "datatype": dbt.type_timestamp()},
    {"name": "lastmodifieddate", "datatype": dbt.type_timestamp()},
    {"name": "last_referenced_date", "datatype": dbt.type_timestamp()},
    {"name": "lastreferenceddate", "datatype": dbt.type_timestamp()},
    {"name": "last_viewed_date", "datatype": dbt.type_timestamp()},
    {"name": "lastvieweddate", "datatype": dbt.type_timestamp()},
    {"name": "opportunity_id", "datatype": dbt.type_string()},
    {"name": "opportunityid", "datatype": dbt.type_string()},
    {"name": "order_number", "datatype": dbt.type_string()},
    {"name": "ordernumber", "datatype": dbt.type_string()},
    {"name": "original_order_id", "datatype": dbt.type_string()},
    {"name": "originalorderid", "datatype": dbt.type_string()},
    {"name": "owner_id", "datatype": dbt.type_string()},
    {"name": "ownerid", "datatype": dbt.type_string()},
    {"name": "pricebook_2_id", "datatype": dbt.type_string()},
    {"name": "pricebook2id", "datatype": dbt.type_string()},
    {"name": "shipping_city", "datatype": dbt.type_string()},
    {"name": "shippingcity", "datatype": dbt.type_string()},
    {"name": "shipping_country", "datatype": dbt.type_string()},
    {"name": "shippingcountry", "datatype": dbt.type_string()},
    {"name": "shipping_country_code", "datatype": dbt.type_string()},
    {"name": "shippingcountrycode", "datatype": dbt.type_string()},
    {"name": "shipping_postal_code", "datatype": dbt.type_string()},
    {"name": "shippingpostalcode", "datatype": dbt.type_string()},
    {"name": "shipping_state", "datatype": dbt.type_string()},
    {"name": "shippingstate", "datatype": dbt.type_string()},
    {"name": "shipping_state_code", "datatype": dbt.type_string()},
    {"name": "shippingstatecode", "datatype": dbt.type_string()},
    {"name": "shipping_street", "datatype": dbt.type_string()},
    {"name": "shippingstreet", "datatype": dbt.type_string()},
    {"name": "status", "datatype": dbt.type_string()},
    {"name": "total_amount", "datatype": dbt.type_float()},
    {"name": "totalamount", "datatype": dbt.type_float()},
    {"name": "type", "datatype": dbt.type_string()}
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('salesforce__order_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}
