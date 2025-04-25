#data set:cartoon
names <- c("Mina", "Raju", "Mithu", "Lali")
gender <- c("Female", "Male", "Female", "Female")
age <- c(15, 12, 2, 3)
is_human <- c(TRUE, TRUE, FALSE, FALSE)
cartoon <- data.frame(names, gender, age, is_human)
write.table("cartoon.csv",sep = ",", col.names = "TRUE")
df <- read.table("cartoon.csv", header = TRUE, sep = ",")
df #create table
str(df) #structure of `df`


#subset for female adults characters only
female_only <- df[df$gender == "female & df$age"> 2, ]
female_adults

#subset foe male only
male_only <- df[df$gender == "Male", ]
male_only
 
# subset for human only 
human_only <- df[df$is_human == "TRUE", ]
human_only

human_only <- df[df$is_human == "TRUE" & df$gender == "Female", ]
human_only
#Data set:gene expression
gene_expr <- data.frame(
  genes = c("TP53", "BRCA1", "MYC", "EGFR", "GAPDH", "CDC2"),
  sample1 = c(8.2, 6.1, 9.5, 7.0, 10.0, 12),
  Sample2 = c(5.9, 3.9, 7.2, 4.8, 7.9, 9),
  Sample3 = c(8.25, 6.15, 9.6, 7.1, 10.1, 11.9),
  pathways = c("Apoptosis", "DNA Repair", "Cell Cycle", "Signaling", "Housekeeping", "Cell Division")
)
write.table(gene_expr, "gene_expr.csv", sep = ",", col.names = TRUE) 
df

#highly expressed genes
high_expr_genes <- gene_expr[gene_expr$sample1 > 10, ]
high_expr_genes

low_expr_genes <- gene_expr[gene_expr$Sample2 < 5, ]
low_expr_genes
