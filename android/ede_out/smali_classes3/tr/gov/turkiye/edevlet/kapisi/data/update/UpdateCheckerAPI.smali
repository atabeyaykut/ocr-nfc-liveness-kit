.class public interface abstract Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J@\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002H\'J,\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00082\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0001\u0010\r\u001a\u00020\u0002H\'J@\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00082\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002H\'\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateCheckerAPI;",
        "",
        "",
        "appVersion",
        "osVersion",
        "language",
        "mode",
        "appId",
        "Lud/b;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;",
        "checkAppUpdate",
        "os",
        "message",
        "version",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;",
        "updateLog",
        "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;",
        "checkModuleSpecificUpdate",
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
.method public abstract checkAppUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "appVersion"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "operatingSystem"
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
    .param p5    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "id"
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateServiceModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "?ForceUpdate"
    .end annotation
.end method

.method public abstract checkModuleSpecificUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "appVersion"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "operatingSystem"
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
    .param p5    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "id"
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateModuleSpecificServiceModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "?ModuleInfo"
    .end annotation
.end method

.method public abstract updateLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "os"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "message"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lxd/c;
            value = "level"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lud/b<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/update/UpdateLogModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lxd/e;
    .end annotation

    .annotation runtime Lxd/o;
        value = "&errorLog"
    .end annotation
.end method
