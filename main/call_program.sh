
module load python/gnu/3.4.4
module load spark/2.2.0

SEARCH_TYPES="$1"
WORDS="$2"
FILTER="$3"

spark-submit --conf \
spark.pyspark.python=/share/apps/python/3.4.4/bin/python \
main.py /user/ss8955/project/title_index.txt /user/ss8955/project/column_index.txt /user/ss8955/project/content_index.txt /user/ss8955/project/Master_Index_New.csv /user/ss8955/project/tag_index.csv /user/ss8955/project/Table_Desc_2.csv "$SEARCH_TYPES" "$WORDS" "$FILTER" /user/ss8955/project/Table_with_Columns.csv
#spark-submit main.py ../final_data/title_index.txt ../final_data/column_index.txt ../final_data/content_index.txt ../final_data/Master_Index_New.csv ../final_data/tag_index.csv ../final_data/Table_Desc_2.csv "$SEARCH_TYPES" "$WORDS" "$FILTER" ../final_data/Table_with_Columns.csv
