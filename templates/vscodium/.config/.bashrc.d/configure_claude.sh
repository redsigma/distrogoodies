#!/bin/bash

{% set yaml_file = playbook_dir ~ '/private_data/roles/vscodium/vars/claude_environment.yaml' %}
{% set yaml_key = 'claude_environment_variables' %}
{% import 'shared_macros/yaml_mapping.j2' as yaml with context %}
{% import 'shared_macros/shell.j2' as shell with context %}

{% for name, value in yaml.mapping | dictsort %}
export {{ name }}={{ shell.render_value(value) }}
{% endfor %}
