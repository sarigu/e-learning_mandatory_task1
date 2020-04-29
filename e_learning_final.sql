-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2020 at 01:50 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_learning_final`
--



-- --------------------------------------------------------

--
-- Stand-in structure for view `content_creator`
-- (See below for the actual view)
--
CREATE TABLE `content_creator` (
`first_name` varchar(50)
,`last_name` varchar(50)
,`email` varchar(100)
,`title` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `title`, `description`, `user_id`) VALUES
(1, 'Database', 'These databases are categorized by a set of tables where data gets fit into a pre-defined category. The table consists of rows and columns where the column has an entry for data for a specific category and rows contains instance for that data defined according to the category. The Structured Query Language (SQL) is the standard user and application program interface for a relational database.\r\n\r\nThere are various simple operations that can be applied over the table which makes these databases easier to extend, join two databases with a common relation and modify all existing applications.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `home_content`
--

CREATE TABLE `home_content` (
  `home_content_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_content`
--

INSERT INTO `home_content` (`home_content_id`, `title`, `description`, `created_at`, `user_id`) VALUES
(1, 'Why use Mongo DB', 'Powerful query language\r\nRich and expressive query language that allows you to filter and sort by any field, no matter how nested it may be within a document.\r\n\r\nSupport for aggregations and other modern use-cases such as geo-based search, graph search, and text search.\r\n\r\nQueries are themselves JSON, and thus easily composable. No more concatenating strings to dynamically generate SQL queries.', '2020-04-26 22:10:28', 2),
(2, 'Relational Model Concepts', '1. Attribute: Each column in a Table. Attributes are the properties which define a relation. e.g., Student_Rollno, NAME,etc.\r\n2. Tables – In the Relational model the, relations are saved in the table format. It is stored along with its entities. A table has two properties rows and columns. Rows represent records and columns represent attributes.\r\n3. Tuple – It is nothing but a single row of a table, which contains a single record.\r\n4. Relation Schema: A relation schema represents the name of the relation with its attributes.\r\n5. Degree: The total number of attributes which in the relation is called the degree of the relation.\r\n6. Cardinality: Total number of rows present in the Table.\r\n7. Column: The column represents the set of values for a specific attribute.\r\n8. Relation instance – Relation instance is a finite set of tuples in the RDBMS system. Relation instances never have duplicate tuples.\r\n9. Relation key - Every row has one, two or multiple attributes, which is called relation key.\r\n10. Attribute domain – Every attribute has some pre-defined value and scope which is known as attribute domain', '2020-04-26 22:12:37', 2),
(3, 'Advantages of using Relational model', 'Simplicity: A relational data model is simpler than the hierarchical and network model.\r\nStructural Independence: The relational database is only concerned with data and not with a structure. This can improve the performance of the model.\r\nEasy to use: The relational model is easy as tables consisting of rows and columns is quite natural and simple to understand\r\nQuery capability: It makes possible for a high-level query language like SQL to avoid complex database navigation.\r\nData independence: The structure of a database can be changed without having to change any application.\r\nScalable: Regarding a number of records, or rows, and the number of fields, a database should be enlarged to enhance its usability.', '2020-04-26 22:13:15', 2),
(4, 'Disadvantages of using Relational model', 'Few relational databases have limits on field lengths which can\'t be exceeded.\r\nRelational databases can sometimes become complex as the amount of data grows, and the relations between pieces of data become more complicated.\r\nComplex relational database systems may lead to isolated databases where the information cannot be shared from one system to another.', '2020-04-26 22:13:38', 2),
(5, 'What is Record Type?', 'A Record type is a complex data type which allows the programmer to create a new data type with the desired column structure.\r\n\r\nIt groups one or more column to form a new data type\r\nThese columns will have its own name and data type\r\nA Record type can accept the data\r\nAs a single record that consists of many columns OR\r\nIt can accept the value for one particular column of a record\r\nRecord type simply means a new data type. Once the record type is created, it will be stored as a new data type in the database and the same shall be used to declare a variable in programs.\r\nIt will use the keyword \'TYPE\' to instruct the compiler that it is creating the new data type.\r\nIt can be created at \"database level\" which can be stored as database objects, used all-over the database or it can be created at the \"subprogram levels\", which is visible only inside the subprograms.\r\nThe database level record type can also be declared for the table columns so that single column can hold the complex data.\r\nThe data in these data type can be accessed by referring to their variable_name followed by period operator (.) followed by column_name i.e. \'<record_type_variable_name>.<column_name>\'', '2020-04-26 22:14:25', 2);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `course_id`, `title`, `description`, `video_link`, `created_at`) VALUES
(1, 1, 'Normalization', 'Apply the so-called normalization rules to check whether your database is structurally correct and optimal.\r\n\r\nFirst Normal Form (1NF): A table is 1NF if every cell contains a single value, not a list of values. This property is known as atomic. 1NF also prohibits a repeating group of columns such as item1, item2, itemN. Instead, you should create another table using a one-to-many relationship.\r\n\r\nSecond Normal Form (2NF) ? A table is 2NF if it is 1NF and every non-key column is fully dependent on the primary key. Furthermore, if the primary key is made up of several columns, every non-key column shall depend on the entire set and not part of it.\r\n\r\nFor example, the primary key of the OrderDetails table comprising orderID and productID. If unitPrice is dependent only on productID, it shall not be kept in the OrderDetails table (but in the Products table). On the other hand, if the unit price is dependent on the product as well as the particular order, then it shall be kept in the OrderDetails table.\r\n\r\nThird Normal Form (3NF) ? A table is 3NF if it is 2NF and the non-key columns are independent of each other. In other words, the non-key columns are dependent on primary key, only on the primary key and nothing else. For example, suppose that we have a Products table with columns productID (primary key), name and unitPrice. The column discountRate shall not belong to the Products table if it is also dependent on the unitPrice, which is not part of the primary key.\r\n\r\nHigher Normal Form: 3NF has its inadequacies, which leads to a higher Normal form, such as Boyce/Codd Normal form, Fourth Normal Form (4NF) and Fifth Normal Form (5NF), which is beyond the scope of this tutorial.\r\n\r\n At times, you may decide to break some of the normalization rules, for performance reason (e.g., create a column called totalPrice in Orders table which can be derived from the orderDetails records); or because the end-user requested for it. Make sure that you fully aware of it, develop programming logic to handle it, and properly document the decision.', 'https://youtu.be/xoTyrdT9SZI', '2020-04-26 22:00:31'),
(3, 1, 'Integrity Rules', 'You should also apply the integrity rules to check the integrity of your design ?\r\n\r\n   1. Entity Integrity Rule ? The primary key cannot contain NULL. Otherwise, it cannot uniquely identify the row. For composite key made up of several columns, none of the columns can contain NULL. Most of the RDBMS check and enforce this rule.\r\n\r\n   2.Referential Integrity Rule ? Each foreign key value must be matched to a primary key value in the table referenced (or parent table).\r\n\r\nYou can insert a row with a foreign key in the child table only if the value exists in the parent table.\r\n\r\nIf the value of the key changes in the parent table (e.g., the row updated or deleted), all rows with this foreign key in the child table(s) must be handled accordingly. You could either (a) disallow the changes; (b) cascade the change (or delete the records) in the child tables accordingly; (c) set the key value in the child tables to NULL.\r\n\r\nMost RDBMS can be set up to perform the check and ensure the referential integrity, in a specified manner.\r\n\r\n    3.Business logic Integrity ? Besides the above two general integrity rules, there could be integrity (validation) pertaining to the business logic, e.g., zip code shall be 5-digit within a certain ranges, delivery date and time shall fall in the business hours; quantity ordered shall be equal or less than quantity in stock, etc. These could be carried out invalidation rule (for the specific column) or programming logic.', 'https://www.youtube.com/watch?v=_4EAg8lf04Q', '2020-04-26 22:02:29'),
(4, 1, 'Relational Database Design Process', 'Database design is more art than science, as you have to make many decisions. Databases are usually customized to suit a particular application. No two customized applications are alike, and hence, no two databases are alike. Guidelines (usually in terms of what not to do instead of what to do) are provided in making these design decision, but the choices ultimately rest on the designer.\r\n\r\nStep 1 ? Define the Purpose of the Database (Requirement Analysis)\r\n\r\nGather the requirements and define the objective of your database.\r\nDrafting out the sample input forms, queries and reports often help.\r\nStep 2 ? Gather Data, Organize in tables and Specify the Primary Keys\r\n\r\nOnce you have decided on the purpose of the database, gather the data that are needed to be stored in the database. Divide the data into subject-based tables.\r\nChoose one column (or a few columns) as the so-called primary key, which uniquely identifies the each of the rows.\r\nStep 3 ? Create Relationships among Tables\r\n\r\nA database consisting of independent and unrelated tables serves little purpose (you may consider using a spreadsheet instead). The power of a relational database lies in the relationship that can be defined between tables. The most crucial aspect in designing a relational database is to identify the relationships among tables. The types of relationship include:\r\n\r\none-to-many\r\nmany-to-many\r\none-to-one', '', '2020-04-26 22:04:08'),
(5, 1, 'One-to-Many', 'In a \"class roster\" database, a teacher may teach zero or more classes, while a class is taught by one (and only one) teacher. In a \"company\" database, a manager manages zero or more employees, while an employee is managed by one (and only one) manager. In a \"product sales\" database, a customer may place many orders; while an order is placed by one particular customer. This kind of relationship is known as one-to-many.\r\n\r\nThe one-to-many relationship cannot be represented in a single table. For example, in a \"class roster\" database, we may begin with a table called Teachers, which stores information about teachers (such as name, office, phone, and email). To store the classes taught by each teacher, we could create columns class1, class2, class3, but faces a problem immediately on how many columns to create. On the other hand, if we begin with a table called Classes, which stores information about a class, we could create additional columns to store information about the (one) teacher (such as name, office, phone, and email). However, since a teacher may teach many classes, its data would be duplicated in many rows in table Classes.\r\n\r\nTo support a one-to-many relationship, we need to design two tables: for e.g. a table Classes to store information about the classes with classID as the primary key; and a table Teachers to store information about teachers with teacherID as the primary key. We can then create the one-to-many relationship by storing the primary key of the table Teacher (i.e., teacherID) (the \"one\"-end or the parent table) in the table classes (the \"many\"-end or the child table), as illustrated below.\r\n\r\n  The column teacherID in the child table Classes is known as the foreign key. A foreign key of a child table is a primary key of a parent table, used to reference the parent table.\r\n\r\n', '', '2020-04-26 22:04:53'),
(7, 1, 'Many-to-Many', 'In a \"product sales\" database, a customer\'s order may contain one or more products; and a product can appear in many orders. In a \"bookstore\" database, a book is written by one or more authors; while an author may write zero or more books. This kind of relationship is known as many-to-many.\r\n\r\nLet\'s illustrate with a \"product sales\" database. We begin with two tables: Products and Orders. The table products contain information about the products (such as name, description and quantityInStock) with productID as its primary key. The table orders contain customer\'s orders (customerID, dateOrdered, dateRequired and status). Again, we cannot store the items ordered inside the Orders table, as we do not know how many columns to reserve for the items. We also cannot store the order information in the Products table.\r\n\r\nTo support many-to-many relationship, we need to create a third table (known as a junction table), say OrderDetails (or OrderLines), where each row represents an item of a particular order. For the OrderDetails table, the primary key consists of two columns: orderID and productID, that uniquely identify each row. The columns orderID and productID in OrderDetails table are used to reference Orders and Products tables, hence, they are also the foreign keys in the OrderDetails table.\r\n\r\n \r\n\r\nThe many-to-many relationship is, in fact, implemented as two one-to-many relationships, with the introduction of the junction table.\r\n\r\n An order has many items in OrderDetails. An OrderDetails item belongs to one particular order.\r\n\r\n A product may appear in many OrderDetails. Each OrderDetails item specified one product.', '', '2020-04-26 22:05:27'),
(8, 1, 'One-to-One', 'In a \"product sales\" database, a product may have optional supplementary information such as image, more description and comment. Keeping them inside the Products table results in many empty spaces (in those records without these optional data). Furthermore, these large data may degrade the performance of the database.\r\n\r\nInstead, we can create another table (say ProductDetails, ProductLines or ProductExtras) to store the optional data. A record will only be created for those products with optional data. The two tables, Products and ProductDetails, exhibit a one-to-one relationship. That is, for every row in the parent table, there is at most one row (possibly zero) in the child table. The same column productID should be used as the primary key for both tables.\r\n\r\nSome databases limit the number of columns that can be created inside a table. You could use a one-to-one relationship to split the data into two tables. A one-to-one relationship is also useful for storing certain sensitive data in a secure table, while the non-sensitive ones in the main table.', '', '2020-04-26 22:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `avatar_img` varchar(200) NOT NULL,
  `status` enum('Administrator','Content Owner','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `password`, `avatar_img`, `status`) VALUES
(1, 'Admin', 'Admin', 'Admin@admin.com', 'admin', '', 'Administrator'),
(2, 'Content', 'Writer', 'Contentwriter@gmail.com', 'content', '', 'Content Owner'),
(3, 'User A', 'AA', 'user@aaa.com', 'user', '', 'User'),
(4, 'User B', 'BB', 'user@bbb.com', 'user', '', 'User'),
(7, 'News', 'Writer', 'news@writer.com', 'news', '', 'Content Owner');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `user_history` AFTER INSERT ON `user` FOR EACH ROW BEGIN
	INSERT INTO `user_added` (`id`, `information`, `executed_time`) VALUES (NULL, 'user added', current_timestamp());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_added`
