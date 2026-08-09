# Исходные наблюдения

## Устройство

- Модель: X96Q TV-Box LPDDR3 / `hechuang,x96-q LPDDR3`
- SoC: Allwinner H313
- RAM: 1 GiB
- eMMC: около 8 GB
- Ethernet: 100 Mbit/s, интерфейс `end0`

## Предыдущий Armbian 6.12.64

- Ethernet и `wlan0` определялись.
- Наблюдался повторяемый kernel panic в `xradio_wlan`.
- В трассировке присутствовали `missed interrupt`, `dev_queue_xmit` и
  `Fatal exception in interrupt`.

## MiniArch 7.1.1

- Загружается на этой ревизии платы.
- Ethernet-интерфейс определяется.
- Wi-Fi отсутствует: `mmc3` сообщает `Card stuck being busy` и
  `Failed to initialize a non-removable card`.

## Сохранённые исходные образы на Mac

- `Armbian-unofficial_26.02.0-trunk_X96q-v1-3_bookworm_current_6.12.64_minimal.img.xz`
- `MiniArch-15.2.0-06.06.2026-7.1.1-board-h313.x96_q_lpddr3_v1.3-SD-Image.img.xz`

