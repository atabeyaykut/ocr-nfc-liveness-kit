.class public final Lv5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln5/m<",
        "Ln5/q;",
        "Ln5/q;",
        ">;"
    }
.end annotation


# direct methods
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
            "Ln5/q;",
            ">;"
        }
    .end annotation

    const-class v0, Ln5/q;

    return-object v0
.end method

.method public final b(Ln5/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lv5/e;

    invoke-direct {v0, p1}, Lv5/e;-><init>(Ln5/l;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ln5/q;",
            ">;"
        }
    .end annotation

    const-class v0, Ln5/q;

    return-object v0
.end method
