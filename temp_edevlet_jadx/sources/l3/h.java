package l3;

import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new f();

    /* renamed from: a, reason: collision with root package name */
    public final Messenger f9349a;

    public h(IBinder iBinder) {
        this.f9349a = new Messenger(iBinder);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            Messenger messenger = this.f9349a;
            messenger.getClass();
            IBinder binder = messenger.getBinder();
            Messenger messenger2 = ((h) obj).f9349a;
            messenger2.getClass();
            return binder.equals(messenger2.getBinder());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final int hashCode() {
        Messenger messenger = this.f9349a;
        messenger.getClass();
        return messenger.getBinder().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int r22) {
        Messenger messenger = this.f9349a;
        messenger.getClass();
        parcel.writeStrongBinder(messenger.getBinder());
    }
}
