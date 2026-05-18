{% macro delimiter(arg) %}

replace({{arg}},'|',',')

{% endmacro %}