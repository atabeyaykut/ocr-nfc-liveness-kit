package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f359b = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: a, reason: collision with root package name */
    public final c f360a;

    public static class CustomActionResultReceiver extends a.b {
        @Override // a.b
        public final void a(int r12, Bundle bundle) {
        }
    }

    public static class ItemReceiver extends a.b {
        @Override // a.b
        public final void a(int r32, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (r32 != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                throw null;
            }
            Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
            if (parcelable != null && !(parcelable instanceof MediaItem)) {
                throw null;
            }
            throw null;
        }
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new a();

        /* renamed from: a, reason: collision with root package name */
        public final int f361a;

        /* renamed from: b, reason: collision with root package name */
        public final MediaDescriptionCompat f362b;

        public static class a implements Parcelable.Creator<MediaItem> {
            @Override // android.os.Parcelable.Creator
            public final MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final MediaItem[] newArray(int r12) {
                return new MediaItem[r12];
            }
        }

        public MediaItem(Parcel parcel) {
            this.f361a = parcel.readInt();
            this.f362b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int r32) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("description cannot be null");
            }
            if (TextUtils.isEmpty(mediaDescriptionCompat.f379a)) {
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            this.f361a = r32;
            this.f362b = mediaDescriptionCompat;
        }

        public static void a(List list) {
            MediaItem mediaItem;
            if (list != null) {
                ArrayList arrayList = new ArrayList(list.size());
                for (Object obj : list) {
                    if (obj != null) {
                        MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) obj;
                        mediaItem = new MediaItem(MediaDescriptionCompat.a(mediaItem2.getDescription()), mediaItem2.getFlags());
                    } else {
                        mediaItem = null;
                    }
                    arrayList.add(mediaItem);
                }
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaItem{mFlags=" + this.f361a + ", mDescription=" + this.f362b + '}';
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int r32) {
            parcel.writeInt(this.f361a);
            this.f362b.writeToParcel(parcel, r32);
        }
    }

    public static class SearchResultReceiver extends a.b {
        @Override // a.b
        public final void a(int r52, Bundle bundle) {
            Parcelable[] parcelableArray;
            MediaSessionCompat.a(bundle);
            if (r52 != 0 || bundle == null || !bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS) || (parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) == null) {
                throw null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            throw null;
        }
    }

    public static class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<f> f363a;

        /* renamed from: b, reason: collision with root package name */
        public WeakReference<Messenger> f364b;

        public a(f fVar) {
            this.f363a = new WeakReference<>(fVar);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.f364b;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            WeakReference<f> weakReference2 = this.f363a;
            if (weakReference2.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.a(data);
            f fVar = weakReference2.get();
            Messenger messenger = this.f364b.get();
            try {
                int r72 = message.what;
                if (r72 == 1) {
                    MediaSessionCompat.a(data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS));
                    fVar.c(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN));
                } else if (r72 == 2) {
                    fVar.b(messenger);
                } else if (r72 != 3) {
                    Log.w("MediaBrowserCompat", "Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                } else {
                    Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                    MediaSessionCompat.a(bundle);
                    MediaSessionCompat.a(data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS));
                    String string = data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID);
                    data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST);
                    fVar.a(messenger, string, bundle);
                }
            } catch (BadParcelableException unused) {
                Log.e("MediaBrowserCompat", "Could not unparcel the data.");
                if (message.what == 1) {
                    fVar.b(messenger);
                }
            }
        }
    }

    public static class b {
        a mConnectionCallbackInternal;
        final Object mConnectionCallbackObj = new android.support.v4.media.c(new C0023b());

        public interface a {
        }

        /* renamed from: android.support.v4.media.MediaBrowserCompat$b$b, reason: collision with other inner class name */
        public class C0023b implements android.support.v4.media.b {
            public C0023b() {
            }
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }

        public void setInternalConnectionCallback(a aVar) {
            this.mConnectionCallbackInternal = aVar;
        }
    }

    @RequiresApi(21)
    public static class c implements f, b.a {

        /* renamed from: a, reason: collision with root package name */
        public final Context f366a;

        /* renamed from: b, reason: collision with root package name */
        public final MediaBrowser f367b;

        /* renamed from: c, reason: collision with root package name */
        public final Bundle f368c;

        /* renamed from: d, reason: collision with root package name */
        public final a f369d = new a(this);

        /* renamed from: e, reason: collision with root package name */
        public final ArrayMap<String, h> f370e = new ArrayMap<>();
        public g f;

        /* renamed from: g, reason: collision with root package name */
        public Messenger f371g;

        /* renamed from: h, reason: collision with root package name */
        public MediaSessionCompat.Token f372h;

        public c(Context context, ComponentName componentName, b bVar) {
            this.f366a = context;
            Bundle bundle = new Bundle();
            this.f368c = bundle;
            bundle.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bVar.setInternalConnectionCallback(this);
            this.f367b = new MediaBrowser(context, componentName, (MediaBrowser.ConnectionCallback) bVar.mConnectionCallbackObj, bundle);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public final void a(Messenger messenger, String str, Bundle bundle) {
            if (this.f371g != messenger) {
                return;
            }
            h hVar = this.f370e.get(str);
            if (hVar != null) {
                hVar.a(bundle);
            } else if (MediaBrowserCompat.f359b) {
                Log.d("MediaBrowserCompat", "onLoadChildren for id that isn't subscribed id=" + str);
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public final void b(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.f
        public final void c(Messenger messenger, String str, MediaSessionCompat.Token token) {
        }
    }

    @RequiresApi(23)
    public static class d extends c {
        public d(Context context, ComponentName componentName, b bVar) {
            super(context, componentName, bVar);
        }
    }

    @RequiresApi(26)
    public static class e extends d {
        public e(Context context, ComponentName componentName, b bVar) {
            super(context, componentName, bVar);
        }
    }

    public interface f {
        void a(Messenger messenger, String str, Bundle bundle);

        void b(Messenger messenger);

        void c(Messenger messenger, String str, MediaSessionCompat.Token token);
    }

    public static class g {

        /* renamed from: a, reason: collision with root package name */
        public final Messenger f373a;

        /* renamed from: b, reason: collision with root package name */
        public final Bundle f374b;

        public g(IBinder iBinder, Bundle bundle) {
            this.f373a = new Messenger(iBinder);
            this.f374b = bundle;
        }

        public final void a(int r22, Bundle bundle, Messenger messenger) throws RemoteException {
            Message messageObtain = Message.obtain();
            messageObtain.what = r22;
            messageObtain.arg1 = 1;
            messageObtain.setData(bundle);
            messageObtain.replyTo = messenger;
            this.f373a.send(messageObtain);
        }
    }

    public static class h {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f375a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f376b = new ArrayList();

        public final void a(Bundle bundle) {
            int r02 = 0;
            while (true) {
                ArrayList arrayList = this.f376b;
                if (r02 >= arrayList.size()) {
                    return;
                }
                if (MediaBrowserCompatUtils.areSameOptions((Bundle) arrayList.get(r02), bundle)) {
                    return;
                }
                r02++;
            }
        }
    }

    public static abstract class i {

        public class a implements android.support.v4.media.d {
            public a() {
            }

            @Override // android.support.v4.media.d
            public final void a() {
                i.this.getClass();
            }

            @Override // android.support.v4.media.d
            public final void b(List list) {
                i.this.getClass();
                MediaItem.a(list);
            }
        }

        public class b extends a implements android.support.v4.media.f {
            public b() {
                super();
            }

            @Override // android.support.v4.media.f
            public final void c(List list) {
                MediaItem.a(list);
                i.this.getClass();
            }

            @Override // android.support.v4.media.f
            public final void d() {
                i.this.getClass();
            }
        }

        public i() {
            new Binder();
            if (Build.VERSION.SDK_INT >= 26) {
                new android.support.v4.media.g(new b());
            } else {
                new android.support.v4.media.e(new a());
            }
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, b bVar) {
        int r02 = Build.VERSION.SDK_INT;
        this.f360a = r02 >= 26 ? new e(context, componentName, bVar) : r02 >= 23 ? new d(context, componentName, bVar) : new c(context, componentName, bVar);
    }
}
