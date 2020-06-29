#!/bin/bash

# Dataset files are expected to be available at this /skiff_files location.
# But, the application reads files from /usr/src/app/covid-ai2/data so this
# symlink lets it find the files it needs.
ln -s /skiff_files/apps/covid-sim/demo_data /usr/src/app/covid-ai2/data

streamlit run demo.py --server.enableCORS false
