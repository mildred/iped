all: unixfs.proto.jsonp

unixfs.proto.jsonp: CALLBACK=unixfs
%.jsonp: %.json
	: >$@
	echo -n '$(CALLBACK)(' >>$@
	cat $< >> $@
	echo ');' >>$@

%.proto.json: %.proto ./node_modules/protobufjs/bin/pbjs
	./node_modules/protobufjs/bin/pbjs $< > $@
 
./node_modules/protobufjs/bin/pbjs:
	 npm install protobufjs
