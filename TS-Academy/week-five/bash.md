# Bash —  Reference

All examples tested and runnable as-is. ⚠️ = macOS gotcha.

---

## 1. Introduction to Bash

Bash = interactive shell + scripting language. A script is just saved commands.

```bash
echo $SHELL
bash --version
```

## 2. Installing & Running (macOS + Ubuntu)

- **Ubuntu:** bash 5.x preinstalled ✅
- **macOS:** ⚠️ ships bash **3.2** (2007), defaults to zsh → `brew install bash`

```bash
bash script.sh        # explicit
chmod +x script.sh && ./script.sh   # via shebang
source script.sh      # runs in current shell
```

## 3. Your First Script

```bash
#!/usr/bin/env bash    # use env, not /bin/bash (finds new bash on macOS)
echo "Hello from $(whoami), today is $(date +%A)"
```

## 4. Variables

```bash
city="Lagos"           # NO spaces around =
echo "$city"
echo "${city}_report"  # braces when text follows
readonly PI=3.14
```

❌ `city = "Lagos"` → "command not found"

## 5. User Input

```bash
read -p "Name? " name
read -s -p "Password: " pass; echo
read -p "Port [8080]: " port; port=${port:-8080}   # default value
```

## 6. Environment Variables

```bash
export API_URL="https://api.github.com"   # visible to child processes
echo "$HOME $USER $PWD $PATH"
env | head                                 # list all
```

Permanent → add to `~/.bashrc` (Ubuntu) / `~/.zshrc` (macOS).

## 7. Quoting Rules

```bash
name="world"
echo "Hello $name"   # expands → Hello world
echo 'Hello $name'   # literal → Hello $name
```

**Always double-quote variables:**

```bash
file="my file.txt"
ls "$file"    # ✅
ls $file      # ❌ splits into two args
```

## 8. Arithmetic

```bash
x=$((5 + 3))        # 8
y=$((10 / 3))       # 3 — integers only!
z=$((10 % 3))       # 1
((count++)); ((count += 5))
echo "scale=2; 10/3" | bc    # 3.33 — floats need bc
```

## 9. Operators

```bash
(( a < b ))               # numbers: < <= > >= == !=
[[ $a -lt $b ]]           # or: -lt -le -gt -ge -eq -ne
[[ $s == "hi" ]]          # strings: == != -z (empty) -n (non-empty)
[[ -f file ]]             # files: -f file, -d dir, -r readable, -x executable
[[ $a -ge 18 && $a -lt 65 ]]   # logic: && ||
```

## 10. Strings

```bash
str="Bash is fun"
echo ${#str}              # 11 — length
echo ${str:0:4}           # Bash — substring
echo ${str/fun/great}     # replace first
echo ${str// /_}          # replace all
```

Case: ⚠️ `${str^^}` / `${str,,}` = bash 4+ only. Portable:

```bash
echo "$str" | tr '[:lower:]' '[:upper:]'
```

Strip prefix/suffix:

```bash
f="report.tar.gz"
echo ${f%%.*}    # report (strip suffix)
echo ${f##*.}    # gz (get extension)
```

## 11. Arrays

```bash
fruits=("apple" "banana" "cherry")
echo ${fruits[0]}         # apple
echo ${#fruits[@]}        # 3
fruits+=("mango")         # append
for f in "${fruits[@]}"; do echo "$f"; done
```

⚠️ Associative arrays = bash 4+ only:

```bash
declare -A caps; caps[Nigeria]="Abuja"
echo "${caps[Nigeria]}"
```

Split string → array:

```bash
IFS=',' read -ra langs <<< "go,rust,python"
```

## 12. Command Substitution

```bash
today=$(date +%F)
users=$(who | wc -l)
cp data.txt "data_$(date +%Y%m%d_%H%M%S).txt"   # timestamped backup
```

Use `$( )`, not backticks — it nests.

## 13. Exit Codes

**0 = success, non-zero = failure.** `$?` = last command's code.

```bash
ls /nope 2>/dev/null; echo $?     # 2
mkdir -p /tmp/x && echo ok || echo failed
grep -q root /etc/passwd && echo "found"
exit 1    # set your script's own code
```

