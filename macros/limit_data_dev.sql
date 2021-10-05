{% macro limit_data_dev(dt_nm) %}
{% if target.name == 'default' %}
where {{dt_nm}} >= dateadd('day',-3,current_timestamp)
{% endif %}
{% endmacro %}