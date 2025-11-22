package z7;

import android.content.Context;
import android.media.Image;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import p4.db;
import p4.fb;
import p4.gb;
import p4.hb;
import p4.nb;
import p4.o7;
import p4.s0;
import p4.ta;
import p4.v9;
import p4.va;
import r3.r;

/* loaded from: classes2.dex */
public final class i implements f {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19869a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19870b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19871c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f19872d;

    /* renamed from: e, reason: collision with root package name */
    public final x7.c f19873e;
    public final v9 f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public db f19874g;

    public i(Context context, x7.c cVar, v9 v9Var) {
        this.f19872d = context;
        this.f19873e = cVar;
        this.f = v9Var;
    }

    @Override // z7.f
    @WorkerThread
    public final ArrayList a(a8.a aVar) throws r7.a {
        if (this.f19874g == null) {
            c();
        }
        db dbVar = this.f19874g;
        r.i(dbVar);
        if (!this.f19869a) {
            try {
                dbVar.y0(dbVar.w0(), 1);
                this.f19869a = true;
            } catch (RemoteException e10) {
                throw new r7.a("Failed to init barcode scanner.", e10);
            }
        }
        int rowStride = aVar.f133d;
        if (aVar.f135g == 35) {
            Image.Plane[] planeArrB = aVar.b();
            r.i(planeArrB);
            rowStride = planeArrB[0].getRowStride();
        }
        nb nbVar = new nb(aVar.f135g, rowStride, aVar.f134e, b8.b.a(aVar.f), SystemClock.elapsedRealtime());
        b8.d.f1176a.getClass();
        z3.d dVarA = b8.d.a(aVar);
        try {
            Parcel parcelW0 = dbVar.w0();
            int r42 = s0.f12665a;
            parcelW0.writeStrongBinder(dVarA);
            parcelW0.writeInt(1);
            nbVar.writeToParcel(parcelW0, 0);
            Parcel parcelX0 = dbVar.x0(parcelW0, 3);
            ArrayList arrayListCreateTypedArrayList = parcelX0.createTypedArrayList(ta.CREATOR);
            parcelX0.recycle();
            ArrayList arrayList = new ArrayList();
            Iterator it = arrayListCreateTypedArrayList.iterator();
            while (it.hasNext()) {
                arrayList.add(new x7.a(new h((ta) it.next())));
            }
            return arrayList;
        } catch (RemoteException e11) {
            throw new r7.a("Failed to run barcode scanner.", e11);
        }
    }

    @Override // z7.f
    @WorkerThread
    public final void b() {
        db dbVar = this.f19874g;
        if (dbVar != null) {
            try {
                dbVar.y0(dbVar.w0(), 2);
            } catch (RemoteException e10) {
                Log.e("DecoupledBarcodeScanner", "Failed to release barcode scanner.", e10);
            }
            this.f19874g = null;
            this.f19869a = false;
        }
    }

    @Override // z7.f
    @WorkerThread
    public final boolean c() throws r7.a {
        if (this.f19874g != null) {
            return this.f19870b;
        }
        Context context = this.f19872d;
        boolean z10 = DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) > 0;
        v9 v9Var = this.f;
        if (z10) {
            this.f19870b = true;
            try {
                this.f19874g = d(DynamiteModule.f3002c, ModuleDescriptor.MODULE_ID, "com.google.mlkit.vision.barcode.bundled.internal.ThickBarcodeScannerCreator");
            } catch (RemoteException e10) {
                throw new r7.a("Failed to create thick barcode scanner.", e10);
            } catch (DynamiteModule.a e11) {
                throw new r7.a("Failed to load the bundled barcode module.", e11);
            }
        } else {
            this.f19870b = false;
            try {
                this.f19874g = d(DynamiteModule.f3001b, "com.google.android.gms.vision.barcode", "com.google.android.gms.vision.barcode.mlkit.BarcodeScannerCreator");
            } catch (RemoteException e12) {
                a.c(v9Var, o7.OPTIONAL_MODULE_INIT_ERROR);
                throw new r7.a("Failed to create thin barcode scanner.", e12);
            } catch (DynamiteModule.a unused) {
                if (!this.f19871c) {
                    v7.k.a(context, "barcode");
                    this.f19871c = true;
                }
                a.c(v9Var, o7.OPTIONAL_MODULE_NOT_AVAILABLE);
                throw new r7.a("Waiting for the barcode module to be downloaded. Please wait.", 14);
            }
        }
        a.c(v9Var, o7.NO_ERROR);
        return this.f19870b;
    }

    @VisibleForTesting
    public final db d(DynamiteModule.b bVar, String str, String str2) throws DynamiteModule.a, RemoteException {
        hb fbVar;
        Context context = this.f19872d;
        IBinder iBinderB = DynamiteModule.c(context, bVar, str).b(str2);
        int r32 = gb.f12372a;
        if (iBinderB == null) {
            fbVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinderB.queryLocalInterface("com.google.mlkit.vision.barcode.aidls.IBarcodeScannerCreator");
            fbVar = iInterfaceQueryLocalInterface instanceof hb ? (hb) iInterfaceQueryLocalInterface : new fb(iBinderB);
        }
        return fbVar.x(new z3.d(context), new va(this.f19873e.f19183a));
    }
}
