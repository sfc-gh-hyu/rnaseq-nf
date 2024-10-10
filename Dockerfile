FROM nextflow/nextflow:24.04.1

COPY build/plugins/nf-snowflake-0.5.0/ /.nextflow/plugins/nf-snowflake-0.5.0/
WORKDIR /
