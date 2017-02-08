
KC='kubectl -s  192.168.254.20:8080'

# Create a new secret named my-secret with keys for each file in folder bar
#kubectl create secret generic my-secret --from-file=path/to/bar
  
# Create a new secret named my-secret with specified keys instead of names on disk
#kubectl create secret generic my-secret --from-file=ssh-privatekey=~/.ssh/id_rsa --from-file=ssh-publickey=~/.ssh/id_rsa.pub
  
# Create a new secret named my-secret with key1=supersecret and key2=topsecret
#kubectl create secret generic my-secret --from-literal=key1=supersecret --from-literal=key2=topsecret



#echo "1234" > my-secret.txt
#$KC create secret generic my-secret --from-file=my-secret.txt
$KC create secret generic mysql-pass --from-file=my-secret.txt

echo "============================================"
$KC get secret 
echo "============================================"
$KC describe secret 
