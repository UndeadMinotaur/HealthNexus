
# Install dependencies
if ! [ -f requirements.txt ]; then

    # Option A when requirements.txt is not available
    python -m venv venv;
    source venv/bin/activate;
    python -m pip install --upgrade pip;
    pip install flask;
    pip install flask_restx;

    pip freeze > requirements.txt ;
else
    # Option B when requirements.txt is available
    pip install -r requirements.txt;
fi


# Start server
export FLASK_ENV=development;
export FLASK_APP=app;
flask run --host=0.0.0.0;