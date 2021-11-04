code=`curl -o /dev/null -s -w "%{http_code}\n" http://{{ cookiecutter.name }}:80/index.html`
if [ $code == "200" ] 
then
    echo "curl success: {{ cookiecutter.name }}: /index.html.html page"
else
    echo "curl fail: {{ cookiecutter.name }}: /index.html.html page"
    exit 1
fi

