package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import o3.f;
import o3.g;
import r3.r;

/* loaded from: classes.dex */
public class LifecycleCallback {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final g f2992a;

    public LifecycleCallback(@NonNull g gVar) {
        this.f2992a = gVar;
    }

    @Keep
    private static g getChimeraLifecycleFragmentImpl(f fVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @NonNull
    public final Activity a() {
        Activity activityK = this.f2992a.k();
        r.i(activityK);
        return activityK;
    }

    @MainThread
    public void b(int r12, int r22, @NonNull Intent intent) {
    }

    @MainThread
    public void c(@Nullable Bundle bundle) {
    }

    @MainThread
    public void d() {
    }

    @MainThread
    public void e(@NonNull Bundle bundle) {
    }

    @MainThread
    public void f() {
    }

    @MainThread
    public void g() {
    }
}
