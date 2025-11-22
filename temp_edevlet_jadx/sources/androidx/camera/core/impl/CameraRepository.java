package androidx.camera.core.impl;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.InitializationException;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class CameraRepository {
    private static final String TAG = "CameraRepository";

    @GuardedBy("mCamerasLock")
    private CallbackToFutureAdapter.Completer<Void> mDeinitCompleter;

    @GuardedBy("mCamerasLock")
    private m5.a<Void> mDeinitFuture;
    private final Object mCamerasLock = new Object();

    @GuardedBy("mCamerasLock")
    private final Map<String, CameraInternal> mCameras = new LinkedHashMap();

    @GuardedBy("mCamerasLock")
    private final Set<CameraInternal> mReleasingCameras = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$deinit$0(CallbackToFutureAdapter.Completer completer) throws Exception {
        synchronized (this.mCamerasLock) {
            this.mDeinitCompleter = completer;
        }
        return "CameraRepository-deinit";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deinit$1(CameraInternal cameraInternal) {
        synchronized (this.mCamerasLock) {
            this.mReleasingCameras.remove(cameraInternal);
            if (this.mReleasingCameras.isEmpty()) {
                Preconditions.checkNotNull(this.mDeinitCompleter);
                this.mDeinitCompleter.set(null);
                this.mDeinitCompleter = null;
                this.mDeinitFuture = null;
            }
        }
    }

    @NonNull
    public m5.a<Void> deinit() {
        synchronized (this.mCamerasLock) {
            if (this.mCameras.isEmpty()) {
                m5.a<Void> aVarImmediateFuture = this.mDeinitFuture;
                if (aVarImmediateFuture == null) {
                    aVarImmediateFuture = Futures.immediateFuture(null);
                }
                return aVarImmediateFuture;
            }
            m5.a<Void> future = this.mDeinitFuture;
            int r22 = 0;
            if (future == null) {
                future = CallbackToFutureAdapter.getFuture(new k(r22, this));
                this.mDeinitFuture = future;
            }
            this.mReleasingCameras.addAll(this.mCameras.values());
            for (CameraInternal cameraInternal : this.mCameras.values()) {
                cameraInternal.release().addListener(new l(r22, this, cameraInternal), CameraXExecutors.directExecutor());
            }
            this.mCameras.clear();
            return future;
        }
    }

    @NonNull
    public CameraInternal getCamera(@NonNull String str) {
        CameraInternal cameraInternal;
        synchronized (this.mCamerasLock) {
            cameraInternal = this.mCameras.get(str);
            if (cameraInternal == null) {
                throw new IllegalArgumentException("Invalid camera: " + str);
            }
        }
        return cameraInternal;
    }

    @NonNull
    public Set<String> getCameraIds() {
        LinkedHashSet linkedHashSet;
        synchronized (this.mCamerasLock) {
            linkedHashSet = new LinkedHashSet(this.mCameras.keySet());
        }
        return linkedHashSet;
    }

    @NonNull
    public LinkedHashSet<CameraInternal> getCameras() {
        LinkedHashSet<CameraInternal> linkedHashSet;
        synchronized (this.mCamerasLock) {
            linkedHashSet = new LinkedHashSet<>(this.mCameras.values());
        }
        return linkedHashSet;
    }

    public void init(@NonNull CameraFactory cameraFactory) throws InitializationException {
        synchronized (this.mCamerasLock) {
            try {
                try {
                    for (String str : cameraFactory.getAvailableCameraIds()) {
                        Logger.d(TAG, "Added camera: " + str);
                        this.mCameras.put(str, cameraFactory.getCamera(str));
                    }
                } catch (CameraUnavailableException e10) {
                    throw new InitializationException(e10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
