
# Optional path to new SSH key if one is being created
unset SSH_KEY_PATH
export SSH_KEY_PATH="~/.ssh"

# Digital Ocean
unset DO_API_TOKEN
unset DO_REGION
unset DO_SSH_PATH

export DO_API_TOKEN=$DO_API_TOKEN
export DO_REGION="NYC2"

# AWS EC2
unset AWS_ACCESS_KEY
unset AWS_SECRET_KEY
unset AWS_DEFAULT_REGION

export AWS_DEFAULT_REGION=us-east-1
export AWS_ACCESS_KEY=$AWS_ACCESS_KEY
export AWS_SECRET_KEY=$AWS_SECRET_KEY