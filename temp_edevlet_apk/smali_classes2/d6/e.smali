.class public final Ld6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lh6/x;

.field public final synthetic c:Lo6/c;


# direct methods
.method public constructor <init>(ZLh6/x;Lo6/c;)V
    .locals 0

    iput-boolean p1, p0, Ld6/e;->a:Z

    iput-object p2, p0, Ld6/e;->b:Lh6/x;

    iput-object p3, p0, Ld6/e;->c:Lo6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ld6/e;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld6/e;->b:Lh6/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lh6/v;

    .line 11
    .line 12
    iget-object v2, p0, Ld6/e;->c:Lo6/c;

    .line 13
    .line 14
    invoke-direct {v1, v0, v2}, Lh6/v;-><init>(Lh6/x;Lo6/c;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lh6/p0;->a:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    new-instance v2, Lh5/l;

    .line 20
    .line 21
    invoke-direct {v2}, Lh5/l;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lh6/o0;

    .line 25
    .line 26
    invoke-direct {v3, v1, v2}, Lh6/o0;-><init>(Lh6/v;Lh5/l;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lh6/x;->k:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method
