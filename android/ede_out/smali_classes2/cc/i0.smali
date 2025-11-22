.class public final Lcc/i0;
.super Lcc/u1;
.source "SourceFile"


# instance fields
.field public final b:Lbc/l;

.field public final c:Lx9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/a<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/l;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc/l;",
            "Lx9/a<",
            "+",
            "Lcc/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcc/u1;-><init>()V

    iput-object p1, p0, Lcc/i0;->b:Lbc/l;

    iput-object p2, p0, Lcc/i0;->c:Lx9/a;

    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lcc/i0;->d:Lbc/i;

    return-void
.end method


# virtual methods
.method public final O0(Ldc/f;)Lcc/e0;
    .locals 2

    .line 1
    const-string v0, "kotlinTypeRefiner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcc/i0;

    .line 7
    .line 8
    new-instance v1, Lcc/h0;

    .line 9
    .line 10
    invoke-direct {v1, p1, p0}, Lcc/h0;-><init>(Ldc/f;Lcc/i0;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcc/i0;->b:Lbc/l;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lcc/i0;-><init>(Lbc/l;Lx9/a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final Q0()Lcc/e0;
    .locals 1

    iget-object v0, p0, Lcc/i0;->d:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/e0;

    return-object v0
.end method

.method public final R0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcc/i0;->d:Lbc/i;

    .line 2
    .line 3
    check-cast v0, Lbc/c$f;

    .line 4
    .line 5
    iget-object v1, v0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v2, Lbc/c$l;->a:Lbc/c$l;

    .line 8
    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lbc/c$f;->c:Ljava/lang/Object;

    .line 12
    .line 13
    sget-object v1, Lbc/c$l;->b:Lbc/c$l;

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method
