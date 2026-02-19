if [ -f index.html ]; then
    echo "Test Passed: index.html exists."
    exit 0
else
    echo "Test Failed: index.html missing!"
    exit 1
fi