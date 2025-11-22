.class public interface abstract Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J6\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0002H\'JJ\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00072\u0008\u0008\u0001\u0010\n\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0002H\'Jr\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0002H\'J@\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0002H\'\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/otp/TwoFactorAuthAPI;",
        "",
        "",
        "osVersion",
        "appVersion",
        "language",
        "mode",
        "Lud/b;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;",
        "fetchServerTime",
        "pidParam",
        "didParam",
        "Ltr/gov/turkiye/edevlet/kapisi/data/otp/TokenUpdateModel;",
        "updatePushToken",
        "tidParam",
        "tokenParam",
        "otpParam",
        "actionParam",
        "",
        "approvalType",
        "approveOperation",
        "deleteActivatedDevice",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# virtual methods
.method public abstract approveOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "did"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "tid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "t"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "otp"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "op"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lxd/c;
            value = "approvalType"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "operatingSystem"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "appVersion"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "language"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "mode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lud/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "Giris/PushOtpService/Approval"
    .end annotation
.end method

.method public abstract deleteActivatedDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "tid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "operatingSystem"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "appVersion"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "language"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "mode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lud/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "Giris/PushOtpService/DeleteActivatedDevice"
    .end annotation
.end method

.method public abstract fetchServerTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "operatingSystem"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "appVersion"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "language"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "mode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lud/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/otp/ServerTimeModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "Giris/NTPService"
    .end annotation
.end method

.method public abstract updatePushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "pid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "did"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "operatingSystem"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "appVersion"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "language"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "mode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lud/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/otp/TokenUpdateModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "Giris/UpdateActivationService"
    .end annotation
.end method
