--CREATE TABLE instructors (
--    id INT NOT NULL PRIMARY KEY,
--    name NVARCHAR(MAX) NOT NULL,
--    is_current_employee BIT NOT NULL,
--    is_active BIT NOT NULL
--);

--INSERT INTO instructors (id, name, is_current_employee, is_active)
--VALUES
--    (0,'Peter Alonzi',1,1),
--    (1,'Rafael Alvarado',1,1),
--    (2,'Panagiotis Apostolellis',1,1),
--    (3,'Stephen Baek',1,1),
--    (4,'Bill Basener',1,1),
--    (5,'Nada Basit',1,1),
--    (6,'Jeremy Bolton',0,0),
--    (7,'Renee Cummings',1,1),
--    (8,'Caitlin Dreisbach',1,1),
--    (9,'Eric Field',1,1),
--    (10,'Judy Fox',1,1),
--    (11,'Peter Gedeck',1,1),
--    (12,'Teague Henry',1,1),
--    (13,'Abbas Kaziempour',1,1),
--    (14,'Jon Kropko',1,1),
--    (15,'Sree Mallikarjun',1,1),
--    (16,'N. Rich Nguyen',1,1),
--    (17,'Michael Porter',1,1),
--    (18,'Luis Felipe Rosado Murillo',0,0),
--    (19,'Marc Ruggiano',1,1),
--    (20,'Eric Tassone',1,1),
--    (21,'Adam Tashman',1,1),
--    (22,'Jason Williamson',1,1),
--    (23,'Jeffrey Woo',1,1),
--    (24,'Lei Xie',1,1)

--CREATE TABLE terms (
--    id INT NOT NULL PRIMARY KEY,
--    season NVARCHAR(6) NOT NULL CHECK (season IN ('Spring', 'Summer', 'Fall')),
--    year INT NOT NULL CHECK (year >= 2021)
--);

--INSERT INTO terms (id, season, year)
--VALUES
--    (0, 'Spring', 2021),
--    (1, 'Summer', 2021),
--    (2, 'Fall', 2021)

--CREATE TABLE courses (
--    id INT NOT NULL PRIMARY KEY,
--    mnemonic NVARCHAR(21) UNIQUE NOT NULL,
--    name NVARCHAR(256) UNIQUE NOT NULL,
--    brief NVARCHAR(256) NOT NULL,
--    is_active BIT NOT NULL
--);

--INSERT INTO courses (id, mnemonic, name, brief, is_active)
--VALUES
--    (0, 'CS 5012', 'Foundations of Computer Science', 'A foundation in discrete mathematics, data structures, algorithmic design and implementation, computational complexity, parallel computing, and data integrity', 1),
--    (1, 'DS 5001', 'Exploratory Text Analytics', 'Introduction to text analytics with a focus on long-form documents such as reviews, news articles, and novels', 1),
--    (2, 'DS 5100', 'Programming for Data Science', 'Programming essentials for Data Science using Python, R, and GitHub', 1),
--    (3, 'DS 5110', 'Big Data Systems', 'Use Spark for large scale analytics and machine learning and explore basics of AWS cloud tools', 1),
--    (4, 'DS 6001', 'Practice and Application of Data Science', 'Build skills to acquire, clean, analyze, understand, and interpret data', 1),
--    (5, 'DS 6002', 'Ethics of Big Data I', 'Examines the ethical issues arising around Big Data', 1),
--    (6, 'DS 6003', 'Practice and Application of Data Science II', 'Practitioner seminar', 0),
--    (7, 'DS 6011', 'Data Science Capstone Project Work I', 'Data Science Capstone Project Part 1', 1),
--    (8, 'DS 6012', 'Ethics of Big Data II', 'Examines the ethical issues arising around Big Data', 0),
--    (9, 'DS 6013', 'Data Science Capstone Project Work II', 'Data Science Capstone Project Part 2', 0),
--    (10, 'DS 6030', 'Statistical Learning', 'Fundamentals of data mining and machine learning within a common statistical framework', 1),
--    (11, 'DS 6040', 'Bayesian Machine Learning', 'Build Bayesian models to provide predictions and quantify the uncertainty in these predictions', 1),
--    (12, 'DS 6050', 'Deep Learning', 'Deep learning fundamentals and applications', 1),
--    (13, 'DS Business Analytics', 'Business Analytics for Data Scientists', 'Focuses on the application of data science to critical problems and opportunities in business', 0),
--    (14, 'DS Technical Bootcamp', 'Technical Bootcamp', 'Bootcamp for new online MSDS students', 1),
--    (15, 'SARC 5400', 'Data Visualization', 'Teaches visual and spatial thinking coupled with visual data tools and interactive web coding to envision information', 0),
--    (16, 'STAT 6021', 'Linear Models for Data Science', 'An introduction to linear statistical models in the context of Data Science', 1)

