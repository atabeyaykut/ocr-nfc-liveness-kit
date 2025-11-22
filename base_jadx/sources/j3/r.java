package j3;

import android.content.Context;
import android.os.Binder;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import o3.e0;
import r3.i0;

/* loaded from: classes.dex */
public final class r extends f4.c {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7995a;

    public r(Context context) {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
        this.f7995a = context;
    }

    @Override // f4.c
    public final boolean w0(int r6, Parcel parcel, Parcel parcel2) {
        BasePendingResult basePendingResult;
        BasePendingResult basePendingResult2;
        Context context = this.f7995a;
        if (r6 != 1) {
            if (r6 != 2) {
                return false;
            }
            x0();
            n.a(context).b();
            return true;
        }
        x0();
        b bVarA = b.a(context);
        GoogleSignInAccount googleSignInAccountB = bVarA.b();
        GoogleSignInOptions googleSignInOptionsC = GoogleSignInOptions.f2945m;
        if (googleSignInAccountB != null) {
            googleSignInOptionsC = bVarA.c();
        }
        r3.r.i(googleSignInOptionsC);
        i3.a aVar = new i3.a(context, googleSignInOptionsC);
        e0 e0Var = aVar.f10552h;
        Context context2 = aVar.f10546a;
        if (googleSignInAccountB == null) {
            boolean z10 = aVar.d() == 3;
            m.f7992a.a("Signing out", new Object[0]);
            m.a(context2);
            if (z10) {
                Status status = Status.f;
                if (status == null) {
                    throw new NullPointerException("Result must not be null");
                }
                BasePendingResult lVar = new o3.l(e0Var);
                lVar.e(status);
                basePendingResult = lVar;
            } else {
                i iVar = new i(e0Var);
                e0Var.f11124b.b(1, iVar);
                basePendingResult = iVar;
            }
            basePendingResult.a(new i0(basePendingResult, new h5.l(), new a6.a()));
            return true;
        }
        boolean z11 = aVar.d() == 3;
        m.f7992a.a("Revoking access", new Object[0]);
        String strE = b.a(context2).e("refreshToken");
        m.a(context2);
        if (!z11) {
            k kVar = new k(e0Var);
            e0Var.f11124b.b(1, kVar);
            basePendingResult2 = kVar;
        } else if (strE == null) {
            u3.a aVar2 = e.f7985c;
            Status status2 = new Status(4, null);
            r3.r.b(!(status2.f2979b <= 0), "Status code must not be SUCCESS");
            BasePendingResult kVar2 = new n3.k(status2);
            kVar2.e(status2);
            basePendingResult2 = kVar2;
        } else {
            e eVar = new e(strE);
            new Thread(eVar).start();
            basePendingResult2 = eVar.f7987b;
        }
        basePendingResult2.a(new i0(basePendingResult2, new h5.l(), new a6.a()));
        return true;
    }

    public final void x0() {
        if (w3.g.a(Binder.getCallingUid(), this.f7995a)) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        StringBuilder sb2 = new StringBuilder(52);
        sb2.append("Calling UID ");
        sb2.append(callingUid);
        sb2.append(" is not Google Play services.");
        throw new SecurityException(sb2.toString());
    }
}
