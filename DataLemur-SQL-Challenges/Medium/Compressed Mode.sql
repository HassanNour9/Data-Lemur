SELECT item_count as mode FROM items_per_order
WHERE order_occurrences=(SELECT MAX(order_occurrences) from items_per_order)
ORDER BY mode ASC;