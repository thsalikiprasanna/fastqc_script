  #!/bin/bash

  #This is a simple script to run fastqc on given samples
  #Assuming fastqc is already installed in the path


  #Define the directories that contain the FASTQ files
  INPUT_DIR="/path/to/your/fastq/files"
  OUTPUT_DIR="/path/to/output/fastqc"

  #Create output directory if it is not created
  mkdir -p "$OUTPUT_DIR"


  #Run fastqc on all teh files in the input directory
  for file in "$INPUT_DIR"/*.fastq.gz; do
      if [ -f "$file" ]; then
         echo "Running fastqc on $file"
         fastqc -o "$OUTPUT_DIR" "$file"
      else
         echo "No FASTQ files found in $INPUT_DIR"
      fi
  done

  echo "FASTQC analysis completed successfully!"
