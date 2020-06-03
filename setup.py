from setuptools import setup

setup(
    name='GeneXpress',
    version='0.0.1.3',
    packages=['VizTools', 'AnalysisTools', 'ExpressionTools'],
    data_files=[('AnalysisTools', ['all_curated_genesets.gmt', 'immunological_signatures.gmt',
                                   'msigdb_hallmarks.gmt', 'reactome_canonical_pathways.gmt'])],

    url='',
    license='GNU Affero General Public License v3.0',
    author='Colton J. Garelli',
    author_email='',
    description='A unified set of analysis and visualization tools intended for gene expression studies in Python, and an interface to the R ExpressionSet.')
