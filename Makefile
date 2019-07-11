VENDOR_BIN := ./vendor/bin

install:
	composer install
	$(VENDOR_BIN)/phpcs --config-set installed_paths '../../../wpe-coding-standards/,../../wp-coding-standards/wpcs/,../../phpcompatibility/php-compatibility/,../../phpcompatibility/phpcompatibility-wp/'
	$(VENDOR_BIN)/phpcs --config-set default_standard WordPress
	$(VENDOR_BIN)/phpcs --config-set colors 1
	chmod +x ${CURDIR}/bin/wpecs
	chmod +x ${CURDIR}/bin/wpecbf
	rm /usr/local/bin/wpecs || true
	rm /usr/local/bin/wpecbf || true
	ln -s ${CURDIR}/bin/wpecs /usr/local/bin/wpecs
	ln -s ${CURDIR}/bin/wpecbf /usr/local/bin/wpecbf
	$(VENDOR_BIN)/phpcs -i
update:
	git pull origin master
	make install