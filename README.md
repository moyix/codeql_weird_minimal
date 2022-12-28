To reproduce:

1. Make sure CodeQL is in your path and the CodeQL repo is available
2. Run `./repro.sh`

You can also play around with setting the `OPT` environment variable to see how the optimization level for some reason changes the behavior :(

```
$ OPT=-O0 ./repro.sh
```

Note: I also just tried this on a Mac and over there both files individually were missed but the two together were both flagged. Mysterious!
