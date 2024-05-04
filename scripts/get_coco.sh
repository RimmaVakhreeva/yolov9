#!/bin/bash
# COCO 2017 dataset http://cocodataset.org
# Download command: bash ./scripts/get_coco.sh

# Define the directory where you want to unzip
destination='./' # Project root directory in PyCharm

# Google Drive file ID for 'coco.tgz'
file_id='1F-sI9mKPJlgln4snJyzuF_vkvD2sfOt0'

# Filename to save the downloaded file
filename='coco.tgz'

# Download the file using gdown
echo "Downloading file from Google Drive..."
gdown --id $file_id -O $filename

# Check if the download was successful
if [ -f "$filename" ]; then
    echo "Download successful, unzipping the file..."
    # Unzip the file
    tar -xzf $filename -C $destination
    # Remove the archive file after unzipping
    rm $filename
    echo "File unzipped successfully to $destination"
else
    echo "Failed to download the file. Please check the file ID and your internet connection."
fi

