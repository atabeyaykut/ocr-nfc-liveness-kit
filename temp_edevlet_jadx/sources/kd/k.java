package kd;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import org.altbeacon.beacon.startup.StartupBroadcastReceiver;
import s4.y1;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f8873l = 0;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public ExecutorService f8874a;

    /* renamed from: b, reason: collision with root package name */
    public final gd.e f8875b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public ld.b f8876c;

    /* renamed from: d, reason: collision with root package name */
    public e f8877d;

    /* renamed from: i, reason: collision with root package name */
    public List<gd.c> f8881i;

    /* renamed from: j, reason: collision with root package name */
    public final Context f8882j;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f8878e = new HashMap();
    public final ld.m f = new ld.m();

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public kd.c f8879g = new kd.c(true);

    /* renamed from: h, reason: collision with root package name */
    public Set<gd.g> f8880h = new HashSet();

    /* renamed from: k, reason: collision with root package name */
    public final a f8883k = new a();

    public class a implements ld.a {
        public a() {
        }

        @SuppressLint({"WrongThread"})
        @MainThread
        public final void a() {
            gd.e eVar = gd.e.f6637x;
            if (id.b.f7423b) {
                int r02 = k.f8873l;
                id.b.a("k", "Beacon simulator not enabled", new Object[0]);
            }
            k.this.f.f9795a.clear();
            e eVar2 = k.this.f8877d;
            synchronized (eVar2) {
                if (eVar2.f8853a) {
                    eVar2.e();
                }
                boolean z10 = false;
                for (gd.l lVar : eVar2.f()) {
                    h hVarJ = eVar2.j(lVar);
                    if (hVarJ.a()) {
                        id.b.a("e", "found a monitor that expired: %s", lVar);
                        kd.a aVar = hVarJ.f8868c;
                        Context context = eVar2.f8855c;
                        boolean z11 = hVarJ.f8866a;
                        Bundle bundle = new Bundle();
                        bundle.putSerializable("region", lVar);
                        bundle.putBoolean("inside", z11);
                        aVar.getClass();
                        kd.a.a(context, "monitoringData", bundle);
                        z10 = true;
                    }
                }
                if (z10) {
                    eVar2.i();
                } else {
                    eVar2.f8855c.getFileStreamPath("org.altbeacon.beacon.service.monitoring_status_state").setLastModified(System.currentTimeMillis());
                }
            }
            k.a(k.this);
        }
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f8885a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        public final BluetoothDevice f8886b;

        /* renamed from: c, reason: collision with root package name */
        @NonNull
        public final byte[] f8887c;

        /* renamed from: d, reason: collision with root package name */
        @NonNull
        public final long f8888d;

        public b(@NonNull BluetoothDevice bluetoothDevice, int r32, @NonNull byte[] bArr, long j10) {
            this.f8886b = bluetoothDevice;
            this.f8885a = r32;
            this.f8887c = bArr;
            this.f8888d = j10;
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final b f8890a;

        public c(b bVar) {
            this.f8890a = bVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (id.b.f7423b) {
                int r02 = k.f8873l;
                id.b.a("k", "Processing packet", new Object[0]);
            }
            if (k.this.f8880h.size() > 0) {
                int r03 = k.f8873l;
                id.b.a("k", "Decoding beacon. First parser layout: " + k.this.f8880h.iterator().next().f6667a, new Object[0]);
            } else {
                int r04 = k.f8873l;
                id.b.f("k", "API No beacon parsers registered when decoding beacon", new Object[0]);
            }
            gd.c cVarE = null;
            for (gd.g gVar : k.this.f8880h) {
                b bVar = this.f8890a;
                cVarE = gVar.e(bVar.f8885a, bVar.f8888d, bVar.f8886b, bVar.f8887c);
                if (cVarE != null) {
                    break;
                }
            }
            if (cVarE != null) {
                if (id.b.f7423b) {
                    int r05 = k.f8873l;
                    id.b.a("k", "Beacon packet detected for: " + cVarE + " with rssi " + cVarE.f6621e, new Object[0]);
                }
                kd.b.f8846b.f8847a = SystemClock.elapsedRealtime();
                ld.b bVar2 = k.this.f8876c;
                if (bVar2 != null && !bVar2.w) {
                    ld.m mVar = k.this.f;
                    String address = this.f8890a.f8886b.getAddress();
                    byte[] bArr = this.f8890a.f8887c;
                    mVar.getClass();
                    byte[] bytes = address.getBytes();
                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + bArr.length);
                    byteBufferAllocate.put(bytes);
                    byteBufferAllocate.put(bArr);
                    byteBufferAllocate.rewind();
                    HashSet hashSet = mVar.f9795a;
                    if (!(hashSet.size() == 1000 ? hashSet.contains(byteBufferAllocate) : hashSet.add(byteBufferAllocate))) {
                        int r06 = k.f8873l;
                        id.b.d("k", "Non-distinct packets detected in a single scan.  Restarting scans unecessary.", new Object[0]);
                        k.this.f8876c.w = true;
                    }
                }
                k kVar = k.this;
                kVar.getClass();
                p.f8916c.getClass();
                if (id.b.f7423b) {
                    id.b.a("k", "beacon detected : %s", cVarE.toString());
                }
                gd.c cVarA = kVar.f8879g.a(cVarE);
                if (cVarA == null) {
                    if (id.b.f7423b) {
                        id.b.a("k", "not processing detections for GATT extra data beacon", new Object[0]);
                        return;
                    }
                    return;
                }
                kVar.f8877d.l(cVarA);
                id.b.a("k", "looking for ranging region matches for this beacon", new Object[0]);
                synchronized (kVar.f8878e) {
                    Set<gd.l> setKeySet = kVar.f8878e.keySet();
                    ArrayList arrayList = new ArrayList();
                    for (gd.l lVar : setKeySet) {
                        if (lVar != null) {
                            if (lVar.c(cVarA)) {
                                arrayList.add(lVar);
                            } else {
                                id.b.a("k", "This region (%s) does not match beacon: %s", lVar, cVarA);
                            }
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        gd.l lVar2 = (gd.l) it.next();
                        id.b.a("k", "matches ranging region: %s", lVar2);
                        f fVar = (f) kVar.f8878e.get(lVar2);
                        if (fVar != null) {
                            fVar.a(cVarA);
                        }
                    }
                }
            }
        }
    }

    public k(Context context) {
        id.b.a("k", "new ScanHelper", new Object[0]);
        this.f8882j = context;
        this.f8875b = gd.e.g(context);
    }

    public static void a(k kVar) {
        synchronized (kVar.f8878e) {
            for (gd.l lVar : kVar.f8878e.keySet()) {
                f fVar = (f) kVar.f8878e.get(lVar);
                id.b.a("k", "Calling ranging callback", new Object[0]);
                kd.a aVar = fVar.f8858a;
                Context context = kVar.f8882j;
                Bundle bundleA = new y1(fVar.b(), lVar).a();
                aVar.getClass();
                kd.a.a(context, "rangingData", bundleA);
            }
        }
    }

    public final void b(boolean z10) {
        boolean z11 = true;
        boolean z12 = false;
        if (Build.VERSION.SDK_INT >= 26) {
            id.b.d("CycledLeScanner", "Using Android O scanner", new Object[0]);
        } else if (gd.e.f6638y) {
            id.b.d("CycledLeScanner", "This is Android 5.0, but L scanning is disabled. We are using old scanning APIs", new Object[0]);
            z11 = false;
        } else {
            id.b.d("CycledLeScanner", "This is Android 5.0.  We are using new scanning APIs", new Object[0]);
            z11 = false;
            z12 = true;
        }
        Context context = this.f8882j;
        a aVar = this.f8883k;
        this.f8876c = z11 ? new ld.d(context, z10, aVar) : z12 ? new ld.i(context, z10, aVar) : new ld.e(context, z10, aVar);
    }

    public final ExecutorService c() {
        ExecutorService executorService = this.f8874a;
        if (executorService != null && executorService.isShutdown()) {
            id.b.f("k", "ThreadPoolExecutor unexpectedly shut down", new Object[0]);
        }
        if (this.f8874a == null) {
            id.b.a("k", "ThreadPoolExecutor created", new Object[0]);
            this.f8874a = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors() + 1);
        }
        return this.f8874a;
    }

    @TargetApi(11)
    public final void d(int r14, long j10, BluetoothDevice bluetoothDevice, byte[] bArr) {
        this.f8875b.getClass();
        try {
            c().execute(new c(new b(bluetoothDevice, r14, bArr, j10)));
        } catch (OutOfMemoryError unused) {
            id.b.f("k", "Ignoring scan result because we cannot start a thread to keep up.", new Object[0]);
        } catch (RejectedExecutionException unused2) {
            id.b.f("k", "Ignoring scan result because we cannot keep up.", new Object[0]);
        }
    }

    public final void e() {
        HashSet hashSet = new HashSet();
        gd.e eVar = this.f8875b;
        hashSet.addAll(eVar.f6647i);
        Iterator<E> it = eVar.f6647i.iterator();
        boolean z10 = true;
        while (it.hasNext()) {
            gd.g gVar = (gd.g) it.next();
            gVar.getClass();
            if (new ArrayList(gVar.A).size() > 0) {
                hashSet.addAll(new ArrayList(gVar.A));
                z10 = false;
            }
        }
        this.f8880h = hashSet;
        this.f8879g = new kd.c(z10);
    }

    public final void f(HashSet hashSet) {
        Log.d("k", "BeaconParsers set to  count: " + hashSet.size());
        if (hashSet.size() > 0) {
            Log.d("k", "First parser layout: " + ((gd.g) hashSet.iterator().next()).f6667a);
        }
        this.f8880h = hashSet;
    }

    public final void finalize() throws Throwable {
        super.finalize();
        i();
    }

    public final void g(HashMap map) {
        id.b.a("k", "rangeRegionState updated with %d regions", Integer.valueOf(map.size()));
        synchronized (this.f8878e) {
            this.f8878e.clear();
            this.f8878e.putAll(map);
        }
    }

    @RequiresApi(api = 26)
    public final void h() {
        Context context = this.f8882j;
        try {
            BluetoothAdapter adapter = ((BluetoothManager) context.getApplicationContext().getSystemService("bluetooth")).getAdapter();
            if (adapter == null) {
                id.b.f("k", "Failed to construct a BluetoothAdapter", new Object[0]);
            } else if (adapter.isEnabled() || Build.VERSION.SDK_INT >= 28) {
                BluetoothLeScanner bluetoothLeScanner = adapter.getBluetoothLeScanner();
                if (bluetoothLeScanner != null) {
                    Intent intent = new Intent(context, (Class<?>) StartupBroadcastReceiver.class);
                    intent.putExtra("o-scan", true);
                    bluetoothLeScanner.stopScan(PendingIntent.getBroadcast(context, 0, intent, 167772160));
                }
            } else {
                id.b.f("k", "BluetoothAdapter is not enabled", new Object[0]);
            }
        } catch (NullPointerException e10) {
            id.b.c("k", "NullPointerException stopping Android O background scanner", e10);
        } catch (SecurityException unused) {
            id.b.c("k", "SecurityException stopping Android O background scanner", new Object[0]);
        } catch (RuntimeException e11) {
            id.b.c("k", "Unexpected runtime exception stopping Android O background scanner", e11);
        }
    }

    public final void i() {
        ExecutorService executorService = this.f8874a;
        if (executorService != null) {
            executorService.shutdown();
            try {
                if (!this.f8874a.awaitTermination(10L, TimeUnit.MILLISECONDS)) {
                    id.b.c("k", "Can't stop beacon parsing thread.", new Object[0]);
                }
            } catch (InterruptedException unused) {
                id.b.c("k", "Interrupted waiting to stop beacon parsing thread.", new Object[0]);
            }
            this.f8874a = null;
        }
    }
}
