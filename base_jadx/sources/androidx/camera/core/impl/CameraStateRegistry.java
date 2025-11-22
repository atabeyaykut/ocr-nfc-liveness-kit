package androidx.camera.core.impl;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.WorkerThread;
import androidx.camera.core.Camera;
import androidx.camera.core.Logger;
import androidx.camera.core.a1;
import androidx.camera.core.impl.CameraInternal;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class CameraStateRegistry {
    private static final String TAG = "CameraStateRegistry";

    @GuardedBy("mLock")
    private int mAvailableCameras;
    private final int mMaxAllowedOpenedCameras;
    private final StringBuilder mDebugString = new StringBuilder();
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private final Map<Camera, CameraRegistration> mCameraStates = new HashMap();

    public static class CameraRegistration {
        private final OnOpenAvailableListener mCameraAvailableListener;
        private final Executor mNotifyExecutor;
        private CameraInternal.State mState;

        public CameraRegistration(@Nullable CameraInternal.State state, @NonNull Executor executor, @NonNull OnOpenAvailableListener onOpenAvailableListener) {
            this.mState = state;
            this.mNotifyExecutor = executor;
            this.mCameraAvailableListener = onOpenAvailableListener;
        }

        public CameraInternal.State getState() {
            return this.mState;
        }

        public void notifyListener() {
            try {
                Executor executor = this.mNotifyExecutor;
                OnOpenAvailableListener onOpenAvailableListener = this.mCameraAvailableListener;
                Objects.requireNonNull(onOpenAvailableListener);
                executor.execute(new a1(1, onOpenAvailableListener));
            } catch (RejectedExecutionException e10) {
                Logger.e(CameraStateRegistry.TAG, "Unable to notify camera.", e10);
            }
        }

        public CameraInternal.State setState(@Nullable CameraInternal.State state) {
            CameraInternal.State state2 = this.mState;
            this.mState = state;
            return state2;
        }
    }

    public interface OnOpenAvailableListener {
        void onOpenAvailable();
    }

    public CameraStateRegistry(int r22) {
        this.mMaxAllowedOpenedCameras = r22;
        synchronized ("mLock") {
            this.mAvailableCameras = r22;
        }
    }

    private static boolean isOpen(@Nullable CameraInternal.State state) {
        return state != null && state.holdsCameraSlot();
    }

    @GuardedBy("mLock")
    @WorkerThread
    private void recalculateAvailableCameras() {
        if (Logger.isDebugEnabled(TAG)) {
            this.mDebugString.setLength(0);
            this.mDebugString.append("Recalculating open cameras:\n");
            this.mDebugString.append(String.format(Locale.US, "%-45s%-22s\n", "Camera", "State"));
            this.mDebugString.append("-------------------------------------------------------------------\n");
        }
        int r72 = 0;
        for (Map.Entry<Camera, CameraRegistration> entry : this.mCameraStates.entrySet()) {
            if (Logger.isDebugEnabled(TAG)) {
                this.mDebugString.append(String.format(Locale.US, "%-45s%-22s\n", entry.getKey().toString(), entry.getValue().getState() != null ? entry.getValue().getState().toString() : "UNKNOWN"));
            }
            if (isOpen(entry.getValue().getState())) {
                r72++;
            }
        }
        if (Logger.isDebugEnabled(TAG)) {
            this.mDebugString.append("-------------------------------------------------------------------\n");
            this.mDebugString.append(String.format(Locale.US, "Open count: %d (Max allowed: %d)", Integer.valueOf(r72), Integer.valueOf(this.mMaxAllowedOpenedCameras)));
            Logger.d(TAG, this.mDebugString.toString());
        }
        this.mAvailableCameras = Math.max(this.mMaxAllowedOpenedCameras - r72, 0);
    }

    @Nullable
    @GuardedBy("mLock")
    private CameraInternal.State unregisterCamera(Camera camera) {
        CameraRegistration cameraRegistrationRemove = this.mCameraStates.remove(camera);
        if (cameraRegistrationRemove == null) {
            return null;
        }
        recalculateAvailableCameras();
        return cameraRegistrationRemove.getState();
    }

    @Nullable
    @GuardedBy("mLock")
    private CameraInternal.State updateAndVerifyState(@NonNull Camera camera, @NonNull CameraInternal.State state) {
        CameraInternal.State state2 = ((CameraRegistration) Preconditions.checkNotNull(this.mCameraStates.get(camera), "Cannot update state of camera which has not yet been registered. Register with CameraStateRegistry.registerCamera()")).setState(state);
        CameraInternal.State state3 = CameraInternal.State.OPENING;
        if (state == state3) {
            Preconditions.checkState(isOpen(state) || state2 == state3, "Cannot mark camera as opening until camera was successful at calling CameraStateRegistry.tryOpenCamera()");
        }
        if (state2 != state) {
            recalculateAvailableCameras();
        }
        return state2;
    }

    public boolean isCameraClosing() {
        synchronized (this.mLock) {
            Iterator<Map.Entry<Camera, CameraRegistration>> it = this.mCameraStates.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().getState() == CameraInternal.State.CLOSING) {
                    return true;
                }
            }
            return false;
        }
    }

    public void markCameraState(@NonNull Camera camera, @NonNull CameraInternal.State state) {
        markCameraState(camera, state, true);
    }

    public void markCameraState(@NonNull Camera camera, @NonNull CameraInternal.State state, boolean z10) {
        HashMap map;
        synchronized (this.mLock) {
            int r12 = this.mAvailableCameras;
            if ((state == CameraInternal.State.RELEASED ? unregisterCamera(camera) : updateAndVerifyState(camera, state)) == state) {
                return;
            }
            if (r12 < 1 && this.mAvailableCameras > 0) {
                map = new HashMap();
                for (Map.Entry<Camera, CameraRegistration> entry : this.mCameraStates.entrySet()) {
                    if (entry.getValue().getState() == CameraInternal.State.PENDING_OPEN) {
                        map.put(entry.getKey(), entry.getValue());
                    }
                }
            } else if (state != CameraInternal.State.PENDING_OPEN || this.mAvailableCameras <= 0) {
                map = null;
            } else {
                map = new HashMap();
                map.put(camera, this.mCameraStates.get(camera));
            }
            if (map != null && !z10) {
                map.remove(camera);
            }
            if (map != null) {
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    ((CameraRegistration) it.next()).notifyListener();
                }
            }
        }
    }

    public void registerCamera(@NonNull Camera camera, @NonNull Executor executor, @NonNull OnOpenAvailableListener onOpenAvailableListener) {
        synchronized (this.mLock) {
            Preconditions.checkState(!this.mCameraStates.containsKey(camera), "Camera is already registered: " + camera);
            this.mCameraStates.put(camera, new CameraRegistration(null, executor, onOpenAvailableListener));
        }
    }

    public boolean tryOpenCamera(@NonNull Camera camera) {
        boolean z10;
        synchronized (this.mLock) {
            CameraRegistration cameraRegistration = (CameraRegistration) Preconditions.checkNotNull(this.mCameraStates.get(camera), "Camera must first be registered with registerCamera()");
            if (Logger.isDebugEnabled(TAG)) {
                this.mDebugString.setLength(0);
                this.mDebugString.append(String.format(Locale.US, "tryOpenCamera(%s) [Available Cameras: %d, Already Open: %b (Previous state: %s)]", camera, Integer.valueOf(this.mAvailableCameras), Boolean.valueOf(isOpen(cameraRegistration.getState())), cameraRegistration.getState()));
            }
            if (this.mAvailableCameras > 0 || isOpen(cameraRegistration.getState())) {
                cameraRegistration.setState(CameraInternal.State.OPENING);
                z10 = true;
            } else {
                z10 = false;
            }
            if (Logger.isDebugEnabled(TAG)) {
                StringBuilder sb2 = this.mDebugString;
                Locale locale = Locale.US;
                Object[] objArr = new Object[1];
                objArr[0] = z10 ? "SUCCESS" : "FAIL";
                sb2.append(String.format(locale, " --> %s", objArr));
                Logger.d(TAG, this.mDebugString.toString());
            }
            if (z10) {
                recalculateAvailableCameras();
            }
        }
        return z10;
    }
}
