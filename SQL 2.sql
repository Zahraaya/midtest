/* 1 */
CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);


INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');


/* 2 */
select * from item_bought

/* 3 */
select item
from ( select item, count (buyer) as jumlah_beli
   		from item_bought
   		group by item
)

/* 4 */
select 'lenovo' as item