{% macro get_date_parts(date_column) %}
STRUCT(
  {{ date_column }} AS original_date,
  EXTRACT(YEAR FROM {{ date_column }}) AS year,
  EXTRACT(MONTH FROM {{ date_column }}) AS month
)
{% endmacro %}
