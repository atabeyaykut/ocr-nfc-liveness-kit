package com.bumptech.glide.manager;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.manager.c;
import com.bumptech.glide.o;

/* loaded from: classes.dex */
public final class e implements c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2775a;

    /* renamed from: b, reason: collision with root package name */
    public final c.a f2776b;

    public e(@NonNull Context context, @NonNull o.b bVar) {
        this.f2775a = context.getApplicationContext();
        this.f2776b = bVar;
    }

    @Override // com.bumptech.glide.manager.k
    public final void g() {
    }

    @Override // com.bumptech.glide.manager.k
    public final void i() {
        s sVarA = s.a(this.f2775a);
        c.a aVar = this.f2776b;
        synchronized (sVarA) {
            sVarA.f2800b.remove(aVar);
            if (sVarA.f2801c && sVarA.f2800b.isEmpty()) {
                sVarA.f2799a.b();
                sVarA.f2801c = false;
            }
        }
    }

    @Override // com.bumptech.glide.manager.k
    public final void onStart() {
        s sVarA = s.a(this.f2775a);
        c.a aVar = this.f2776b;
        synchronized (sVarA) {
            sVarA.f2800b.add(aVar);
            if (!sVarA.f2801c && !sVarA.f2800b.isEmpty()) {
                sVarA.f2801c = sVarA.f2799a.a();
            }
        }
    }
}
