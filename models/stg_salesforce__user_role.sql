--To disable this model, set the salesforce__user_role_enabled within your dbt_project.yml file to False.
{{ config(enabled=var('salesforce__user_role_enabled', True)) }}

with base as (

    select *
    from {{ ref('stg_salesforce__user_role_tmp') }}
), 

fields as (

    select
        
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_salesforce__user_role_tmp')),
                staging_columns=get_user_role_columns()
            )
        }}

    from base
), 

final as (

    select
        _fivetran_deleted,
        cast(_fivetran_synced as {{ dbt.type_timestamp() }}) as _fivetran_synced,
        developer_name,
        id as user_role_id,
        name as user_role_name,
        opportunity_access_for_account_owner,
        parent_role_id,
        rollup_description
        
        {{ fivetran_utils.fill_pass_through_columns('salesforce__user_role_pass_through_columns') }}
        
    from fields
)

select *
from final