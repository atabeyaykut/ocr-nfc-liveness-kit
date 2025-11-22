package android.support.v4.media.session;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21;

/* loaded from: classes.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        /* renamed from: android.support.v4.media.session.b$a$a, reason: collision with other inner class name */
        public static class C0025a implements b {

            /* renamed from: a, reason: collision with root package name */
            public final IBinder f424a;

            public C0025a(IBinder iBinder) {
                this.f424a = iBinder;
            }

            @Override // android.support.v4.media.session.b
            public final void J(MediaControllerCompat$MediaControllerImplApi21.a aVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    parcelObtain.writeStrongBinder(aVar);
                    this.f424a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f424a;
            }
        }

        public static b w0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0025a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }
    }

    void J(MediaControllerCompat$MediaControllerImplApi21.a aVar) throws RemoteException;
}