--

CREATE TABLE `user_added` (
  `id` int(11) NOT NULL,
  `information` varchar(255) NOT NULL,
  `executed_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_added`
--

INSERT INTO `user_added` (`id`, `information`, `executed_time`) VALUES
(1, 'user added', '2020-04-26 22:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `user_favourite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `home_content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`user_favourite_id`, `user_id`, `home_content_id`) VALUES
(1, 3, 3),
(2, 3, 5),
(3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_learning`
--

CREATE TABLE `user_learning` (
  `user_learning_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `content_creator`
--
DROP TABLE IF EXISTS `content_creator`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `content_creator`  AS  select `user`.`first_name` AS `first_name`,`user`.`last_name` AS `last_name`,`user`.`email` AS `email`,`home_content`.`title` AS `title` from (`home_content` left join `user` on(`user`.`user_id` = `home_content`.`user_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `home_content`
--
ALTER TABLE `home_content`
  ADD PRIMARY KEY (`home_content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_added`
--
ALTER TABLE `user_added`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`user_favourite_id`),
  ADD KEY `user_favourite_ibfk_1` (`user_id`),
  ADD KEY `user_favourite_ibfk_2` (`home_content_id`);

--
-- Indexes for table `user_learning`
--
ALTER TABLE `user_learning`
  ADD PRIMARY KEY (`user_learning_id`),
  ADD KEY `lesson_id` (`lesson_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_content`
--
ALTER TABLE `home_content`
  MODIFY `home_content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_added`
--
ALTER TABLE `user_added`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `user_favourite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_learning`
--
ALTER TABLE `user_learning`
  MODIFY `user_learning_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `home_content`
--
ALTER TABLE `home_content`
  ADD CONSTRAINT `home_content_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_favourite_ibfk_2` FOREIGN KEY (`home_content_id`) REFERENCES `home_content` (`home_content_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_learning`
--
ALTER TABLE `user_learning`
  ADD CONSTRAINT `user_learning_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_learning_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`lesson_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
