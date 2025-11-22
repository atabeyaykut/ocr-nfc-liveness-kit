package r3;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes.dex */
public final class e1 implements Parcelable.Creator {
    public static void a(g gVar, Parcel parcel, int r52) {
        int r02 = s3.c.r(parcel, 20293);
        s3.c.j(parcel, 1, gVar.f13969a);
        s3.c.j(parcel, 2, gVar.f13970b);
        s3.c.j(parcel, 3, gVar.f13971c);
        s3.c.n(parcel, 4, gVar.f13972d);
        s3.c.i(parcel, 5, gVar.f13973e);
        s3.c.p(parcel, 6, gVar.f, r52);
        s3.c.b(parcel, 7, gVar.f13974g);
        s3.c.m(parcel, 8, gVar.f13975h, r52);
        s3.c.p(parcel, 10, gVar.f13976j, r52);
        s3.c.p(parcel, 11, gVar.f13977k, r52);
        s3.c.a(parcel, 12, gVar.f13978l);
        s3.c.j(parcel, 13, gVar.f13979m);
        s3.c.a(parcel, 14, gVar.f13980n);
        s3.c.n(parcel, 15, gVar.f13981p);
        s3.c.s(parcel, r02);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int r12 = s3.b.u(parcel);
        Scope[] scopeArr = g.f13967q;
        Bundle bundle = new Bundle();
        m3.d[] dVarArr = g.f13968r;
        m3.d[] dVarArr2 = dVarArr;
        String strF = null;
        IBinder iBinderP = null;
        Account account = null;
        String strF2 = null;
        int r82 = 0;
        int r92 = 0;
        int r10 = 0;
        boolean zK = false;
        int r19 = 0;
        boolean zK2 = false;
        while (parcel.dataPosition() < r12) {
            int r22 = parcel.readInt();
            switch ((char) r22) {
                case 1:
                    r82 = s3.b.q(parcel, r22);
                    break;
                case 2:
                    r92 = s3.b.q(parcel, r22);
                    break;
                case 3:
                    r10 = s3.b.q(parcel, r22);
                    break;
                case 4:
                    strF = s3.b.f(parcel, r22);
                    break;
                case 5:
                    iBinderP = s3.b.p(parcel, r22);
                    break;
                case 6:
                    scopeArr = (Scope[]) s3.b.h(parcel, r22, Scope.CREATOR);
                    break;
                case 7:
                    bundle = s3.b.a(parcel, r22);
                    break;
                case '\b':
                    account = (Account) s3.b.e(parcel, r22, Account.CREATOR);
                    break;
                case '\t':
                default:
                    s3.b.t(parcel, r22);
                    break;
                case '\n':
                    dVarArr = (m3.d[]) s3.b.h(parcel, r22, m3.d.CREATOR);
                    break;
                case 11:
                    dVarArr2 = (m3.d[]) s3.b.h(parcel, r22, m3.d.CREATOR);
                    break;
                case '\f':
                    zK = s3.b.k(parcel, r22);
                    break;
                case '\r':
                    r19 = s3.b.q(parcel, r22);
                    break;
                case 14:
                    zK2 = s3.b.k(parcel, r22);
                    break;
                case 15:
                    strF2 = s3.b.f(parcel, r22);
                    break;
            }
        }
        s3.b.j(parcel, r12);
        return new g(r82, r92, r10, strF, iBinderP, scopeArr, bundle, account, dVarArr, dVarArr2, zK, r19, zK2, strF2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int r12) {
        return new g[r12];
    }
}
