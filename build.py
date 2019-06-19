#!/usr/bin/env python3
import re
from sys import stdin


def preprocess(text):
    preprocessing = [
        ('#.*', ''),  # strip comments
        ('\\s*$', ''),  # strip trailing whitespace
        ('\\n+', '\\n')  # remove empty lines
    ]
    for sub in preprocessing:
        text = re.sub(*sub, text)
    return text


def payload(text):
    escape = [
        ('\\', r'\\\\'),  # escape slashes
        ('"', r'\\\"'),  # escape quotes
        ('\n', r'\\n')  # escape newlines
    ]
    for sub in escape:
        text = text.replace(*sub)
    return text


if __name__ == '__main__':
    with open('base.sh', 'r') as infile, open('quine.sh', 'w') as outfile:
        text = infile.read()
        preprocessed = preprocess(text) + '\n'
        payload = payload(preprocessed)
        outfile.write(preprocessed + 'git c "\\"' + payload + '\\""\n')
