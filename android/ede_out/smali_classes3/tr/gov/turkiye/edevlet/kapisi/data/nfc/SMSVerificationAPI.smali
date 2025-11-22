.class public interface abstract Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001JT\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002H\'\u00a8\u0006\r"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationAPI;",
        "",
        "",
        "uuid",
        "token",
        "smsCode",
        "osVersion",
        "appVersion",
        "language",
        "mode",
        "Lud/b;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;",
        "verifySMSCode",
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
.method public abstract verifySMSCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "uuid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "smsCode"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "operatingSystem"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "appVersion"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "language"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")",
            "Lud/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/nfc/SMSVerificationModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "nfc-kimlik-dogrulama?smsDogrulama"
    .end annotation
.end method
