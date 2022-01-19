search_dir=${PWD}/wdesigns/galleryimages/
echo $search_dir
startVal=62
for entry in "$search_dir"/*
do
  if [[ ( "$entry" == *"jpg"* ) || ( "$entry" == *"jpeg"* ) || ( "$entry" == *"JPG"* ) ]]; then
    if [[ "$entry" != *"/image"* ]]; then
        extension="${entry##*.}"
        echo $extension
        echo "${entry##*/}"
        echo "$search_dir"/"$startVal"
        mv "$entry" "$search_dir"/image"$startVal"."$extension"
        startVal=$((startVal+1))
        echo startVal
    fi
  fi
#   echo "$entry"
done