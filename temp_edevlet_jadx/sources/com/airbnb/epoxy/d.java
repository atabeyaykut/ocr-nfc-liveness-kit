package com.airbnb.epoxy;

import android.os.Handler;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import com.airbnb.epoxy.q;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final z f2546a;

    /* renamed from: b, reason: collision with root package name */
    public final c f2547b;

    /* renamed from: c, reason: collision with root package name */
    public final DiffUtil.ItemCallback<u<?>> f2548c;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public volatile List<? extends u<?>> f2550e;

    /* renamed from: d, reason: collision with root package name */
    public final b f2549d = new b();

    @NonNull
    public volatile List<? extends u<?>> f = Collections.emptyList();

    public static class a extends DiffUtil.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final List<? extends u<?>> f2551a;

        /* renamed from: b, reason: collision with root package name */
        public final List<? extends u<?>> f2552b;

        /* renamed from: c, reason: collision with root package name */
        public final DiffUtil.ItemCallback<u<?>> f2553c;

        public a(List list, j jVar, DiffUtil.ItemCallback itemCallback) {
            this.f2551a = list;
            this.f2552b = jVar;
            this.f2553c = itemCallback;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public final boolean areContentsTheSame(int r22, int r32) {
            return this.f2553c.areContentsTheSame(this.f2551a.get(r22), this.f2552b.get(r32));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public final boolean areItemsTheSame(int r22, int r32) {
            return this.f2553c.areItemsTheSame(this.f2551a.get(r22), this.f2552b.get(r32));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        @Nullable
        public final Object getChangePayload(int r22, int r32) {
            return this.f2553c.getChangePayload(this.f2551a.get(r22), this.f2552b.get(r32));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public final int getNewListSize() {
            return this.f2552b.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public final int getOldListSize() {
            return this.f2551a.size();
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public volatile int f2554a;

        /* renamed from: b, reason: collision with root package name */
        public volatile int f2555b;

        public final synchronized boolean a(int r22) {
            boolean z10;
            z10 = this.f2554a == r22 && r22 > this.f2555b;
            if (z10) {
                this.f2555b = r22;
            }
            return z10;
        }

        public final synchronized boolean b() {
            return this.f2554a > this.f2555b;
        }

        public final synchronized int c() {
            int r02;
            r02 = this.f2554a + 1;
            this.f2554a = r02;
            return r02;
        }
    }

    public interface c {
    }

    public d(@NonNull Handler handler, @NonNull c cVar, @NonNull q.a aVar) {
        this.f2546a = new z(handler);
        this.f2547b = cVar;
        this.f2548c = aVar;
    }

    @AnyThread
    public final boolean a() {
        boolean zB;
        b bVar = this.f2549d;
        synchronized (bVar) {
            zB = bVar.b();
            bVar.f2555b = bVar.f2554a;
        }
        return zB;
    }

    @AnyThread
    public final synchronized boolean b(int r22, @Nullable List list) {
        if (!this.f2549d.a(r22)) {
            return false;
        }
        this.f2550e = list;
        this.f = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        return true;
    }
}
