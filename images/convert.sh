[ -n "$1" ] && dir="$1" || dir="./"
echo converting pdf files in $dir
for file in $dir*.pdf; do
  echo $file
  pdf2svg $file $dir$(basename $file .pdf).svg
done