## 14. If Statements

```bash
if (( n > 100 )); then
  echo "big"
elif (( n == 100 )); then
  echo "exact"
else
  echo "small"
fi

[[ -f /etc/hosts ]] && echo "exists"   # one-liner form
```

## 15. Case Statements

```bash
case $choice in
  s|S) uptime ;;
  d|D) df -h / ;;
  q|Q) exit 0 ;;
  *)   echo "unknown" >&2; exit 1 ;;
esac
```

Globs work:

```bash
case $file in
  *.jpg|*.jpeg) echo "JPEG" ;;
  *.png)        echo "PNG" ;;
esac
```

## 16. Loops

```bash
for name in Ada Grace Linus; do echo "$name"; done
for i in {1..5}; do echo "$i"; done
for (( i=0; i<3; i++ )); do echo "$i"; done

while (( i < 3 )); do ((i++)); done

# read file line by line — THE pattern:
while IFS= read -r line; do echo "$line"; done < items.txt

# break / continue
for i in {1..10}; do
  (( i == 3 )) && continue
  (( i == 6 )) && break
  echo "$i"
done
```

## 17. Functions

```bash
greet() {
  local who="${1:-stranger}"   # $1 $2 = args, $# = count, $@ = all
  echo "Hello, $who!"
}
add() { echo $(( $1 + $2 )); }

greet "class"
sum=$(add 7 5)    # capture output — echo is how you "return" data
```

`return` sets an **exit code (0–255)**, not a value.

## 18. Scope

Variables are **global by default** — even inside functions. Use `local`:

```bash
demo() {
  local hidden="inside only"
  leaked="global!"      # no local → leaks out
}
demo
echo "${hidden:-unset}"  # unset
echo "$leaked"           # global!
```

Rule: **`local` on every function variable.**

## 35. curl

```bash
curl -s URL                # silent GET
curl -I URL                # headers only
curl -L URL                # follow redirects
curl -s -w "%{http_code}" -o /dev/null URL   # status code only
curl -X POST -H "Content-Type: application/json" -d '{"a":1}' URL
```

Site-up check:

```bash
status=$(curl -s -o /dev/null -w "%{http_code}" https://api.github.com)
[[ $status == "200" ]] && echo UP || echo "HTTP $status"
```

## 36. wget Alternatives (curl on macOS)

⚠️ macOS has **no wget**. Teach curl — works on both:

| Task | wget | curl |
|---|---|---|
| Keep filename | `wget URL` | `curl -O URL` |
| Rename | `wget -O f URL` | `curl -o f URL` |
| Quiet | `wget -q URL` | `curl -sO URL` |
| Resume | `wget -c URL` | `curl -C - -O URL` |

## 37. Downloading Files

```bash
url="https://raw.githubusercontent.com/torvalds/linux/master/README"
curl -LO  "$url"                 # keep remote name
curl -sL -o readme.txt "$url"    # choose name
curl -C - -LO "$url"             # resume
curl -fsLO "$url" || echo "failed" >&2   # -f: fail on HTTP errors
```

Batch:

```bash
base="https://raw.githubusercontent.com/torvalds/linux/master"
for f in README COPYING CREDITS; do
  curl -fsLO "$base/$f" && echo "✓ $f" || echo "✗ $f" >&2
done
```

## 45. Error Handling

Top of every serious script:

```bash
set -euo pipefail
# -e: exit on any failure   -u: error on undefined vars   pipefail: pipes fail properly
```

Cleanup + diagnostics with trap:

```bash
tmp=$(mktemp)
trap 'rm -f "$tmp"' EXIT
trap 'echo "ERROR line $LINENO" >&2' ERR
```

Allow expected failures (so `-e` doesn't kill you):

```bash
if ! curl -fsS -o /dev/null https://api.github.com; then
  echo "offline mode" >&2
fi
```

die() pattern:

```bash
die() { echo "ERROR: $*" >&2; exit 1; }
[[ $# -ge 1 ]] || die "usage: $0 <file>"
[[ -f $1 ]]    || die "not found: $1"
```
