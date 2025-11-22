.class public final Lpc/a$d;
.super Lpc/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/s<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lpc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/a$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Lnc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpc/a$a;Lnc/j;)V
    .locals 0

    invoke-direct {p0}, Lpc/s;-><init>()V

    iput-object p1, p0, Lpc/a$d;->d:Lpc/a$a;

    iput-object p2, p0, Lpc/a$d;->e:Lnc/i;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Object;)Lx9/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lx9/l<",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/a$d;->d:Lpc/a$a;

    .line 2
    .line 3
    iget-object v0, v0, Lpc/a$a;->a:Lpc/a;

    .line 4
    .line 5
    iget-object v0, v0, Lpc/b;->a:Lx9/l;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lpc/a$d;->e:Lnc/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lp9/d;->getContext()Lp9/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lkotlinx/coroutines/internal/n;

    .line 18
    .line 19
    invoke-direct {v2, v0, p1, v1}, Lkotlinx/coroutines/internal/n;-><init>(Lx9/l;Ljava/lang/Object;Lp9/f;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v2

    .line 23
    :goto_0
    return-object p1
.end method

.method public final K(Lpc/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/k<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lpc/k;->d:Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object v1, p0, Lpc/a$d;->e:Lnc/i;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v1, v0, v2}, Lnc/i;->d(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lpc/k;->O()Ljava/lang/Throwable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v1, v0}, Lnc/i;->q(Ljava/lang/Throwable;)Lkotlinx/coroutines/internal/u;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lpc/a$d;->d:Lpc/a$a;

    .line 26
    .line 27
    iput-object p1, v0, Lpc/a$a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-interface {v1}, Lnc/i;->g()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/u;
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lpc/a$d;->J(Ljava/lang/Object;)Lx9/l;

    move-result-object p1

    iget-object v1, p0, Lpc/a$d;->e:Lnc/i;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p1}, Lnc/i;->w(Ljava/lang/Object;Lkotlinx/coroutines/internal/j$a;Lx9/l;)Lkotlinx/coroutines/internal/u;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    sget-object p1, Lc5/w;->g:Lkotlinx/coroutines/internal/u;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/a$d;->d:Lpc/a$a;

    .line 2
    .line 3
    iput-object p1, v0, Lpc/a$a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p1, p0, Lpc/a$d;->e:Lnc/i;

    .line 6
    .line 7
    invoke-interface {p1}, Lnc/i;->g()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ReceiveHasNext@"

    invoke-static {p0}, Lnc/c0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
