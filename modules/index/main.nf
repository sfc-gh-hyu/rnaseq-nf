
process INDEX {
    tag "$transcriptome.simpleName"
    container '/hyu/public/test_repo2/rnaseq-nf:1.0'
    
    input:
    path transcriptome 

    output:
    path 'index' 

    script:
    """
    salmon index --threads $task.cpus -t $transcriptome -i index
    """
}
