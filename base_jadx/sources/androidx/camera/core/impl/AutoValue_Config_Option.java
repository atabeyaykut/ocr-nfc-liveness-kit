package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.Config;

/* loaded from: classes.dex */
final class AutoValue_Config_Option<T> extends Config.Option<T> {

    /* renamed from: id, reason: collision with root package name */
    private final String f707id;
    private final Object token;
    private final Class<T> valueClass;

    public AutoValue_Config_Option(String str, Class<T> cls, @Nullable Object obj) {
        if (str == null) {
            throw new NullPointerException("Null id");
        }
        this.f707id = str;
        if (cls == null) {
            throw new NullPointerException("Null valueClass");
        }
        this.valueClass = cls;
        this.token = obj;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Config.Option)) {
            return false;
        }
        Config.Option option = (Config.Option) obj;
        if (this.f707id.equals(option.getId()) && this.valueClass.equals(option.getValueClass())) {
            Object obj2 = this.token;
            Object token = option.getToken();
            if (obj2 == null) {
                if (token == null) {
                    return true;
                }
            } else if (obj2.equals(token)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.Config.Option
    @NonNull
    public String getId() {
        return this.f707id;
    }

    @Override // androidx.camera.core.impl.Config.Option
    @Nullable
    public Object getToken() {
        return this.token;
    }

    @Override // androidx.camera.core.impl.Config.Option
    @NonNull
    public Class<T> getValueClass() {
        return this.valueClass;
    }

    public int hashCode() {
        int r02 = (((this.f707id.hashCode() ^ 1000003) * 1000003) ^ this.valueClass.hashCode()) * 1000003;
        Object obj = this.token;
        return r02 ^ (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Option{id=");
        sb2.append(this.f707id);
        sb2.append(", valueClass=");
        sb2.append(this.valueClass);
        sb2.append(", token=");
        return a.e(sb2, this.token, "}");
    }
}
