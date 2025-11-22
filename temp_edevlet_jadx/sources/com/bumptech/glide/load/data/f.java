package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.e;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    public static final a f2752b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2753a = new HashMap();

    public class a implements e.a<Object> {
        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public final Class<Object> a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public final e<Object> b(@NonNull Object obj) {
            return new b(obj);
        }
    }

    public static final class b implements e<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f2754a;

        public b(@NonNull Object obj) {
            this.f2754a = obj;
        }

        @Override // com.bumptech.glide.load.data.e
        @NonNull
        public final Object a() {
            return this.f2754a;
        }

        @Override // com.bumptech.glide.load.data.e
        public final void b() {
        }
    }
}
