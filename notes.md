# Notes

## Systemd config

- `/etc/systemd/journald.conf`:
  - `SystemMaxUse=50M`

## fstab

```
# /etc/fstab
# ramfs: better than tmpfs (no swap) for temporary sensitive data.
# sudo mkdir /mnt/ramfs
none    /mnt/ramfs    ramfs    noauto,user,mode=1777    0    0
```

## KDE settings

### File Search

- `$HOME` Indexed
- `~/.cache` Not indexed
- `~/.local` Not Indexed
- `~/drive` Not Indexed
- `~/opt` Not Indexed

### Night Light

Set location.

### KDE Widgets

- Network Speed
- Disk Usage
- Hard Disk Activity
- CPU
- Memory
