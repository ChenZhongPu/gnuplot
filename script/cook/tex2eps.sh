for tex in "$@"
do
    name=$(echo "$tex" | sed 's/\.[^.]*$//');
    latex $tex
    dvips -E ${name}.dvi
    rm *.aux
    rm *.dvi
    rm *.log
    rm *.tex
    rm ${name}-inc.eps
    mv ${name}.ps ${name}.eps
done