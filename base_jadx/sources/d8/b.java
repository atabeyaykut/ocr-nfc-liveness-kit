package d8;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.DynamiteModule;
import s4.g7;
import s4.g8;
import s4.k6;
import s4.l5;
import s4.y9;
import v7.k;

/* loaded from: classes2.dex */
public final class b implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4696a;

    /* renamed from: b, reason: collision with root package name */
    public final y9 f4697b = new y9(null);

    /* renamed from: c, reason: collision with root package name */
    public boolean f4698c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public l5 f4699d;

    public b(Context context) {
        this.f4696a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0310  */
    @Override // d8.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final c8.a a(a8.a r32) throws java.io.IOException, r7.a {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d8.b.a(a8.a):c8.a");
    }

    @Override // d8.e
    public final void b() throws r7.a {
        g8 k6Var;
        Context context = this.f4696a;
        if (this.f4699d == null) {
            try {
                IBinder iBinderB = DynamiteModule.c(context, DynamiteModule.f3001b, "com.google.android.gms.vision.dynamite").b("com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator");
                int r22 = g7.f15018a;
                if (iBinderB == null) {
                    k6Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator");
                    k6Var = iInterfaceQueryLocalInterface instanceof g8 ? (g8) iInterfaceQueryLocalInterface : new k6(iBinderB);
                }
                l5 l5VarE0 = k6Var.e0(new z3.d(context), this.f4697b);
                this.f4699d = l5VarE0;
                if (l5VarE0 != null || this.f4698c) {
                    return;
                }
                Log.d("LegacyTextDelegate", "Request OCR optional module download.");
                k.a(context, "ocr");
                this.f4698c = true;
            } catch (RemoteException e10) {
                throw new r7.a("Failed to create legacy text recognizer.", e10);
            } catch (DynamiteModule.a e11) {
                throw new r7.a("Failed to load deprecated vision dynamite module.", e11);
            }
        }
    }

    @Override // d8.e
    public final void c() {
        l5 l5Var = this.f4699d;
        if (l5Var != null) {
            try {
                l5Var.y0(l5Var.w0(), 2);
            } catch (RemoteException e10) {
                Log.e("LegacyTextDelegate", "Failed to release legacy text recognizer.", e10);
            }
            this.f4699d = null;
        }
    }
}
