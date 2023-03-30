# Remove background from an image
Docker implementation of https://pypi.org/project/backgroundremover/

Find it on the Docker Hub: [aymericwilke/backgroundremover](https://hub.docker.com/repository/docker/aymericwilke/backgroundremover/general)

Set ENV vars:
- AWS_DEFAULT_REGION
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY

Launch container and run the command `./bgremove.sh "https://url-of-img.com" "s3bucket/path/to/dir"`
