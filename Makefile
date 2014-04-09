bc:
	grunt build
	cp -f -R dist ../ChannelService/public

.PHONY: all test clean