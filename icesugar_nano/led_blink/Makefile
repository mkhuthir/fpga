filename = blink

ICELINK_DIR=$(shell df | grep iCELink | awk '{print $$6}')
${warning iCELink path: $(ICELINK_DIR)}

build:
	yosys -p "synth_ice40 -json hardware.json -blif hardware.blif" $(filename).v
	nextpnr-ice40 --lp1k --package cm36 --json hardware.json --pcf $(filename).pcf --asc hardware.asc --freq 48
	icepack hardware.asc hardware.bin

upload:
	@if [ -d '$(ICELINK_DIR)' ]; \
        then \
            cp hardware.bin $(ICELINK_DIR); \
        else \
            echo "iCELink not found"; \
            exit 1; \
    fi


clean:
	rm hardware.blif hardware.asc hardware.bin hardware.json
