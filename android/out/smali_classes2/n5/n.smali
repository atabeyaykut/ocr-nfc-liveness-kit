.class public final Ln5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln5/p$a;


# instance fields
.field public final synthetic a:Ln5/f;


# direct methods
.method public constructor <init>(Ln5/f;)V
    .locals 0

    iput-object p1, p0, Ln5/n;->a:Ln5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ln5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ln5/d;

    iget-object v1, p0, Ln5/n;->a:Ln5/f;

    invoke-direct {v0, v1, p1}, Ln5/d;-><init>(Ln5/f;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Ln5/d;
    .locals 3

    .line 1
    new-instance v0, Ln5/d;

    .line 2
    .line 3
    iget-object v1, p0, Ln5/n;->a:Ln5/f;

    .line 4
    .line 5
    iget-object v2, v1, Ln5/f;->c:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ln5/d;-><init>(Ln5/f;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ln5/n;->a:Ln5/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln5/n;->a:Ln5/f;

    .line 2
    .line 3
    iget-object v0, v0, Ln5/f;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
