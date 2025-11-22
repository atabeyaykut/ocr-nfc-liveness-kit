package androidx.camera.camera2.internal;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.CameraState;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

@RequiresApi(21)
/* loaded from: classes.dex */
class CameraStateMachine {
    private static final String TAG = "CameraStateMachine";

    @NonNull
    private final CameraStateRegistry mCameraStateRegistry;

    @NonNull
    private final MutableLiveData<CameraState> mCameraStates;

    /* renamed from: androidx.camera.camera2.internal.CameraStateMachine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$impl$CameraInternal$State;

        static {
            int[] r02 = new int[CameraInternal.State.values().length];
            $SwitchMap$androidx$camera$core$impl$CameraInternal$State = r02;
            try {
                r02[CameraInternal.State.PENDING_OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraInternal$State[CameraInternal.State.OPENING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraInternal$State[CameraInternal.State.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraInternal$State[CameraInternal.State.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraInternal$State[CameraInternal.State.RELEASING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraInternal$State[CameraInternal.State.CLOSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraInternal$State[CameraInternal.State.RELEASED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public CameraStateMachine(@NonNull CameraStateRegistry cameraStateRegistry) {
        this.mCameraStateRegistry = cameraStateRegistry;
        MutableLiveData<CameraState> mutableLiveData = new MutableLiveData<>();
        this.mCameraStates = mutableLiveData;
        mutableLiveData.postValue(CameraState.create(CameraState.Type.CLOSED));
    }

    private CameraState onCameraPendingOpen() {
        return CameraState.create(this.mCameraStateRegistry.isCameraClosing() ? CameraState.Type.OPENING : CameraState.Type.PENDING_OPEN);
    }

    @NonNull
    public LiveData<CameraState> getStateLiveData() {
        return this.mCameraStates;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateState(@androidx.annotation.NonNull androidx.camera.core.impl.CameraInternal.State r4, @androidx.annotation.Nullable androidx.camera.core.CameraState.StateError r5) {
        /*
            r3 = this;
            int[] r0 = androidx.camera.camera2.internal.CameraStateMachine.AnonymousClass1.$SwitchMap$androidx$camera$core$impl$CameraInternal$State
            int r1 = r4.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L2f;
                case 2: goto L28;
                case 3: goto L25;
                case 4: goto L22;
                case 5: goto L22;
                case 6: goto L1f;
                case 7: goto L1f;
                default: goto Lb;
            }
        Lb:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unknown internal camera state: "
            r0.<init>(r1)
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r5.<init>(r4)
            throw r5
        L1f:
            androidx.camera.core.CameraState$Type r0 = androidx.camera.core.CameraState.Type.CLOSED
            goto L2a
        L22:
            androidx.camera.core.CameraState$Type r0 = androidx.camera.core.CameraState.Type.CLOSING
            goto L2a
        L25:
            androidx.camera.core.CameraState$Type r0 = androidx.camera.core.CameraState.Type.OPEN
            goto L2a
        L28:
            androidx.camera.core.CameraState$Type r0 = androidx.camera.core.CameraState.Type.OPENING
        L2a:
            androidx.camera.core.CameraState r0 = androidx.camera.core.CameraState.create(r0, r5)
            goto L33
        L2f:
            androidx.camera.core.CameraState r0 = r3.onCameraPendingOpen()
        L33:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "New public camera state "
            r1.<init>(r2)
            r1.append(r0)
            java.lang.String r2 = " from "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = " and "
            r1.append(r4)
            r1.append(r5)
            java.lang.String r4 = r1.toString()
            java.lang.String r5 = "CameraStateMachine"
            androidx.camera.core.Logger.d(r5, r4)
            androidx.lifecycle.MutableLiveData<androidx.camera.core.CameraState> r4 = r3.mCameraStates
            java.lang.Object r4 = r4.getValue()
            androidx.camera.core.CameraState r4 = (androidx.camera.core.CameraState) r4
            boolean r4 = java.util.Objects.equals(r4, r0)
            if (r4 != 0) goto L7a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r1 = "Publishing new public camera state "
            r4.<init>(r1)
            r4.append(r0)
            java.lang.String r4 = r4.toString()
            androidx.camera.core.Logger.d(r5, r4)
            androidx.lifecycle.MutableLiveData<androidx.camera.core.CameraState> r4 = r3.mCameraStates
            r4.postValue(r0)
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.internal.CameraStateMachine.updateState(androidx.camera.core.impl.CameraInternal$State, androidx.camera.core.CameraState$StateError):void");
    }
}
