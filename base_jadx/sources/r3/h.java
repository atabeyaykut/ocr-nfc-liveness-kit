package r3;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import n3.a;

/* loaded from: classes.dex */
public abstract class h<T extends IInterface> extends c<T> implements a.e {

    @Nullable
    public final Account A;

    /* renamed from: y, reason: collision with root package name */
    public final e f13984y;

    /* renamed from: z, reason: collision with root package name */
    public final Set f13985z;

    /* JADX WARN: Illegal instructions before constructor call */
    public h(@NonNull Context context, @NonNull Looper looper, int r12, @NonNull e eVar, @NonNull o3.c cVar, @NonNull o3.j jVar) {
        j1 j1VarA = i.a(context);
        m3.e eVar2 = m3.e.f9944d;
        r.i(cVar);
        r.i(jVar);
        super(context, looper, j1VarA, eVar2, r12, new e0(cVar), new f0(jVar), eVar.f);
        this.f13984y = eVar;
        this.A = eVar.f13944a;
        Set set = eVar.f13946c;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.f13985z = set;
    }

    @Override // n3.a.e
    @NonNull
    public final Set<Scope> b() {
        return o() ? this.f13985z : Collections.emptySet();
    }

    @Override // r3.c
    @Nullable
    public final Account r() {
        return this.A;
    }

    @Override // r3.c
    @Nullable
    public final void t() {
    }

    @Override // r3.c
    @NonNull
    public final Set<Scope> v() {
        return this.f13985z;
    }
}
