SELECT
    *,
    vector::distance::knn() AS dist
FROM type::table($table)
WHERE embedding <|{k}|> $vector;
