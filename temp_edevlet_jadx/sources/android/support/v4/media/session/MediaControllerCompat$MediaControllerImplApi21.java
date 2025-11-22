package android.support.v4.media.session;

import android.content.Context;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.support.v4.media.session.c;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
import androidx.core.app.BundleCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

@RequiresApi(21)
/* loaded from: classes.dex */
public class MediaControllerCompat$MediaControllerImplApi21 {

    /* renamed from: a, reason: collision with root package name */
    public final MediaController f392a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f393b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("mLock")
    public final ArrayList f394c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap<c, a> f395d = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    public final MediaSessionCompat.Token f396e;

    public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<MediaControllerCompat$MediaControllerImplApi21> f397a;

        public ExtraBinderRequestResultReceiver(MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21) {
            super(null);
            this.f397a = new WeakReference<>(mediaControllerCompat$MediaControllerImplApi21);
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int r42, Bundle bundle) {
            MediaControllerCompat$MediaControllerImplApi21 mediaControllerCompat$MediaControllerImplApi21 = this.f397a.get();
            if (mediaControllerCompat$MediaControllerImplApi21 == null || bundle == null) {
                return;
            }
            synchronized (mediaControllerCompat$MediaControllerImplApi21.f393b) {
                mediaControllerCompat$MediaControllerImplApi21.f396e.f403b = b.a.w0(BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
                MediaSessionCompat.Token token = mediaControllerCompat$MediaControllerImplApi21.f396e;
                bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE");
                token.getClass();
                mediaControllerCompat$MediaControllerImplApi21.a();
            }
        }
    }

    public static class a extends c.b {
        public a(c cVar) {
            super(cVar);
        }

        @Override // android.support.v4.media.session.a
        public final void G() throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.a
        public final void T() throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.a
        public final void f0() throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.a
        public final void i0() throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.a
        public final void l0() throws RemoteException {
            throw new AssertionError();
        }

        @Override // android.support.v4.media.session.a
        public final void u() throws RemoteException {
            throw new AssertionError();
        }
    }

    public MediaControllerCompat$MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) throws RemoteException {
        this.f396e = token;
        MediaController mediaController = new MediaController(context, (MediaSession.Token) token.f402a);
        this.f392a = mediaController;
        if (token.f403b == null) {
            mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }
    }

    @GuardedBy("mLock")
    public final void a() {
        MediaSessionCompat.Token token = this.f396e;
        if (token.f403b == null) {
            return;
        }
        ArrayList arrayList = this.f394c;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            a aVar = new a(cVar);
            this.f395d.put(cVar, aVar);
            cVar.f425a = aVar;
            try {
                token.f403b.J(aVar);
            } catch (RemoteException e10) {
                Log.e("MediaControllerCompat", "Dead object in registerCallback.", e10);
            }
        }
        arrayList.clear();
    }
}
