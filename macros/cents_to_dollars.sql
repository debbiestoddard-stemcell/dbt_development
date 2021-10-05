{% macro cents_to_dollars(col_nm, dec_pl) -%}
round(1.0 * {{col_nm}} / 100, {{dec_pl}})
{%- endmacro %}