package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.Config;
import java.util.Set;

@RequiresApi(21)
/* loaded from: classes.dex */
public class CameraConfigs {
    private static final CameraConfig EMPTY_CONFIG = new EmptyCameraConfig();

    public static final class EmptyCameraConfig implements CameraConfig {
        private final Identifier mIdentifier = Identifier.create(new Object());

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ boolean containsOption(Config.Option option) {
            return b0.a(this, option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ void findOptions(String str, Config.OptionMatcher optionMatcher) {
            b0.b(this, str, optionMatcher);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        @NonNull
        public Identifier getCompatibilityId() {
            return this.mIdentifier;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        @NonNull
        public Config getConfig() {
            return OptionsBundle.emptyBundle();
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Config.OptionPriority getOptionPriority(Config.Option option) {
            return b0.c(this, option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Set getPriorities(Config.Option option) {
            return b0.d(this, option);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ SessionProcessor getSessionProcessor() {
            return c.a(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ SessionProcessor getSessionProcessor(SessionProcessor sessionProcessor) {
            return c.b(this, sessionProcessor);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ int getUseCaseCombinationRequiredRule() {
            return c.c(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ UseCaseConfigFactory getUseCaseConfigFactory() {
            return c.d(this);
        }

        @Override // androidx.camera.core.impl.CameraConfig
        public final /* synthetic */ Boolean isZslDisabled() {
            return c.e(this);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Set listOptions() {
            return b0.e(this);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOption(Config.Option option) {
            return b0.f(this, option);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOption(Config.Option option, Object obj) {
            return b0.g(this, option, obj);
        }

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public final /* synthetic */ Object retrieveOptionWithPriority(Config.Option option, Config.OptionPriority optionPriority) {
            return b0.h(this, option, optionPriority);
        }
    }

    private CameraConfigs() {
    }

    @NonNull
    public static CameraConfig emptyConfig() {
        return EMPTY_CONFIG;
    }
}
