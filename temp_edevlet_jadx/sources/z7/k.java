package z7;

import android.content.Context;
import android.media.Image;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.ArrayList;
import p4.o7;
import p4.rb;
import p4.s0;
import p4.v9;
import r3.r;

/* loaded from: classes2.dex */
public final class k implements f {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19876a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f19877b;

    /* renamed from: c, reason: collision with root package name */
    public final p4.e f19878c;

    /* renamed from: d, reason: collision with root package name */
    public final v9 f19879d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public p4.g f19880e;

    public k(Context context, x7.c cVar, v9 v9Var) {
        p4.e eVar = new p4.e();
        this.f19878c = eVar;
        this.f19877b = context;
        eVar.f12313a = cVar.f19183a;
        this.f19879d = v9Var;
    }

    @Override // z7.f
    @WorkerThread
    public final ArrayList a(a8.a aVar) throws r7.a {
        rb[] rbVarArrZ0;
        z3.d dVar;
        if (this.f19880e == null) {
            c();
        }
        p4.g gVar = this.f19880e;
        if (gVar == null) {
            throw new r7.a("Error initializing the legacy barcode scanner.", 14);
        }
        p4.k kVar = new p4.k(aVar.f133d, aVar.f134e, 0, b8.b.a(aVar.f), 0L);
        try {
            int r12 = aVar.f135g;
            if (r12 != -1) {
                if (r12 == 17) {
                    dVar = new z3.d(aVar.f131b);
                } else if (r12 == 35) {
                    Image.Plane[] planeArrB = aVar.b();
                    r.i(planeArrB);
                    kVar.f12442a = planeArrB[0].getRowStride();
                    dVar = new z3.d(planeArrB[0].getBuffer());
                } else {
                    if (r12 != 842094169) {
                        int r10 = aVar.f135g;
                        StringBuilder sb2 = new StringBuilder(37);
                        sb2.append("Unsupported image format: ");
                        sb2.append(r10);
                        throw new r7.a(sb2.toString(), 3);
                    }
                    dVar = new z3.d(b8.c.a(aVar));
                }
                rbVarArrZ0 = gVar.z0(dVar, kVar);
            } else {
                z3.d dVar2 = new z3.d(aVar.f130a);
                Parcel parcelW0 = gVar.w0();
                int r22 = s0.f12665a;
                parcelW0.writeStrongBinder(dVar2);
                parcelW0.writeInt(1);
                kVar.writeToParcel(parcelW0, 0);
                Parcel parcelX0 = gVar.x0(parcelW0, 2);
                rb[] rbVarArr = (rb[]) parcelX0.createTypedArray(rb.CREATOR);
                parcelX0.recycle();
                rbVarArrZ0 = rbVarArr;
            }
            ArrayList arrayList = new ArrayList();
            for (rb rbVar : rbVarArrZ0) {
                arrayList.add(new x7.a(new j(rbVar)));
            }
            return arrayList;
        } catch (RemoteException e10) {
            throw new r7.a("Failed to detect with legacy barcode detector", e10);
        }
    }

    @Override // z7.f
    @WorkerThread
    public final void b() {
        p4.g gVar = this.f19880e;
        if (gVar != null) {
            try {
                gVar.y0(gVar.w0(), 3);
            } catch (RemoteException e10) {
                Log.e("LegacyBarcodeScanner", "Failed to release legacy barcode detector.", e10);
            }
            this.f19880e = null;
        }
    }

    @Override // z7.f
    @WorkerThread
    public final boolean c() throws r7.a {
        p4.j hVar;
        Context context = this.f19877b;
        if (this.f19880e != null) {
            return false;
        }
        try {
            IBinder iBinderB = DynamiteModule.c(context, DynamiteModule.f3001b, "com.google.android.gms.vision.dynamite").b("com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator");
            int r32 = p4.i.f12395a;
            if (iBinderB == null) {
                hVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
                hVar = iInterfaceQueryLocalInterface instanceof p4.j ? (p4.j) iInterfaceQueryLocalInterface : new p4.h(iBinderB);
            }
            p4.g gVarI = hVar.I(new z3.d(context), this.f19878c);
            this.f19880e = gVarI;
            v9 v9Var = this.f19879d;
            if (gVarI == null && !this.f19876a) {
                Log.d("LegacyBarcodeScanner", "Request optional module download.");
                v7.k.a(context, "barcode");
                this.f19876a = true;
                a.c(v9Var, o7.OPTIONAL_MODULE_NOT_AVAILABLE);
                throw new r7.a("Waiting for the barcode module to be downloaded. Please wait.", 14);
            }
            a.c(v9Var, o7.NO_ERROR);
            return false;
        } catch (RemoteException e10) {
            throw new r7.a("Failed to create legacy barcode detector.", e10);
        } catch (DynamiteModule.a e11) {
            throw new r7.a("Failed to load deprecated vision dynamite module.", e11);
        }
    }
}
