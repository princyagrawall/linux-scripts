password=""
until [ "$password" = "secret" ]
do
   echo "enter password: "
   read password
done 
echo "acess granted!"

