-- Create the todos table
CREATE TABLE todos (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       user VARCHAR(100) NOT NULL,
                       description VARCHAR(255) NOT NULL,
                       target_date DATE,
                       is_done BOOLEAN DEFAULT false
);

-- Insert initial data
INSERT INTO todos (user, description, target_date, is_done) VALUES
                                                                ('joao', 'Complete project', '2023-06-10', false),
                                                                ('joao', 'Buy groceries', '2023-06-08', true),
                                                                ('joao', 'Attend meeting', '2023-06-09', false);
