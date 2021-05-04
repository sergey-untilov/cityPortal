#!/usr/bin/env bash
echo '---initDB---' &&
ubcli initDB -p admin -drop -create &&  # -dba postgres -dbaPwd postgres # for postgres
echo '---generateDDL---' &&
ubcli generateDDL -u admin -p admin -autorun &&
echo '---initialize---' &&
ubcli initialize -u admin -p admin