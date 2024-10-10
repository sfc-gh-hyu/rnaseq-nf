params.outdir = 'results'

process FASTQC {
    tag "FASTQC on $sample_id"
    container '/hyu/public/test_repo2/rnaseq-nf:1.0'
    publishDir params.outdir, mode:'copy'

    input:
    tuple val(sample_id), path(reads)

    output:
    path "fastqc_${sample_id}_logs", emit: logs

    script:
    """
    fastqc.sh "$sample_id" "$reads"
    """
}
