param($tools)

# requires Administrator mode
choco install ($tools -join " ")
