package l4;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import b4.e;
import z3.b;

/* loaded from: classes.dex */
public class a extends Binder implements IInterface {
    public a() {
        attachInterface(this, "com.google.android.gms.flags.IFlagProvider");
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int r42, Parcel parcel, Parcel parcel2, int r72) throws RemoteException {
        boolean zOnTransact;
        if (r42 > 16777215) {
            zOnTransact = super.onTransact(r42, parcel, parcel2, r72);
        } else {
            parcel.enforceInterface(getInterfaceDescriptor());
            zOnTransact = false;
        }
        if (zOnTransact) {
            return true;
        }
        e eVar = (e) this;
        if (r42 == 1) {
            eVar.init(b.a.x0(parcel.readStrongBinder()));
            parcel2.writeNoException();
        } else if (r42 == 2) {
            String string = parcel.readString();
            int r22 = b.f9390a;
            boolean booleanFlagValue = eVar.getBooleanFlagValue(string, parcel.readInt() != 0, parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(booleanFlagValue ? 1 : 0);
        } else if (r42 == 3) {
            int intFlagValue = eVar.getIntFlagValue(parcel.readString(), parcel.readInt(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeInt(intFlagValue);
        } else if (r42 == 4) {
            long longFlagValue = eVar.getLongFlagValue(parcel.readString(), parcel.readLong(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeLong(longFlagValue);
        } else {
            if (r42 != 5) {
                return false;
            }
            String stringFlagValue = eVar.getStringFlagValue(parcel.readString(), parcel.readString(), parcel.readInt());
            parcel2.writeNoException();
            parcel2.writeString(stringFlagValue);
        }
        return true;
    }
}
