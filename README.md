# PBRP Device Tree for the Samsung Galaxy A50 (a50dd)

The Galaxy A50 (codenamed _"a50dd"_) is an upper-mid-range smartphone from Samsung.

It was announced and released in February 2019.

## Device specifications

| Feature                      | Specification                                                                  |
| ---------------------------: | :----------------------------------------------------------------------------- |
| Chipset                      | Exynos 9610                                                                    |
| CPU                          | Octa-core (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53)                        |
| GPU                          | Mali-G72 MP3                                                                   |
| Memory                       | 4GB / 6GB RAM (LPDDR4)                                                         |
| Shipped OS                   | Android 9 (One UI 1.1)                                                         |
| Storage                      | 64GB / 128GB (UFS 2.1)                                                         |
| SIM                          | Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)                    |
| MicroSD                      | Up to 512GB                                                                    |
| Battery                      | 4000mAh Li-Po (non-removable), 15W fast charge                                 |
| Dimensions                   | 158.5 x 74.7 x 7.7 mm (6.24 x 2.94 x 0.30 in)                                  |
| Display                      | 6.4", 1080 x 2340 pixels, 19.5:9 ratio, Super AMOLED, 60Hz (~403 ppi density)  |
| Rear Camera 1 (IMX576)       | 25 MP, f/1.7, 26mm (wide), PDAF                                                |
| Rear Camera 2 (S5K4HA)       | 8 MP, f/2.2, 123° (ultrawide), 1/4.0", 1.12µm                                  |
| Rear Camera 3 (GC5035)       | 5 MP, f/2.2, (depth)                                                           |
| Front Camera (S5K2X5)        | 25 MP, f/2.0, 25mm (wide), 1/2.8", 0.9µm                                       |
| Fingerprint                  | under display, optical                                                         |
| Sensors                      | Accelerometer, Gyro, Proximity, Compass, Hall IC, Grip                         |
| Extras                       | Dual speakers, NFC, MST                                                        |

## Device picture

<img src="https://github.com/user-attachments/assets/622b2e6c-0787-4e18-855d-73e98fee1a05"/>

## Kernel source

Available at [FreshROMs/android_kernel_samsung_exynos9610_mint](https://github.com/FreshROMs/android_kernel_samsung_exynos9610_mint)

## How to build

This device tree was tested and is fully compatible with [manifest_pb](https://github.com/PitchBlackRecoveryProject/manifest_pb).

1. Set up the build environment following the instructions [here](https://github.com/PitchBlackRecoveryProject/manifest_pb/blob/android-12.1/README.md#how-to-build)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/PeterKnecht93/android_device_samsung_a50dd -b pbrp-12.1 device/samsung/a50dd
```

3. To build:

```bash
. build/envsetup.sh
lunch pb_a50dd-eng
mka pbrp
```

## Copyright

```
#
# Copyright (C) 2020 PitchBlack Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
```
