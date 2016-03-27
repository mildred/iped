all: unixfs.proto.jsonp ipld.proto.jsonp

unixfs.proto.jsonp: CALLBACK=unixfs
ipld.proto.jsonp: CALLBACK=ipld
%.jsonp: %.json
	: >$@
	echo -n '$(CALLBACK)(' >>$@
	cat $< >> $@
	echo ');' >>$@

%.proto.json: %.proto ./node_modules/protobufjs/bin/pbjs
	./node_modules/protobufjs/bin/pbjs $< > $@
 
./node_modules/protobufjs/bin/pbjs:
	 npm install protobufjs
