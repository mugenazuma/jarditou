CREATE USER `util1`@`%`;
IDENTIFIED BY '1Ksable';

GRANT ALL PRIVILEGES
ON hotel
TO `util1`@`%`;
IDENTIFIED BY '1Ksable';hotel