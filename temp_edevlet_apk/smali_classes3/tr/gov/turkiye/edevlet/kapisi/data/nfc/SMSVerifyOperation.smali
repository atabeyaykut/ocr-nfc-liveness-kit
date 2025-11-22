.class public final Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;",
        "",
        "isSuccess",
        "",
        "content",
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;",
        "exception",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;",
        "(ZLtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V",
        "getContent",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;",
        "setContent",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;)V",
        "getException",
        "()Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;",
        "setException",
        "(Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V",
        "()Z",
        "setSuccess",
        "(Z)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private content:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

.field private exception:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isSuccess:Z


# direct methods
.method public constructor <init>(ZLtr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->isSuccess:Z

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->content:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->exception:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    return-void
.end method


# virtual methods
.method public final getContent()Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->content:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    return-object v0
.end method

.method public final getException()Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->exception:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    return-object v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->isSuccess:Z

    return v0
.end method

.method public final setContent(Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->content:Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SmsCodeServiceResultData;

    return-void
.end method

.method public final setException(Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->exception:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerifyOperation;->isSuccess:Z

    return-void
.end method
