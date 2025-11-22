package io.realm.mongodb.sync;

import io.realm.internal.Keep;

@Keep
/* loaded from: classes2.dex */
public interface SubscriptionSet$StateChangeCallback {
    void onError(Throwable th2);

    void onStateChange(SubscriptionSet subscriptionSet);
}
