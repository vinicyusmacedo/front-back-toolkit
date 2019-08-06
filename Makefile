PYTHON_DIR=python-app
NODE_DIR=react-app
INSTALL_FLAG=

ifdef ENV
INSTALL_FLAG=--$(ENV)
endif

install-python-deps:
	cd $(PYTHON_DIR) && pipenv install $(INSTALL_FLAG)

install-node-deps:
	cd $(NODE_DIR) && npm install $(INSTALL_FLAG)

run-backend:
	cd $(PYTHON_DIR) && 

run-frontend:
	cd $(NODE_DIR) && npm start

test: test-frontend test-backend

test-frontend:
	cd $(NODE_DIR) && npm run testFinal
