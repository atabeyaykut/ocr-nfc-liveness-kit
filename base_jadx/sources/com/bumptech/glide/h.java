package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import com.bumptech.glide.b;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class h extends ContextWrapper {

    /* renamed from: k, reason: collision with root package name */
    @VisibleForTesting
    public static final a f2712k = new a();

    /* renamed from: a, reason: collision with root package name */
    public final y0.b f2713a;

    /* renamed from: b, reason: collision with root package name */
    public final q1.f f2714b;

    /* renamed from: c, reason: collision with root package name */
    public final a2.b f2715c;

    /* renamed from: d, reason: collision with root package name */
    public final b.a f2716d;

    /* renamed from: e, reason: collision with root package name */
    public final List<m1.f<Object>> f2717e;
    public final Map<Class<?>, p<?, ?>> f;

    /* renamed from: g, reason: collision with root package name */
    public final x0.m f2718g;

    /* renamed from: h, reason: collision with root package name */
    public final i f2719h;

    /* renamed from: i, reason: collision with root package name */
    public final int f2720i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    public m1.g f2721j;

    public h(@NonNull Context context, @NonNull y0.b bVar, @NonNull l lVar, @NonNull a2.b bVar2, @NonNull c cVar, @NonNull ArrayMap arrayMap, @NonNull List list, @NonNull x0.m mVar, @NonNull i iVar, int r10) {
        super(context.getApplicationContext());
        this.f2713a = bVar;
        this.f2715c = bVar2;
        this.f2716d = cVar;
        this.f2717e = list;
        this.f = arrayMap;
        this.f2718g = mVar;
        this.f2719h = iVar;
        this.f2720i = r10;
        this.f2714b = new q1.f(lVar);
    }

    @NonNull
    public final k a() {
        return (k) this.f2714b.get();
    }
}
