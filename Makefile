SRC := $(wildcard src/com/craftinginterpreters/lox/*.java)
OUT := out
MAIN := com.craftinginterpreters.lox.Lox

.PHONY: build run clean

build: $(OUT)/.built

$(OUT)/.built: $(SRC)
	javac -d $(OUT) $(SRC)
	touch $@

run: build
	java -cp $(OUT) $(MAIN) $(FILE)

clean:
	rm -rf $(OUT)