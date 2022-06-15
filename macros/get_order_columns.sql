{% macro get_order_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt_utils.type_timestamp()},
    {"name": "account_id", "datatype": dbt_utils.type_string()},
    {"name": "activated_by_id", "datatype": dbt_utils.type_string()},
    {"name": "activated_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "billing_city", "datatype": dbt_utils.type_string()},
    {"name": "billing_country", "datatype": dbt_utils.type_string()},
    {"name": "billing_country_code", "datatype": dbt_utils.type_string()},
    {"name": "billing_geocode_accuracy", "datatype": dbt_utils.type_string()},
    {"name": "billing_latitude", "datatype": dbt_utils.type_float()},
    {"name": "billing_longitude", "datatype": dbt_utils.type_float()},
    {"name": "billing_postal_code", "datatype": dbt_utils.type_string()},
    {"name": "billing_state", "datatype": dbt_utils.type_string()},
    {"name": "billing_state_code", "datatype": dbt_utils.type_string()},
    {"name": "billing_street", "datatype": dbt_utils.type_string()},
    {"name": "company_authorized_by_id", "datatype": dbt_utils.type_string()},
    {"name": "contract_id", "datatype": dbt_utils.type_string()},
    {"name": "created_by_id", "datatype": dbt_utils.type_string()},
    {"name": "created_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "customer_authorized_by_id", "datatype": dbt_utils.type_string()},
    {"name": "description", "datatype": dbt_utils.type_string()},
    {"name": "effective_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "end_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "id", "datatype": dbt_utils.type_string()},
    {"name": "is_deleted", "datatype": "boolean"},
    {"name": "is_reduction_order", "datatype": "boolean"},
    {"name": "last_modified_by_id", "datatype": dbt_utils.type_string()},
    {"name": "last_modified_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_referenced_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "last_viewed_date", "datatype": dbt_utils.type_timestamp()},
    {"name": "opportunity_id", "datatype": dbt_utils.type_string()},
    {"name": "order_number", "datatype": dbt_utils.type_string()},
    {"name": "original_order_id", "datatype": dbt_utils.type_string()},
    {"name": "owner_id", "datatype": dbt_utils.type_string()},
    {"name": "pricebook_2_id", "datatype": dbt_utils.type_string()},
    {"name": "shipping_city", "datatype": dbt_utils.type_string()},
    {"name": "shipping_country", "datatype": dbt_utils.type_string()},
    {"name": "shipping_country_code", "datatype": dbt_utils.type_string()},
    {"name": "shipping_geocode_accuracy", "datatype": dbt_utils.type_string()},
    {"name": "shipping_latitude", "datatype": dbt_utils.type_float()},
    {"name": "shipping_longitude", "datatype": dbt_utils.type_float()},
    {"name": "shipping_postal_code", "datatype": dbt_utils.type_string()},
    {"name": "shipping_state", "datatype": dbt_utils.type_string()},
    {"name": "shipping_state_code", "datatype": dbt_utils.type_string()},
    {"name": "shipping_street", "datatype": dbt_utils.type_string()},
    {"name": "status", "datatype": dbt_utils.type_string()},
    {"name": "status_code", "datatype": dbt_utils.type_string()},
    {"name": "system_modstamp", "datatype": dbt_utils.type_timestamp()},
    {"name": "total_amount", "datatype": dbt_utils.type_float()},
    {"name": "type", "datatype": dbt_utils.type_string()},
] %}

{{ return(columns) }}

{% endmacro %}
