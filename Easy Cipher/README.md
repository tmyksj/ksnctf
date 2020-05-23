# Easy Cipher

# 考察
- 何かしらの暗号方式？
  ```
  EBG KVVV vf n fvzcyr yrggre fhofgvghgvba pvcure gung ercynprf n yrggre jvgu gur yrggre KVVV yrggref nsgre vg va gur nycunorg. EBG KVVV vf na rknzcyr bs gur Pnrfne pvcure, qrirybcrq va napvrag Ebzr. Synt vf SYNTFjmtkOWFNZdjkkNH. Vafreg na haqrefpber vzzrqvngryl nsgre SYNT.
  ```

- シーザー暗号と仮定して、アルファベットの小文字部分のみ全探索してみると、読める部分が見つかる
  ```
  EBG KVVV is a simple letter substitution cipher that replaces a letter with the letter KVVV letters after it in the alphabet. EBG KVVV is an example of the Paesar cipher, developed in ancient Eome. Slag is SYNTFwzgxOWFNZqwxxNH. Vnsert an underscore immediately after SYNT.
  ```

- 大文字と小文字でシフトが同じと仮定して再度試行
  ```
  ROT XIII is a simple letter substitution cipher that replaces a letter with the letter XIII letters after it in the alphabet. ROT XIII is an example of the Caesar cipher, developed in ancient Rome. Flag is FLAGSwzgxBJSAMqwxxAU. Insert an underscore immediately after FLAG.
  ```

- ROT XIII で暗号化されていると判明

# Flag
```
FLAG_SwzgxBJSAMqwxxAU
```
