# Prolog Basics


## 📦 Requirements

- [SWI-Prolog](https://www.swi-prolog.org/Download.html) installed

Check:
```bash
swipl
```

---

## ▶️ How to Run

1. **Start SWI-Prolog:**
```bash
swipl
```

1. **Load your file (e.g. `hello.pl`):**
```prolog
?- [hello].
```

You should see:
```prolog
true.
```

5. **Call the main predicate:**
```prolog
?- hello.
```

Output:
```text
Hello, World!
true.
```

---

## 💡 Commands

- `make.` to reload your file after changes  
- `halt.` to exit Prolog

---

## 🛠️ Input

```prolog
?- ask_age.
Show people older than: 25.
```

✅ Right:
```text
25.
```

⛔ Wrong:
```text
25
```

---