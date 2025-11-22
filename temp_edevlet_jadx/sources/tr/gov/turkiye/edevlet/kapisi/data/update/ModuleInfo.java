package tr.gov.turkiye.edevlet.kapisi.data.update;

import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;
import l8.k;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\tHÆ\u0003JA\u0010\u001f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010 \u001a\u00020\u00062\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\f\"\u0004\b\u000f\u0010\u000eR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R \u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013¨\u0006%"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/update/ModuleInfo;", "", "warningMessage", "", "moduleName", "isModuleActive", "", "hasUpdateForModule", "updateServiceInfo", "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;", "(Ljava/lang/String;Ljava/lang/String;ZZLtr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;)V", "getHasUpdateForModule", "()Z", "setHasUpdateForModule", "(Z)V", "setModuleActive", "getModuleName", "()Ljava/lang/String;", "setModuleName", "(Ljava/lang/String;)V", "getUpdateServiceInfo", "()Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;", "setUpdateServiceInfo", "(Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceInfo;)V", "getWarningMessage", "setWarningMessage", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class ModuleInfo {

    @k(name = "update")
    private boolean hasUpdateForModule;

    @k(name = "active")
    private boolean isModuleActive;

    @k(name = "moduleName")
    private String moduleName;

    @k(name = "updateInfo")
    private UpdateModuleSpecificServiceInfo updateServiceInfo;

    @k(name = "warningMessage")
    private String warningMessage;

    public ModuleInfo(String str, String str2, boolean z10, boolean z11, UpdateModuleSpecificServiceInfo updateModuleSpecificServiceInfo) {
        this.warningMessage = str;
        this.moduleName = str2;
        this.isModuleActive = z10;
        this.hasUpdateForModule = z11;
        this.updateServiceInfo = updateModuleSpecificServiceInfo;
    }

    public /* synthetic */ ModuleInfo(String str, String str2, boolean z10, boolean z11, UpdateModuleSpecificServiceInfo updateModuleSpecificServiceInfo, int r13, d dVar) {
        this(str, str2, (r13 & 4) != 0 ? false : z10, (r13 & 8) != 0 ? false : z11, (r13 & 16) != 0 ? null : updateModuleSpecificServiceInfo);
    }

    public static /* synthetic */ ModuleInfo copy$default(ModuleInfo moduleInfo, String str, String str2, boolean z10, boolean z11, UpdateModuleSpecificServiceInfo updateModuleSpecificServiceInfo, int r92, Object obj) {
        if ((r92 & 1) != 0) {
            str = moduleInfo.warningMessage;
        }
        if ((r92 & 2) != 0) {
            str2 = moduleInfo.moduleName;
        }
        String str3 = str2;
        if ((r92 & 4) != 0) {
            z10 = moduleInfo.isModuleActive;
        }
        boolean z12 = z10;
        if ((r92 & 8) != 0) {
            z11 = moduleInfo.hasUpdateForModule;
        }
        boolean z13 = z11;
        if ((r92 & 16) != 0) {
            updateModuleSpecificServiceInfo = moduleInfo.updateServiceInfo;
        }
        return moduleInfo.copy(str, str3, z12, z13, updateModuleSpecificServiceInfo);
    }

    /* renamed from: component1, reason: from getter */
    public final String getWarningMessage() {
        return this.warningMessage;
    }

    /* renamed from: component2, reason: from getter */
    public final String getModuleName() {
        return this.moduleName;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsModuleActive() {
        return this.isModuleActive;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getHasUpdateForModule() {
        return this.hasUpdateForModule;
    }

    /* renamed from: component5, reason: from getter */
    public final UpdateModuleSpecificServiceInfo getUpdateServiceInfo() {
        return this.updateServiceInfo;
    }

    public final ModuleInfo copy(String warningMessage, String moduleName, boolean isModuleActive, boolean hasUpdateForModule, UpdateModuleSpecificServiceInfo updateServiceInfo) {
        return new ModuleInfo(warningMessage, moduleName, isModuleActive, hasUpdateForModule, updateServiceInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ModuleInfo)) {
            return false;
        }
        ModuleInfo moduleInfo = (ModuleInfo) other;
        return h.a(this.warningMessage, moduleInfo.warningMessage) && h.a(this.moduleName, moduleInfo.moduleName) && this.isModuleActive == moduleInfo.isModuleActive && this.hasUpdateForModule == moduleInfo.hasUpdateForModule && h.a(this.updateServiceInfo, moduleInfo.updateServiceInfo);
    }

    public final boolean getHasUpdateForModule() {
        return this.hasUpdateForModule;
    }

    public final String getModuleName() {
        return this.moduleName;
    }

    public final UpdateModuleSpecificServiceInfo getUpdateServiceInfo() {
        return this.updateServiceInfo;
    }

    public final String getWarningMessage() {
        return this.warningMessage;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.warningMessage;
        int r02 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.moduleName;
        int r03 = (r02 + (str2 == null ? 0 : str2.hashCode())) * 31;
        boolean z10 = this.isModuleActive;
        int r22 = z10;
        if (z10 != 0) {
            r22 = 1;
        }
        int r04 = (r03 + r22) * 31;
        boolean z11 = this.hasUpdateForModule;
        int r05 = (r04 + (z11 ? 1 : z11 ? 1 : 0)) * 31;
        UpdateModuleSpecificServiceInfo updateModuleSpecificServiceInfo = this.updateServiceInfo;
        return r05 + (updateModuleSpecificServiceInfo != null ? updateModuleSpecificServiceInfo.hashCode() : 0);
    }

    public final boolean isModuleActive() {
        return this.isModuleActive;
    }

    public final void setHasUpdateForModule(boolean z10) {
        this.hasUpdateForModule = z10;
    }

    public final void setModuleActive(boolean z10) {
        this.isModuleActive = z10;
    }

    public final void setModuleName(String str) {
        this.moduleName = str;
    }

    public final void setUpdateServiceInfo(UpdateModuleSpecificServiceInfo updateModuleSpecificServiceInfo) {
        this.updateServiceInfo = updateModuleSpecificServiceInfo;
    }

    public final void setWarningMessage(String str) {
        this.warningMessage = str;
    }

    public String toString() {
        return "ModuleInfo(warningMessage=" + this.warningMessage + ", moduleName=" + this.moduleName + ", isModuleActive=" + this.isModuleActive + ", hasUpdateForModule=" + this.hasUpdateForModule + ", updateServiceInfo=" + this.updateServiceInfo + ')';
    }
}
