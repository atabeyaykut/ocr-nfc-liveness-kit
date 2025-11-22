package com.bumptech.glide.manager;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

@RequiresApi(26)
/* loaded from: classes.dex */
public final class g implements i, ComponentCallbacks2 {
    @Override // com.bumptech.glide.manager.i
    public final void d() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int r12) {
    }
}
