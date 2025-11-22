package org.altbeacon.bluetooth;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.AdvertiseData;
import android.bluetooth.le.AdvertiseSettings;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.bluetooth.le.BluetoothLeScanner;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.WorkRequest;
import id.b;
import nd.c;

@RequiresApi(21)
/* loaded from: classes2.dex */
public class BluetoothTestJob extends JobService {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f11359c = 0;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public Handler f11360a = null;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public HandlerThread f11361b = null;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ JobParameters f11362a;

        public a(JobParameters jobParameters) {
            this.f11362a = jobParameters;
        }

        @Override // java.lang.Runnable
        public final void run() throws InterruptedException {
            boolean z10;
            int r02 = BluetoothTestJob.f11359c;
            b.d("BluetoothTestJob", "Bluetooth Test Job running", new Object[0]);
            JobParameters jobParameters = this.f11362a;
            int r52 = jobParameters.getExtras().getInt("test_type");
            if (r52 == 0) {
                b.a("BluetoothTestJob", "No test specified.  Done with job.", new Object[0]);
                z10 = true;
            } else {
                z10 = false;
            }
            int r72 = r52 & 1;
            BluetoothTestJob bluetoothTestJob = BluetoothTestJob.this;
            if (r72 == 1) {
                b.a("BluetoothTestJob", "Scan test specified.", new Object[0]);
                if (c.f10867d == null) {
                    c.f10867d = new c();
                }
                c cVar = c.f10867d;
                cVar.a(bluetoothTestJob);
                cVar.f10870c = null;
                b.d("c", "Starting scan test", new Object[0]);
                long jCurrentTimeMillis = System.currentTimeMillis();
                BluetoothAdapter bluetoothAdapter = cVar.f10868a;
                if (bluetoothAdapter != null) {
                    BluetoothLeScanner bluetoothLeScanner = bluetoothAdapter.getBluetoothLeScanner();
                    nd.a aVar = new nd.a(cVar, bluetoothLeScanner);
                    if (bluetoothLeScanner != null) {
                        try {
                            bluetoothLeScanner.startScan(aVar);
                            while (true) {
                                if (cVar.f10870c != null) {
                                    break;
                                }
                                b.a("c", "Waiting for scan test to complete...", new Object[0]);
                                try {
                                    Thread.sleep(1000L);
                                } catch (InterruptedException unused) {
                                }
                                if (System.currentTimeMillis() - jCurrentTimeMillis > CoroutineLiveDataKt.DEFAULT_TIMEOUT) {
                                    b.a("c", "Timeout running scan test", new Object[0]);
                                    break;
                                }
                            }
                            bluetoothLeScanner.stopScan(aVar);
                        } catch (IllegalStateException unused2) {
                            b.a("c", "Bluetooth is off.  Cannot run scan test.", new Object[0]);
                        } catch (NullPointerException e10) {
                            b.c("c", "NullPointerException. Cannot run scan test.", e10);
                        }
                    } else {
                        b.a("c", "Cannot get scanner", new Object[0]);
                    }
                }
                b.a("c", "scan test complete", new Object[0]);
                Boolean bool = cVar.f10870c;
                if (!(bool == null || bool.booleanValue())) {
                    int r03 = BluetoothTestJob.f11359c;
                    b.a("BluetoothTestJob", "scan test failed", new Object[0]);
                }
                z10 = true;
            }
            if ((r52 & 2) == 2) {
                if (z10) {
                    try {
                        Thread.sleep(WorkRequest.MIN_BACKOFF_MILLIS);
                    } catch (InterruptedException unused3) {
                    }
                }
                int r04 = BluetoothTestJob.f11359c;
                b.a("BluetoothTestJob", "Transmit test specified.", new Object[0]);
                if (c.f10867d == null) {
                    c.f10867d = new c();
                }
                c cVar2 = c.f10867d;
                cVar2.a(bluetoothTestJob);
                BluetoothLeAdvertiser bluetoothLeAdvertiser = null;
                cVar2.f10869b = null;
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                BluetoothAdapter bluetoothAdapter2 = cVar2.f10868a;
                if (bluetoothAdapter2 != null) {
                    try {
                        bluetoothLeAdvertiser = bluetoothAdapter2.getBluetoothLeAdvertiser();
                    } catch (Exception e11) {
                        b.f("c", "Cannot get bluetoothLeAdvertiser", e11);
                    }
                    if (bluetoothLeAdvertiser != null) {
                        AdvertiseSettings advertiseSettingsBuild = new AdvertiseSettings.Builder().setAdvertiseMode(0).build();
                        AdvertiseData advertiseDataBuild = new AdvertiseData.Builder().addManufacturerData(0, new byte[]{0}).build();
                        b.d("c", "Starting transmitter test", new Object[0]);
                        bluetoothLeAdvertiser.startAdvertising(advertiseSettingsBuild, advertiseDataBuild, new nd.b(cVar2, bluetoothLeAdvertiser));
                    } else {
                        b.a("c", "Cannot get advertiser", new Object[0]);
                    }
                    while (true) {
                        if (cVar2.f10869b != null) {
                            break;
                        }
                        b.a("c", "Waiting for transmitter test to complete...", new Object[0]);
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException unused4) {
                        }
                        if (System.currentTimeMillis() - jCurrentTimeMillis2 > CoroutineLiveDataKt.DEFAULT_TIMEOUT) {
                            b.a("c", "Timeout running transmitter test", new Object[0]);
                            break;
                        }
                    }
                }
                b.a("c", "transmitter test complete", new Object[0]);
                Boolean bool2 = cVar2.f10869b;
                if (!(bool2 != null && bool2.booleanValue())) {
                    int r05 = BluetoothTestJob.f11359c;
                    b.a("BluetoothTestJob", "transmit test failed", new Object[0]);
                }
                z10 = true;
            }
            if (!z10) {
                int r06 = BluetoothTestJob.f11359c;
                b.f("BluetoothTestJob", androidx.appcompat.graphics.drawable.a.f("Unknown test type:", r52, "  Exiting."), new Object[0]);
            }
            bluetoothTestJob.jobFinished(jobParameters, false);
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        if (this.f11361b == null) {
            HandlerThread handlerThread = new HandlerThread("BluetoothTestThread");
            this.f11361b = handlerThread;
            handlerThread.start();
        }
        if (this.f11360a == null) {
            this.f11360a = new Handler(this.f11361b.getLooper());
        }
        this.f11360a.post(new a(jobParameters));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
