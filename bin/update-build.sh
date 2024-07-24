# Read in .env and set the variables
# into my github repo
if [ -f .env ]; then
    while IFS='=' read -r var_name var_value; do
        gh variable set --repo polotek/phanpy $var_name --body "$var_value"
    done < .env
fi
