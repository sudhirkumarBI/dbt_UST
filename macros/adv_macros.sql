{% macro loaddata(pat, tbl, frm ) %}
{% set qry = 'COPY INTO  ' + tbl + ' FROM @' + pat + ' FILE_FORMAT = ' + frm %}
{{ run_query(qry) }}
{% endmacro %}