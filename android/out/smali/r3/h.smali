.class public abstract Lr3/h;
.super Lr3/c;
.source "SourceFile"

# interfaces
.implements Ln3/a$e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lr3/c<",
        "TT;>;",
        "Ln3/a$e;"
    }
.end annotation


# instance fields
.field public final A:Landroid/accounts/Account;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final y:Lr3/e;

.field public final z:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILr3/e;Lo3/c;Lo3/j;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lr3/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lo3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lo3/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lr3/i;->a(Landroid/content/Context;)Lr3/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    sget-object v4, Lm3/e;->d:Lm3/e;

    .line 6
    .line 7
    invoke-static {p5}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p6}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v6, Lr3/e0;

    .line 14
    .line 15
    invoke-direct {v6, p5}, Lr3/e0;-><init>(Lo3/c;)V

    .line 16
    .line 17
    .line 18
    new-instance v7, Lr3/f0;

    .line 19
    .line 20
    invoke-direct {v7, p6}, Lr3/f0;-><init>(Lo3/j;)V

    .line 21
    .line 22
    .line 23
    iget-object v8, p4, Lr3/e;->f:Ljava/lang/String;

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p2

    .line 28
    move v5, p3

    .line 29
    invoke-direct/range {v0 .. v8}, Lr3/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lr3/j1;Lm3/f;ILr3/c$a;Lr3/c$b;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p4, p0, Lr3/h;->y:Lr3/e;

    .line 33
    .line 34
    iget-object p1, p4, Lr3/e;->a:Landroid/accounts/Account;

    .line 35
    .line 36
    iput-object p1, p0, Lr3/h;->A:Landroid/accounts/Account;

    .line 37
    .line 38
    iget-object p1, p4, Lr3/e;->c:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 55
    .line 56
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    if-eqz p3, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    iput-object p1, p0, Lr3/h;->z:Ljava/util/Set;

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lr3/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/h;->z:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final r()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/h;->A:Landroid/accounts/Account;

    return-object v0
.end method

.method public final t()V
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-void
.end method

.method public final v()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/h;->z:Ljava/util/Set;

    return-object v0
.end method
