package tr.gov.turkiye.edevlet.kapisi.data.info;

import io.realm.internal.n;
import io.realm.l1;
import io.realm.s0;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b.\u0010/R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u000e\u001a\u0004\b\u001a\u0010\u0010\"\u0004\b\u001b\u0010\u0012R$\u0010\u001c\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u000e\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R$\u0010\u001f\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u000e\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\u0012R$\u0010\"\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u000e\u001a\u0004\b#\u0010\u0010\"\u0004\b$\u0010\u0012R$\u0010%\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u000e\u001a\u0004\b&\u0010\u0010\"\u0004\b'\u0010\u0012R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b)\u0010+\"\u0004\b,\u0010-¨\u00060"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/info/InfoMessageModelRealm;", "Lio/realm/s0;", "", "messageId", "Ljava/lang/Integer;", "getMessageId", "()Ljava/lang/Integer;", "setMessageId", "(Ljava/lang/Integer;)V", "messageType", "getMessageType", "setMessageType", "", "messageTitle", "Ljava/lang/String;", "getMessageTitle", "()Ljava/lang/String;", "setMessageTitle", "(Ljava/lang/String;)V", "messageContent", "getMessageContent", "setMessageContent", "messageServiceCode", "getMessageServiceCode", "setMessageServiceCode", "messageLink", "getMessageLink", "setMessageLink", "messageIconLink", "getMessageIconLink", "setMessageIconLink", "messageFolder", "getMessageFolder", "setMessageFolder", "messageFolderTitle", "getMessageFolderTitle", "setMessageFolderTitle", "messageButtonText", "getMessageButtonText", "setMessageButtonText", "", "isMessageShown", "Z", "()Z", "setMessageShown", "(Z)V", "<init>", "()V", "data_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public class InfoMessageModelRealm implements s0, l1 {
    private boolean isMessageShown;
    private String messageButtonText;
    private String messageContent;
    private String messageFolder;
    private String messageFolderTitle;
    private String messageIconLink;
    private Integer messageId;
    private String messageLink;
    private Integer messageServiceCode;
    private String messageTitle;
    private Integer messageType;

    /* JADX WARN: Multi-variable type inference failed */
    public InfoMessageModelRealm() {
        if (this instanceof n) {
            ((n) this).a();
        }
    }

    public final String getMessageButtonText() {
        return getMessageButtonText();
    }

    public final String getMessageContent() {
        return getMessageContent();
    }

    public final String getMessageFolder() {
        return getMessageFolder();
    }

    public final String getMessageFolderTitle() {
        return getMessageFolderTitle();
    }

    public final String getMessageIconLink() {
        return getMessageIconLink();
    }

    public final Integer getMessageId() {
        return getMessageId();
    }

    public final String getMessageLink() {
        return getMessageLink();
    }

    public final Integer getMessageServiceCode() {
        return getMessageServiceCode();
    }

    public final String getMessageTitle() {
        return getMessageTitle();
    }

    public final Integer getMessageType() {
        return getMessageType();
    }

    public final boolean isMessageShown() {
        return getIsMessageShown();
    }

    /* renamed from: realmGet$isMessageShown, reason: from getter */
    public boolean getIsMessageShown() {
        return this.isMessageShown;
    }

    /* renamed from: realmGet$messageButtonText, reason: from getter */
    public String getMessageButtonText() {
        return this.messageButtonText;
    }

    /* renamed from: realmGet$messageContent, reason: from getter */
    public String getMessageContent() {
        return this.messageContent;
    }

    /* renamed from: realmGet$messageFolder, reason: from getter */
    public String getMessageFolder() {
        return this.messageFolder;
    }

    /* renamed from: realmGet$messageFolderTitle, reason: from getter */
    public String getMessageFolderTitle() {
        return this.messageFolderTitle;
    }

    /* renamed from: realmGet$messageIconLink, reason: from getter */
    public String getMessageIconLink() {
        return this.messageIconLink;
    }

    /* renamed from: realmGet$messageId, reason: from getter */
    public Integer getMessageId() {
        return this.messageId;
    }

    /* renamed from: realmGet$messageLink, reason: from getter */
    public String getMessageLink() {
        return this.messageLink;
    }

    /* renamed from: realmGet$messageServiceCode, reason: from getter */
    public Integer getMessageServiceCode() {
        return this.messageServiceCode;
    }

    /* renamed from: realmGet$messageTitle, reason: from getter */
    public String getMessageTitle() {
        return this.messageTitle;
    }

    /* renamed from: realmGet$messageType, reason: from getter */
    public Integer getMessageType() {
        return this.messageType;
    }

    public void realmSet$isMessageShown(boolean z10) {
        this.isMessageShown = z10;
    }

    public void realmSet$messageButtonText(String str) {
        this.messageButtonText = str;
    }

    public void realmSet$messageContent(String str) {
        this.messageContent = str;
    }

    public void realmSet$messageFolder(String str) {
        this.messageFolder = str;
    }

    public void realmSet$messageFolderTitle(String str) {
        this.messageFolderTitle = str;
    }

    public void realmSet$messageIconLink(String str) {
        this.messageIconLink = str;
    }

    public void realmSet$messageId(Integer num) {
        this.messageId = num;
    }

    public void realmSet$messageLink(String str) {
        this.messageLink = str;
    }

    public void realmSet$messageServiceCode(Integer num) {
        this.messageServiceCode = num;
    }

    public void realmSet$messageTitle(String str) {
        this.messageTitle = str;
    }

    public void realmSet$messageType(Integer num) {
        this.messageType = num;
    }

    public final void setMessageButtonText(String str) {
        realmSet$messageButtonText(str);
    }

    public final void setMessageContent(String str) {
        realmSet$messageContent(str);
    }

    public final void setMessageFolder(String str) {
        realmSet$messageFolder(str);
    }

    public final void setMessageFolderTitle(String str) {
        realmSet$messageFolderTitle(str);
    }

    public final void setMessageIconLink(String str) {
        realmSet$messageIconLink(str);
    }

    public final void setMessageId(Integer num) {
        realmSet$messageId(num);
    }

    public final void setMessageLink(String str) {
        realmSet$messageLink(str);
    }

    public final void setMessageServiceCode(Integer num) {
        realmSet$messageServiceCode(num);
    }

    public final void setMessageShown(boolean z10) {
        realmSet$isMessageShown(z10);
    }

    public final void setMessageTitle(String str) {
        realmSet$messageTitle(str);
    }

    public final void setMessageType(Integer num) {
        realmSet$messageType(num);
    }
}
