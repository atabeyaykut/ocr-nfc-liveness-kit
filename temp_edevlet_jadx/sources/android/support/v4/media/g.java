package android.support.v4.media;

import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.f;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.annotation.NonNull;
import java.util.List;

/* loaded from: classes.dex */
public final class g<T extends f> extends e<T> {
    public g(MediaBrowserCompat.i.b bVar) {
        super(bVar);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
        MediaSessionCompat.a(bundle);
        ((f) this.f391a).c(list);
    }

    @Override // android.media.browse.MediaBrowser.SubscriptionCallback
    public final void onError(@NonNull String str, @NonNull Bundle bundle) {
        MediaSessionCompat.a(bundle);
        ((f) this.f391a).d();
    }
}
