# Details are on this page:
# https://devops.profitbricks.com/tutorials/use-ssh-keys-with-putty-on-windows/

# -> Use PUTTYGEN to convert id_rsa (server) files in to .ppk files for PUTTY Authentication

# - Open PUTTYGEN

# - Go to conversions -> Import Key

# - Select the id_rsa file

# - In Actions Part, select Save Private Key

# - Type of key generated: RSA / 2048 Bits

# - Save the new private key as id_rsa.ppk

# - Open PUTTY

# - In Session: add the IP and the port
# - in SSH -> AUTH: go to the Authentication Parameter
# -> Private key file for Authentication [Browse] Select the new ppk file

# - It might need additional LOGIN and PASSWORD
