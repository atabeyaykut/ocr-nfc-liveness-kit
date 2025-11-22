package m3;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.errorprone.annotations.CheckReturnValue;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;
import r3.q0;
import r3.r0;
import r3.s0;

@CheckReturnValue
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public static final s f9974a;

    /* renamed from: b, reason: collision with root package name */
    public static final t f9975b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile s0 f9976c;

    /* renamed from: d, reason: collision with root package name */
    public static final Object f9977d;

    /* renamed from: e, reason: collision with root package name */
    public static Context f9978e;

    static {
        new q(u.x0("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));
        new r(u.x0("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));
        f9974a = new s(u.x0("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));
        f9975b = new t(u.x0("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));
        f9977d = new Object();
    }

    public static synchronized void a(Context context) {
        if (f9978e != null) {
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        } else if (context != null) {
            f9978e = context.getApplicationContext();
        }
    }

    /* JADX WARN: Type inference failed for: r9v3, types: [m3.p] */
    public static g0 b(final String str, final u uVar, final boolean z10, boolean z11) {
        try {
            c();
            r3.r.i(f9978e);
            try {
                return f9976c.s(new d0(str, uVar, z10, z11), new z3.d(f9978e.getPackageManager())) ? g0.f9949d : new f0(new Callable() { // from class: m3.p
                    @Override // java.util.concurrent.Callable
                    public final Object call() throws NoSuchAlgorithmException {
                        MessageDigest messageDigest;
                        boolean z12 = z10;
                        String str2 = str;
                        u uVar2 = uVar;
                        Object[] objArr = new Object[5];
                        objArr[0] = true != (!z12 && y.b(str2, uVar2, true, false).f9950a) ? "not allowed" : "debug cert rejected";
                        objArr[1] = str2;
                        int r32 = 0;
                        while (true) {
                            if (r32 >= 2) {
                                messageDigest = null;
                                break;
                            }
                            try {
                                messageDigest = MessageDigest.getInstance("SHA-256");
                            } catch (NoSuchAlgorithmException unused) {
                            }
                            if (messageDigest != null) {
                                break;
                            }
                            r32++;
                        }
                        r3.r.i(messageDigest);
                        byte[] bArrDigest = messageDigest.digest(uVar2.y0());
                        int length = bArrDigest.length;
                        char[] cArr = new char[length + length];
                        int r42 = 0;
                        for (byte b10 : bArrDigest) {
                            int r72 = b10 & 255;
                            int r82 = r42 + 1;
                            char[] cArr2 = b8.f.f1186k;
                            cArr[r42] = cArr2[r72 >>> 4];
                            r42 = r82 + 1;
                            cArr[r82] = cArr2[r72 & 15];
                        }
                        objArr[2] = new String(cArr);
                        objArr[3] = Boolean.valueOf(z12);
                        objArr[4] = "12451000.false";
                        return String.format("%s: pkg=%s, sha256=%s, atk=%s, ver=%s", objArr);
                    }
                });
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
                return new g0(false, "module call", e10);
            }
        } catch (DynamiteModule.a e11) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e11);
            return new g0(false, "module init: ".concat(String.valueOf(e11.getMessage())), e11);
        }
    }

    public static void c() throws DynamiteModule.a {
        s0 q0Var;
        if (f9976c != null) {
            return;
        }
        r3.r.i(f9978e);
        synchronized (f9977d) {
            if (f9976c == null) {
                IBinder iBinderB = DynamiteModule.c(f9978e, DynamiteModule.f3004e, "com.google.android.gms.googlecertificates").b("com.google.android.gms.common.GoogleCertificatesImpl");
                int r22 = r0.f14037a;
                if (iBinderB == null) {
                    q0Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
                    q0Var = iInterfaceQueryLocalInterface instanceof s0 ? (s0) iInterfaceQueryLocalInterface : new q0(iBinderB);
                }
                f9976c = q0Var;
            }
        }
    }
}
