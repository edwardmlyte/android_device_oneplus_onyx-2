#!/system/bin/sh
#
# Copyright 2016 The CyanogenMod Project
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

if [ -f /system/bin/hci_qcomm_init ]; then
    setprop ro.bluetooth.hfp.ver 1.7
    setprop ro.qualcomm.bt.hci_transport smd
    setprop bluetooth.status off
    /system/bin/hci_qcomm_init -b $(/system/bin/bdAddrLoader -f /data/oemnvitems/4678 -h -x)
    setprop bluetooth.status on
fi

exit 0
