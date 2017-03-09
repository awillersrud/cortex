# Cortex

Cortex is a command line pairing utility based on the Minimax algorithm. This discription is intentionally vague.

## Download Cortex

Download the latest jar-with-dependencies from https://github.com/awillersrud/cortex/releases

### Prerequisites

Cortex requires Java

## Running Cortex

### Read pairing table from a Google Sheet document

`java -jar cortex-0.3-jar-with-dependencies.jar sheet <GoogleSheetId> --range A3:F8`

### Read pairing table from file

`java -jar cortex-0.3-jar-with-dependencies.jar file <file>`

Example file: [test-pairing.txt](src/test/resources/test-pairing.txt)
