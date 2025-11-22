package com.esafirm.imagepicker.features;

import android.content.ContentResolver;
import android.os.Handler;
import android.provider.MediaStore;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import t1.g;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/esafirm/imagepicker/features/ContentObserverTrigger;", "Landroidx/lifecycle/LifecycleEventObserver;", "imagepicker_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class ContentObserverTrigger implements LifecycleEventObserver {

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f2862a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.a<m> f2863b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f2864c;

    /* renamed from: d, reason: collision with root package name */
    public t1.a f2865d;

    public /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2866a;

        static {
            int[] r02 = new int[Lifecycle.Event.values().length];
            try {
                r02[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                r02[Lifecycle.Event.ON_DESTROY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f2866a = r02;
        }
    }

    public ContentObserverTrigger(ContentResolver contentResolver, g.b bVar) {
        this.f2862a = contentResolver;
        this.f2863b = bVar;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        h.f(source, "source");
        h.f(event, "event");
        int r32 = a.f2866a[event.ordinal()];
        ContentResolver contentResolver = this.f2862a;
        if (r32 == 1) {
            if (this.f2864c == null) {
                this.f2864c = new Handler();
            }
            t1.a aVar = new t1.a(this, this.f2864c);
            this.f2865d = aVar;
            contentResolver.registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, false, aVar);
            return;
        }
        if (r32 != 2) {
            return;
        }
        t1.a aVar2 = this.f2865d;
        if (aVar2 != null) {
            contentResolver.unregisterContentObserver(aVar2);
            this.f2865d = null;
        }
        Handler handler = this.f2864c;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f2864c = null;
    }
}
