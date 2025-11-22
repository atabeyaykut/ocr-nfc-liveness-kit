package android.support.customtabs;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.customtabs.a;

/* loaded from: classes.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {
        private static final String DESCRIPTOR = "android.support.customtabs.IPostMessageService";
        static final int TRANSACTION_onMessageChannelReady = 2;
        static final int TRANSACTION_onPostMessage = 3;

        /* renamed from: android.support.customtabs.c$a$a, reason: collision with other inner class name */
        public static class C0017a implements c {

            /* renamed from: b, reason: collision with root package name */
            public static c f352b;

            /* renamed from: a, reason: collision with root package name */
            public final IBinder f353a;

            public C0017a(IBinder iBinder) {
                this.f353a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f353a;
            }

            @Override // android.support.customtabs.c
            public final void onMessageChannelReady(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f353a.transact(2, parcelObtain, parcelObtain2, 0) || a.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.getDefaultImpl().onMessageChannelReady(aVar, bundle);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.support.customtabs.c
            public final void onPostMessage(android.support.customtabs.a aVar, String str, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(a.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f353a.transact(3, parcelObtain, parcelObtain2, 0) || a.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.getDefaultImpl().onPostMessage(aVar, str, bundle);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, DESCRIPTOR);
        }

        public static c asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0017a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        public static c getDefaultImpl() {
            return C0017a.f352b;
        }

        public static boolean setDefaultImpl(c cVar) {
            if (C0017a.f352b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (cVar == null) {
                return false;
            }
            C0017a.f352b = cVar;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int r52, Parcel parcel, Parcel parcel2, int r82) throws RemoteException {
            if (r52 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onMessageChannelReady(a.AbstractBinderC0014a.asInterface(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            } else {
                if (r52 != 3) {
                    if (r52 != 1598968902) {
                        return super.onTransact(r52, parcel, parcel2, r82);
                    }
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                parcel.enforceInterface(DESCRIPTOR);
                onPostMessage(a.AbstractBinderC0014a.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            }
            parcel2.writeNoException();
            return true;
        }
    }

    void onMessageChannelReady(android.support.customtabs.a aVar, Bundle bundle) throws RemoteException;

    void onPostMessage(android.support.customtabs.a aVar, String str, Bundle bundle) throws RemoteException;
}
