package androidx.camera.extensions;

import android.content.Context;
import android.util.Range;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.CameraProvider;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.p;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.extensions.impl.InitializerImpl;
import androidx.camera.extensions.internal.ExtensionVersion;
import androidx.camera.extensions.internal.Version;
import androidx.camera.extensions.internal.VersionName;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.ExecutionException;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class ExtensionsManager {
    private static final Object EXTENSIONS_LOCK = new Object();
    private static final String TAG = "ExtensionsManager";

    @GuardedBy("EXTENSIONS_LOCK")
    private static m5.a<Void> sDeinitializeFuture;

    @GuardedBy("EXTENSIONS_LOCK")
    private static ExtensionsManager sExtensionsManager;

    @GuardedBy("EXTENSIONS_LOCK")
    private static m5.a<ExtensionsManager> sInitializeFuture;
    private final ExtensionsAvailability mExtensionsAvailability;
    private final ExtensionsInfo mExtensionsInfo;

    public enum ExtensionsAvailability {
        LIBRARY_AVAILABLE,
        LIBRARY_UNAVAILABLE_ERROR_LOADING,
        LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION,
        NONE
    }

    private ExtensionsManager(@NonNull ExtensionsAvailability extensionsAvailability, @NonNull CameraProvider cameraProvider) {
        this.mExtensionsAvailability = extensionsAvailability;
        this.mExtensionsInfo = new ExtensionsInfo(cameraProvider);
    }

    @NonNull
    public static m5.a<ExtensionsManager> getInstanceAsync(@NonNull Context context, @NonNull CameraProvider cameraProvider) {
        return getInstanceAsync(context, cameraProvider, VersionName.getCurrentVersion());
    }

    public static m5.a<ExtensionsManager> getInstanceAsync(@NonNull final Context context, @NonNull final CameraProvider cameraProvider, @NonNull final VersionName versionName) {
        synchronized (EXTENSIONS_LOCK) {
            m5.a<Void> aVar = sDeinitializeFuture;
            if (aVar != null && !aVar.isDone()) {
                throw new IllegalStateException("Not yet done deinitializing extensions");
            }
            sDeinitializeFuture = null;
            if (ExtensionVersion.getRuntimeVersion() == null) {
                return Futures.immediateFuture(getOrCreateExtensionsManager(ExtensionsAvailability.NONE, cameraProvider));
            }
            if (ExtensionVersion.getRuntimeVersion().compareTo(Version.VERSION_1_1) < 0) {
                return Futures.immediateFuture(getOrCreateExtensionsManager(ExtensionsAvailability.LIBRARY_AVAILABLE, cameraProvider));
            }
            if (sInitializeFuture == null) {
                sInitializeFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.extensions.b
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        return ExtensionsManager.lambda$getInstanceAsync$0(versionName, context, cameraProvider, completer);
                    }
                });
            }
            return sInitializeFuture;
        }
    }

    public static ExtensionsManager getOrCreateExtensionsManager(@NonNull ExtensionsAvailability extensionsAvailability, @NonNull CameraProvider cameraProvider) {
        synchronized (EXTENSIONS_LOCK) {
            ExtensionsManager extensionsManager = sExtensionsManager;
            if (extensionsManager != null) {
                return extensionsManager;
            }
            ExtensionsManager extensionsManager2 = new ExtensionsManager(extensionsAvailability, cameraProvider);
            sExtensionsManager = extensionsManager2;
            return extensionsManager2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$getInstanceAsync$0(VersionName versionName, Context context, final CameraProvider cameraProvider, final CallbackToFutureAdapter.Completer completer) throws Exception {
        ExtensionsAvailability extensionsAvailability;
        try {
            InitializerImpl.init(versionName.toVersionString(), ContextUtil.getApplicationContext(context), new InitializerImpl.OnExtensionsInitializedCallback() { // from class: androidx.camera.extensions.ExtensionsManager.1
                public void onFailure(int r32) {
                    Logger.e(ExtensionsManager.TAG, "Failed to initialize extensions");
                    completer.set(ExtensionsManager.getOrCreateExtensionsManager(ExtensionsAvailability.LIBRARY_UNAVAILABLE_ERROR_LOADING, cameraProvider));
                }

                public void onSuccess() {
                    Logger.d(ExtensionsManager.TAG, "Successfully initialized extensions");
                    completer.set(ExtensionsManager.getOrCreateExtensionsManager(ExtensionsAvailability.LIBRARY_AVAILABLE, cameraProvider));
                }
            }, CameraXExecutors.directExecutor());
            return "Initialize extensions";
        } catch (AbstractMethodError e10) {
            e = e10;
            Logger.e(TAG, "Failed to initialize extensions. Some classes or methods are missed in the vendor library. " + e);
            extensionsAvailability = ExtensionsAvailability.LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION;
            completer.set(getOrCreateExtensionsManager(extensionsAvailability, cameraProvider));
            return "Initialize extensions";
        } catch (NoClassDefFoundError e11) {
            e = e11;
            Logger.e(TAG, "Failed to initialize extensions. Some classes or methods are missed in the vendor library. " + e);
            extensionsAvailability = ExtensionsAvailability.LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION;
            completer.set(getOrCreateExtensionsManager(extensionsAvailability, cameraProvider));
            return "Initialize extensions";
        } catch (NoSuchMethodError e12) {
            e = e12;
            Logger.e(TAG, "Failed to initialize extensions. Some classes or methods are missed in the vendor library. " + e);
            extensionsAvailability = ExtensionsAvailability.LIBRARY_UNAVAILABLE_MISSING_IMPLEMENTATION;
            completer.set(getOrCreateExtensionsManager(extensionsAvailability, cameraProvider));
            return "Initialize extensions";
        } catch (RuntimeException e13) {
            Logger.e(TAG, "Failed to initialize extensions. Something wents wrong when initializing the vendor library. " + e13);
            extensionsAvailability = ExtensionsAvailability.LIBRARY_UNAVAILABLE_ERROR_LOADING;
            completer.set(getOrCreateExtensionsManager(extensionsAvailability, cameraProvider));
            return "Initialize extensions";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$shutdown$1(final CallbackToFutureAdapter.Completer completer) throws Exception {
        try {
            InitializerImpl.deinit(new InitializerImpl.OnExtensionsDeinitializedCallback() { // from class: androidx.camera.extensions.ExtensionsManager.2
                public void onFailure(int r32) {
                    completer.setException(new Exception("Failed to deinitialize extensions."));
                }

                public void onSuccess() {
                    completer.set(null);
                }
            }, CameraXExecutors.directExecutor());
            return null;
        } catch (NoClassDefFoundError | NoSuchMethodError e10) {
            completer.setException(e10);
            return null;
        }
    }

    @Nullable
    public Range<Long> getEstimatedCaptureLatencyRange(@NonNull CameraSelector cameraSelector, int r42) {
        if (r42 == 0 || this.mExtensionsAvailability != ExtensionsAvailability.LIBRARY_AVAILABLE) {
            throw new IllegalArgumentException("No camera can be found to support the specified extensions mode! isExtensionAvailable should be checked first before calling getEstimatedCaptureLatencyRange.");
        }
        return this.mExtensionsInfo.getEstimatedCaptureLatencyRange(cameraSelector, r42, null);
    }

    @NonNull
    public CameraSelector getExtensionEnabledCameraSelector(@NonNull CameraSelector cameraSelector, int r42) {
        if (r42 == 0) {
            return cameraSelector;
        }
        if (this.mExtensionsAvailability == ExtensionsAvailability.LIBRARY_AVAILABLE) {
            return this.mExtensionsInfo.getExtensionCameraSelectorAndInjectCameraConfig(cameraSelector, r42);
        }
        throw new IllegalArgumentException("This device doesn't support extensions function! isExtensionAvailable should be checked first before calling getExtensionEnabledCameraSelector.");
    }

    @NonNull
    @VisibleForTesting
    public ExtensionsAvailability getExtensionsAvailability() {
        return this.mExtensionsAvailability;
    }

    public boolean isExtensionAvailable(@NonNull CameraSelector cameraSelector, int r42) {
        if (r42 == 0) {
            return true;
        }
        if (this.mExtensionsAvailability != ExtensionsAvailability.LIBRARY_AVAILABLE) {
            return false;
        }
        return this.mExtensionsInfo.isExtensionAvailable(cameraSelector, r42);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.TESTS})
    public m5.a<Void> shutdown() {
        synchronized (EXTENSIONS_LOCK) {
            if (ExtensionVersion.getRuntimeVersion() == null) {
                sInitializeFuture = null;
                sExtensionsManager = null;
                return Futures.immediateFuture(null);
            }
            m5.a<ExtensionsManager> aVar = sInitializeFuture;
            if (aVar == null) {
                return Futures.immediateFuture(null);
            }
            m5.a<Void> aVar2 = sDeinitializeFuture;
            if (aVar2 != null) {
                return aVar2;
            }
            try {
                aVar.get();
                sInitializeFuture = null;
                ExtensionsAvailability extensionsAvailability = sExtensionsManager.mExtensionsAvailability;
                sExtensionsManager = null;
                sDeinitializeFuture = extensionsAvailability == ExtensionsAvailability.LIBRARY_AVAILABLE ? CallbackToFutureAdapter.getFuture(new p(1, this)) : Futures.immediateFuture(null);
                return sDeinitializeFuture;
            } catch (InterruptedException e10) {
                e = e10;
                m5.a<Void> aVarImmediateFailedFuture = Futures.immediateFailedFuture(e);
                sDeinitializeFuture = aVarImmediateFailedFuture;
                return aVarImmediateFailedFuture;
            } catch (ExecutionException e11) {
                e = e11;
                m5.a<Void> aVarImmediateFailedFuture2 = Futures.immediateFailedFuture(e);
                sDeinitializeFuture = aVarImmediateFailedFuture2;
                return aVarImmediateFailedFuture2;
            }
        }
    }
}
