# -- ALL TARGETS GO BELOW

# fails if ENV is empty or not defined
# ex: guard-hello -> checks whether HELLO env var is set and non-empty 
guard-var-%:
	@if [ -z ${${*}} ]; then \
		echo 'Required environment variable `${*}` is not set or empty.';\
		exit 1;\
	fi

# build axum development image
build-img-axum-dev:
	@invoke img-build -i rust-axum-dev

# build axum production image
build-img-axum-prd: guard-var-name guard-var-repo guard-var-tag
	@invoke img-build -i rust-axum-prd -n ${name}:${tag} -r ${repo} -t ${tag}

# bring service up; see crates/services/
# usage: crate=<crate-name> make srv-up
srv-up: guard-var-crate
	@invoke up -c services/${crate}

# bring service down; see crates/services/
# usage: crate=<crate-name> make srv-down
srv-down: guard-var-crate
	@invoke down -c services/${crate}

# show logs
# usage: crate=<crate-name> make srv-logs-<container-name>
srv-logs-%: guard-var-crate
	@invoke logs -c services/${crate} -s ${*}

# show logs and watch
# usage: crate=<crate-name> make srv-wlogs-<container-name>
srv-wlogs-%: guard-var-crate
	@invoke logs -c services/${crate} -s ${*} -o "--follow"