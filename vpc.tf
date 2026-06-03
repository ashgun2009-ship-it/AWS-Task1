# 1. Створюємо саму віртуальну мережу (VPC)
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr # Бере значення 10.0.0.0/16 з tfvars
  enable_dns_hostnames = true         # Вмикає красиві DNS імена для серверів

  tags = { Name = var.vpc_name }
}

# 2. Створюємо три окремі підмережі всередині нашої VPC
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.main.id # Кажемо підмережі, в якій VPC вона лежить
  cidr_block              = var.subnet1_cidr
  availability_zone       = var.availability_zone1
  map_public_ip_on_launch = true            # Робить підмережу ПУБЛІЧНОЮ (видає серверам IP)

  tags = { Name = var.subnet1_name }
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet2_cidr
  availability_zone       = var.availability_zone2
  map_public_ip_on_launch = true

  tags = { Name = var.subnet2_name }
}

resource "aws_subnet" "subnet3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet3_cidr
  availability_zone       = var.availability_zone3
  map_public_ip_on_launch = true

  tags = { Name = var.subnet3_name }
}

# 3. Створюємо Інтернет-шлюз (двері в інтернет для нашої мережі)
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id # Прив'язуємо "двері" до нашої VPC

  tags = { Name = var.internet_gateway }
}

# 4. Створюємо таблицю маршрутизації (вказуємо дорогу в інтернет)
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"             # Означає "будь-який сайт в інтернеті"
    gateway_id = aws_internet_gateway.igw.id # Весь невідомий трафік слати через наш шлюз
  }

  tags = { Name = var.routing_table }
}

# 5. Прив'язуємо таблицю маршрутів до кожної підмережі.
# Без цього підмережі не знатимуть, де шукати інтернет-шлюз!
resource "aws_route_table_association" "assoc1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "assoc2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "assoc3" {
  subnet_id      = aws_subnet.subnet3.id
  route_table_id = aws_route_table.public_rt.id
}