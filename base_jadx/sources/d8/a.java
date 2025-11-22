package d8;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.dynamite.DynamiteModule;
import r3.r;
import s4.f9;
import s4.h9;
import s4.i9;
import s4.j9;
import s4.k9;
import s4.o0;
import s4.r9;
import s4.t9;
import v7.k;

/* loaded from: classes2.dex */
public final class a implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Context f4692a;

    /* renamed from: b, reason: collision with root package name */
    public final c8.e f4693b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4694c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public h9 f4695d;

    public a(Context context, c8.e eVar) {
        this.f4692a = context;
        this.f4693b = eVar;
    }

    @Override // d8.e
    @WorkerThread
    public final c8.a a(a8.a aVar) throws r7.a {
        String strConcat;
        if (this.f4695d == null) {
            b();
        }
        h9 h9Var = this.f4695d;
        c8.e eVar = this.f4693b;
        if (h9Var == null) {
            if (eVar.d()) {
                String strValueOf = String.valueOf(eVar.a());
                strConcat = strValueOf.length() != 0 ? "Unable to load thick text recognizer ".concat(strValueOf) : new String("Unable to load thick text recognizer ");
            } else {
                strConcat = "Waiting for the OCR optional module to be downloaded. Please wait.";
            }
            throw new r7.a(strConcat, 14);
        }
        f9 f9Var = new f9(aVar.f135g, aVar.f133d, aVar.f134e, b8.b.a(aVar.f), SystemClock.elapsedRealtime());
        b8.d.f1176a.getClass();
        z3.d dVarA = b8.d.a(aVar);
        try {
            h9 h9Var2 = this.f4695d;
            r.i(h9Var2);
            Parcel parcelW0 = h9Var2.w0();
            int r42 = o0.f15116a;
            parcelW0.writeStrongBinder(dVarA);
            parcelW0.writeInt(1);
            f9Var.writeToParcel(parcelW0, 0);
            Parcel parcelX0 = h9Var2.x0(parcelW0, 3);
            r9 r9VarCreateFromParcel = parcelX0.readInt() == 0 ? null : r9.CREATOR.createFromParcel(parcelX0);
            parcelX0.recycle();
            return new c8.a(r9VarCreateFromParcel);
        } catch (RemoteException e10) {
            String strValueOf2 = String.valueOf(eVar.a());
            throw new r7.a(strValueOf2.length() != 0 ? "Failed to run text recognizer ".concat(strValueOf2) : new String("Failed to run text recognizer "), e10);
        }
    }

    @Override // d8.e
    @WorkerThread
    public final void b() throws r7.a {
        k9 i9Var;
        h9 h9VarK;
        Context context = this.f4692a;
        c8.e eVar = this.f4693b;
        if (this.f4695d == null) {
            try {
                IBinder iBinderB = DynamiteModule.c(context, eVar.d() ? DynamiteModule.f3002c : DynamiteModule.f3001b, eVar.f()).b(eVar.c());
                int r52 = j9.f15052a;
                if (iBinderB == null) {
                    i9Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.mlkit.vision.text.aidls.ITextRecognizerCreator");
                    i9Var = iInterfaceQueryLocalInterface instanceof k9 ? (k9) iInterfaceQueryLocalInterface : new i9(iBinderB);
                }
                if (eVar.d()) {
                    z3.d dVar = new z3.d(context);
                    eVar.b();
                    h9VarK = i9Var.n(dVar, new t9(false));
                } else {
                    h9VarK = i9Var.K(new z3.d(context));
                }
                this.f4695d = h9VarK;
                h9VarK.y0(h9VarK.w0(), 1);
            } catch (RemoteException e10) {
                String strValueOf = String.valueOf(eVar.a());
                throw new r7.a(strValueOf.length() != 0 ? "Failed to init text recognizer ".concat(strValueOf) : new String("Failed to init text recognizer "), e10);
            } catch (DynamiteModule.a e11) {
                if (eVar.d()) {
                    throw new r7.a(String.format("Failed to init thick text recognizer %s. %s", eVar.a(), e11.getMessage()), e11);
                }
                if (this.f4694c) {
                    return;
                }
                k.a(context, "ocr");
                this.f4694c = true;
                throw new r7.a("Waiting for the text optional module to be downloaded. Please wait.", 14);
            }
        }
    }

    @Override // d8.e
    @WorkerThread
    public final void c() {
        h9 h9Var = this.f4695d;
        if (h9Var != null) {
            try {
                h9Var.y0(h9Var.w0(), 2);
            } catch (RemoteException e10) {
                String strValueOf = String.valueOf(this.f4693b.a());
                Log.e("DecoupledTextDelegate", strValueOf.length() != 0 ? "Failed to release text recognizer ".concat(strValueOf) : new String("Failed to release text recognizer "), e10);
            }
            this.f4695d = null;
        }
    }
}
