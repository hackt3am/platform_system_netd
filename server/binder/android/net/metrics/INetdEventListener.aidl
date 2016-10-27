/**
 * Copyright (c) 2016, The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.net.metrics;

/**
 * Logs netd events.
 *
 * {@hide}
 */
oneway interface INetdEventListener {
    const int EVENT_GETADDRINFO = 1;
    const int EVENT_GETHOSTBYNAME = 2;

    const int REPORTING_LEVEL_NONE = 3;
    const int REPORTING_LEVEL_METRICS = 4;
    const int REPORTING_LEVEL_FULL = 5;

    // Logs a single DNS lookup.
    void onDnsEvent(int netId, int eventType, int returnCode, int latencyMs);
}
