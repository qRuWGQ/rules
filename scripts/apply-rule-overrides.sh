#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 3 ]]; then
  echo "Usage: $0 <config-file> <rule-name> <ruleset-file>" >&2
  exit 2
fi

config_file=$1
rule_name=$2
ruleset_file=$3

for file in "$config_file" "$ruleset_file"; do
  if [[ ! -f "$file" ]]; then
    echo "File not found: $file" >&2
    exit 1
  fi
done

if ! KEY="$rule_name" yq -e '.[strenv(KEY)] != null' "$config_file" >/dev/null; then
  echo "Rule not found in config: $rule_name" >&2
  exit 1
fi

if ! KEY="$rule_name" yq -e '
  .[strenv(KEY)] |
  select(.add == null or ((.add | tag) == "!!seq")) |
  select(.del == null or ((.del | tag) == "!!seq"))
' "$config_file" >/dev/null; then
  echo "The add and del values for $rule_name must be arrays" >&2
  exit 1
fi

if ! yq -e '.payload | tag == "!!seq"' "$ruleset_file" >/dev/null; then
  echo "The downloaded ruleset must contain a payload array: $ruleset_file" >&2
  exit 1
fi

add_rules=$(KEY="$rule_name" yq -o=json -I=0 '.[strenv(KEY)].add // []' "$config_file")
del_rules=$(KEY="$rule_name" yq -o=json -I=0 '.[strenv(KEY)].del // []' "$config_file")

ADD_RULES="$add_rules" DEL_RULES="$del_rules" yq -i '
  .payload = (
    ((.payload - (strenv(DEL_RULES) | from_json)) + (strenv(ADD_RULES) | from_json))
    | unique
  )
' "$ruleset_file"
