from setuptools import setup, find_packages

setup(
    name='apiverve_meetingtimeconverter',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Meeting Time Converter transforms meeting times between any two timezones, calculating time differences and UTC offsets for global coordination.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
