package c5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public abstract class u2 extends com.google.android.gms.internal.measurement.j0 implements v2 {
    public u2() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.j0
    public final boolean w0(int r82, Parcel parcel, Parcel parcel2) throws RemoteException {
        ArrayList arrayList;
        List listS;
        switch (r82) {
            case 1:
                ((w4) this).h0((s) com.google.android.gms.internal.measurement.k0.a(parcel, s.CREATOR), (y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                ((w4) this).A((r7) com.google.android.gms.internal.measurement.k0.a(parcel, r7.CREATOR), (y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            default:
                return false;
            case 4:
                ((w4) this).d0((y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                s sVar = (s) com.google.android.gms.internal.measurement.k0.a(parcel, s.CREATOR);
                String string = parcel.readString();
                parcel.readString();
                w4 w4Var = (w4) this;
                r3.r.i(sVar);
                r3.r.f(string);
                w4Var.x0(string, true);
                w4Var.y0(new s4(w4Var, sVar, string, ı));
                parcel2.writeNoException();
                return true;
            case 6:
                ((w4) this).C((y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                y7 y7Var = (y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR);
                ı = parcel.readInt() != 0 ? 1 : 0;
                w4 w4Var2 = (w4) this;
                w4Var2.z0(y7Var);
                String str = y7Var.f2153a;
                r3.r.i(str);
                o7 o7Var = w4Var2.f2101a;
                try {
                    List<t7> list = (List) o7Var.l().n(new u4(w4Var2, str)).get();
                    arrayList = new ArrayList(list.size());
                    for (t7 t7Var : list) {
                        if (ı != 0 || !v7.S(t7Var.f2010c)) {
                            arrayList.add(new r7(t7Var));
                        }
                    }
                } catch (InterruptedException | ExecutionException e10) {
                    o7Var.m().f.c(e3.q(str), "Failed to get user properties. appId", e10);
                    arrayList = null;
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayList);
                return true;
            case 9:
                byte[] bArrY = ((w4) this).Y((s) com.google.android.gms.internal.measurement.k0.a(parcel, s.CREATOR), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrY);
                return true;
            case 10:
                ((w4) this).Q(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                String strO = ((w4) this).o((y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                parcel2.writeString(strO);
                return true;
            case 12:
                ((w4) this).q0((b) com.google.android.gms.internal.measurement.k0.a(parcel, b.CREATOR), (y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                b bVar = (b) com.google.android.gms.internal.measurement.k0.a(parcel, b.CREATOR);
                w4 w4Var3 = (w4) this;
                r3.r.i(bVar);
                r3.r.i(bVar.f1402c);
                r3.r.f(bVar.f1400a);
                w4Var3.x0(bVar.f1400a, true);
                w4Var3.y0(new k4(w4Var3, new b(bVar), ı));
                parcel2.writeNoException();
                return true;
            case 14:
                String string2 = parcel.readString();
                String string3 = parcel.readString();
                ClassLoader classLoader = com.google.android.gms.internal.measurement.k0.f3592a;
                listS = ((w4) this).S(string2, string3, parcel.readInt() != 0, (y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listS);
                return true;
            case 15:
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                ClassLoader classLoader2 = com.google.android.gms.internal.measurement.k0.f3592a;
                listS = ((w4) this).q(string4, string5, string6, parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeTypedList(listS);
                return true;
            case 16:
                listS = ((w4) this).b0(parcel.readString(), parcel.readString(), (y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                parcel2.writeTypedList(listS);
                return true;
            case 17:
                listS = ((w4) this).z(parcel.readString(), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeTypedList(listS);
                return true;
            case 18:
                ((w4) this).r((y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
            case 19:
                ((w4) this).p((Bundle) com.google.android.gms.internal.measurement.k0.a(parcel, Bundle.CREATOR), (y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
            case 20:
                ((w4) this).s0((y7) com.google.android.gms.internal.measurement.k0.a(parcel, y7.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
