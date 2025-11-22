.class public final Ls5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls5/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln5/m<",
        "Ln5/k;",
        "Ln5/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ls5/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ls5/d;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ln5/k;",
            ">;"
        }
    .end annotation

    const-class v0, Ln5/k;

    return-object v0
.end method

.method public final b(Ln5/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ls5/d$a;

    invoke-direct {v0, p1}, Ls5/d$a;-><init>(Ln5/l;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ln5/k;",
            ">;"
        }
    .end annotation

    const-class v0, Ln5/k;

    return-object v0
.end method
