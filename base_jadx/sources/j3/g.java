package j3;

import android.accounts.Account;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import n3.d;

/* loaded from: classes.dex */
public final class g extends r3.h<q> {
    public final GoogleSignInOptions B;

    public g(Context context, Looper looper, r3.e eVar, @Nullable GoogleSignInOptions googleSignInOptions, d.a aVar, d.b bVar) {
        HashSet hashSet;
        HashMap map;
        Account account;
        String str;
        String str2;
        boolean z10;
        boolean z11;
        boolean z12;
        super(context, looper, 91, eVar, aVar, bVar);
        if (googleSignInOptions != null) {
            new HashSet();
            new HashMap();
            hashSet = new HashSet(googleSignInOptions.f2951b);
            HashMap mapZ = GoogleSignInOptions.Z(googleSignInOptions.f2957j);
            boolean z13 = googleSignInOptions.f2954e;
            boolean z14 = googleSignInOptions.f;
            boolean z15 = googleSignInOptions.f2953d;
            String str3 = googleSignInOptions.f2955g;
            Account account2 = googleSignInOptions.f2952c;
            str2 = googleSignInOptions.f2956h;
            map = mapZ;
            z11 = z13;
            z12 = z14;
            z10 = z15;
            str = str3;
            account = account2;
        } else {
            hashSet = new HashSet();
            map = new HashMap();
            account = null;
            str = null;
            str2 = null;
            z10 = false;
            z11 = false;
            z12 = false;
        }
        byte[] bArr = new byte[16];
        f4.b.f5520a.nextBytes(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 11);
        Set set = eVar.f13946c;
        if (!set.isEmpty()) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                hashSet.add((Scope) it.next());
                hashSet.addAll(Arrays.asList(new Scope[0]));
            }
        }
        if (hashSet.contains(GoogleSignInOptions.f2948q)) {
            Scope scope = GoogleSignInOptions.f2947p;
            if (hashSet.contains(scope)) {
                hashSet.remove(scope);
            }
        }
        if (z10 && (account == null || !hashSet.isEmpty())) {
            hashSet.add(GoogleSignInOptions.f2946n);
        }
        this.B = new GoogleSignInOptions(3, new ArrayList(hashSet), account, z10, z11, z12, str, str2, map, strEncodeToString);
    }

    @Override // r3.c
    public final int l() {
        return 12451000;
    }

    @Override // r3.c
    public final /* bridge */ /* synthetic */ IInterface q(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof q ? (q) iInterfaceQueryLocalInterface : new q(iBinder);
    }

    @Override // r3.c
    public final String x() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override // r3.c
    public final String y() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }
}
