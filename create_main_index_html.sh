# This is a hack because we have two different index.html files we want to create

cp index.rst index_ideas.rst
mv mainindex.rst index.rst
make war
mv index.rst mainindex.rst
mv index_ideas.rst index.rst
