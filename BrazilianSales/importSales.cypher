// Added 99441 labels, created 99441 nodes, set 497205 properties, completed after 1955 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/olist_customers_dataset.csv' AS line
CREATE (:Customer {ID: line.customer_id,
	uniqueID: line.customer_unique_id, 
	zipCode: toInteger(line.customer_zip_code_prefix),
	city: line.customer_city, 
	state: line.customer_state
})

// Added 112650 labels, created 112650 nodes, set 788550 properties, completed after 1138 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/olist_order_items_dataset.csv' AS line
CREATE (:OrderItems {ID: line.order_id,
	orderItemID: toInteger(line.order_item_id), 
	productID: line.product_id,
	sellerID: line.seller_id, 
	shippingLimitDate: line.shipping_limit_date,
	price: toFloat(line.price),
	freightValue: toFloat(line.freight_value)
})

// Added 99985 labels, created 99985 nodes, set 553386 properties, completed after 737 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/olist_order_payments_dataset.csv' AS line
CREATE (:OrderPayments {
	orderID: toInteger(line.order_id),
	paymentSequential: toInteger(line.payment_sequential),
	paymentType:  line.payment_type 
	paymentInstallments: toInteger(line.payment_installments),
	paymentValue: toInteger(line.payment_value)
})

// Added 99985 labels, created 99985 nodes, set 553386 properties, completed after 828 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/olist_order_reviews_dataset.csv' AS line
CREATE (:OrderReviews {reviewID: line.review_id,
	orderID: line.order_id, 
	reviewScore: toInteger(line.review_score),
	reviewCommentTitle: line.review_comment_title, 
	reviewCommentMessage: line.review_comment_message,
	reviewCreationDate: line.review_creation_date,
	reviewAnswerTimestamp: line.review_answer_timestamp
})

// Added 99441 labels, created 99441 nodes, set 790620 properties, completed after 1047 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/olist_orders_dataset.csv' AS line
CREATE (:Orders {orderID: line.order_id,
	customerID: line.customer_id, 
	orderStatus: line.order_status,
	orderPurchaseTimestamp: line.order_purchase_timestamp, 
	orderApprovedAt: line.order_approved_at,
	orderDeliveredCarrierDate: line.order_delivered_carrier_date,
	orderDeliveredCustomerDate: line.order_delivered_customer_date, 
	orderEstimatedDeliveryTime: line.order_estimated_delivery_date
})

// Added 32951 labels, created 32951 nodes, set 294111 properties, completed after 557 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/olist_products_dataset.csv' AS line
CREATE (:Products {productID: line.product_id,
	productCategoryName: line.product_category_name, 
	productNameLength: toInteger(line.product_name_lenght),
	productDescriptionLength: toInteger(line.product_description_lenght),
	productPhotosQuantity: toInteger(line.product_photos_qty),
	productWeightG: toInteger(line.product_weight_g),
	productLengthCM: toInteger(line.product_length_cm),
	productHeightCM: toInteger(line.product_height_cm),
	productWidthCM: toInteger(line.product_width_cm)
})

// Added 3095 labels, created 3095 nodes, set 12380 properties, completed after 153 ms.
LOAD CSV WITH HEADERS FROM 'http://localhost:11001/project-84b377df-581a-4505-87ab-769b6adff4a9/olist_sellers_dataset.csv' AS line
CREATE (:Sellers {sellerID: line.seller_id,
	sellerZipCodePrefix: toInteger(line.seller_zip_code_prefix),
	sellerCity: line.seller_city,
	sellerState: line.seller_state
})

// Created 99441 relationships, completed after 907 ms.
MATCH (c: Customer), (o: Orders)
WHERE c.ID = o.customerID
CREATE (c)-[:ORDERS]->(o);

// Created 99985 relationships, completed after 1072 ms.
MATCH (orderR: OrderReviews), (o: Orders)
WHERE orderR.orderID = o.orderID
CREATE (o)-[:ISREVIEWED]->(orderR);

// Created 112650 relationships, completed after 793 ms.
MATCH (oI: OrderItems), (o: Orders)
WHERE oI.ID = o.orderID
CREATE (oI)-[:ISIN]->(o);

// Created 99985 relationships, completed after 565 ms.
MATCH (oP: OrderPayments), (o: Orders)
WHERE oP.orderID = o.orderID
CREATE (o)-[:PAYEDFOR]->(oP);


// Created 112650 relationships, completed after 528 ms.
MATCH (oI: OrderItems), (p: Products)
WHERE oI.productID = p.productID
CREATE (p)-[:ISIN]->(oI);

// Created 112650 relationships, completed after 413 ms.
MATCH (oI: OrderItems), (s: Sellers)
WHERE oI.sellerID = s.sellerID
CREATE (oI)-[:SOLDBY]->(s);

