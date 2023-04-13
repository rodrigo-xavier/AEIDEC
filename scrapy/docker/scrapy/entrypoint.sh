#!/bin/sh

# Install new requirements
echo "\n\tINSTALL REQUIREMENTS\n"
pip install -r /requirements.txt

scrapy crawl quotes