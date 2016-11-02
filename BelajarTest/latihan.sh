#!/bin/bash

name=$1
curl -i -H "Accept: application/json" "http://infopangan.jakarta.go.id/api/price/series_by_location?public=1&type=market&lid=7&m=$name&y=2015" | grep "status\":" > latihan.txt
