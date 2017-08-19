echo "v0.0.3" > /root/version
cat /root/version
echo $ENV_LABEL
echo "adding ci pkey"
if [ ! -f ~/.root.useradded ];
then
echo "added ci pkey"
mkdir -p /root/.ssh
echo "
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDc1rs3ysOnEqmEKldQN8ilYNyOUFa8XZVC7HHxbJqn1Gze7v0ZnFRn6y6krn+10SHShcCbJgo1uW0mriCzwMcEPJNYGqSBROmqcLI3KY5KXNa2WGG+OP1YClh8SW9m7fBuLT9GwqZLQENgUFdcr+Rd+DoneamTrG/b+ebuupjrCwR1hQH3Msx3GKeRlmJky+fJ6I0AqmfFYIwM89CcwqKUbTuQRb35/U5X+VJVH3Hxa7Zu8wvhn9LTp3grkWGVJbEVlH8vWR/67smAujjEkdm0b8S3jzkNAyX4Dh161AJOl4FC/PddvvYIWZfFl0dl4QkkJqJvRfyouxj2aMOk+TRn runner@ci.kdqugou.com
" > /root/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
touch ~/.root.useradded
fi
