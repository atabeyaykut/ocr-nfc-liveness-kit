.class public final Lio/realm/m0$a;
.super Lio/realm/m0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public c:Lio/realm/a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lio/realm/m0$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/m0$a;->c:Lio/realm/a;

    .line 2
    .line 3
    iget-object v0, v0, Lio/realm/a;->c:Lio/realm/o0;

    .line 4
    .line 5
    iget-object v0, v0, Lio/realm/o0;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lio/realm/m0$c;->a:Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lio/realm/m0$a;->c:Lio/realm/a;

    .line 14
    .line 15
    iget-object v1, p0, Lio/realm/m0$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v2, "Global reference counter of Realm"

    .line 27
    .line 28
    const-string v3, " not be negative."

    .line 29
    .line 30
    invoke-static {v2, v0, v3}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public final b()Lio/realm/a;
    .locals 1

    iget-object v0, p0, Lio/realm/m0$a;->c:Lio/realm/a;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lio/realm/m0$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lio/realm/m0$a;->c:Lio/realm/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Lio/realm/a;)V
    .locals 1

    iput-object p1, p0, Lio/realm/m0$a;->c:Lio/realm/a;

    iget-object p1, p0, Lio/realm/m0$c;->a:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/m0$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
