```r
# Solution 1: Using subset with explicit condition

df <- data.frame(col1 = c("A", "B", "C"), col2 = 1:3)

subset <- df[df$col1 == "A" | df$col1 == "D" | df$col1 == "E", ] # Only A will be selected

#Check for empty subset
if (nrow(subset) == 0) {
  warning("No matching elements found.")
}
print(subset)

#Solution 2: Check for values before subsetting

df <- data.frame(col1 = c("A", "B", "C"), col2 = 1:3)
values <- c("A", "D", "E")

valid_values <- intersect(values, df$col1)
if (length(valid_values) > 0) {
  subset <- df[df$col1 %in% valid_values, ]
  print(subset)
} else {
  warning("No matching elements found.")
}
```