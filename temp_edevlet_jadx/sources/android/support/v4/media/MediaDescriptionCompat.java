package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public final String f379a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f380b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f381c;

    /* renamed from: d, reason: collision with root package name */
    public final CharSequence f382d;

    /* renamed from: e, reason: collision with root package name */
    public final Bitmap f383e;
    public final Uri f;

    /* renamed from: g, reason: collision with root package name */
    public final Bundle f384g;

    /* renamed from: h, reason: collision with root package name */
    public final Uri f385h;

    /* renamed from: j, reason: collision with root package name */
    public Object f386j;

    public static class a implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat[] newArray(int r12) {
            return new MediaDescriptionCompat[r12];
        }
    }

    public MediaDescriptionCompat() {
        throw null;
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f379a = str;
        this.f380b = charSequence;
        this.f381c = charSequence2;
        this.f382d = charSequence3;
        this.f383e = bitmap;
        this.f = uri;
        this.f384g = bundle;
        this.f385h = uri2;
    }

    public static MediaDescriptionCompat a(Object obj) {
        Uri mediaUri;
        Bundle bundle;
        if (obj == null) {
            return null;
        }
        int r12 = Build.VERSION.SDK_INT;
        MediaDescription mediaDescription = (MediaDescription) obj;
        String mediaId = mediaDescription.getMediaId();
        CharSequence title = mediaDescription.getTitle();
        CharSequence subtitle = mediaDescription.getSubtitle();
        CharSequence description = mediaDescription.getDescription();
        Bitmap iconBitmap = mediaDescription.getIconBitmap();
        Uri iconUri = mediaDescription.getIconUri();
        Bundle extras = mediaDescription.getExtras();
        if (extras != null) {
            MediaSessionCompat.a(extras);
            mediaUri = (Uri) extras.getParcelable("android.support.v4.media.description.MEDIA_URI");
        } else {
            mediaUri = null;
        }
        if (mediaUri == null) {
            bundle = extras;
        } else if (extras.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && extras.size() == 2) {
            bundle = null;
        } else {
            extras.remove("android.support.v4.media.description.MEDIA_URI");
            extras.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = extras;
        }
        if (mediaUri == null) {
            mediaUri = r12 >= 23 ? mediaDescription.getMediaUri() : null;
        }
        MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(mediaId, title, subtitle, description, iconBitmap, iconUri, bundle, mediaUri);
        mediaDescriptionCompat.f386j = obj;
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f380b) + ", " + ((Object) this.f381c) + ", " + ((Object) this.f382d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r92) {
        int r02 = Build.VERSION.SDK_INT;
        Object objBuild = this.f386j;
        if (objBuild == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f379a);
            builder.setTitle(this.f380b);
            builder.setSubtitle(this.f381c);
            builder.setDescription(this.f382d);
            builder.setIconBitmap(this.f383e);
            builder.setIconUri(this.f);
            Uri uri = this.f385h;
            Bundle bundle = this.f384g;
            if (r02 < 23 && uri != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                    bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", uri);
            }
            builder.setExtras(bundle);
            if (r02 >= 23) {
                builder.setMediaUri(uri);
            }
            objBuild = builder.build();
            this.f386j = objBuild;
        }
        ((MediaDescription) objBuild).writeToParcel(parcel, r92);
    }
}