--CREATE TABLE teaching_assignments (
--    id INT NOT NULL PRIMARY KEY,
--    course_id INT NOT NULL,
--    term_id INT NOT NULL,
--    instructor_id INT NOT NULL,
--    CONSTRAINT foreign_key_between_course_id_and_courses_id FOREIGN KEY (course_id)
--    REFERENCES courses (id)
--    ON DELETE CASCADE
--    ON UPDATE CASCADE,
--    CONSTRAINT foreign_key_between_term_id_and_terms_id FOREIGN KEY (term_id)
--    REFERENCES terms (id)
--    ON DELETE CASCADE
--    ON UPDATE CASCADE,
--    CONSTRAINT foreign_key_between_instructor_id_and_instructors_id FOREIGN KEY (instructor_id)
--    REFERENCES instructors (id)
--    ON DELETE CASCADE
--    ON UPDATE CASCADE
--);

--INSERT INTO teaching_assignments (id, course_id, term_id, instructor_id)
--VALUES
--    (0, 0, 0, 2),
--    (1, 1, 0, 15),
--    (2, 2, 0, 10),
--    (3, 3, 0, 21),
--    (4, 4, 0, 14),
--    (5, 5, 0, 18),
--    (6, 6, 0, 22),
--    (7, 7, 0, 14),
--    (8, 8, 0, 18),
--    (9, 9, 0, 1),
--    (10, 10, 0, 17),
--    (11, 11, 0, 4),
--    (12, 12, 0, 16),
--    (13, 14, 0, 0),
--    (14, 15, 0, 9),
--    (15, 16, 0, 23),
--    (16, 0, 1, 6),
--    (17, 1, 1, 15),
--    (18, 2, 1, 5),
--    (19, 3, 1, 21),
--    (20, 4, 1, 1),
--    (21, 5, 1, 7),
--    (22, 6, 1, 22),
--    (23, 7, 1, 1),
--    (24, 7, 1, 12),
--    (25, 8, 1, 7),
--    (26, 9, 1, 14),
--    (27, 10, 1, 11),
--    (28, 11, 1, 12),
--    (29, 12, 1, 16),
--    (30, 14, 1, 0),
--    (31, 16, 1, 23),
--    (32, 0, 2, 6),
--    (33, 1, 2, 15),
--    (34, 2, 2, 10),
--    (35, 3, 2, 21),
--    (36, 4, 2, 20),
--    (37, 5, 2, 7),
--    (38, 7, 2, 6),
--    (39, 7, 2, 11),
--    (40, 7, 2, 20),
--    (41, 7, 2, 13),
--    (42, 7, 2, 8),
--    (43, 7, 2, 24),
--    (44, 9, 2, 1),
--    (45, 9, 2, 12),
--    (46, 10, 2, 4),
--    (47, 11, 2, 4),
--    (48, 12, 2, 3),
--    (49, 13, 2, 19),
--    (50, 14, 2, 0),
--    (51, 16, 2, 23)

--CREATE TABLE outcomes (
--    id INT NOT NULL PRIMARY KEY,
--    course_id INT NOT NULL,
--    outcome NVARCHAR(MAX) NOT NULL,
--    CONSTRAINT foreign_key_between_course_id_in_outcomes_and_id_in_courses FOREIGN KEY (course_id)
--    REFERENCES courses (id)
--    ON DELETE CASCADE
--    ON UPDATE CASCADE,
--    is_active BIT NOT NULL
--);

