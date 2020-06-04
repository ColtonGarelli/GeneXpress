from setuptools import setup

setup(
    name='GeneXpress',
    version='0.0.1.3',
    packages=['VizTools', 'AnalysisTools', 'ExpressionTools'],
    data_files=[('AnalysisTools', ['AnalysisTools/gsea_databases/all_curated_genesets.gmt', 'AnalysisTools/gsea_databases/immunological_signatures.gmt',
                                   'AnalysisTools/gsea_databases/msigdb_hallmarks.gmt', 'AnalysisTools/gsea_databases/reactome_canonical_pathways.gmt'])],

    url='',
    license='GNU Affero General Public License v3.0',
    author='Colton J. Garelli',
    author_email='',
    description='A unified set of analysis and visualization tools intended for gene expression studies in Python, and an interface to the R ExpressionSet.')
