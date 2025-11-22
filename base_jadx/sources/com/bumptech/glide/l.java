package com.bumptech.glide;

import androidx.tracing.Trace;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class l implements q1.g<k> {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2738a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f2739b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f2740c;

    public l(b bVar, ArrayList arrayList, k1.a aVar) {
        this.f2739b = bVar;
        this.f2740c = arrayList;
    }

    @Override // q1.g
    public final k get() {
        if (this.f2738a) {
            throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
        }
        this.f2738a = true;
        Trace.beginSection("Glide registry");
        try {
            return m.a(this.f2739b, this.f2740c);
        } finally {
            Trace.endSection();
        }
    }
}
