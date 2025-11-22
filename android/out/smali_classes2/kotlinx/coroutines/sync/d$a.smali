.class public final Lkotlinx/coroutines/sync/d$a;
.super Lkotlinx/coroutines/sync/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final f:Lnc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/i<",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lkotlinx/coroutines/sync/d;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/d;Lnc/j;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/d$a;->g:Lkotlinx/coroutines/sync/d;

    invoke-direct {p0}, Lkotlinx/coroutines/sync/d$b;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/d$a;->f:Lnc/i;

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/sync/d$a;->f:Lnc/i;

    invoke-interface {v0}, Lnc/i;->g()V

    return-void
.end method

.method public final K()Z
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/d$b;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    sget-object v0, Ll9/m;->a:Ll9/m;

    .line 13
    .line 14
    new-instance v3, Lkotlinx/coroutines/sync/d$a$a;

    .line 15
    .line 16
    iget-object v4, p0, Lkotlinx/coroutines/sync/d$a;->g:Lkotlinx/coroutines/sync/d;

    .line 17
    .line 18
    invoke-direct {v3, v4, p0}, Lkotlinx/coroutines/sync/d$a$a;-><init>(Lkotlinx/coroutines/sync/d;Lkotlinx/coroutines/sync/d$a;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lkotlinx/coroutines/sync/d$a;->f:Lnc/i;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    invoke-interface {v4, v0, v5, v3}, Lnc/i;->w(Ljava/lang/Object;Lkotlinx/coroutines/internal/j$a;Lx9/l;)Lkotlinx/coroutines/internal/u;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LockCont["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/coroutines/sync/d$b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/d$a;->f:Lnc/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/d$a;->g:Lkotlinx/coroutines/sync/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
