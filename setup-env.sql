--!jinja2

{% if DEPLOYMENT_TYPE == 'prod' %}
  {% set environments = ['cert', 'prod'] %}
{% else %}
  {% set environments = ['dev', 'btat'] %}
{% endif %}

{% for environment in environments %}
  CREATE DATABASE {{ environment }}_jinja_db;
  USE DATABASE {{ environment }}_jinja_db;
  CREATE SCHEMA jinja_sch;
  CREATE TABLE {{ environment }}_orders (
    id NUMBER,
    item VARCHAR,
    quantity NUMBER);
  CREATE TABLE {{ environment }}_customers (
    id NUMBER,
    name VARCHAR);
{% endfor %}