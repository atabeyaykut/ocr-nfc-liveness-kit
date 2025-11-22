package a;

import a.a;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* renamed from: a, reason: collision with root package name */
    public a.a f2a;

    public class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int r12) {
            return new b[r12];
        }
    }

    /* renamed from: a.b$b, reason: collision with other inner class name */
    public class BinderC0002b extends a.AbstractBinderC0000a {
        public BinderC0002b() {
        }

        @Override // a.a
        public final void v0(int r22, Bundle bundle) {
            b bVar = b.this;
            bVar.getClass();
            bVar.a(r22, bundle);
        }
    }

    public b(Parcel parcel) {
        a.a c0001a;
        IBinder strongBinder = parcel.readStrongBinder();
        int r02 = a.AbstractBinderC0000a.f0a;
        if (strongBinder == null) {
            c0001a = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            c0001a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a.a)) ? new a.AbstractBinderC0000a.C0001a(strongBinder) : (a.a) iInterfaceQueryLocalInterface;
        }
        this.f2a = c0001a;
    }

    public void a(int r12, Bundle bundle) {
    }

    public final void b(int r22, Bundle bundle) {
        a.a aVar = this.f2a;
        if (aVar != null) {
            try {
                aVar.v0(r22, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int r22) {
        synchronized (this) {
            if (this.f2a == null) {
                this.f2a = new BinderC0002b();
            }
            parcel.writeStrongBinder(this.f2a.asBinder());
        }
    }
}