--INSERT INTO outcomes (id, course_id, outcome, is_active)
--VALUES
--    (0, 0, 'Have a working knowledge of parallel computing and apply this knowledge for improving computing efficiency', 1),
--    (1, 0, 'Select, computationally assess, and deploy appropriate and efficient data structures and algorithms to solve Data Science problems', 1),
--    (2, 0, 'Define and use logic, data structures, and algorithms to solve problems', 1),
--    (3, 0, 'Connect, transform, and reduce real world problems to classical problem frameworks to make use of existing, efficient algorithmic solutions', 1),
--    (4, 0, 'Independently explore advanced or supplementary topics to attain a deeper and complimentary understanding of topics', 1),
--    (5, 0, 'Reflect on peer feedback, instructor feedback, experiences, and lessons learned related to the use of data structures and algorithms to make continual improvements and updates to methodologies applied', 1),
--    (6, 0, 'Have a working knowledge of the algorithm complexity class hierarchy in order to gain perspective of the scope of the field and its contextual application to Data Science', 1),
--    (7, 0, 'Design and understand regular expressions for pattern matching', 1),
--    (8, 0, 'Understand the important considerations for proper database design', 1),
--    (9, 1, 'Understand and use language models such as bag of words', 1),
--    (10, 1, 'Understand and use vector space models', 1),
--    (11, 1, 'Understand how to measure similarity between documents', 1),
--    (12, 1, 'Understand how Principal Component Analysis (PCA) works', 1),
--    (13, 1, 'Understand and use topic models such as Latent Dirichlet Allocation (LDA)', 1),
--    (14, 1, 'Understand and use word embedding such as glove and word2vec', 1),
--    (15, 1, 'Understand and use sentiment analysis such as VADER', 1),
--    (16, 1, 'Understand and use Naive Bayes classification', 1),
--    (17, 2, 'Basic data frame operations using Python and R', 1),
--    (18, 2, 'Clone a repository on GitHub', 1),
--    (19, 2, 'Confidently work in an appropriate Integrated Development Environment (IDE)', 1),
--    (20, 2, 'Confidently write a class and call its methods to simulate a scenario', 1),
--    (21, 2, 'Confidently write and call functions using both Python and R', 1),
--    (22, 2, 'Correctly pass parameters and retrieve function output(s)', 1),
--    (23, 2, 'Data structures (e.g., sequences and collections such as sets, lists, dictionaries, and tuples)', 1),
--    (24, 2, 'Demonstrate how methods are inherited from base classes', 1),
--    (25, 2, 'Essential primitives (e.g., booleans, integers, and floating-point numbers)', 1),
--    (26, 2, 'Find and utilize resources including online documentation', 1),
--    (27, 2, 'Input/Output in at least three different formats including CSV, text, and JSON', 1),
--    (28, 2, 'Identify and utilize primitive and built in data types and data structures', 1),
--    (29, 2, 'Import data into a pandas data frame', 1),
--    (30, 2, 'Incorporating some exception handling', 1),
--    (31, 2, 'numpy and pandas essentials', 1),
--    (32, 2, 'Patch and debug broken code', 1),
--    (33, 2, 'Patch and debug code using in line testing and relatively advanced unit testing', 1),
--    (34, 2, 'Perform sensitivity analysis on functions by changing inputs and measuring impact on outputs', 1),
--    (35, 2, 'Perform simple mathematical calculates using Python and R', 1),
--    (36, 2, 'Using R, apply the Tidyverse pipe operator to aggregate data', 1),
--    (37, 2, 'Using R, apply Tidyverse verbs such as select, filter, arrange, mutate, and summarize', 1),
--    (38, 2, 'Data types in R', 1),
--    (39, 2, 'Using R, demonstrate use of elementwise operations', 1),
--    (40, 2, 'Essential functions built into R like head, tail, rbind, table, summary, and str', 1),
--    (41, 2, 'Get started in RStudio and navigate around', 1),
--    (42, 2, 'Save code in a R script', 1),
--    (43, 2, 'Vectorization using R', 1),
--    (44, 2, 'Read and write from and to various data formats', 1),
--    (45, 2, 'Read code on GitHub', 1),
--    (46, 2, 'Select and apply an appropriate data structure based on problem requirements', 1),
--    (47, 2, 'Use a programming API to utilize existing functions (e.g., assert, sort, find)', 1),
--    (48, 2, 'Utilize and implement add on numerical packages to augment existing data structures', 1),
--    (49, 2, 'Write robust code by implementing the basic principles of program testing and debugging', 1),
--    (50, 3, 'Execute distributed computing frameworks using MapReduce and Spark', 1),
--    (51, 3, 'Demonstrate knowledge of applications for big data storage, retrieval, processing, and modeling using AWS, Hadoop, and Hive', 1),
--    (52, 3, 'Implement PySpark for prevalent data science tasks including data analysis and machine learning', 1),
--    (53, 3, 'Execute an end to end predictive modeling project using a large data set', 1),
--    (54, 3, 'Delineate Spark basic architecture and functionality', 1),
--    (55, 3, 'Apply RDDs and pair RDDs in data analysis tasks', 1),
--    (56, 3, 'Apply data frames in data analysis tasks', 1),
--    (57, 3, 'Apply Spark SQL to data analysis tasks', 1),
--    (58, 3, 'Demonstrate how to preprocess data in PySpark', 1),
--    (59, 3, 'Identify the basics of the MLlib library in PySpark', 1),
--    (60, 3, 'Implement classification models in MLlib', 1),
--    (61, 3, 'Identify statistics functionality in MLlib', 1),
--    (62, 3, 'Implement regression models in MLlib', 1),
--    (63, 3, 'Examine the alternating least square algorithm', 1),
--    (64, 3, 'Implement recommender systems in PySpark using collaborative filtering', 1),
--    (65, 3, 'Use package MLUtilities', 1),
--    (66, 3, 'Construct machine learning pipelines', 1),
--    (67, 3, 'Apply dimension reduction techniques using PySpark', 1),
--    (68, 3, 'Execute model selection and tuning in PySpark', 1),
--    (69, 3, 'Distinguish the use and benefits of accumulators and broadcast variables', 1),
--    (70, 3, 'Build machine learning tools for the supervised learning track', 1),
--    (71, 3, 'Use hyperparameter tuning in Spark', 1),
--    (72, 3, 'Understand the concepts behind the Hadoop Distributed File System', 1),
--    (73, 3, 'Understand the concepts behind Hive', 1),
--    (74, 3, 'Have some familiarity with running PySpark in a Databricks notebook', 1),
--    (75, 3, 'Understand how EC2 and S3 are used for computing and storage', 1),
--    (76, 3, 'Demonstrate the steps for configuring and launching an AWS EC2 instance', 1),
--    (77, 3, 'Understand the capabilities of Amazon Glue and Athena', 1),
--    (78, 3, 'Understand the concepts and use cases behind Apache Kafka', 1),
--    (79, 3, 'Create and configure an Amazon S3 bucket', 1),
--    (80, 3, 'Apply the concepts behind streaming systems', 1),
--    (81, 3, 'Use the Spark Structured Streaming engine', 1),
--    (82, 3, 'Perform analysis using Spark Structured Streaming', 1),
--    (83, 3, 'Explain the shortcomings of data lakes and how data lakehouses address these shortcomings', 1),
--    (84, 3, 'Work with Apache Delta lakes to implement their salient features (e.g., create, delete, update, conditional update, time travel)', 1),
--    (85, 3, 'Implement GraphX and GraphFrames in Spark', 1),
--    (86, 3, 'Explain the properties of data lakes and data lakehouses', 1),
--    (87, 4, 'Recognize how to get help with coding in a way that is accurate and efficient while demonstrating how to be a good citizen in online forums', 1),
--    (88, 4, 'Implement methods for acquiring electronic data in many formats (e.g., CSV, text, and JSON) from APIs and using webscraping and loading data using Python', 1),
--    (89, 4, 'Understand the purpose, typology, and language of relational databases', 1),
--    (90, 4, 'Understand the purpose, typology, and language of NoSQL databases', 1),
--    (91, 4, 'Understand how to implement databases using Python, SQLite, PostgreSQL, MySQL, and MongoDB', 1),
--    (92, 4, 'Understand how to query databases with SQL', 1),
--    (93, 4, 'Understand how to query databases with the MongoDB query language', 1),
--    (94, 4, 'Employ methods for wrangling, joining, and aggregating data using pandas', 1),
--    (95, 4, 'Understand relationships in data using summary statistics, hypothesis tests, and measurement models', 1),
--    (96, 4, 'Understand relationships in data using visualization with matplotlib, seaborn, and plotly', 1),
--    (97, 5, 'Identify situations that demand ethical responses involving Data Science', 1),
--    (98, 5, 'Develop the skills to respond creatively to critical ethics issues in Data Science', 1),
--    (99, 6, 'Build knowledge about the education and training needed for a particular job, career path, and entry into the Data Science profession', 0),
--    (100, 6, 'Observe, receive information, and ask questions to acquire knowledge and awareness of Data Science professions', 0),
--    (101, 6, 'Relate academics with the world of work by connecting Data Science careers to program coursework', 0),
--    (102, 7, 'Collect and manage data to devise solutions to assigned research projects', 1),
--    (103, 7, 'Select, apply, and evaluate models, tools, and methods to address research projects', 1),
--    (104, 7, 'Interpret and assess results and evaluate the limitations of research findings', 1),
--    (105, 7, 'Resolve group work allocation, leadership, and cooperation issues', 1),
--    (106, 8, 'Identify situations that demand ethical responses involving data science', 0),
--    (107, 8, 'Develop the skills to respond creatively to critical ethics issues in data science', 0),
--    (108, 9, 'Collect and manage data to devise solutions to assigned research projects', 0),
--    (109, 9, 'Select, apply, and evaluate models, tools, and methods to address research projects', 0),
--    (110, 9, 'Interpret and assess results and evaluate the limitations of research findings', 0),
--    (111, 9, 'Resolve group work allocation, leadership, and cooperation issues', 0),
--    (112, 10, 'Build classification and regression models for a given data set using the statistical software R', 1),
--    (113, 10, 'Explain the statistical theory used in data mining that effects how each type of model makes predictions', 1),
--    (114, 10, 'For a given data set and model, determine the optimal algorithmic parameters to customize the results of the model based on practical goals', 1),
--    (115, 10, 'Evaluate the performance of a model in terms of various factors such as accuracy, computational cost, interpretability, and practical requirements', 1),
--    (116, 10, 'Determine the most appropriate algorithm for a given data set based on the needs of the user', 1),
--    (117, 10, 'Use visualization techniques to help users understand and interpret the data mining results', 1),
--    (118, 10, 'Implement KNN regression and classification models in R', 1),
--    (119, 10, 'Build linear and nonlinear regression models in R', 1),
--    (120, 10, 'Evaluate the bias-variance tradeoff of the linear regression method', 1),
--    (121, 10, 'Implement Logistic Regression, Linear Discriminant Analysis, and Quadratic Discriminant Analysis classification in R', 1),
--    (122, 10, 'Implement cross validation', 1),
--    (123, 10, 'Understand the theory behind principal components', 1),
--    (124, 10, 'Use principal components to visualize data', 1),
--    (125, 10, 'Use regularization (e.g., shrinkage, Principle Component Analysis, and lasso) to improve regression accuracy', 1),
--    (126, 10, 'Build a Classification And Regression Trees model in R for both classification and regression', 1),
--    (127, 10, 'Build a Random Forest model for classification in R for both classification and regression', 1),
--    (128, 10, 'Build a Support Vector Machine model in R for both classification and regression', 1),
--    (129, 10, 'Use k means clustering in R to explore new data', 1),
--    (130, 10, 'Use hierarchical clustering in R to create and evaluate clusters', 1),
--    (131, 11, 'Review probability', 1),
--    (132, 11, 'Use the elements of the Bayes Theorem in problem solving', 1),
--    (133, 11, 'Use univariate conjugate priors to analytically obtain posterior distributions', 1),
--    (134, 11, 'Use multivariate conjugate priors to analytically obtain posterior distributions', 1),
--    (135, 11, 'Use non-informative priors to analytically obtain posterior distributions', 1),
--    (136, 11, 'Formulate real problems using the fundamentals of statistical decision theory', 1),
--    (137, 11, 'Apply the principles of statistical decision theory to obtain the optimal solutions to classification problems', 1),
--    (138, 11, 'Develop approximate solutions when the required assumptions for optimality in classification are not met', 1),
--    (139, 11, 'Apply the principles of statistical decision theory to obtain the optimal solutions to regression problems', 1),
--    (140, 11, 'Formulate a graphical representation of a joint distribution using nodes to represent conditional probabilities', 1),
--    (141, 11, 'Display Bayesian models using graphs', 1),
--    (142, 11, 'Represent generative models using graphs', 1),
--    (143, 11, 'Apply graphical methods to real problems in text analysis', 1),
--    (144, 11, 'Apply simple sampling methods to approximate distributions', 1),
--    (145, 11, 'Devise Markov models for real problems with conditional dependence', 1),
--    (146, 11, 'Formulate the Markov Chain Monte Carlo (MCMC) approaches to sampling', 1),
--    (147, 11, 'Apply MCMC to real and complex problems in Bayesian inference', 1),
--    (148, 11, 'Apply MCMC to real and complex problems in classification', 1),
--    (149, 11, 'Apply MCMC to real and complex problems in regression', 1),
--    (150, 11, 'Use Bayes factors for model selection', 1),
--    (151, 11, 'Formulate and use hierarchical models on real problems', 1),
--    (152, 11, 'Use information criteria for model selection', 1),
--    (153, 11, 'Formulate and use Bayesian model averaging on real problems', 1),
--    (154, 11, 'Apply the expectation maximization (EM) algorithm to problems in unsupervised learning', 1),
--    (155, 11, 'Formulate problems with latent variables', 1),
--    (156, 11, 'Formulate problems for solution by the EM algorithm', 1),
--    (157, 11, 'Use Laplacian approximation to estimate probabilities in complex problems', 1),
--    (158, 11, 'Formulate a variational approximation for a Bayesian inference problem', 1),
--    (159, 11, 'Apply variational inference to problems with analytic solutions for comparison of results', 1),
--    (160, 11, 'Represent variational inference using the EM algorithm', 1),
--    (161, 11, 'Use optimization methods to obtain solutions for variational approximations to real problems', 1),
--    (162, 11, 'Apply evaluation methods to assess the performance of optimizations to obtain variational approximations', 1),
--    (163, 11, 'Apply Markov random field models to represent problems in Bayesian Machine Learning', 1),
--    (164, 11, 'Formulate Hidden Markov Model (HMM) solution strategies', 1),
--    (165, 11, 'Apply HMMs to problems in Data Science', 1),
--    (166, 11, 'Identify the range of applicability of methods from Bayesian Machine Learning to real problems in Data Science', 1),
--    (167, 11, 'Connect the many concepts discussed in the course to provide a foundation for continued learning', 1),
--    (168, 12, 'Create an end to end machine learning project at scale using open source libraries such as numpy, keras, and tensorflow and cloud systems such as Google Cloud', 1),
--    (169, 12, 'Formulate various supervised, unsupervised, and reinforcement learning models', 1),
--    (170, 12, 'Apply practical skill sets to designing, deploying, and analyzing deep neural network architectures relating to complex real word problems', 1),
--    (171, 12, 'Use numpy to describe, identify, and process multidimensional arrays and matrices', 1),
--    (172, 12, 'Identify the components of linear algebra most relevant to deep learning', 1),
--    (173, 12, 'Summarize numerical concerns for implementations of deep learning algorithms', 1),
--    (174, 12, 'Design a simple architecture of a Multi-Layer Perceptron', 1),
--    (175, 12, 'Understand how to design different activation functions to solve the vanishing and exploding gradient problems', 1),
--    (176, 12, 'Formulate several forms of regularization strategies to create a large, deep, regularized model', 1),
--    (177, 12, 'Review applications of Convolutional Neural Networks (CNNs)', 1),
--    (178, 12, 'Study the basics of Recurrent Neural Networks (RNNs)', 1),
--    (179, 12, 'Explore the shortcomings of basic RNNs and how to alleviate them with Long Short Term Memory (LSTM) cells', 1),
--    (180, 12, 'Investigate in-depth how autoencoders work and how to use them for dimensionality reduction and feature extraction', 1),
--    (181, 12, 'Interpret hidden latent variables using perturbation and generate new examples', 1),
--    (182, 12, 'Explain the training process of Generative Adversarial Networks (GANs) that compete against each other and the difficulties of the process', 1),
--    (183, 12, 'Explore various applications of GANs and their recent advances', 1),
--    (184, 12, 'Explore the basic components of Reinforcement Learning (RL) including the Markov Decision Process (MDP)', 1),
--    (185, 12, 'Learn to solve for optimal state action values by using Q learning and Deep Q Networks (DQNs)', 1),
--    (186, 12, 'Examine Policy Gradients (PGs) to directly optimize policies as well as a hybrid method called actor critic advantage', 1),
--    (187, 12, 'Understand how to deploy models to TensorFlow Serving and then scale up to Google Cloud AI Platform', 1),
--    (188, 12, 'Deploy models to mobile apps, embedded devices, and web apps', 1),
--    (189, 12, 'Understand how adversarial attacks work', 1),
--    (190, 12, 'Explore bias in data and algorithms', 1),
--    (191, 12, 'Analyze the issues in uncertainty estimation', 1),
--    (192, 13, 'Understand the fundamentals of modern business with an emphasis on stakeholders, value creation, industries, markets, and competition', 0),
--    (193, 13, 'Apply Data Science tools to the primary business functions in which they may be working (e.g., strategy, sales, marketing, finance, operations, human resources, and technology)', 0),
--    (194, 13, 'Understand key data sources, models, metrics, and tools that will be critical to Data Scientists during their careers as they work in or support each of these business functions', 0),
--    (195, 13, 'Apply ethical Data Science principals to key business functions (e.g., finance and marketing)', 0),
--    (196, 13, 'Use critical thinking skills to understand, analyze, or solve business problems', 0),
--    (197, 13, 'Communicate effectively in both speech and writing', 0),
--    (198, 13, 'Collaborate effectively with peers', 0),
--    (199, 13, 'Formulate and ask insightful questions', 0),
--    (200, 13, 'Engage appropriately with senior executives at an enterprise level', 0),
--    (201, 14, 'Research documentation on your own as a first line of action', 1),
--    (202, 14, 'Describe the components of a computer', 1),
--    (203, 14, 'Explain the scales of computational power and scales of data', 1),
--    (204, 14, 'Differentiate between Windows, MacOS, and Linux operating systems', 1),
--    (205, 14, 'Compare Command Line (CLI) and Graphical User Interface (GUI) shells', 1),
--    (206, 14, 'Demonstrate installing software to your computer', 1),
--    (207, 14, 'Implement important tasks with Linux', 1),
--    (208, 14, 'Create a GitHub account for career or personal use', 1),
--    (209, 14, 'Use CLI to operate Git software for version control', 1),
--    (210, 14, 'Use GUI to operate GitHub website interface for version control', 1),
--    (211, 14, 'Know how to install R', 1),
--    (212, 14, 'Know how to install and launch RStudio', 1),
--    (213, 14, 'Know how to install Anaconda', 1),
--    (214, 14, 'Know how to launch Spyder', 1),
--    (215, 14, 'Know how to launch a JuPyteR notebook', 1),
--    (216, 16, 'Use regression analysis to answer questions of interest in a wide variety of application environments', 1),
--    (217, 16, 'Determine the most appropriate regression model for a given data set', 1),
--    (218, 16, 'Identify the assumptions and limitations of a given regression model', 1),
--    (219, 16, 'Diagnose and remedy common problems with regression models due to modeling real data', 1),
--    (220, 16, 'Work with various data structures and primitive data types in the R programming language', 1),
--    (221, 16, 'Process R data frames into the forms necessary for subsequent analysis by subsetting by rows, columns, and condition; changing column names; removing missing values; and combining data frames with vectors', 1),
--    (222, 16, 'Use appropriate numerical and graphical summaries based on the question of interest and type of data', 1),
--    (223, 16, 'Use statistical software R for regression analysis', 1),
--    (224, 16, 'State appropriate context specific conclusions from an analysis', 1),
--    (225, 16, 'Present and discuss orally and in writing statistical ideas, methods, and results to lay and professional audiences', 1),
--    (226, 16, 'Work in teams to demonstrate the skills of a professional statistician in organizing and managing projects', 1),
--    (227, 16, 'Describe the mathematical framework of regression models', 1),
--    (228, 16, 'Describe the importance of assessing assumptions and limitations of regression models', 1)

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

SELECT
    mnemonic,
    courses.name as course_name,
    season,
    year,
    instructors.name as instructor_name
FROM teaching_assignments
LEFT JOIN courses
ON course_id = courses.id
LEFT JOIN terms
ON term_id = terms.id
LEFT JOIN instructors
ON instructor_id = instructors.id;

SELECT mnemonic, name, outcome
FROM courses
LEFT JOIN outcomes
ON courses.id = course_id
WHERE courses.is_active = 1 AND outcomes.is_active = 1;