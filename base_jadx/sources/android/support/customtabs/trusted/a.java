package android.support.customtabs.trusted;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: android.support.customtabs.trusted.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0018a extends Binder implements a {
        private static final String DESCRIPTOR = "android.support.customtabs.trusted.ITrustedWebActivityCallback";
        static final int TRANSACTION_onExtraCallback = 2;

        /* renamed from: android.support.customtabs.trusted.a$a$a, reason: collision with other inner class name */
        public static class C0019a implements a {

            /* renamed from: b, reason: collision with root package name */
            public static a f354b;

            /* renamed from: a, reason: collision with root package name */
            public final IBinder f355a;

            public C0019a(IBinder iBinder) {
                this.f355a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f355a;
            }

            @Override // android.support.customtabs.trusted.a
            public final void onExtraCallback(String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(AbstractBinderC0018a.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f355a.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0018a.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0018a.getDefaultImpl().onExtraCallback(str, bundle);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0018a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static a asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0019a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        public static a getDefaultImpl() {
            return C0019a.f354b;
        }

        public static boolean setDefaultImpl(a aVar) {
            if (C0019a.f354b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (aVar == null) {
                return false;
            }
            C0019a.f354b = aVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int r42, Parcel parcel, Parcel parcel2, int r72) throws RemoteException {
            if (r42 != 2) {
                if (r42 != 1598968902) {
                    return super.onTransact(r42, parcel, parcel2, r72);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            onExtraCallback(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }
    }

    void onExtraCallback(String str, Bundle bundle) throws RemoteException;
}
