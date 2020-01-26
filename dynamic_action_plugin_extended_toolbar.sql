prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.18'
,p_default_workspace_id=>37181779490747874089
,p_default_application_id=>93690
,p_default_id_offset=>0
,p_default_owner=>'ASHISH_ME'
);
end;
/
 
prompt APPLICATION 93690 - Extended Grid toolbar
--
-- Application Export:
--   Application:     93690
--   Name:            Extended Grid toolbar
--   Date and Time:   17:55 Sunday January 26, 2020
--   Exported By:     ASHISH
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 43500204217867155558
--   Manifest End
--   Version:         19.2.0.00.18
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/hr_bilog_extendigtoolbar652701909024174
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(43500204217867155558)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'HR.BILOG.EXTENDIGTOOLBAR652701909024174'
,p_display_name=>'Interactive Grid - Extend Toolbar (Add button)'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#custom_event.custom_grid.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_render_plugin (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin)',
'  return apex_plugin.t_dynamic_action_render_result',
'is',
'  v_return apex_plugin.t_dynamic_action_render_result;',
'begin',
'  -- return',
'  v_return.javascript_function := ''extendGridToolbar.init'';',
'  v_return.attribute_01        := p_dynamic_action.attribute_01;',
'  v_return.attribute_02        := p_dynamic_action.attribute_02;',
'  v_return.attribute_03        := p_dynamic_action.attribute_03;',
'  v_return.attribute_04        := p_dynamic_action.attribute_04; -- hot  ',
'  v_return.attribute_05        := p_dynamic_action.attribute_05; -- icon',
'  v_return.attribute_06        := p_dynamic_action.attribute_06; -- iconOnly  ',
'  v_return.attribute_07        := p_dynamic_action.attribute_07; -- icon position',
'  v_return.attribute_08        := p_dynamic_action.attribute_08; -- title',
'  v_return.attribute_09        := p_dynamic_action.attribute_09; -- trigger custom event  ',
'  v_return.attribute_10        := p_dynamic_action.attribute_10; -- disabled ',
'  v_return.attribute_11        := p_dynamic_action.attribute_11; -- hidden  ',
'  v_return.attribute_12        := p_dynamic_action.attribute_12; -- Custom action',
'  --v_return.attribute_13        := p_dynamic_action.attribute_13; -- color',
'  v_return.attribute_14        := p_dynamic_action.attribute_14; -- Javascript',
'  v_return.attribute_15        := p_dynamic_action.attribute_15; -- gid actions',
'  ',
'  return v_return;',
'end;'))
,p_api_version=>2
,p_render_function=>'f_render_plugin'
,p_standard_attributes=>'REGION:REQUIRED:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Dynamic Action Plugin that enables you to declaratively define IG toolbar buttons.'
,p_version_identifier=>'1.0.4'
,p_about_url=>'https://apex.oracle.com/pls/apex/f?p=93690'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'v1.0.0 -- Button are available with Custom and Grid action added in configurations',
''))
,p_files_version=>91
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500204501156155559)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Toolbar Group'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'actions2'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose one of default IG toolbar groups. With this plugin you can add button to the start or end of the group.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500207818738155562)
,p_plugin_attribute_id=>wwv_flow_api.id(43500204501156155559)
,p_display_sequence=>10
,p_display_value=>'1. Search Box Group'
,p_return_value=>'search'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500204814657155560)
,p_plugin_attribute_id=>wwv_flow_api.id(43500204501156155559)
,p_display_sequence=>20
,p_display_value=>'2. Saved Reports Group'
,p_return_value=>'reports'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500205404464155561)
,p_plugin_attribute_id=>wwv_flow_api.id(43500204501156155559)
,p_display_sequence=>30
,p_display_value=>'3. View Switch Group'
,p_return_value=>'views'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500205859477155561)
,p_plugin_attribute_id=>wwv_flow_api.id(43500204501156155559)
,p_display_sequence=>40
,p_display_value=>'4. Actions Menu Group'
,p_return_value=>'actions1'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500206318524155561)
,p_plugin_attribute_id=>wwv_flow_api.id(43500204501156155559)
,p_display_sequence=>50
,p_display_value=>'5. Edit & Save Group'
,p_return_value=>'actions2'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500206904081155561)
,p_plugin_attribute_id=>wwv_flow_api.id(43500204501156155559)
,p_display_sequence=>60
,p_display_value=>'6. Add Row Group'
,p_return_value=>'actions3'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500207315205155562)
,p_plugin_attribute_id=>wwv_flow_api.id(43500204501156155559)
,p_display_sequence=>70
,p_display_value=>'7. Reset Group'
,p_return_value=>'actions4'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500208330390155562)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Group Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose group position. Start or end of the toolbar group.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500208734086155562)
,p_plugin_attribute_id=>wwv_flow_api.id(43500208330390155562)
,p_display_sequence=>10
,p_display_value=>'Start'
,p_return_value=>'F'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500209229315155563)
,p_plugin_attribute_id=>wwv_flow_api.id(43500208330390155562)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'L'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500209721830155563)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(43500211026009155564)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>'Label of a button. You can also use text messages defined in shared components.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500210142972155564)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Hot'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Hot or not? :)'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500210627972155564)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'fa fa-user'
,p_help_text=>'Define APEX icon class for a button.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500211026009155564)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>25
,p_prompt=>'Icon Only'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Display only button with icon.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500211447998155564)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Icon Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'B'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(43500210627972155564)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_lov_type=>'STATIC'
,p_help_text=>'Display position of an icon - before or after label.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500211842146155564)
,p_plugin_attribute_id=>wwv_flow_api.id(43500211447998155564)
,p_display_sequence=>10
,p_display_value=>'Before Label'
,p_return_value=>'B'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500212326947155565)
,p_plugin_attribute_id=>wwv_flow_api.id(43500211447998155564)
,p_display_sequence=>20
,p_display_value=>'After Label'
,p_return_value=>'A'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500212820350155565)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_help_text=>'HTML button title attribute. Shown on mouse hover.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500213224844155565)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Trigger Action'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'GRID'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Trigger Default IG Action</h3>',
'<p>',
'You can trigger one of the default IG actions or a custom event.<br />',
'To list all available IG actions use this in browser JS console:',
'<pre>apex.region(''emp'').widget().interactiveGrid(''getActions'').list();</pre>',
'<pre>',
'Some examples:',
'show-download-dialog',
'show-sort-dialog',
'show-filter-dialog',
'</pre>',
'Replace <i>emp</i> with Static ID of your IG region.',
'</p>',
'<p>',
'<h3>Trigger Custom Action</h3>',
'If action doesn''t exists in default IG action list it will trigger a custom event Dynamic Action on Interactive Grid region defined in Affected Elements property. Name of custom event is defined with this property.<br />',
'To handle it with Dynamic Action:<br />',
'<ol>',
'  <li>Create Dynamic Action that triggers on event Custom</li>',
'  <li>In Custom Event property put the value of this attribute</li>',
'  <li>For Selection Type choose Region</li>',
'  <li>In Region property choose IG Region</li>',
'</ol>',
'<h4>Example</h4>',
'<pre>',
'Event: Custom',
'Custom Event: my-custom-action',
'Selection Type: Region',
'Region: Emp',
'</pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500238882646171614)
,p_plugin_attribute_id=>wwv_flow_api.id(43500213224844155565)
,p_display_sequence=>10
,p_display_value=>'Grid Actions'
,p_return_value=>'GRID'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'It will allow you to trigger grid action.',
'Some examples:',
'show-download-dialog',
'show-sort-dialog',
'show-filter-dialog'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500190287368630942)
,p_plugin_attribute_id=>wwv_flow_api.id(43500213224844155565)
,p_display_sequence=>20
,p_display_value=>'Custom Action'
,p_return_value=>'CUSTOM'
,p_help_text=>'It allows you to run any custom javascript'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500213611028155566)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Disabled'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Disable button on load. <br />',
'This property can be used to disable default IG actions. To do this just set name of default IG action in Action property.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500214045032155566)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Hidden'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hide button on load. <br />',
'This property can be used to hide default IG actions. To do this just set name of default IG action in Action property.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(759591447031575)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>91
,p_prompt=>'Custom Event Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(43500213224844155565)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500214435884155566)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_default_value=>'#fffabc'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500214841011155566)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>91
,p_prompt=>'JavaScript Code'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(43500213224844155565)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(43500215232078155567)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>92
,p_prompt=>'Grid actions'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(43500213224844155565)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'GRID'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500216703268155567)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>10
,p_display_value=>'Show Download dialog'
,p_return_value=>'show-download-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500215662963155567)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>20
,p_display_value=>'Show sorting Dialog'
,p_return_value=>'show-sort-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(43500216106493155567)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>30
,p_display_value=>'Filter dialog'
,p_return_value=>'show-filter-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751390602314480645)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>40
,p_display_value=>'show-columns-dialog'
,p_return_value=>'show-columns-dialog'
,p_help_text=>'show-columns-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751391390194481424)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>50
,p_display_value=>'show-filter-dialog'
,p_return_value=>'show-filter-dialog'
,p_help_text=>'show-filter-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750749245788946706)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>60
,p_display_value=>'show-sort-dialog'
,p_return_value=>'show-sort-dialog'
,p_help_text=>'show-sort-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751394449627483485)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>70
,p_display_value=>'show-aggregate-dialog'
,p_return_value=>'show-aggregate-dialog'
,p_help_text=>'show-aggregate-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750750420455948664)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>80
,p_display_value=>'refresh'
,p_return_value=>'refresh'
,p_help_text=>'refresh'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751396016754485196)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>90
,p_display_value=>'show-flashback-dialog'
,p_return_value=>'show-flashback-dialog'
,p_help_text=>'show-flashback-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751397315230486104)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>100
,p_display_value=>'show-control-break-dialog'
,p_return_value=>'show-control-break-dialog'
,p_help_text=>'show-control-break-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751398370429487051)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>110
,p_display_value=>'show-highlight-dialog'
,p_return_value=>'show-highlight-dialog'
,p_help_text=>'show-highlight-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750764624766952433)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>120
,p_display_value=>'stretch-columns'
,p_return_value=>'stretch-columns'
,p_help_text=>'stretch-columns'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751402051944489226)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>130
,p_display_value=>'selection-mode'
,p_return_value=>'selection-mode'
,p_help_text=>'selection-mode'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751402572786490122)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>140
,p_display_value=>'selection-copy'
,p_return_value=>'selection-copy'
,p_help_text=>'selection-copy'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751403534681491083)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>150
,p_display_value=>'selection-duplicate'
,p_return_value=>'selection-duplicate'
,p_help_text=>'selection-duplicate'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750773185218956228)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>160
,p_display_value=>'selection-delete'
,p_return_value=>'selection-delete'
,p_help_text=>'selection-delete'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751405072040492797)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>170
,p_display_value=>'selection-refresh'
,p_return_value=>'selection-refresh'
,p_help_text=>'selection-refresh'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750777779832958021)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>180
,p_display_value=>'selection-revert'
,p_return_value=>'selection-revert'
,p_help_text=>'selection-revert'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750779998233958772)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>190
,p_display_value=>'selection-copy-down'
,p_return_value=>'selection-copy-down'
,p_help_text=>'selection-copy-down'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751427725893495345)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>200
,p_display_value=>'selection-fill'
,p_return_value=>'selection-fill'
,p_help_text=>'selection-fill'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750784843809960526)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>210
,p_display_value=>'selection-clear'
,p_return_value=>'selection-clear'
,p_help_text=>'selection-clear'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750785615102961299)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>220
,p_display_value=>'chart-view'
,p_return_value=>'chart-view'
,p_help_text=>'chart-view'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751429281319497724)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>230
,p_display_value=>'save-report'
,p_return_value=>'save-report'
,p_help_text=>'save-report'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751429909683498679)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>240
,p_display_value=>'show-save-report-as-dialog'
,p_return_value=>'show-save-report-as-dialog'
,p_help_text=>'show-save-report-as-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750798147731963944)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>250
,p_display_value=>'show-edit-report-dialog'
,p_return_value=>'show-edit-report-dialog'
,p_help_text=>'show-edit-report-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21750799059344964866)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>260
,p_display_value=>'delete-report'
,p_return_value=>'delete-report'
,p_help_text=>'delete-report'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751475300350501228)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>270
,p_display_value=>'reset-report'
,p_return_value=>'reset-report'
,p_help_text=>'reset-report'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751476065245501972)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>280
,p_display_value=>'show-download-dialog'
,p_return_value=>'show-download-dialog'
,p_help_text=>'show-download-dialog'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(21751481671467502685)
,p_plugin_attribute_id=>wwv_flow_api.id(43500215232078155567)
,p_display_sequence=>290
,p_display_value=>'show-help-dialog'
,p_return_value=>'show-help-dialog'
,p_help_text=>'show-help-dialog'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A210D0A202A20617065782D706C7567696E2D657874656E646967746F6F6C626172202D204F7261636C65204150455820706C7567696E0D0A202A2040617574686F72204173686973682053616861790D0A202A204076657273696F6E2076312E302E';
wwv_flow_api.g_varchar2_table(2) := '300D0A202A20406C696E6B2068747470733A2F2F6769746875622E636F6D2F6173686973687468656170657869616E2F415065785F69672E6769740D0A202A20406C6963656E7365204D49540D0A202A2F0D0A2F2A0D0A202A2043686167654C6F673A0D';
wwv_flow_api.g_varchar2_table(3) := '0A202A2076312E302E30202D20323032303031323631202D20496E697469616C2052656C656173650D0A202A2F0D0A0D0A76617220657874656E6447726964546F6F6C626172203D207B0D0A09090D0A202020202F2A20496E69742046756E6374696F6E';
wwv_flow_api.g_varchar2_table(4) := '2A2F0D0A20202020696E69743A2066756E6374696F6E202829207B0D0A2020202020202020766172206461203D20746869733B0D0A2020202020202020617065782E64656275672E6C6F672827657874656E6447726964546F6F6C6261722E696E697427';
wwv_flow_api.g_varchar2_table(5) := '2C206461293B0D0A20202020202020202F2A2067657420706C7567696E20617474726962757465732A2F0D0A2020202020202020766172207647726F7570203D2064612E616374696F6E2E61747472696275746530313B0D0A2020202020202020766172';
wwv_flow_api.g_varchar2_table(6) := '2076506F736974696F6E203D2064612E616374696F6E2E61747472696275746530323B202F2A2046202D2066697273742C204C202D206C6173742A2F0D0A202020202020202076617220764C6162656C203D2064612E616374696F6E2E61747472696275';
wwv_flow_api.g_varchar2_table(7) := '746530333B0D0A20202020202020207661722076486F74203D2064612E616374696F6E2E6174747269627574653034203D3D20275927203F2074727565203A2066616C73653B0D0A2020202020202020766172207649636F6E203D2064612E616374696F';
wwv_flow_api.g_varchar2_table(8) := '6E2E61747472696275746530353B0D0A2020202020202020766172207649636F6E4F6E6C79203D2064612E616374696F6E2E6174747269627574653036203D3D20275927203F2074727565203A2066616C73653B0D0A2020202020202020766172207649';
wwv_flow_api.g_varchar2_table(9) := '636F6E506F736974696F6E203D2064612E616374696F6E2E6174747269627574653037203D3D20274227203F2074727565203A2066616C73653B0D0A202020202020202076617220765469746C65203D2064612E616374696F6E2E617474726962757465';
wwv_flow_api.g_varchar2_table(10) := '30383B0D0A20202020202020207661722076416374696F6E203D2064612E616374696F6E2E61747472696275746530393B202F2A20616374696F6E202A2F0D0A2020202020202020766172207644697361626C6564203D2064612E616374696F6E2E6174';
wwv_flow_api.g_varchar2_table(11) := '747269627574653130203D3D20275927203F2074727565203A2066616C73653B202F2A2064697361626C65202A2F0D0A2020202020202020766172207648696464656E203D2064612E616374696F6E2E6174747269627574653131203D3D20275927203F';
wwv_flow_api.g_varchar2_table(12) := '2074727565203A2066616C73653B202F2A2068696464656E202A2F0D0A202020202020202076617220765F4576656E746E616D65203D2064612E616374696F6E2E61747472696275746531323B202F2A20437573746F6D206576656E74206E616D65202A';
wwv_flow_api.g_varchar2_table(13) := '2F0D0A20202020202020207661722076436F6C6F72203D2064612E616374696F6E2E61747472696275746531333B202F2A2068696464656E202A2F0D0A202020202020202076617220764A617661736372697074203D2064612E616374696F6E2E617474';
wwv_flow_api.g_varchar2_table(14) := '72696275746531343B202F2A2068696464656E2A2F0D0A2020202020202020766172207647726964616374696F6E203D2064612E616374696F6E2E61747472696275746531353B202F2A2068696464656E2A2F0D0A0D0A20202020202020202F2A20416E';
wwv_flow_api.g_varchar2_table(15) := '6F7468657220776179206F662067657474696E6720746F6F6C6261722A2F0D0A20202020202020202F2A207661722024203D20617065782E6A51756572792C2A2F0D0A20202020202020202F2A20746F6F6C62617244617461203D20242E617065782E69';
wwv_flow_api.g_varchar2_table(16) := '6E746572616374697665477269642E636F707944656661756C74546F6F6C62617228293B2A2F0D0A0D0A20202020202020202F2A2067657420526567696F6E2A2F0D0A20202020202020207661722076526567696F6E4964203D2064612E616666656374';
wwv_flow_api.g_varchar2_table(17) := '6564456C656D656E74735B305D2E69643B0D0A20202020202020207661722076526567696F6E24203D20617065782E6A51756572792864612E6166666563746564456C656D656E74735B305D293B0D0A0D0A20202020202020202F2A20636865636B2069';
wwv_flow_api.g_varchar2_table(18) := '636F6E2A2F0D0A20202020202020202F2A20746F446F3A20636865636B206966207468657265277320616C726561647920666120636C6173732A2F0D0A2020202020202020696620287649636F6E29207B0D0A2020202020202020202020207649636F6E';
wwv_flow_api.g_varchar2_table(19) := '203D202766612027202B207649636F6E3B0D0A20202020202020207D0D0A0D0A20202020202020207661722076416374696F6E4E616D65203D20276D792D637573746F6D2D616374696F6E273B0D0A20202020202020202F2A2047657420576964676574';
wwv_flow_api.g_varchar2_table(20) := '202A2F0D0A2020202020202020766172207657696467657424203D20617065782E726567696F6E2876526567696F6E4964292E77696467657428293B0D0A0D0A20202020202020202F2A20477269642063726561746564202A2F0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(21) := '202076617220746F6F6C626172203D2076576964676574242E696E746572616374697665477269642822676574546F6F6C62617222293B0D0A2020202020202020636F6E736F6C652E6C6F6728746F6F6C626172293B0D0A202020202020202069662028';
wwv_flow_api.g_varchar2_table(22) := '7643727564203D20274E554C4C2729207B0D0A202020202020202020202020636F6E736F6C652E6C6F6728276E6F206372756427293B0D0A20202020202020207D20656C7365207B0D0A20202020202020202020202076416374696F6E203D2076576964';
wwv_flow_api.g_varchar2_table(23) := '676574242E696E746572616374697665477269642822676574416374696F6E7322292E696E766F6B65287643727564293B0D0A20202020202020207D0D0A20202020202020202F2A2066696E6420746F6F6C6261722067726F7570202A2F0D0A20202020';
wwv_flow_api.g_varchar2_table(24) := '2020202076617220746F6F6C62617247726F7570203D20746F6F6C6261722E746F6F6C626172282766696E6447726F7570272C207647726F7570293B0D0A0D0A202020202020202076617220616374696F6E54797065203D2076416374696F6E3B0D0A20';
wwv_flow_api.g_varchar2_table(25) := '202020202020206966202876416374696F6E203D3D2027475249442729207B0D0A20202020202020202020202076416374696F6E203D207647726964616374696F6E3B0D0A090909765F4576656E746E616D65203D2076416374696F6E3B0D0A20202020';
wwv_flow_api.g_varchar2_table(26) := '202020207D0D0A0D0A2020202020202020766172207661427574746F6E203D207B0D0A202020202020202020202020747970653A2027425554544F4E272C0D0A2020202020202020202020206C6162656C3A20764C6162656C2C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(27) := '202020207469746C653A20765469746C652C0D0A2020202020202020202020206C6162656C4B65793A20764C6162656C2C202F2A206C6162656C2066726F6D2074657874206D65737361676573202A2F0D0A202020202020202020202020616374696F6E';
wwv_flow_api.g_varchar2_table(28) := '3A20765F4576656E746E616D652C0D0A20202020202020202020202069636F6E3A207649636F6E2C0D0A20202020202020202020202069636F6E4F6E6C793A207649636F6E4F6E6C792C0D0A20202020202020202020202069636F6E4265666F72654C61';
wwv_flow_api.g_varchar2_table(29) := '62656C3A207649636F6E506F736974696F6E2C0D0A202020202020202020202020686F743A2076486F740D0A20202020202020207D3B0D0A0D0A20202020202020206966202876506F736974696F6E203D3D2027462729207B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(30) := '202020746F6F6C62617247726F75702E636F6E74726F6C732E756E7368696674287661427574746F6E290D0A20202020202020207D20656C7365207B0D0A202020202020202020202020746F6F6C62617247726F75702E636F6E74726F6C732E70757368';
wwv_flow_api.g_varchar2_table(31) := '287661427574746F6E293B0D0A20202020202020207D3B0D0A0D0A20202020202020207661722076416374696F6E73203D2076576964676574242E696E746572616374697665477269642827676574416374696F6E7327293B0D0A0D0A20202020202020';
wwv_flow_api.g_varchar2_table(32) := '202F2A20636865636B20696620616374696F6E206578697374732C207468656E206A7573742061737369676E2069742A2F0D0A20202020202020207661722076416374696F6E24203D2076416374696F6E732E6C6F6F6B75702876416374696F6E293B0D';
wwv_flow_api.g_varchar2_table(33) := '0A2020202020202020696620282176416374696F6E2429207B0D0A20202020202020202020202076416374696F6E732E616464287B0D0A202020202020202020202020202020206E616D653A20765F4576656E746E616D652C0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(34) := '202020202020206C6162656C3A20764C6162656C2C0D0A20202020202020202020202020202020616374696F6E3A2066756E6374696F6E20286576656E742C20656C656D656E7429207B0D0A20202020202020202020202020202020202020202F2A6170';
wwv_flow_api.g_varchar2_table(35) := '65782E6576656E742E747269676765722876526567696F6E242C2076416374696F6E293B202A2F0D0A202020202020202020202020202020202020202069662028616374696F6E54797065203D3D2022435553544F4D2229207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(36) := '202020202020202020202020202020206576616C28764A617661736372697074293B0D0A20202020202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020207D2C0D0A20202020202020202020202020202020686964';
wwv_flow_api.g_varchar2_table(37) := '653A207648696464656E2C0D0A2020202020202020202020202020202064697361626C65643A207644697361626C65640D0A2020202020202020202020207D293B0D0A0D0A20202020202020207D20656C73652069662028616374696F6E54797065203D';
wwv_flow_api.g_varchar2_table(38) := '3D2022475249442229207B0D0A202020202020202020202020617065782E6576656E742E747269676765722876526567696F6E242C2076416374696F6E293B0D0A20202020202020207D20656C7365207B0D0A2020202020202020202020207641637469';
wwv_flow_api.g_varchar2_table(39) := '6F6E242E68696465203D207648696464656E3B0D0A20202020202020202020202076416374696F6E242E64697361626C6564203D207644697361626C65643B0D0A20202020202020207D0D0A20202020202020207661722076416374696F6E734D656E75';
wwv_flow_api.g_varchar2_table(40) := '24203D20746F6F6C6261722E746F6F6C626172282266696E64456C656D656E74222C2022616374696F6E735F627574746F6E5F6D656E7522293B0D0A202020202020202076617220764D656E754974656D203D2076416374696F6E734D656E75242E6D65';
wwv_flow_api.g_varchar2_table(41) := '6E75282266696E64222C2022726F777322293B0D0A202020202020202069662028764D656E754974656D29207B0D0A2020202020202020202020207661722076436F6E666967203D20617065782E726567696F6E2876526567696F6E4964292E63616C6C';
wwv_flow_api.g_varchar2_table(42) := '28226F7074696F6E222C2022636F6E66696722293B0D0A202020202020202020202020764D656E754974656D2E68696465203D202876436F6E6669672E706167696E6174696F6E2E7479706520213D3D202773657427293B0D0A20202020202020207D0D';
wwv_flow_api.g_varchar2_table(43) := '0A0D0A20202020202020202F2A20726566726573682067726964202A2F0D0A2020202020202020746F6F6C6261722E746F6F6C62617228277265667265736827293B0D0A0D0A202020207D0D0A0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(43500218757449155572)
,p_plugin_id=>wwv_flow_api.id(43500204217867155558)
,p_file_name=>'custom_event.custom_grid.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
