package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.d;
import androidx.annotation.NonNull;
import java.util.List;

/* loaded from: classes.dex */
public class e<T extends d> extends MediaBrowser.SubscriptionCallback {

    /* renamed from: a, reason: collision with root package name */
    public final T f391a;

    public e(MediaBrowserCompat.i.a aVar) {
        this.f391a = aVar;
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list) {
        this.f391a.b(list);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onError(@NonNull String str) {
        this.f391a.a();
    }
}
