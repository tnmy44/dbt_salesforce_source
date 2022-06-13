
with base as (

    select * 
    from {{ ref('stg_salesforce__contact_tmp') }}
),

fields as (

    select
        {{
            fivetran_utils.fill_staging_columns(
                source_columns=adapter.get_columns_in_relation(ref('stg_salesforce__contact_tmp')),
                staging_columns=get_contact_columns()
            )
        }}
    from base
),

final as (
    
    select 
18:30:22          _fivetran_synced,
        account_id,
        act_on_lead_score_c,
        active_relationship_c,
        adgroupid_c,
        allbound_id_c,
        analytics_id_c,
        assistant_name,
        assistant_phone,
        attempting_contact_date_time_c,
        attended_event_c,
        automation_tracking_c,
        avatar_c,
        behavioral_score_c,
        beta_connector_interest_c,
        bill_to_contact_hidden_c,
        birthdate,
        bizible_2_ad_campaign_name_ft_c,
        bizible_2_ad_campaign_name_lc_c,
        bizible_2_bizible_id_c,
        bizible_2_landing_page_ft_c,
        bizible_2_landing_page_lc_c,
        bizible_2_marketing_channel_ft_c,
        bizible_2_marketing_channel_lc_c,
        bizible_2_touchpoint_date_ft_c,
        bizible_2_touchpoint_date_lc_c,
        bizible_2_touchpoint_source_ft_c,
        bizible_2_touchpoint_source_lc_c,
        bt_stripe_default_payment_gateway_c,
        bt_stripe_default_payment_method_c,
        bt_stripe_gender_c,
        bt_stripe_languages_c,
        bt_stripe_level_c,
        bt_stripe_maiden_name_c,
        bt_stripe_personal_id_number_c,
        bt_stripe_personal_id_number_encrypted_c,
        bt_stripe_personal_id_type_c,
        bt_stripe_ssn_last_4_c,
        bt_stripe_ssn_last_4_encrypted_c,
        campaignid_c,
        cbit_clearbit_c,
        cbit_clearbit_ready_c,
        cbit_created_by_clearbit_c,
        celigo_sfnsio_net_suite_id_c,
        celigo_sfnsio_net_suite_record_c,
        celigo_sfnsio_net_suite_sync_error_c,
        celigo_sfnsio_skip_export_to_net_suite_c,
        celigo_sfnsio_test_mode_record_c,
        city_c,
        clarus_date_c,
        clarus_editor_c,
        clarus_notes_c,
        clarus_project_c,
        clarus_status_c,
        clearbit_role_c,
        clearbit_seniority_c,
        clearbit_sub_role_c,
        cloudingo_agent_ces_c,
        cloudingo_agent_mar_c,
        cloudingo_agent_mas_c,
        cloudingo_agent_mav_c,
        cloudingo_agent_mrdi_c,
        cloudingo_agent_mtz_c,
        cloudingo_agent_oar_c,
        cloudingo_agent_oas_c,
        cloudingo_agent_oav_c,
        cloudingo_agent_ordi_c,
        cloudingo_agent_otz_c,
        company_c,
        competitor_c,
        contact_holdover_c,
        contact_owners_manager_stamped_c,
        contact_stage_c,
        contact_status_c,
        contact_type_c,
        contacts_domain_exists_c,
        country_c,
        country_code_c,
        created_at_c,
        created_by_id,
        created_by_role_c,
        created_date,
        creative_c,
        csi_code_c,
        demographic_score_c,
        department,
        description,
        device_c,
        direct_office_c,
        dnb_contact_phone_c,
        dnb_email_c,
        dnb_email_deliverability_score_c,
        dnb_job_title_c,
        dnb_phone_accuracy_score_c,
        dnb_primary_address_city_c,
        dnb_primary_address_country_region_code_c,
        dnb_primary_address_postal_code_c,
        dnb_primary_address_state_province_abbre_c,
        dnb_primary_address_state_province_c,
        dnboptimizer_dn_bcontact_record_c,
        do_not_call,
        do_not_route_lead_c,
        do_not_sync_marketo_c,
        do_not_sync_reason_marketo_c,
        dozisf_zoom_info_company_id_c,
        dozisf_zoom_info_first_updated_c,
        dozisf_zoom_info_id_c,
        dozisf_zoom_info_last_updated_c,
        drift_cql_c,
        email,
        email_bounced_c,
        email_bounced_date,
        email_bounced_reason,
        email_opt_in_double_c,
        email_opt_in_explicit_c,
        email_opt_in_implicit_c,
        email_opt_out_date_time_c,
        email_quality_unknown_c,
        engagio_department_c,
        engagio_engagement_minutes_last_3_months_c,
        engagio_engagement_minutes_last_7_days_c,
        engagio_first_engagement_date_c,
        engagio_intent_minutes_last_30_days_c,
        engagio_role_c,
        enrichment_request_c,
        es_app_escreated_timestamp_c,
        es_app_esecid_c,
        es_app_esenriched_c,
        es_app_esenriched_timestamp_c,
        es_app_esintent_aggregate_score_c,
        es_app_esintent_timestamp_c,
        es_app_esintent_topics_c,
        es_app_esoverall_fit_score_c,
        es_app_essource_c,
        es_seniority_c,
        fax,
        first_activity_after_mql_changed_c,
        first_activity_after_mql_date_c,
        first_manual_activity_after_mql_date_c,
        first_mql_date_c,
        first_name,
        fivetran_account_association_date_c,
        fivetran_account_id_c,
        fivetran_account_user_role_s_c,
        fivetran_user_id_c,
        free_trial_email_confirmed_date_c,
        gclid_c,
        gdpr_opt_in_explicit_c,
        has_opted_out_of_email,
        has_opted_out_of_fax,
        historical_contact_status_c,
        home_phone,
        hot_contact_c,
        hvr_update_c,
        i_sell_avention_id_c,
        id,
        individual_id,
        ironclad_workflow_c,
        is_deleted,
        is_email_bounced,
        is_emea_event_routing_c,
        is_eu_resident_c,
        jigsaw,
        jigsaw_contact_id,
        job_function_c,
        job_level_c,
        keyword_c,
        last_activity_date,
        last_ae_activity_owner_c,
        last_bdr_activity_owner_c,
        last_curequest_date,
        last_cuupdate_date,
        last_manual_ae_activity_date_c,
        last_manual_bdr_activity_date_c,
        last_marketing_interesting_moment_date_c,
        last_modified_by_id,
        last_modified_date,
        last_name,
        last_referenced_date,
        last_sales_activity_date_time_c,
        last_sdr_activity_date_c,
        last_sdr_activity_owner_c,
        last_viewed_date,
        lead_source,
        lean_data_ld_segment_c,
        lean_data_manual_route_trigger_c,
        lean_data_matched_buyer_persona_c,
        lean_data_modified_score_c,
        lean_data_router_completion_date_time_c,
        lean_data_routing_action_c,
        lean_data_status_info_c,
        lean_data_tag_c,
        leandata_contact_owner_override_c,
        legacy_hvr_id_c,
        lid_linked_in_company_id_c,
        lid_linked_in_member_token_c,
        linked_in_url_c,
        mailing_city,
        mailing_country,
        mailing_country_code,
        mailing_geocode_accuracy,
        mailing_latitude,
        mailing_longitude,
        mailing_postal_code,
        mailing_state,
        mailing_state_code,
        mailing_street,
        marketing_connector_interest_c,
        marketing_process_c,
        master_record_id,
        matchtype_c,
        mc_4_sf_mc_subscriber_c,
        meta_data_create_date_c,
        mkto_71_contact_acquisition_date_c,
        mkto_71_contact_acquisition_program_c,
        mkto_71_contact_acquisition_program_id_c,
        mkto_71_contact_inferred_city_c,
        mkto_71_contact_inferred_company_c,
        mkto_71_contact_inferred_country_c,
        mkto_71_contact_inferred_metropolitan_a_c,
        mkto_71_contact_inferred_phone_area_cod_c,
        mkto_71_contact_inferred_postal_code_c,
        mkto_71_contact_inferred_state_region_c,
        mkto_71_contact_lead_score_c,
        mkto_71_contact_original_referrer_c,
        mkto_71_contact_original_search_engine_c,
        mkto_71_contact_original_search_phrase_c,
        mkto_71_contact_original_source_info_c,
        mkto_71_contact_original_source_type_c,
        mkto_si_hide_date_c,
        mkto_si_last_interesting_moment_date_c,
        mkto_si_last_interesting_moment_desc_c,
        mkto_si_last_interesting_moment_source_c,
        mkto_si_last_interesting_moment_type_c,
        mkto_si_mkto_lead_score_c,
        mkto_si_priority_c,
        mkto_si_relative_score_value_c,
        mkto_si_urgency_value_c,
        mobile_phone,
        mql_date_c,
        mql_date_changed_c,
        mql_reason_c,
        name,
        netsuite_conn_celigo_update_c,
        netsuite_conn_net_suite_id_c,
        netsuite_conn_net_suite_sync_err_c,
        netsuite_conn_push_to_net_suite_c,
        netsuite_conn_pushed_from_opportunity_c,
        netsuite_conn_sync_in_progress_c,
        network_c,
        no_geo_data_c,
        no_longer_at_company_c,
        notes_c,
        old_lead_source_c,
        old_lead_source_detail_c,
        opp_handoff_ae_c,
        opportunity_c,
        original_utm_campaign_c,
        original_utm_content_c,
        original_utm_medium_c,
        original_utm_source_c,
        original_utm_term_c,
        other_city,
        other_country,
        other_geocode_accuracy,
        other_latitude,
        other_longitude,
        other_phone,
        other_postal_code,
        other_state,
        other_street,
        owner_id,
        partner_company_c,
        partner_contact_c,
        partner_contact_deprecate_c,
        partner_rep_email_c,
        partner_rep_name_c,
        partner_territory_c,
        pbf_startup_certify_eligibility_c,
        pbf_startup_primary_role_c,
        persona_c,
        phone,
        phone_extension_c,
        phone_number_catch_all_c,
        photo_url,
        pi_campaign_c,
        pi_comments_c,
        pi_conversion_date_c,
        pi_conversion_object_name_c,
        pi_conversion_object_type_c,
        pi_created_date_c,
        pi_first_activity_c,
        pi_first_search_term_c,
        pi_first_search_type_c,
        pi_first_touch_url_c,
        pi_grade_c,
        pi_last_activity_c,
        pi_needs_score_synced_c,
        pi_notes_c,
        pi_pardot_hard_bounced_c,
        pi_pardot_last_scored_at_c,
        pi_score_c,
        pi_url_c,
        pi_utm_campaign_c,
        pi_utm_content_c,
        pi_utm_medium_c,
        pi_utm_source_c,
        pi_utm_term_c,
        potential_fivetran_use_case_c,
        primary_se_c,
        promotion_id_c,
        recent_marketing_campaign_status_c,
        referral_account_c,
        referral_contact_c,
        referral_exists_c,
        referral_first_name_c,
        referral_last_name_c,
        region_c,
        reports_to_id,
        rh_2_currency_test_c,
        rh_2_describe_c,
        rh_2_integer_test_c,
        routed_from_manual_bdr_ae_activity_c,
        sales_email_opt_out_c,
        sales_email_opt_out_date_time_c,
        sales_loft_1_most_recent_cadence_name_c,
        sales_loft_1_most_recent_cadence_next_step_due_date_c,
        sales_loft_1_most_recent_last_completed_step_c,
        salesloft_cadence_trigger_c,
        salesloft_owner_c,
        salesloft_owner_sf_c,
        salutation,
        secondary_email_c,
        self_service_routing_c,
        source_detail_c,
        source_last_lead_source_c,
        source_last_lead_source_category_c,
        source_last_lead_source_detail_c,
        state_c,
        state_code_c,
        system_modstamp,
        technical_contact_c,
        title,
        to_be_deleted_salesloft_backfill_c,
        trial_contact_start_date_c,
        unique_email_c,
        unqualified_reason_c,
        user_activity_logged_by_c,
        user_gems_has_changed_job_c,
        user_gems_is_a_user_gem_c,
        user_gems_past_account_c,
        user_gems_past_company_c,
        user_gems_past_contact_c,
        user_gems_past_title_c,
        user_gems_ug_created_by_ug_c,
        user_gems_ug_current_infos_c,
        user_gems_ug_past_infos_c,
        user_gems_user_gems_id_c,
        username_c,
        utm_campaign_c,
        utm_content_c,
        utm_id_c,
        utm_medium_c,
        utm_source_c,
        utm_term_c,
        verified_c,
        zoominfo_technologies_c
    from fields
)

select *
from final
