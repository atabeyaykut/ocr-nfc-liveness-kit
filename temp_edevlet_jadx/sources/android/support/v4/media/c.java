package android.support.v4.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.b;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.b;
import android.util.Log;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserProtocol;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class c<T extends b> extends MediaBrowser.ConnectionCallback {

    /* renamed from: a, reason: collision with root package name */
    public final T f390a;

    public c(MediaBrowserCompat.b.C0023b c0023b) {
        this.f390a = c0023b;
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnected() {
        MediaBrowserCompat.c cVar;
        MediaBrowser mediaBrowser;
        Bundle extras;
        MediaBrowserCompat.b bVar = MediaBrowserCompat.b.this;
        MediaBrowserCompat.b.a aVar = bVar.mConnectionCallbackInternal;
        if (aVar != null && (extras = (mediaBrowser = (cVar = (MediaBrowserCompat.c) aVar).f367b).getExtras()) != null) {
            extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
            IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
            if (binder != null) {
                cVar.f = new MediaBrowserCompat.g(binder, cVar.f368c);
                MediaBrowserCompat.a aVar2 = cVar.f369d;
                Messenger messenger = new Messenger(aVar2);
                cVar.f371g = messenger;
                aVar2.getClass();
                aVar2.f364b = new WeakReference<>(messenger);
                try {
                    MediaBrowserCompat.g gVar = cVar.f;
                    Context context = cVar.f366a;
                    Messenger messenger2 = cVar.f371g;
                    gVar.getClass();
                    Bundle bundle = new Bundle();
                    bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
                    bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, gVar.f374b);
                    gVar.a(6, bundle, messenger2);
                } catch (RemoteException unused) {
                    Log.i("MediaBrowserCompat", "Remote error registering client messenger.");
                }
            }
            android.support.v4.media.session.b bVarW0 = b.a.w0(BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
            if (bVarW0 != null) {
                cVar.f372h = MediaSessionCompat.Token.a(mediaBrowser.getSessionToken(), bVarW0);
            }
        }
        bVar.onConnected();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionFailed() {
        MediaBrowserCompat.b bVar = MediaBrowserCompat.b.this;
        MediaBrowserCompat.b.a aVar = bVar.mConnectionCallbackInternal;
        bVar.onConnectionFailed();
    }

    @Override // android.media.browse.MediaBrowser.ConnectionCallback
    public final void onConnectionSuspended() {
        MediaBrowserCompat.b bVar = MediaBrowserCompat.b.this;
        MediaBrowserCompat.b.a aVar = bVar.mConnectionCallbackInternal;
        if (aVar != null) {
            MediaBrowserCompat.c cVar = (MediaBrowserCompat.c) aVar;
            cVar.f = null;
            cVar.f371g = null;
            cVar.f372h = null;
            MediaBrowserCompat.a aVar2 = cVar.f369d;
            aVar2.getClass();
            aVar2.f364b = new WeakReference<>(null);
        }
        bVar.onConnectionSuspended();
    }
}
