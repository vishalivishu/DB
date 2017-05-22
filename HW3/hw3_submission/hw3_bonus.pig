var_a = load 'in' AS (p:chararray);
var_b = foreach var_a generate flatten(TOKENIZE(LOWER(p))) as word_spl;
var_c = foreach var_b generate flatten(REPLACE(word_spl,'([^aeiou])','')) as word;
var_d = foreach var_c generate flatten(TOKENIZE(REPLACE(word, '','%'),'%')) as alpha;
var_e = group var_d by alpha;
var_f = foreach var_e generate group,COUNT(var_d);
store var_f into 'output_bonus';
