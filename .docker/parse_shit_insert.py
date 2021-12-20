#!/usr/bin/env python3.9

import sys

def main(): 
    raw_insert = sys.argv[1].split('\n')
    skip_trash = len(raw_insert[0][:raw_insert[0].find('(')])
    normal_person_insert = [row[skip_trash:] for row in raw_insert]
    for row in normal_person_insert:
        print(row + ',')


if __name__ == '__main__':
    main()

