# decrypter
Secrets. Docker. Silence.

It manages SOPS secrets and orchestrates Compose. No local dependencies. Only Docker.

## setup
Grab `start.sh` (or `start.ps1`). Put it in your project root. 

## the routine

### 1. secrets
If you need a key:
```bash
./start.sh keygen
```

To hide your `.env`:
```bash
./start.sh encrypt <public_key>
# or
./start.sh encrypt --passphrase "..."
```

To see the truth:
```bash
./start.sh decrypt <private_key>
```

### 2. deployment
Feed it a key. It starts the services.
```bash
./start.sh -k <private_key>
```

## the surface
| flag | result |
| :--- | :--- |
| `-k`, `--key` | The key. Mandatory for reality. |
| `-p`, `--passphrase` | Words instead of keys. |
| `-d`, `--dev` | Development mode. Bypasses the weight of secrets. |
| `-u`, `--update` | Pull fresh images. |
| `-b`, `--build` | Rebuild. Start over. |
| `--down` | Stop everything. |
| `-v`, `--volumes` | Remove volumes too. |

## mechanics
- **Version**: Every service gets `DECRYPTER_VERSION`.
- **UI**: It streams progress on one line. No scrolling.
- **Update**: `./start.sh --update` keeps the tool from aging.

## why
Installing `sops`, `age`, and `python` everywhere is a burden. This is just a container. It does what it must.
