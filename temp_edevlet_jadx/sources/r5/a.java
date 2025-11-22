package r5;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import b8.f;
import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.x;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;
import n5.g;
import n5.h;
import n5.r;
import u5.i0;
import u5.j0;
import u5.z;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f14317c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final n5.a f14318a;

    /* renamed from: b, reason: collision with root package name */
    public final h f14319b;

    /* renamed from: r5.a$a, reason: collision with other inner class name */
    public static final class C0237a {

        /* renamed from: a, reason: collision with root package name */
        public d f14320a = null;

        /* renamed from: b, reason: collision with root package name */
        public e f14321b = null;

        /* renamed from: c, reason: collision with root package name */
        public String f14322c = null;

        /* renamed from: d, reason: collision with root package name */
        public b f14323d = null;

        /* renamed from: e, reason: collision with root package name */
        public n5.e f14324e = null;
        public h f;

        public final synchronized a a() throws GeneralSecurityException, IOException {
            if (this.f14322c != null) {
                this.f14323d = c();
            }
            this.f = b();
            return new a(this);
        }

        public final h b() throws GeneralSecurityException, InterruptedException, IOException {
            try {
                b bVar = this.f14323d;
                if (bVar != null) {
                    try {
                        g gVarB = g.b(this.f14320a, bVar);
                        x.f fVar = x.f.NEW_BUILDER;
                        i0 i0Var = gVarB.f10575a;
                        x.a aVar = (x.a) i0Var.l(fVar);
                        aVar.k();
                        x.a.l(aVar.f4393b, i0Var);
                        return new h((i0.a) aVar);
                    } catch (a0 | GeneralSecurityException e10) {
                        int r12 = a.f14317c;
                        Log.w("a", "cannot decrypt keyset: ", e10);
                    }
                }
                i0 i0VarA = i0.A(this.f14320a.a(), p.a());
                if (i0VarA.w() <= 0) {
                    throw new GeneralSecurityException("empty keyset");
                }
                x.a aVar2 = (x.a) i0VarA.l(x.f.NEW_BUILDER);
                aVar2.k();
                x.a.l(aVar2.f4393b, i0VarA);
                return new h((i0.a) aVar2);
            } catch (FileNotFoundException e11) {
                int r13 = a.f14317c;
                Log.w("a", "keyset not found, will generate a new one", e11);
                if (this.f14324e == null) {
                    throw new GeneralSecurityException("cannot read or generate keyset");
                }
                h hVar = new h(i0.z());
                n5.e eVar = this.f14324e;
                synchronized (hVar) {
                    hVar.a(eVar.f10569a);
                    hVar.g(r.a(hVar.b().f10575a).v().x());
                    if (this.f14323d != null) {
                        g gVarB2 = hVar.b();
                        e eVar2 = this.f14321b;
                        b bVar2 = this.f14323d;
                        i0 i0Var2 = gVarB2.f10575a;
                        byte[] bArrA = bVar2.a(i0Var2.toByteArray(), new byte[0]);
                        try {
                            if (!i0.A(bVar2.b(bArrA, new byte[0]), p.a()).equals(i0Var2)) {
                                throw new GeneralSecurityException("cannot encrypt keyset");
                            }
                            z.a aVarW = z.w();
                            i.f fVarM = i.m(bArrA, 0, bArrA.length);
                            aVarW.k();
                            z.t((z) aVarW.f4393b, fVarM);
                            j0 j0VarA = r.a(i0Var2);
                            aVarW.k();
                            z.u((z) aVarW.f4393b, j0VarA);
                            z zVarI = aVarW.i();
                            eVar2.getClass();
                            if (!eVar2.f14331a.putString(eVar2.f14332b, f.B(zVarI.toByteArray())).commit()) {
                                throw new IOException("Failed to write to SharedPreferences");
                            }
                        } catch (a0 unused) {
                            throw new GeneralSecurityException("invalid keyset, corrupted key material");
                        }
                    } else {
                        g gVarB3 = hVar.b();
                        e eVar3 = this.f14321b;
                        i0 i0Var3 = gVarB3.f10575a;
                        eVar3.getClass();
                        if (!eVar3.f14331a.putString(eVar3.f14332b, f.B(i0Var3.toByteArray())).commit()) {
                            throw new IOException("Failed to write to SharedPreferences");
                        }
                    }
                    return hVar;
                }
            }
        }

        public final b c() throws GeneralSecurityException {
            int r02 = a.f14317c;
            if (!(Build.VERSION.SDK_INT >= 23)) {
                Log.w("a", "Android Keystore requires at least Android M");
                return null;
            }
            c cVar = new c();
            boolean zD = cVar.d(this.f14322c);
            if (!zD) {
                try {
                    c.c(this.f14322c);
                } catch (GeneralSecurityException | ProviderException e10) {
                    int r22 = a.f14317c;
                    Log.w("a", "cannot use Android Keystore, it'll be disabled", e10);
                    return null;
                }
            }
            try {
                return cVar.b(this.f14322c);
            } catch (GeneralSecurityException | ProviderException e11) {
                if (zD) {
                    throw new KeyStoreException(String.format("the master key %s exists but is unusable", this.f14322c), e11);
                }
                int r23 = a.f14317c;
                Log.w("a", "cannot use Android Keystore, it'll be disabled", e11);
                return null;
            }
        }

        public final void d(String str) {
            if (!str.startsWith("android-keystore://")) {
                throw new IllegalArgumentException("key URI must start with android-keystore://");
            }
            this.f14322c = str;
        }

        public final void e(Context context, String str, String str2) throws IOException {
            if (context == null) {
                throw new IllegalArgumentException("need an Android context");
            }
            if (str == null) {
                throw new IllegalArgumentException("need a keyset name");
            }
            this.f14320a = new d(context, str, str2);
            this.f14321b = new e(context, str, str2);
        }
    }

    public a(C0237a c0237a) throws GeneralSecurityException, IOException {
        e eVar = c0237a.f14321b;
        this.f14318a = c0237a.f14323d;
        this.f14319b = c0237a.f;
    }

    public final synchronized g a() throws GeneralSecurityException {
        return this.f14319b.b();
    }
}
