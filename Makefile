build:
	. ./.venv/bin/activate
	ansible-galaxy collection build -v --output-path ./build .

clean:
	rm -rf ./build/

lint:
	. ./.venv/bin/activate
	ansible-lint -c .ansible-lint

prepare_env:
	python3.9 -m venv .venv && \
		. ./.venv/bin/activate && \
		pip install --upgrade \
			pip \
			ansible \
			ansible-lint \
			yamllint
