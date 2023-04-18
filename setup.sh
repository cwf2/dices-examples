#!/bin/bash
set -x

# download pickle files from Google Drive
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=11HbOHMOFoTyzOsG1udu9qKhtDJnp-5Js' -O data/iliad_speeches.pickle
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1V0av9x5YqpcCS1Jov6YDEF-XN6XMjrXM' -O data/odyssey_speeches.pickle
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1W6dCXEkkjSSKMJzvEC3KQqlefYHRVWAi' -O data/posthomerica_speeches.pickle

# install perseus mirror
git clone https://github.com/cwf2/canonical-greekLit data/canonical-greekLit

# run CTS server
capitains-nautilus data/canonical-greekLit --port 5000 &