package android.support.v4.media.session;

import android.os.IBinder;
import android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21;
import android.support.v4.media.session.a;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class c implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public MediaControllerCompat$MediaControllerImplApi21.a f425a;

    public static class a implements f {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<c> f426a;

        public a(c cVar) {
            this.f426a = new WeakReference<>(cVar);
        }
    }

    public static class b extends a.AbstractBinderC0024a {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<c> f427a;

        public b(c cVar) {
            this.f427a = new WeakReference<>(cVar);
        }
    }

    public c() {
        new g(new a(this));
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
    }
}
