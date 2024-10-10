params.outdir = 'results'

process MULTIQC {
    container '/hyu/public/test_repo2/rnaseq-nf:1.0'
    publishDir params.outdir, mode:'copy'

    input:
    path '*'
    path 'config'

    output:
    path 'multiqc_report.html', emit: report

    script:
    """
    cp $config/* .
    echo "custom_logo: \$PWD/logo.png" >> multiqc_config.yaml
    multiqc -o multiqc_report.html .
    """
}
